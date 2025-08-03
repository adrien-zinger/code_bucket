use ljsonrpc_over_tcp::*;
use maybe_static::maybe_static;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::env;
use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::{Arc, Mutex};

/* ------------------------------------ */
/* Structure declarations               */
/*                                      */

// jsonrpc communication structures:
// - SecretResponse: `create_secret`
// - HandShakeParams: `handshake`
// - EncryptParams: `encrypt`
// - EncryptedMessage: output of `encrypt` and input of `decrypt`

#[derive(Deserialize, Serialize)]
struct SecretResponse {
    id: String,
    secret: String,
}

#[derive(Serialize, Deserialize)]
struct HandShakeParams {
    id: String,
    p: u64,
    g: u64,
    a: u64,
}

#[derive(Deserialize)]
struct EncryptParams {
    /// Remote server that will share a secret number.
    remote_addr: String,
    /// Message to encrypt.
    message: String,
}

#[derive(Deserialize, Serialize)]
struct EncryptedMessage {
    /// Identifyer of shared secret key.
    secret_id: String,
    /// Encrypted data.
    data: Vec<u8>,
}

/* ------------------------------------ */
/* Diffie Hellman Tools                 */
/*                                      */

fn modpow(base: u64, exponent: u64, modulus: u64) -> u64 {
    let mut result = 1;
    let mut base = base % modulus;
    let mut exp = exponent;
    while exp > 0 {
        if exp % 2 == 1 {
            result = (result * base) % modulus;
        }
        exp >>= 1;
        base = (base * base) % modulus;
    }
    result
}

/** Get p (modulus) and g (base), todo generate that randomly */
fn get_p_and_g() -> (u64, u64) {
    (23, 5)
}

/// Execute a simple encryption with a XOR on message.
fn encrypt(key: u64, message: String) -> Vec<u8> {
    println!("encrypt message {message}");
    let key_bytes = key.to_le_bytes();
    message
        .bytes()
        .enumerate()
        .map(|(index, byte)| byte ^ key_bytes[index % key_bytes.len()])
        .collect()
}

/// Reverse XOR encryption done by the encrypt function.
fn decrypt(key: u64, message: Vec<u8>) -> Option<String> {
    let key_bytes = key.to_le_bytes();

    let decrypted_bytes: Vec<u8> = message
        .iter()
        .enumerate()
        .map(|(index, byte)| byte ^ key_bytes[index % key_bytes.len()])
        .collect();

    if let Ok(res) = String::from_utf8(decrypted_bytes) {
        Some(res)
    } else {
        eprintln!("invalid utf8 sequence");
        None
    }
}

/* ------------------------------------ */
/*  Tools                               */
/*                                      */

/// Incremental jsonrpcId/secretId generator.
fn gen_id() -> String {
    static COUNTER: AtomicU64 = AtomicU64::new(1);
    let id = COUNTER.fetch_add(1, Ordering::Relaxed);
    id.to_string()
}

/// Get global data structure containing secret numbers.
fn get_data() -> &'static Arc<Mutex<HashMap<String, u64>>> {
    // todo cleanup if size exceed N
    maybe_static!(Arc::<Mutex::<HashMap::<String, u64>>>)
}

/// Create public server jsonrpc over tcp instance with following method:
///
/// - handshake: HandShakeParams -> Public B (String)
///
fn create_public_server(addr: String) -> Server {
    let mut server = Server::new(addr);
    server.add_method(
        "handshake",
        Arc::new(|params| {
            if let Ok(params) = serde_json::from_str::<HandShakeParams>(&params) {
                Ok(Some(handle_handshake(params)))
            } else {
                eprintln!("unable to parse handshake params");
                Err(std::io::Error::new(
                    std::io::ErrorKind::InvalidData,
                    "Unable to parse params",
                ))
            }
        }),
    );
    server
}

