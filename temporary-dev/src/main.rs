use jsonrpc_http_server::jsonrpc_core::{IoHandler, Value, Params};
use jsonrpc_http_server::ServerBuilder;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::sync::{Arc, Mutex};
use maybe_static::maybe_static;
use derive_more::Add;
use std::collections::vec_deque::VecDeque;
use  std::time::{Duration, Instant};

#[derive(Deserialize, Serialize, PartialEq, Add, Default, PartialOrd, Copy, Clone)]
struct Flu {
    num: u64,
    construct: u64,
    medium: u64,
    research: u64,
    prod: u64,
}

#[derive(Clone, Serialize)]
struct Tower {
    id: u64,
    prod: Flu,
    speed: u64,
    ready: bool,
}

#[derive(Clone, Serialize)]
struct Medium {
    id: u64,
    conso: u64,
    capa: u64,
    speed: u64,
    ready: bool,
}

#[derive(Clone, Serialize)]
enum Bat {
    Tour(Tower),
    Medium(Medium)
}

#[derive(Clone)]
enum OptType {
    Create(Bat, u64, u64), /* Bat, Pos, Duration */
    Move(Vec<Flu>, Vec<Medium>, u64, u64), /* Resources, Medium, From, To */
    Forming(u64, u64), /* Pos, Duration */
}

struct PendingOpt {
    name: String,
    actor: String,
    ty: OptType,
}

#[derive(Clone)]
struct Opt {
    name: String,
    ty: OptType,
    cost: Flu,
}

impl Opt {
    fn execute(&self, flus: &[Flu], actor_name: &str, actors: &mut HashMap<String, Actor>, posts: &mut HashMap<u64, Post>, pendings: &mut VecDeque<(Instant, PendingOpt)>) {
        match &self.ty {
            OptType::Create(bat, pos, duration) => {
                let actor = &mut actors.get_mut(actor_name).unwrap();
                // Check if pos valid (actor own the pos and is correctly formed)
                let post = actor.posts.iter_mut().find(|post| post.pos == *pos).unwrap();
                if !post.ready {
                    return;
                }

                // Check if the post has the given flus
                {
                    let mut total = Flu::default();
                    for flu in flus {
                        if post.flus.iter().find(|&&f| f == *flu).is_none() {
                            return;
                        }
                        total = total + *flu;
                    }

                    // Check if it pays the cost correctly
                    if total < self.cost {
                        return;
                    }
                }

                // Remove flus from post until the cost is payed
                {
                    let mut total = Flu::default();
                    for flu in flus {
                        let index = post.flus.iter().position(|&f| f == *flu).unwrap();
                        total = total + post.flus[index];
                        post.flus.remove(index);
                        if total >= self.cost {
                            break;
                        }
                    }
                }
                
                // Program bat construction in pos
                post.bats.push(bat.clone());
                pendings.push_back((Instant::now() + Duration::new(*duration, 0), PendingOpt {
                    ty: self.ty.clone(),
                    name: self.name.clone(),
                    actor: actor_name.to_string(),
                }));
                pendings.make_contiguous().sort_by(|(a, _), (b, _)| a.cmp(b));
            },
            OptType::Move(flus, mediums, from, to) => {
                // Check if from pos valid (actor own the pos).
                // Check if the from pos contains adapted mediums.
                // Compute additional cost.
                // Try to pay the cost.
                // Program medium departure and arrivals. If the to isn't owned
                // by actor, Program also the return travel.
            },
            OptType::Forming(pos, duration) => {
                // Check if pos valid (isn't owned by anyone)
                // Program forming. (Give the ownership instantaneously)
            }
        }
    }
}

#[derive(Serialize)]
struct Post {
    pos: u64,
    ready: bool,
    bats: Vec<Bat>,
    flus: Vec<Flu>,
}

#[derive(Default)]
struct Actor {
    hand: Vec<Opt>,
    used: Vec<Opt>,
    rest: Vec<Opt>,
    pending: Vec<PendingOpt>,
    posts: Vec<Post>,
    token: String, /* temporary token has to match with requests */
}

#[derive(Deserialize)]
struct CastRequest {
    actor: String,
    opt: String,
    cost: Vec<Flu>,
    token: String,
}

#[derive(Deserialize)]
struct CreateRequest {
    actor: String,
}

impl Actor {
    fn get_opt(&self, name: &str) -> Option<Opt> {
        self.hand.iter().cloned().find(|opt| opt.name == name).clone()
    }
}

fn main() {
	let mut io = IoHandler::default();
    let actors = maybe_static!(Arc::<Mutex::<HashMap::<String, Actor>>>);
    let posts = maybe_static!(Arc::<Mutex::<HashMap::<u64, Post>>>);
    let pendings = maybe_static!(Arc::<Mutex::<VecDeque::<(Instant, PendingOpt)>>>);

    {
        io.add_method("create", |params: Params| async {
            let request: CreateRequest = params.parse()?;
            {
                let guard = &mut actors.lock().unwrap();
                let actor = guard.insert(request.actor, Actor::default());
            }
    		Ok(Value::String("unique key".to_owned()))
    	});
    }

    {
    	io.add_method("cast", |params: Params| async {
            let request: CastRequest = params.parse()?;
            let actors = &mut actors.lock().unwrap();
            let opt = actors.get(&request.actor).unwrap().get_opt(&request.opt).unwrap();
            opt.execute(&request.cost, &request.actor, actors, &mut posts.lock().unwrap(), &mut pendings.lock().unwrap());
    		Ok(Value::String("ok".to_owned()))
    	});
    }

	let server = ServerBuilder::new(io)
		.threads(3)
		.start_http(&"127.0.0.1:3030".parse().unwrap())
		.unwrap();

	server.wait();
}
