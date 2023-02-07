#include <stdio.h>

#include <vector>
#include <variant>

/*

Pareil que le fichier de vecteur hétérogène mais avec des concepts
en plus.

N'apporte absoluement rien de plus au programme final mais aide a mieux
implementer des bib génériques.

*/

template <class T>
concept Generic = requires(T a) { a->fn(); };

template <class... Ts>
// Fold expression qui test Generic<T0>, ... Generic<Tn>
concept Generics = (Generic<Ts> && ...);

struct A
{
    void fn() { printf("foo\n"); }
};

struct B
{
    void fn() { printf("bar\n"); }
};

// struct C
// {
//     void fa() { printf("nop\n"); }
// };

template <class... Ts>
struct overloaded : Ts...
{
    using Ts::operator()...;
};
template <class... Ts>
overloaded(Ts...) -> overloaded<Ts...>;

// Appel générique de chaque fonction dans le vecteur en
// entré. Les appels sont traduit en appels statiques par le
// compilateur.
//
// Pour aller plus loin, on peut contraindre avec des concepts
// Ts, qui devra implémenter la fonction fn. Ceci pourra être
// vérifié à la compilation.
template <class... Ts>
void call(std::vector<std::variant<Ts...>> vec)
    requires Generics<Ts...>
{
    auto ov = overloaded{
        [](auto *a)
        { a->fn(); },
    };
    for (auto obj : vec)
        std::visit(ov, obj);
}

int main()
{
    struct A a;
    struct B b;
    std::vector<std::variant<struct A *, struct B *>> vec;
    vec.emplace_back(&a);
    vec.emplace_back(&b);
    call(vec);
}