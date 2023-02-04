Revue explicative de la monorphisation en C++ et en Rust.

En C++, `mono.cc` contient une façon très "Rust" de coder des traits pour une
structure. À l'inverse, dans `mono2.cc` on peut voir la composition qu'offre le
langage. La définission d'une fonction se fait pls naturellement comme ça.

En Rust, `mono.rs` est l'homologue de `mono.rc` à quelques details près.

Le langage C n'inclut pas, bien qu'on pourrait créer le mecanisme par nous même,
de monomorphisation. Les solutions passent nécessairement par un polymorphisme
primitif comme dans `poly.c`

Le vecteur heterogène C++ qui utilise de la std (variants) propose une liste de structure aillant une fonction `foo`.