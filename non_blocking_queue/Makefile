build: queue.a queue.h

queue.h: src/lib.rs
	cbindgen . -o queue.h

queue.a: src/lib.rs
	rustc src/lib.rs --crate-type=staticlib -o queue.a

install:
	cargo install cbindgen