# Bootstrap a database in realtime

## Data structures

The database can be seen as a datastructure. The classical storage of data is
a kind o hashmap or a relational key-value structure. Hashmap are optimized to
be fast and very safe to use. But doesn't respect the mandatory requirement of
a realtime streaming: _Ordering_.

### Hashmap

The function bellow will print the keys in the correct order. Because the
insertion will make a binary tree search before insertion, and doesn't hash the
keys before insertion. A hashmap would have generated a random _Hasher_ in the
execution, that can be considered as "sorted" because the iterator would give
the same key order, while we doesn't stop the program.

```rust
let mut map = HashMap::new();
map.insert("a", "hello");
map.insert("b", "hello");
map.insert("c", "hello");
map.insert("d", "hello");
for _ in 0..10 {
    for (key, _value) in map.clone() {
        print!("{key},"); // will print 10 times the keys in the same order
    }
    println!();
}
```

That said, when we generate and store the keys ourself, and keep it in
another datastore
the problem of ordering with the classical HashMap is solved. It is solved
because the order of the hashmap is now deterministic and the same for each
instances.

First, we need to bypass the Hasher implementation, and take the key as the
real hash. For a lot of efficiency reasons, the hashes have to respect some
specificities:

- Having the same type.
- Beeing Sized. (size known at compiletime)

Now if you store the entries in a database, or, if you're in a P2P behavior, in
another node that keep the data consistency. Every running instance of our
program will have the same key ordering.

_Pro_: That situation is benefic, keys are _"prehashed"_ and keeps order
consistency. The classical maps operations are as faster as possible.

_Cons_: You should be carefull with the hashing function, a little miss
is very difficults to find, and can have disastrous impacts on a bootstrap
algorithm.

### BTreeMap

In comparaison to an HashMap, a BTreeMap:
- creates a kind of binary tree
- has cheap reallocation
- is ordered by key


```rust
fn main() {
    let mut map = std::collections::BTreeMap::new();
    map.insert("a", "hello");
    map.insert("b", "hello");
    map.insert("c", "hello");
    map.insert("d", "hello");
    for (key, _value) in map {
        println!("{key}");
    }
}
```

A BTreeMap will always give the same order, mainly because the is no Hasher.
Basically, a BTreeMap is a good compromise between an HashMap and a Binary
tree. It takes advantage of memory pages to be fast, but `get` and `insert`
are always a search in a tree.

_Pro_: We don't have to maintain a hash function.

_Cons_: This is a tree.

<b>[solutions &rarr;](webhook.md)</b>