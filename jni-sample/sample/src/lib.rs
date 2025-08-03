use jni::JNIEnv;

// These objects are what you should use as arguments to your native
// function. They carry extra lifetime information to prevent them escaping
// this context and getting used after being GC'd.
use jni::objects::{JClass, JObject, JString};

use jni::sys::jstring;

// JNIEXPORT void JNICALL Java_org_example_App_00024HelloNative_sayHello
//   (JNIEnv *, jobject);

#[no_mangle]
pub extern "system" fn Java_org_example_App_00024HelloNative_sayHello<'local>(
    mut env: JNIEnv<'local>,
    obj: JObject<'local>,
) -> () {
    println!("hello world!");
}
