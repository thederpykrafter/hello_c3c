module hello_c3c;
import std::io;

const HELLO = "Hello, world!";

fn void hello(String name = "") {
	if (name == "") {
		io::printfn("%s", HELLO);
	} else {
		io::printfn("Hello %s.", name);
	}
}

fn void main(String[] args) {
	if (args.len != 1) {
		hello(args[1]);
	} else {
		hello();
	}
}
