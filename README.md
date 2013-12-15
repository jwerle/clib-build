cilb-build
=====

Small bash script for building [clib](https://github.com/clibs/clib)
dependencies

## install

***clib***

```sh
$ [sudo] clib install jwerle/clib-build
```

***git***

```sh
$ git clone https://github.com/jwerle/clib-build.git
$ cd clib-build
$ make test
$ make install
```

## synopsis

Executes make on each dep assuming each will build a static and/or
shared library for linking

## usage

Build depdendencies

```sh
$ clib-build -d /path/to/package
   build: 'somedep'
   lib: '/deps/foo/libfoo.a' (static)
   lib: 'test/deps/foo/libfoo.so' (shared)
```

Test depdendencies

```sh
$ clib-build -t -d test
   build: 'foo'
   lib: 'test/deps/foo/libfoo.a' (static)
   lib: 'test/deps/foo/libfoo.so' (shared)
   test 'foo'
```

## license

MIT
