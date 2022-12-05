#![crate_type = "staticlib"]

#[no_mangle]
pub extern "C" struct MyInt32 {
    a: u32
} 
