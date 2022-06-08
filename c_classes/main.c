#include <stdlib.h>
#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

struct Class {
  size_t size;
  void * (* ctor) ( void * self, va_list * app);
  void * (* dtor) ( void * self);
  void * (* clone) (const void * self);
  int (* differ) (const void * self, const void * other);
};

struct String {
  const void * class;
  char * text;
};

void * new(const void * _class, ...) {
  const struct Class * class = _class;
  void * p = calloc(1, class->size);

  assert(p);
  * (const struct Class **) p = class;

  if (class->ctor) {
    va_list ap;
    va_start(ap, _class);
    p = class->ctor(p, &ap);
    va_end(ap);
  }

  return p;
}

//const void * CString = (const void * ) MString;


/**** IMPLEMENTATION DE LA CLASSE STRING ***/
const void * String;

static void * String_ctor(void * _self, va_list * app) {
  struct String * self = _self;
  const char * text = va_arg(* app, const char *);
  self->text = malloc(strlen(text) + 1);
  strcpy(self->text, text);
  return self;
}

static void * String_dtor(void * _self) {
  struct String * self = _self;
  free(self->text), self->text = 0;
  return self;
}

static void * String_clone(const void * _self) {
  const struct String * self = _self;
  return new(String, self->text);
}

static int String_differ(const void * _self, const void * _other) {
  const struct String * self = _self;
  const struct String * other = _other;
  if (self == other) return 0;
  if (!other || other->class != String) return 0;
  return strcmp(self->text, other->text);
}

const struct Class _String = {
  sizeof(struct String),
  String_ctor,
  String_dtor,
  String_clone,
  String_differ
};

const void * String = & _String;

int main() {
  struct String * str = new(String, "hello");
  printf("%s\n\0", str->text);
  return 0;
}
