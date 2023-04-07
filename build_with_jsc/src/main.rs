use std::collections::HashMap;

use maybe_static::maybe_static_unsafe;
use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::{callback, constructor};
use rusty_jsc_sys::*;

#[constructor]
fn constructor() {
    println!("into the user obj cnstructor");
}

#[callback]
fn log(context: JSContext, _function: JSObject, _this: JSObject, arguments: Vec<JSValue>) {
    println!("enter in log");
    arguments.iter().for_each(|value| {
        println!("check value (undefined {})", value.is_undefined(&context));
        if value.is_string(&context) {
            println!("is string yes");
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

#[callback]
fn require(
    context: JSContext,
    _function: JSObject,
    _this: JSObject,
    arguments: Vec<JSValue>,
) -> JSValue {
    println!("enter in require");
    let global_objects = maybe_static_unsafe!(HashMap<String, JSContext>, Default::default);

    if let Some(required) = arguments.first() {
        if required.is_string(&context) {
            let path = required.to_string(&context);
            // TODO, modify the path in order to behave like node. For example, fs is
            // internal (I guess), if you can look for a foreign library in the node_modules
            // file or in the global folder. The path can change but point to the same
            // file depending of the caller position. etc.
            if let Some(required_context) = global_objects.get(&path) {
                let module: JSObject = required_context
                    .get_global_object()
                    .get_property(&context, "module")
                    .unwrap()
                    .into();

                return module.get_property(&context, "exports").unwrap();
            }

            println!("split context");
            let mut new_context = context.split();
            init_module_exports(&context, &mut new_context.get_global_object());
            new_context
                .evaluate_script("module.exports.hello = 'yes hello world inside module';", 0)
                .unwrap();

            println!("script evaluated");

            // Recupération de l'objet export
            let exports = JSObject::from(
                new_context
                    .get_global_object()
                    .get_property(&new_context, "module")
                    .unwrap(),
            )
            .get_property(&new_context, "exports")
            .unwrap();

            println!(
                "is undefined after eval {}",
                exports.is_undefined(&new_context)
            );
            global_objects.insert(path, new_context);
            return exports;
        }
    }
    panic!("error require module")
}

fn init_module_exports(context: &JSContext, global: &mut JSObject) {
    let mut module = JSObject::class(context, "module", None);
    let exports: JSValue = JSObject::class(context, "exports", None).into();

    module.set_property(context, "exports", exports.clone());
    global.set_property(context, "module", module.into());
    global.set_property(context, "exports", exports);
    global.set_property(
        context,
        "require",
        JSValue::callback(context, Some(require)),
    );
}

fn main() {
    let mut context = JSContext::default();
    let mut global = context.get_global_object();

    init_module_exports(&context, &mut global);

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
            console.log(echo('echo hello world'));
            
            var test = require('test');
            console.log(test.hello);

            console.hello = 'hello console';
            console.log(console.hello);
            let mama = 'hello mama';
            console.log(mama);",
            1,
        )
        .expect("succeed 2");

    let console: JSObject = global.get_property(&context, "console").unwrap().into();
    println!(
        "console hello undefined: {}",
        console
            .get_property(&context, "hello")
            .unwrap()
            .is_undefined(&context)
    );
}
