target := ./target/debug/gpio_sim

run: $(target)
	sudo ./target/debug/gpio_sim

$(target): src/main.rs
	cargo build
