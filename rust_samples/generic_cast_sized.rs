//! Use a very generic trait to solve any kind of cast &[T] -> [T; N]
//! ... Obviously it is unsafe

trait Foo<T> {
    fn foo(self) -> T;
}

impl<const N: usize, T> Foo<[T; N]> for *const T
where
    for<'a> [T; N]: TryFrom<&'a [T]>,
{
    fn foo(self) -> [T; N] {
        let s = unsafe { std::slice::from_raw_parts(self, N) };
        s.try_into().unwrap_or_else(|_| {
            let ty = std::any::type_name::<T>();
            panic!("impossible to convert &[{ty}] into [{ty}; {N}]");
        })
    }
}

fn main() {
    let i = &[1, 2, 3, 4];
    let p_i = i.as_ptr();
    let a: [u32; 4] = p_i.foo();
    println!("{:?}", a)
}
