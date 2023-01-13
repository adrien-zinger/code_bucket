build: queue.a queue.h testing.out

queue.h: src/lib.rs
	cbindgen . --lang C -o queue.h

queue.a: src/lib.rs
	rustc src/lib.rs --crate-type=staticlib -o queue.a

testing.out: testing.c queue.a queue.h
	gcc testing.c -L. -l:queue.a -I. -o testing.out

valgrind: testing.out
	valgrind --leak-check=full ./testing.out

install:
	cargo install cbindgen