use std::collections::HashSet;

use rand::{Rng, SeedableRng};
use rand_chacha::ChaCha8Rng;

static W: u32 = 40;
static H: u32 = 20;
static WS: u32 = 12;
static HS: u32 = 2;
static PS: u32 = 2;

fn floor(rng: &mut ChaCha8Rng, h: u32, p: u32, table: &mut HashSet<(u32, u32)>) {
    let mut i = rng.gen_range(0..WS);
    while i < W {
        let n = rng.gen_range(0..WS);
        for a in i..=i + n {
            for b in h..h + p {
                table.insert((a, b));
            }
        }
        i += n + rng.gen_range(0..WS);
    }
}

fn main() {
    let seed: <ChaCha8Rng as SeedableRng>::Seed = [2u8; 32];
    let mut rng = ChaCha8Rng::from_seed(seed);
    let mut table = HashSet::new();
    let mut h = 0;
    let p = rng.gen_range(1..PS);
    while h < H {
        floor(&mut rng, h, p, &mut table);
        h += rng.gen_range(1..HS);
    }

    for i in 0..=H {
        for j in 0..W {
            print!("{}", if table.contains(&(j, H - i)) { 1 } else { 0 });
        }
        println!("");
    }
}
