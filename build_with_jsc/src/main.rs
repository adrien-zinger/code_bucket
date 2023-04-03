use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::{callback, constructor};
use rusty_jsc_sys::*;

#[constructor]
fn constructor(_context: JSContext, _constructor: JSObject) {
    println!("into the user obj cnstructor");
}

#[callback]
fn log(context: JSContext, _function: JSObject, _this: JSObject, arguments: Vec<JSValue>) {
    arguments.iter().for_each(|value| {
        if value.is_string(&context) {
            println!("{}", value.to_string(&context));
        }
        if value.is_date(&context) {
            println!("date inthere!")
        }
    });
}

#[callback]
fn echo(
    context: JSContext,
    _function: JSObject,
    _this: JSObject,
    arguments: Vec<JSValue>,
) -> JSValue {
    if let Some(argument) = arguments.first() {
        argument.clone()
    } else {
        JSValue::string(&context, "").unwrap()
    }
}

fn main() {
    let mut context = JSContext::default();
    let mut global = context.get_global_object();

    let user_obj = JSObject::class(&context, "UserObject", Some(constructor));
    let mut console = JSObject::class(&context, "UserObject", None);
    console.set_property(&context, "log", JSValue::callback(&context, Some(log)));
    global.set_property(&context, "UserObject", user_obj.into());
    global.set_property(&context, "console", console.into());
    global.set_property(&context, "echo", JSValue::callback(&context, Some(echo)));

    println!("start evaluation");
    context
        .evaluate_script(
            "var o = new UserObject();
            console.log('hello world!', new Date());
            console.log(echo('echo hello world'));",
            1,
        )
        .expect("succeed 2");
}
