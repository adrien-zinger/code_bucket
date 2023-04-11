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

/*

TODO

require(X) from module at path Y
1. If X is a core module,
   a. return the core module
   b. STOP
2. If X begins with '/'
   a. set Y to be the file system root
3. If X begins with './' or '/' or '../'
   a. LOAD_AS_FILE(Y + X)
   b. LOAD_AS_DIRECTORY(Y + X)
   c. THROW "not found"
4. If X begins with '#'
   a. LOAD_PACKAGE_IMPORTS(X, dirname(Y))
5. LOAD_PACKAGE_SELF(X, dirname(Y))
6. LOAD_NODE_MODULES(X, dirname(Y))
7. THROW "not found"

LOAD_AS_FILE(X)
1. If X is a file, load X as its file extension format. STOP
2. If X.js is a file, load X.js as JavaScript text. STOP
3. If X.json is a file, parse X.json to a JavaScript Object. STOP
4. If X.node is a file, load X.node as binary addon. STOP

LOAD_INDEX(X)
1. If X/index.js is a file, load X/index.js as JavaScript text. STOP
2. If X/index.json is a file, parse X/index.json to a JavaScript object. STOP
3. If X/index.node is a file, load X/index.node as binary addon. STOP

LOAD_AS_DIRECTORY(X)
1. If X/package.json is a file,
   a. Parse X/package.json, and look for "main" field.
   b. If "main" is a falsy value, GOTO 2.
   c. let M = X + (json main field)
   d. LOAD_AS_FILE(M)
   e. LOAD_INDEX(M)
   f. LOAD_INDEX(X) DEPRECATED
   g. THROW "not found"
2. LOAD_INDEX(X)

LOAD_NODE_MODULES(X, START)
1. let DIRS = NODE_MODULES_PATHS(START)
2. for each DIR in DIRS:
   a. LOAD_PACKAGE_EXPORTS(X, DIR)
   b. LOAD_AS_FILE(DIR/X)
   c. LOAD_AS_DIRECTORY(DIR/X)

NODE_MODULES_PATHS(START)
1. let PARTS = path split(START)
2. let I = count of PARTS - 1
3. let DIRS = []
4. while I >= 0,
   a. if PARTS[I] = "node_modules" CONTINUE
   b. DIR = path join(PARTS[0 .. I] + "node_modules")
   c. DIRS = DIR + DIRS
   d. let I = I - 1
5. return DIRS + GLOBAL_FOLDERS

LOAD_PACKAGE_IMPORTS(X, DIR)
1. Find the closest package scope SCOPE to DIR.
2. If no scope was found, return.
3. If the SCOPE/package.json "imports" is null or undefined, return.
4. let MATCH = PACKAGE_IMPORTS_RESOLVE(X, pathToFileURL(SCOPE),
  ["node", "require"]) defined in the ESM resolver.
5. RESOLVE_ESM_MATCH(MATCH).

LOAD_PACKAGE_EXPORTS(X, DIR)
1. Try to interpret X as a combination of NAME and SUBPATH where the name
   may have a @scope/ prefix and the subpath begins with a slash (`/`).
2. If X does not match this pattern or DIR/NAME/package.json is not a file,
   return.
3. Parse DIR/NAME/package.json, and look for "exports" field.
4. If "exports" is null or undefined, return.
5. let MATCH = PACKAGE_EXPORTS_RESOLVE(pathToFileURL(DIR/NAME), "." + SUBPATH,
   `package.json` "exports", ["node", "require"]) defined in the ESM resolver.
6. RESOLVE_ESM_MATCH(MATCH)

LOAD_PACKAGE_SELF(X, DIR)
1. Find the closest package scope SCOPE to DIR.
2. If no scope was found, return.
3. If the SCOPE/package.json "exports" is null or undefined, return.
4. If the SCOPE/package.json "name" is not the first segment of X, return.
5. let MATCH = PACKAGE_EXPORTS_RESOLVE(pathToFileURL(SCOPE),
   "." + X.slice("name".length), `package.json` "exports", ["node", "require"])
   defined in the ESM resolver.
6. RESOLVE_ESM_MATCH(MATCH)

RESOLVE_ESM_MATCH(MATCH)
1. let RESOLVED_PATH = fileURLToPath(MATCH)
2. If the file at RESOLVED_PATH exists, load RESOLVED_PATH as its extension
   format. STOP
3. THROW "not found"

 */

#[callback]
fn require(
    context: JSContext,
    _function: JSObject,
    _this: JSObject,
    arguments: Vec<JSValue>,
) -> JSValue {
    // Create a Meyer's singleton, unsafe because it can't be used in a multiphreaded
    // context. If a multithread context appear, use maybe_static with an Arc/Mutex.
    let global_objects = maybe_static_unsafe!(HashMap<String, JSObject>);

    /*

       TODO:
       Modules are cached based on their resolved filename. Since modules may resolve
       to a different filename based on the location of the calling module (loading
       from node_modules folders), it is not a guarantee that require('foo')
       will always return the exact same object, if it would resolve to different files.


       Additionally, on case-insensitive file systems or operating systems,
       different resolved filenames can point to the same file, but the cache
       will still treat them as different modules and will reload the file multiple
       times. For example, require('./foo') and require('./FOO') return two different
       objects, irrespective of whether or not ./foo and ./FOO are the same file.
    */
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
            init(&mut new_context);
            let mut new_require: JSObject = new_context
                .get_global_object()
                .get_property(&new_context, "require")
                .unwrap()
                .into();
            let main_module = context
                .get_global_object()
                .get_property(&context, "module")
                .unwrap();
            new_require.set_property(&new_context, "main", main_module);
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

fn init(context: &mut JSContext) {
    let global = &mut context.get_global_object();
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

fn init_main(context: &mut JSContext) {
    init(context);
    let global = &mut context.get_global_object();
    let module = global.get_property(context, "module").unwrap();
    let mut require: JSObject = global.get_property(context, "require").unwrap().into();
    require.set_property(context, "main", module);
}

fn _deinit(context: &mut JSContext) {
    let global = &mut context.get_global_object();

    global.delete_property(context, "console");
    global.delete_property(context, "module");
    global.delete_property(context, "exports");
    global.delete_property(context, "require");
}

fn main() {
    let mut context = JSContext::default();

    init_main(&mut context);

    let default_index = String::from("./index.js");
    let args: Vec<String> = std::env::args().collect();
    let filename = args.get(1).unwrap_or(&default_index);
    println!("open {filename}");
    let script = read_to_string(filename).expect("input file not found");
    context.evaluate_script(&script, 1).expect("failed");
    //_deinit(&mut context);
}
