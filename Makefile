
PREFIX ?= /usr/local
BIN ?= clib-build
TEST ?= ./test.sh
TESTDIR ?= test

all: clean test

clean:
	@./$(BIN) -c -v -d $(TESTDIR)

test:
	@./$(BIN) -v -d $(TESTDIR)
	@BIN=$(BIN) TESTDIR=$(TESTDIR) LIB=foo $(TEST)

.PHONY: test
