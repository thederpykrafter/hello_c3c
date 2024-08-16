module hello_c3c;
import std::io;

const HELLO = "Hello, world!";

fn void hello() {
	io::printfn("%s", HELLO);
}

fn void main(String[] args) {
	hello();
}
