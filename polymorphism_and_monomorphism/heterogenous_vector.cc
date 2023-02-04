#include <stdio.h>

#include <vector>
#include <variant>

// On utilise ici la methode 2 pour l'appel de fonction
// static.

/*

On souhite créer une liste hétérogène pour simuler
une file d'évènement (voir l'article sur les machines à états)

Le but est de trouver une représentation de la machine à état
avec des appels statics et non dynamiques. (call fn vs call *fn)

On a besoin d'une file avec des structures user defined, d'où une
fonction call templated.

Question qu'on est en droit de se poser: l'utilisation de variant
nous créé-t-elle un overhead supérieur à ce que l'appel dynamique nous
offre comme flexibilitée ? On remarque également que la compilation
est nettement plus longue qu'avec du polymorphisme primitif.

*/

struct A
{
    void fn() { printf("foo\n"); }
};

struct B
{
    void fn() { printf("bar\n"); }
};

// L'utilisation de std::variant devient undispenssable si on
// continue dans cette voie là.

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