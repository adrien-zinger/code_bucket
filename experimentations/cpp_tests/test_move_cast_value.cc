#include <utility>
#include <iostream>

struct A {
    int number;
    A() = default;
    A(A&) = default;
    A(A&&) = default;
};

struct B {
    A a;
    B() = default;
    B(const B&) { std::cout << "copy\n"; };
    // Je suis halluciné par le fait que ceci compile et affiche
    // `copy` en sorti. La ligne suivante doit nécessairement être
    // spécifiée pour avoir le comportement attendu du compilateur:
    // B(B&&) = delete;
    // 
    // Le comportement actuel est le suivant: malgré l'appel du move
    // constructor, le compilateur ne trouvant pas de constructeur satisfaisant
    // choisi de copier malgré tout. Normalement, il est spécifié qu'on ne peut
    // pas caster une ref rvalue de type T en ref lvalue du même type.
    // Il semble qu'ici, ajouter `const` suffise à bypass la rêgle.

    // Autrement dit, en dépis de nos efforts pour vouloir forcer un move,
    // il se peut qu'on doive copier.
};

int main(void) {
    B b1;
    B b2 = std::move(b1);
}