use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::constructor;
use rusty_jsc_sys::*;

// The JavaScript code calls this Rust function.
#[constructor]
fn constructor(_context: JSContext, _constructor: JSObject) {
    println!("hello from Rust land!");
}

unsafe extern "C" fn console_log(
    ctx: JSContextRef,
    _function: JSObjectRef,
    _this_object: JSObjectRef,
    argument_count: size_t,
    arguments: *const JSValueRef,
    _exception: *mut JSValueRef,
) -> JSValueRef {
    //size_t maxBufferSize = JSStringGetMaximumUTF8CStringSize(jsString);
    //char* utf8Buffer = new char[maxBufferSize];
    //size_t bytesWritten = JSStringGetUTF8CString(jsString, utf8Buffer, maxBufferSize);
    //std::string utf_string = std::string(utf8Buffer, bytesWritten -1);
    //delete [] utf8Buffer;
    //return utf_string;

    let string = JSValueToStringCopy(ctx, arguments.read(), std::ptr::null_mut());
    let s = JSStringGetMaximumUTF8CStringSize(string);

    let mut rbuffer = vec![0u8; s as usize];
    let effective_size = JSStringGetUTF8CString(string, rbuffer.as_mut_ptr() as _, s) as usize;
    println!(
        "{}",
        String::from_utf8_lossy(&rbuffer[..effective_size - 1].to_vec())
    );

    println!("hello hello");
    let context = JSContext::from(ctx);
    println!("arg count {}", argument_count);
    println!("{}", JSValueGetType(ctx, arguments.read()));
    println!("{}", JSValueIsDate(ctx, arguments.read()));
    println!("{}", JSValueIsUndefined(ctx, arguments.read()));
    println!(
        "{:?}",
        JSValueToStringCopy(ctx, arguments.read(), std::ptr::null_mut())
    );

    JSValueMakeUndefined(ctx)
}

fn main() {
    let mut context = JSContext::default();
    let _callback = JSValue::callback(&context, Some(console_log));
    let mut global = context.get_global_object();

    let file_class = JSObject::class(&context, "File", Some(constructor));

    global.set_property(&context, "File".to_string(), file_class.into());

    //unsafe { JSObjectMakeConstructor(context.get_ref(), my_class, Some(constructor_fn)) };
    //let log_fn = _console_def
    //    .get_property(&context, "test".to_string())
    //    .expect("cannot find log??");
    //assert!(!log_fn.is_undefined(&context), "log undefined");
    //_console_def.set_property(&context, "log".to_string(), _callback);

    println!("start evaluation");
    //context.evaluate_script("console", 1).expect("succeed 1");
    context
        .evaluate_script("var f = new File();", 1)
        .expect("succeed 2");
}
