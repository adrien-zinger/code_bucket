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
  void (* set) (void * self, va_list * app);
  void (* print) (const void * self);
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

void print(const void * _class) {
  (* (const struct Class **) _class)->print(_class);
}

void set(void * _class, ...) {
  va_list args;
  va_start(args, _class);
  (* (const struct Class **) _class)->set(_class, &args);
  va_end(args);
}

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

static void String_set(void * _self, va_list * args) {
  struct String * self = _self;
  const char * str = va_arg(* args, const char *);
  if (strcmp(self->text, str) == 0)
    return;
  if (strlen(self->text) != strlen(str))
    self->text = realloc(self->text, strlen(str) + 1);
  strcpy(self->text, str);
}

static void String_print(const void * _self) {
  const struct String * self = _self;
  printf("%s\n\0", self->text);
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
  String_differ,
  String_set,
  String_print,
};

const void * String = & _String;

int main() {
  void * str = new(String, "hello");
  print(str);
  set(str, "yeeeeeeh yeeeeeh yeh");
  print(str);
  set(str, "bip");
  print(str);
  return 0;
}
