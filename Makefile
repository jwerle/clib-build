
PREFIX ?= /usr/local
BIN ?= clib-build
TEST ?= ./test.sh
TESTDIR ?= test

all: clean test

install:
	install $(BIN) $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)

clean:
	@./$(BIN) -c -v -d $(TESTDIR)

test:
	@./$(BIN) -v -d $(TESTDIR)
	@BIN=$(BIN) TESTDIR=$(TESTDIR) LIB=foo $(TEST)

.PHONY: test
