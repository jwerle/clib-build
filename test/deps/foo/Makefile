
foo: clean build

clean:
	rm -f *.a *.o *.so

build:
	cc -std=c99 -c -o foo.o foo.c
	cc -shared foo.o -o libfoo.so
	ar crus libfoo.a foo.o

test:
	@echo "Testing static.."
	cc test.c libfoo.a -std=c99 -o foo-test
	@./foo-test
	@echo
	@echo "Testing shared.."
	cc test.c -L. -lfoo -std=c99 -o foo-test
	@./foo-test

.PHONY: foo

