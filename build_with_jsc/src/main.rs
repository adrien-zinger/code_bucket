use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::callback;
use rusty_jsc_sys::{size_t, JSContextRef, JSObjectRef, JSValueMakeUndefined, JSValueRef};

// The JavaScript code calls this Rust function.
#[callback]
fn console_log(_context: JSContext) {
    println!("hello from Rust land!");
}

//unsafe extern "C" fn console_log(
//    ctx: JSContextRef,
//    function: JSObjectRef,
//    this_object: JSObjectRef,
//    argument_count: size_t,
//    arguments: *const JSValueRef,
//    exception: *mut JSValueRef,
//) -> JSValueRef {
//    //size_t maxBufferSize = JSStringGetMaximumUTF8CStringSize(jsString);
//    //char* utf8Buffer = new char[maxBufferSize];
//    //size_t bytesWritten = JSStringGetUTF8CString(jsString, utf8Buffer, maxBufferSize);
//    //std::string utf_string = std::string(utf8Buffer, bytesWritten -1);
//    //delete [] utf8Buffer;
//    //return utf_string;
//
//    let string = JSValueToStringCopy(ctx, arguments.read(), null_mut());
//    let s = JSStringGetMaximumUTF8CStringSize(string);
//
//    let mut rbuffer = vec![0u8; s as usize];
//    let effective_size = JSStringGetUTF8CString(string, rbuffer.as_mut_ptr() as _, s) as usize;
//    println!(
//        "{}",
//        String::from_utf8_lossy(rbuffer[..effective_size - 1].to_vec()).unwrap()
//    );
//
//    println!("hello hello");
//    let context = JSContext::from(ctx);
//    println!("arg count {}", argument_count);
//    println!("{}", JSValueGetType(ctx, arguments.read()));
//    println!("{}", JSValueIsDate(ctx, arguments.read()));
//    println!(
//        "{:?}",
//        JSValueToStringCopy(ctx, arguments.read(), null_mut())
//    );
//
//    JSValueMakeUndefined(ctx)
//}
fn __console_constructor() -> JSObjectRef {
    //JSObjectRef Filesystem_CallAsConstructor(JSContextRef ctx, JSObjectRef constructor, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception){
    //    FilesystemPrivate *fs = new FilesystemPrivate();
    //
    //    JSStringRef pathString = JSValueToStringCopy(ctx, arguments[0], nullptr);
    //    setAttributes(fs, JSStringToStdString(pathString));
    //    JSObjectSetPrivate(constructor, static_cast<void*>(fs));
    //
    //    return constructor;
    //}

    todo!()
}

unsafe extern "C" fn _console_constructor(
    _: *const OpaqueJSContext,
    _: *mut OpaqueJSValue,
    _: u64,
    _: *const *const OpaqueJSValue,
    _: *mut *const OpaqueJSValue,
) -> *mut OpaqueJSValue {
    todo!("ooooups")
}

fn create_console_class() -> JSClassRef {
    //static JSClassRef filesystem_class;
    //if (!filesystem_class) {
    //    JSClassDefinition classDefinition = kJSClassDefinitionEmpty;
    //
    //    static JSStaticFunction staticFunctions[] = {
    //        { "remove", Filesystem_remove, kJSPropertyAttributeReadOnly | kJSPropertyAttributeDontDelete },
    //        { 0, 0, 0 }
    //    };
    //
    //    static JSStaticValue staticValues[] = {
    //        { "path", Filesystem_getPath, Filesystem_setPath, kJSPropertyAttributeDontDelete },
    //        { "type", Filesystem_getType, 0, kJSPropertyAttributeReadOnly | kJSPropertyAttributeDontDelete },
    //        { "exists", Filesystem_getExist, 0, kJSPropertyAttributeReadOnly | kJSPropertyAttributeDontDelete },
    //        { "size", Filesystem_getSize, 0, kJSPropertyAttributeReadOnly | kJSPropertyAttributeDontDelete },
    //        { 0, 0, 0, 0 }
    //    };
    //
    //    classDefinition.className = "Filesystem";
    //    classDefinition.attributes = kJSClassAttributeNone;
    //    classDefinition.staticFunctions = staticFunctions;
    //    classDefinition.staticValues = staticValues;
    //    classDefinition.finalize = Filesystem_Finalize;
    //    classDefinition.callAsConstructor = Filesystem_CallAsConstructor;
    //
    //    filesystem_class = JSClassCreate(&classDefinition);
    //}
    //return filesystem_class;
    let log = JSStaticFunction {
        name: "log".as_bytes().as_ptr() as _,
        callAsFunction: Some(console_log),
        attributes: kJSPropertyAttributeReadOnly as u32 | kJSPropertyAttributeDontDelete,
    };

    unsafe {
        let mut class_definition = kJSClassDefinitionEmpty;
        class_definition.className = "console".as_bytes().as_ptr() as _;
        class_definition.attributes = kJSClassAttributeNone;
        class_definition.staticFunctions = [log].as_ptr();
        //class_definition.callAsConstructor = Some(console_constructor);
        JSClassCreate([class_definition].as_ptr())
    }
}

fn main() {
    let mut context = JSContext::default();
    let callback = JSValue::callback(&context, Some(console_log));
    let mut global = context.get_global_object();

    let obj_console: JSObjectRef = unsafe {
        JSObjectMake(
            context.get_ref(),
            create_console_class(),
            std::ptr::null_mut(),
        )
    };

    //let console: JSValue = context
    //    .evaluate_script("var console = {}", 0)
    //    .expect("Failed to define console");

    //println!("yes {}", console.is_undefined(&context));

    //let mut console_obj = JSObject::from(console.get_ref() as _);
    //context
    //    .console_obj
    //    .set_property(&context, "log".to_string(), callback);

    println!("nice");
    //global.set_property_class(&context, "console".to_string());
    global.set_property(
        &context,
        "console".to_string(),
        JSValue::from(obj_console as JSValueRef),
    );

    let console_def = global
        .get_property(&context, "console".to_string())
        .expect("Cannot find console");
    println!(
        "console is undefined {}",
        console_def.is_undefined(&context)
    );

    JSObject::from(console_def.get_ref() as _).set_property(&context, "log".to_string(), callback);

    println!("done");
    //global.get_pro

    //global.set_property(&context, "log".to_string(), callback);
    context.evaluate_script("console", 1).expect("succeed 1");
    context
        .evaluate_script("console.log(\"hello you\")", 1)
        .expect("succeed 2");
}
