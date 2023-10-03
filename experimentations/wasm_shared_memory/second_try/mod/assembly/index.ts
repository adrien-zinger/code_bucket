// @ts-ignore
@external("env", "echo")
declare function echo(a: string): void;

export function print(a: string, b: string): string {
	echo(a);
	echo(b);
	let ret = "hello" + b;
	return ret;
}
