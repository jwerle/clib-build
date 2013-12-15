#!/bin/sh

# borrowed from http://tldp.org/LDP/abs/html/debugging.html#ASSERT
assert () {
  E_PARAM_ERR=98
  E_ASSERT_FAILED=99

  if [ -z "$2" ]; then
    return $E_PARAM_ERR
  fi

  lineno=$2

  if ! $1; then
    echo "Assertion failed:  \"$1\""
    echo "File \"$0\", line $lineno"
    exit $E_ASSERT_FAILED
  fi
}

# pre
assert "test -d $TESTDIR/deps" $LINENO
assert "test -d $TESTDIR/deps/$LIB" $LINENO
assert "test -f $TESTDIR/deps/$LIB/Makefile" $LINENO

# setup
$BIN -v -d $TESTDIR

# libs
assert "test -f $TESTDIR/deps/$LIB/lib$LIB.a" $LINENO
assert "test -f $TESTDIR/deps/$LIB/lib$LIB.so" $LINENO

exit $?
