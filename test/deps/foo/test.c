
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "foo.h"

int
main (void) {
  char *s = foo();

  assert('f' == s[0]);
  assert('o' == s[1]);
  assert('o' == s[2]);

  printf("ok!\n");

  return 0;
}
