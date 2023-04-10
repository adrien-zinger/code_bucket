use std::{collections::HashMap, fs::read_to_string};

use maybe_static::maybe_static_unsafe;
use rusty_jsc::{JSContext, JSObject, JSValue};
use rusty_jsc_macros::callback;
use rusty_jsc_sys::*;

#[callback]
fn log(context: JSContext, _function: JSObject, _this: JSObject, arguments: Vec<JSValue>) {
    arguments.iter().for_each(|value| {
        if value.is_string(&context) {
            println!("{}", value.to_string(&context));
        }
        if value.is_boolean(&context) {
            println!("{}", value.to_boolean(&context));
        }
        if value.is_date(&context) {
            println!("date inthere!")
        }
    });
}

#[callback]
fn require(
    context: JSContext,
    _function: JSObject,
    _this: JSObject,
    arguments: Vec<JSValue>,
) -> JSValue {
    let global_objects = maybe_static_unsafe!(HashMap<String, JSObject>, Default::default);

    if let Some(required) = arguments.first() {
        if required.is_string(&context) {
            let path = required.to_string(&context);
            // TODO, modify the path in order to behave like node. For example, fs is
            // internal (I guess), if you can look for a foreign library in the node_modules
            // file or in the global folder. The path can change but point to the same
            // file depending of the caller position. etc.
            if let Some(global_object) = global_objects.get(&path) {
                let module: JSObject = global_object
                    .get_property(&context, "module")
                    .unwrap()
                    .into();

                return module.get_property(&context, "exports").unwrap();
            }

            let mut new_context = context.split();
            init(&context, &mut new_context.get_global_object());
            global_objects.insert(path.clone(), new_context.get_global_object());

            let script = read_to_string(&path).expect("file not found");
            new_context.evaluate_script(&script, 1).expect("failed");

            // Recupération de l'objet export
            return JSObject::from(
                new_context
                    .get_global_object()
                    .get_property(&new_context, "module")
                    .unwrap(),
            )
            .get_property(&new_context, "exports")
            .unwrap();
        }
    }
    panic!("error require module")
}

fn init(context: &JSContext, global: &mut JSObject) {
    let mut console = JSObject::class(context, "console", None);
    console.set_property(context, "log", JSValue::callback(context, Some(log)));
    global.set_property(context, "console", console.into());

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

    init(&context, &mut global);

    let default_index = String::from("./index.js");
    let args: Vec<String> = std::env::args().collect();
    let filename = args.get(1).unwrap_or(&default_index);
    println!("open {filename}");
    let script = read_to_string(filename).expect("input file not found");
    context.evaluate_script(&script, 1).expect("failed");
}
