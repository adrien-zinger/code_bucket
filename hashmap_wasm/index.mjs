import fs from 'fs';

const wasmBuffer = fs.readFileSync('./mine.wasm');
let vlog = (arg) => {};

var importObject = {
  imports: {
    log: function(arg) {
      //console.log(arg);
      vlog(arg);
    }
  }
};

WebAssembly.instantiate(wasmBuffer, importObject).then(wasmModule => {
  const { new_map, insert, get } = wasmModule.instance.exports;
  const map = new_map();
  insert(map, 1, 100);
  //insert(map, 2, 200);
  //console.log(get(map, 1), get(map, 2)); // Outputs: 11
  //insert(map, 2, 42);
  vlog = console.log;
  insert(map, 256, 12);
  insert(map, 42, 42);
  vlog = () => {};
  console.log(
	  get(map, 1),
  	  get(map, 256),
  	  get(map, 42),
  );
  insert(map, 1, 1);
  console.log(
	  get(map, 1),
  	  get(map, 256),
  	  get(map, 42),
  );

});

/*
;; hash function that can be easilly resumed with
 ;; a modulo :-)
 (func $hash (param $0 i32) (result f32)
       ;; get first left byte
       local.get $0
       i32.const 4278190080
       i32.and
       i32.const 24
       i32.shr_u
       ;; keep val on stack
       ;; second left byte + xor
       local.get $0
       i32.const 16711680
       i32.and
       i32.const 16
       i32.shr_u
       i32.xor
       ;; xor with the return val on the stack
       ;; second right byte + xor
       local.get $0
       i32.const 65280
       i32.and
       i32.const 8
       i32.shr_u
       i32.xor
       ;; xor with the return val on the stack
       local.get $0
       i32.const 255
       i32.and
       i32.xor
       ;; xor with the return val on the stack
       ;; convert for client
       f32.convert_i32_u
 )
*/
