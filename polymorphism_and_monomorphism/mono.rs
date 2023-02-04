trait Generic {
    fn foo(&self);
}

struct A;
struct B;

impl Generic for A {
    fn foo(&self) {
        println!("A")
    }
}

impl Generic for B {
    fn foo(&self) {
        println!("B")
    }
}

fn call(bar: &impl Generic) {
    bar.foo()
}

fn main() {
    call(&A {});
    call(&B {});
}
