module hello_c3c;
import std::io;

const HELLO = "Hello, world!";

fn void hello(String[] name) {
	if (name.len == 1) {
		io::printfn("%s", HELLO);
	} else {
		io::printfn("Hello %s.", name[1]);
	}
}

fn void main(String[] args) {
	hello(args);
}