/// Create private server jsonrpc over tcp instance with following method:
///
/// - create_secret: Remote public address (String) -> SecretResponse
///
fn create_private_server(addr: String) -> Server {
    let mut server = Server::new(addr);
    server.add_method(
        "create_secret",
        Arc::new(|params| Ok(handle_create_secret(params))),
    );
    server.add_method(
        "decrypt",
        Arc::new(|params| {
            if let Ok(params) = serde_json::from_str::<EncryptedMessage>(&params) {
                Ok(handle_decrypt(params))
            } else {
                Err(std::io::Error::new(
                    std::io::ErrorKind::InvalidData,
                    "Unable to parse params",
                ))
            }
        }),
    );
    server.add_method(
        "encrypt",
        Arc::new(|params| {
            if let Ok(params) = serde_json::from_str::<EncryptParams>(&params) {
                Ok(handle_encrypt(params))
            } else {
                Err(std::io::Error::new(
                    std::io::ErrorKind::InvalidData,
                    "Unable to parse params",
                ))
            }
        }),
    );
    server.add_method(
        "get_secret",
        Arc::new(|params| Ok(handle_get_secret(params))),
    );
    server
}

/// Handle request with public a, return public b in string format
fn handle_handshake(params: HandShakeParams) -> String {
    println!("Start handshake...");
    let private_b: u64 = rand::random();
    let public_b = modpow(params.g, private_b, params.p);
    {
        let secret = modpow(params.a, private_b, params.p);
        println!("Secret generated");
        let data_ptr = get_data();
        if let Ok(data) = &mut data_ptr.lock() {
            data.insert(params.id, secret);
        } else {
            eprintln!("cannot open global data container");
            return String::new();
        }
    }
    serde_json::to_string(&public_b).unwrap() // cannot fail
}

/// Handle private request `create_secret`.
/// Create a common shared secret number with given remote server.
/// @params `remote_addr` remote public server address.
fn handle_create_secret(remote_addr: String) -> Option<String> {
    println!("Create secret...");
    /* choose secret a */
    let private_a: u64 = rand::random();
    let (p, g) = get_p_and_g();
    let public_a = modpow(g, private_a, p);

    /* Send message to remote and get B */
    let id = gen_id();

    println!("Public A generated {public_a}, start handshake");
    let params = HandShakeParams {
        id: id.clone(),
        p,
        g,
        a: public_a,
    };

    let public_b = if let Ok(response) = send(
        &remote_addr,
        &id,
        "handshake",
        &serde_json::to_string(&params).unwrap(), // cannot fail
    ) {
        if let Ok(public_b) = response.parse() {
            public_b
        } else {
            eprintln!("failed to parse integer");
            return None;
        }
    } else {
        eprintln!("failed to get handshake response");
        return None;
    };

    println!("Handshake done, received public B {public_b}");
    let secret = modpow(public_b, private_a, p);
    {
        let data_ptr = get_data();
        if let Ok(data) = &mut data_ptr.lock() {
            data.insert(id.to_string(), secret);
        } else {
            eprintln!("cannot open global data container");
            return None;
        }
    }

    let resp = SecretResponse {
        id,
        secret: secret.to_string(),
    };
    Some(serde_json::to_string(&resp).unwrap())
}

/// Handle `get_secret` private request.
fn handle_get_secret(secret_id: String) -> Option<String> {
    let data_ptr = get_data();
    if let Ok(data) = &mut data_ptr.lock() {
        match data.get(&secret_id) {
            Some(secret_number) => Some(secret_number.to_string()),
            None => {
                eprintln!("secret number not found at index");
                None
            }
        }
    } else {
        eprintln!("cannot open global data container");
        None
    }
}



fn handle_encrypt(params: EncryptParams) -> Option<String> {
    if let Some(resp) = handle_create_secret(params.remote_addr) {
        println!("received secret response: {resp}");
        if let Ok(resp) = serde_json::from_str::<SecretResponse>(&resp) {
            if let Ok(key) = resp.secret.parse() {
                let encrypted_message = EncryptedMessage {
                    secret_id: resp.id,
                    data: encrypt(key, params.message),
                };
                Some(serde_json::to_string(&encrypted_message).unwrap())
            } else {
                None
            }
        } else {
            eprintln!("failed to parse json");
            None
        }
    } else {
        None
    }
}

fn handle_decrypt(message: EncryptedMessage) -> Option<String> {
    if let Some(secret) = handle_get_secret(message.secret_id) {
        if let Ok(key) = secret.parse() {
            decrypt(key, message.data)
        } else {
            None
        }
    } else {
        None
    }
}


fn main() {
    let args: Vec<String> = env::args().collect();
    let public_addr = args[1].clone();
    let private_addr = args[2].clone();
    let mut private_server = create_private_server(private_addr);
    let mut public_server = create_public_server(public_addr);
    private_server.run().unwrap();
    public_server.run().unwrap();
    public_server.block_on();
}
