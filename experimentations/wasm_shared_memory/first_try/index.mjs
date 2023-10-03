import fs from 'fs';

const RT = fs.readFileSync("./with_runtime/build/release.wasm");
const MO = fs.readFileSync("./mod/build/release.wasm");

async function load() {
	let rInst = await WebAssembly.instantiate(RT, {
		env: {
			abort : (_a, _b, _c, _d) => {},
			echo: (a) => {
				console.log(readString(a, rInst.instance))
			}
		}
	});
	let mInst = await WebAssembly.instantiate(MO, {
		env: {
			memory: rInst.instance.exports.memory,
			abort : (_a, _b, _c, _d) => {},
			echo: (a) => {
				console.log(readString(a, rInst.instance))
			}
		}
	});
	return {
		'module': mInst.instance,
		'runtime': rInst.instance
	}
}

function newString(str, runtime) {
	const pa = runtime.exports.__new(str.length, 1);
	let buf = runtime.exports.memory.buffer;
    	let mem_arr = new Uint16Array(buf, pa, pa + str.length);
    	for (let i = 0; i < str.length; ++i) {
		mem_arr[i] = str.charCodeAt(i);
    	}
	return pa;
}


function readString(offset, runtime) {
	let buf = runtime.exports.memory.buffer;
    	let size = new Uint32Array(buf)[offset / 4 - 1];
	let v = new Uint16Array(buf, offset, offset + size);
	let ret = '';
	for (let i = 0; i < size; ++i) {
		ret += String.fromCharCode(v[i]);
    	}
	return ret;
}

function rs(offset, runtime) {
	let buf = runtime.exports.memory.buffer;
    	let size = new Uint32Array(buf)[offset / 4 - 1];
	console.log(size);
	let v = new Uint16Array(buf, offset, offset + size);
	console.log(v);
	let ret = '';
	for (let i = 0; i < size; ++i) {
		ret += String.fromCharCode(v[i]);
    	}
	return ret;
}

load().then(instances => {
	const pa = newString(' ', instances.runtime);
	const pb = newString('world', instances.runtime);

	console.log(readString(pa, instances.runtime));
	console.log(readString(pb, instances.runtime));
	const pr = instances.module.exports.print(pa, pb);
	console.log(rs(pr, instances.runtime));
})
