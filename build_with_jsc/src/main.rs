use std::ffi::{c_char, CString};

use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::callback;
use rusty_jsc_sys::*;

// The JavaScript code calls this Rust function.
//#[callback]
//fn console_log(_context: JSContext) {
//    println!("hello from Rust land!");
//}

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
    println!(
        "{:?}",
        JSValueToStringCopy(ctx, arguments.read(), std::ptr::null_mut())
    );

    JSValueMakeUndefined(ctx)
}

fn create_console_class() -> JSClassRef {
    let ln = Box::into_raw(Box::new(CString::new("log").unwrap()));
    let log_fn = Box::into_raw(Box::new(JSStaticFunction {
        name: ln as *const c_char,
        callAsFunction: Some(console_log),
        attributes: kJSPropertyAttributeDontDelete as u32 | kJSPropertyAttributeReadOnly,
    })) as *const JSStaticFunction;

    let log = [log_fn, Box::into_raw(Box::new(JSStaticFunction::null()))].as_ptr()
        as *const JSStaticFunction;

    //let values = [Box::into_raw(Box::new(JSStaticValue { name: "hello", getProperty: Some(console_log), setProperty: Some(console_log), attributes: todo!() }))]

    println!("log created");

    unsafe {
        let mut class_definition = kJSClassDefinitionEmpty;
        class_definition.className = "console".as_bytes().as_ptr() as _;
        class_definition.attributes = kJSClassAttributeNone;
        class_definition.staticValues = std::ptr::null();
        class_definition.staticFunctions = log;
        JSClassCreate(Box::into_raw(Box::new(class_definition)))
    }
}

fn main() {
    let mut context = JSContext::default();
    let _callback = JSValue::callback(&context, Some(console_log));
    let mut global = context.get_global_object();

    let obj_console: JSObjectRef = unsafe {
        JSObjectMake(
            context.get_ref(),
            create_console_class(),
            std::ptr::null_mut(),
        )
    };

    println!("obj console done");
    global.set_property(
        &context,
        "console".to_string(),
        JSValue::from(obj_console as JSValueRef),
    );
    println!("done");

    let mut _console_def: JSObject = global
        .get_property(&context, "console".to_string())
        .expect("Cannot find console")
        .into();
    let log_fn = _console_def
        .get_property(&context, "log".to_string())
        .expect("cannot find log??");
    //assert!(!log_fn.is_undefined(&context), "log undefined");
    //_console_def.set_property(&context, "log".to_string(), _callback);

    //context.evaluate_script("console", 1).expect("succeed 1");
    context
        .evaluate_script("new console().log(\"hello you\")", 1)
        .expect("succeed 2");
}
