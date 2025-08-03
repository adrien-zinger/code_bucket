use threshold_crypto::{*, serde_impl::SerdeSecret};
use ljsonrpc_over_tcp::{send, Server};
use serde::{Deserialize, Serialize};
use maybe_static::maybe_static;
use std::sync::{Arc, Mutex};
use std::collections::HashMap;
use std::fs::File;
use std::io::Write;

/// Declaration of `register` local jsonrpc method.
/// Register method is used to ask a remote server to join a secret society.
/// To be validated, a secret society require an ACK from remote parts.
static REGISTER_METHOD: &str = "register";

/// Private diffie hellman server tool.
static DH_SERVER: &str = "0.0.0.0:5051";

#[derive(Serialize, Deserialize)]
struct Actor {
    id: Option<usize>,
    address: String,
    pk_share: Option<PublicKeyShare>,
}

#[derive(Serialize, Deserialize)]
struct RegisterParams {
    society_id: String,
    addresses: Vec<String>,
    encrypted_actor: String
}

struct SecretSociety {
    id: String,
    actors: Vec<Actor>,
    pk_set: Option<PublicKeySet>,
    threashold: usize,
}

#[derive(Serialize, Deserialize)]
struct PrivateActor {
    id: usize,
    /// Secret key that should not be revealed.
    sk_share: SerdeSecret<SecretKeyShare>,
    pk_share: PublicKeyShare,
}

impl PrivateActor {
    fn save(&self, society_id: &str) {
        let mut f = File::create_new(&format!("{}.priv", society_id)).unwrap();
        f.write_all(serde_json::to_string(&self).unwrap().as_bytes()).unwrap();
    }
}

/// Take a remote address exposing a diffie-hellman tool and a message to encrypt.
/// This will call the local diffie-hellman private instance to encrypt the message.
fn dh_encrypt(remote_addr: String, actor: &Actor, secret_key_share: SecretKeyShare) -> String {
    // Warning: `priv_actor` should not be printed or shared in any way on public network.
    //          same warning for `priv_message`
    let priv_actor = serde_json::json!({
        "id": actor.id,
        "pk_share": actor.pk_share,
        "sk_share": SerdeSecret(secret_key_share)
    });
    let priv_message = serde_json::to_string(&priv_actor).unwrap();
    let params = serde_json::json!({
        "remote_addr": remote_addr,
        "message": priv_message
    });

    /* return `encrypted_actor` */
    send(DH_SERVER, "1", "encrypt", &serde_json::to_string(&params).unwrap()).unwrap()
}

fn dh_decrypt(encrypted_actor: String) -> PrivateActor {
    #[derive(Serialize, Deserialize)]
    struct DecryptResult {
        id: String,
        jsonrpc: String,
        result: String,
    }

    let res = send(DH_SERVER, "1", "decrypt", &encrypted_actor).unwrap();
    let res = serde_json::from_str::<DecryptResult>(&res).unwrap();
    serde_json::from_str::<PrivateActor>(&res.result).unwrap()
}

impl SecretSociety {
    /// Creates a new `SecretSociety`
    /// Send a creation request to all servers
    fn create(society_id: String, addresses: Vec<String>, threshold: usize) -> Self {
        let mut rng = rand::thread_rng();
        let secret_key_set = SecretKeySet::random(threshold, &mut rng);
        let public_key_set = secret_key_set.public_keys();

        let mut society = SecretSociety {
            id: society_id.clone(),
            actors: vec![],
            pk_set: Some(public_key_set.clone()),
            threashold: usize,
        };

        for (actor_id, addr) in addresses.iter().enumerate() {
            let sk_share = secret_key_set.secret_key_share(actor_id);
            let pk_share = public_key_set.public_key_share(actor_id);
            let actor = Actor {
                id: Some(actor_id),
                address: addr.clone(),
                pk_share: Some(pk_share)
            };
            let params = RegisterParams {
                society_id: society_id.clone(),
                addresses: addresses.clone(),
                threshold,
                encrypted_actor: dh_encrypt(addr.to_string(), &actor, sk_share)
            };
            send(&addr, "1", REGISTER_METHOD, &serde_json::to_string(&params).unwrap());
            society.actors.push(actor);
        }

        society
    }

    fn from_register(params: &RegisterParams) {
        let mut s = SecretSociety {
            actors: vec![],
            id: params.society_id.clone(),
            threshold: params.threshold
            
        };
    }
}

#[derive(Serialize, Deserialize)]
struct CreateSocietyParams {
    id: String,
    actors: Vec<String>,
    threshold: usize,
}
 
fn main() {
    let data = maybe_static!(Arc::<Mutex::<HashMap::<String, SecretSociety>>>);

    let mut server = Server::new("0.0.0.0:6060".to_string());

    server.add_method("create_society", Arc::new(|params| {
        /* Create a society of N actors where N is the number of given ips. Send for
         * each actor the new secret key over an asymetric encryption protocol. */
        let params = serde_json::from_str::<CreateSocietyParams>(&params).unwrap();
        let society = SecretSociety::create(params.id.clone(), params.actors, params.threshold);
        if let Ok(data) = &mut data.lock() {
            data.insert(params.id, society);
            Ok(Some(serde_json::json!({
                "result": "ok"
            }).to_string()))
        } else {
            Ok(Some(serde_json::json!({
                "result": "not ok"
            }).to_string()))
        }
    }));

    server.add_method(REGISTER_METHOD, Arc::new(|params| {
        let params = serde_json::from_str::<RegisterParams>(&params).unwrap();
        let private_actor = dh_decrypt(params.encrypted_actor);
        // Save private key locally. Not sharing it.
        private_actor.save(&params.society_id);
        for params
    }));

    server.run().unwrap();
    server.block_on();
}
