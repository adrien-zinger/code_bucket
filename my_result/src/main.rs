#![feature(try_trait_v2)]
#![feature(never_type)]

#[allow(dead_code)]
enum MyResult<T, E> {
    Some(T),
    None,
    Err(E),
}

impl<T, E> std::ops::Try for MyResult<T, E> {
    type Output = T;
    type Residual = MyResult<!, E>;

    #[inline]
    fn from_output(c: T) -> Self {
        MyResult::Some(c)
    }

    #[inline]
    fn branch(self) -> std::ops::ControlFlow<Self::Residual, T> {
        match self {
            MyResult::Some(c) => std::ops::ControlFlow::Continue(c),
            MyResult::Err(e) => std::ops::ControlFlow::Break(MyResult::Err(e)),
            MyResult::None => std::ops::ControlFlow::Break(MyResult::None),
        }
    }
}

impl<T, E, F: From<E>> std::ops::FromResidual<MyResult<!, E>> for MyResult<T, F> {
    fn from_residual(x: MyResult<!, E>) -> Self {
        match x {
            MyResult::Some(e) => {
                #[allow(unreachable_code)]
                let e = From::from(e);
                MyResult::Some(e)
            }
            MyResult::None => MyResult::None,
            MyResult::Err(e) => MyResult::Err(From::from(e)),
        }
    }
}

fn bar() -> MyResult<String, &'static str> {
    // MyResult::Some(String::from("haha!"))
    // MyResult::None
    MyResult::Err("This is an error")
}

//
// #[ReslutEnumumu
// fn foo(x: Wrapped<T>) -> Unwraped<T, dyn Err> {
//   x? // first Err return bxy a Result OR first None return NoneErr OR T
// }

fn foo() -> MyResult<dyn ToString, &'static str> {
    let _ = bar()?;
    MyResult::Some(String::from("hello world"))
}

fn main() {
    match foo() {
        MyResult::Some(hello) => println!("{}", hello),
        MyResult::None => println!("nothing O_O"),
        MyResult::Err(e) => println!("{}", e),
    }
}
