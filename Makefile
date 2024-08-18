# files or dir/
SRC = src/
OUT = bin/

default: build

all: test

install: build copy

build:
	c3c compile $(SRC) --output-dir $(OUT)

test:
	c3c compile-run $(SRC) --output-dir $(OUT)

copy:
	cp `fd . $(OUT) --type f` /usr/bin

uninstall:
	rm -rf /usr/bin/`fd . $(OUT) --type f | sed "s/bin\///"`
