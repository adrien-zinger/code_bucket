# if pattern

Une grammaire qui contient ce genre de pattern...

```
stmt : if EXPR then stmt
     | if EXPR then stmt else stmt
     | STMT ;
```

...a une ambiguïté. Dans ce cas, la grammaire à plusieurs arbres
de dérivation possible pour la phrase:

`if E1 then if E2 then S1 else S2`

On ne peut pas déterminer avec la grammaire ci-dessus si la phrase
sera traduite en un arbre tel que `(if E1 then (if E2 then S1) else S2)`
ou `(if E1 then (if E2 then S1 else S2))`. Deux arbres de dérivation
pour la même phrase.

x: T = if ... then T else T

On résoud ce genre d'ambiguïté en remplaçant le pattern par celui-ci:

```bash
stmt : matched
     | unmatched ;

matched : if EXPR then matched else matched
        | STMT ;

unmatched : if EXPR then matched
          | if EXPR then matched else unmatched ;
```


La présence d'une factorisation à gauche reste tout de même un petit défi lors de la conception d'un générateur de parseurs pour une grammaire. Dans le cas présent, il y a plusieurs états générés dans lesquels le token *IF* peut être le premier symbole, de ce fait, des conflits peuvent survenir entre les règles de production *unmatched* et *matched*. Si l'on décide de raisonner dès la lecture du *IF*, ces conflits peuvent apparaître, compromettant ainsi l'efficacité et la fiabilité de la grammaire. Dans de tels cas, un générateur de parseurs pourrait prendre une décision arbitraire afin de résoudre le conflit, entraînant ainsi une possible dénaturation de la grammaire désiré.

```js
matched : IF /* { printf("matched if resolved\n"); } */ EXPR THEN matched ELSE matched
        | STMT ;
unmatched : IF /* { printf("unmatched if resolved\n"); } */ EXPR THEN matched
          | IF /* { printf("unmatched if resolved\n"); } */ EXPR THEN matched ELSE unmatched ;
```

Le problème majeur de ce pattern est qu'il faut necessairement avoir lu le
code dans sa totalité pour pouvoir réduire le *statement* à la racine. Ce
qui peut être un défis lors d'une compilation en une seule passe.

Certain langages informatiques choisissent d'éliminer ces incohérences en forçant des patterns plus contraignant. En rust par exemple les *statements* sont obligatoirement entourés d'accolades. En nix, une condition retourne toujours une valeur et la résolution de type requière de préciser le cas de l'alternative, dans ce cas on supprime la rêgle de production *unmatched*.

```nix
x: T = if ... then T else T
```
