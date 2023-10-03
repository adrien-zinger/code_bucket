use gpiosim::{Bank, Sim, Level};
use maybe_static::*;

struct Singleton(Option<Sim>);
fn use_singleton() -> &'static mut Singleton {
    maybe_static_unsafe!(Singleton, || {
        Singleton(Some(gpiosim::builder()
            .with_bank(Bank::new(1, "simu").name(1, "MOCK"))
            .live()
            .unwrap()))
    })
}

fn set_pull_cmd(level: Level) {
    if let Some(sim) = &use_singleton().0 {
        let chips = sim.chips();
        let chip = &chips[0];
        let _ = chip.set_pull(0, level);
    }
}

fn main() {
    let _ = use_singleton(); // init gpiochip
    ctrlc::set_handler(move || {
        use_singleton().0.take(); // cleanup
        std::process::exit(0);
    }).unwrap();

    loop {
        let mut line = String::new();
        let stdin = std::io::stdin();
        stdin.read_line(&mut line).unwrap();
        match line.as_str() {
            "exit\n" => break,
            "set high\n" => set_pull_cmd(Level::High),
            "set low\n" => set_pull_cmd(Level::Low),
            _ => println!("pass unknown cmd")
        }
    }
    use_singleton().0.take(); // cleanup
}
