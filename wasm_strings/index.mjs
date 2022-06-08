import fs from 'fs';

const wasmBuffer = fs.readFileSync('./lib.wasm');
let vlog = (arg) => {};

const importObject = {
    imports: {
	log: (val) => {
	    console.log("val:", val);
	    let l = new TextDecoder('utf8').decode(
		new Uint8Array([val]));
	    console.log("letter:", l);
	},
    },
};

WebAssembly.instantiate(wasmBuffer, importObject).then(wasmModule => {
    const { concat, memory } = wasmModule.instance.exports;
    // define a C-style string
    let hello = "hello\0";
    // get the memory of the module
    let buf = memory.buffer;
    let mem_arr = new Uint8Array(buf);
    for (let i = 0; i < hello.length; ++i) {
	mem_arr[20 + i] = hello.charCodeAt(i);
    }

    concat(20);
    let v = new Uint8Array(memory.buffer, 20, 50);
    console.log(new TextDecoder('utf8').decode(v));
});
