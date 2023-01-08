#include <stdlib.h>

struct object
{
    void (*destructor)(struct object *self);
    void *data;
};

#define DESTRUCTOR(self)                                  \
    do                                                    \
    {                                                     \
        if ((self) != NULL && (self)->destructor != NULL) \
            (self)->destructor(self);                     \
    } while (0)

#define MOVE(src, dst)                         \
    do                                         \
    {                                          \
        (dst)->data = (src)->data;             \
        (dst)->destructor = (src)->destructor; \
        (src)->data = NULL;                    \
        (src)->destructor = NULL;              \
    } while (0)

void destroy_object(struct object *self)
{
    if (self->data != NULL)
    {
        free(self->data);
        self->data = NULL;
    }
    self->destructor = NULL;
}

struct object f(struct object *a)
{
    // --- constructeur
    struct object b;
    MOVE(a, &b);

    // --- gestion de la valeur de retour
    struct object r;
    MOVE(&b, &r);

    // --- gestion des drops
    DESTRUCTOR(&b);
    return r;
}

int main()
{
    // --- constructeur
    struct object a = {destroy_object, malloc(1024)};
    struct object b;
    b = f(&a);

    DESTRUCTOR(&a);
    DESTRUCTOR(&b);
    return 0;
}