import fs from 'fs';

const wasmBuffer = fs.readFileSync('./lib.wasm');
let vlog = (arg) => {};

WebAssembly.instantiate(wasmBuffer).then(wasmModule => {
	const { concat_world } = wasmModule.instance.exports;
	// define a C-style string
	let hello = "hello\0";
	// get the memory of the module
	let buf = wasmModule.instance.export.memory.buffer;
	let mem_arr = new Uint8Array(buf);
	for (let i = 0; i < hello.size(); ++i)
		mem_arr[i] = hello[i];
	concat_world(0);
	let i = 0;
	let ret = '';
	for (let i = 0; mem_arr[i] != '\0'; ++i)
		ret +=
});
