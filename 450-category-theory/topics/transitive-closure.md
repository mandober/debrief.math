# Transitive closure

https://en.wikipedia.org/wiki/Transitive_closure

> **The transitive closure** of a binary relation `R` on a set `X` is the smallest relation on `X` that contains `R` and is transitive.

X = { 1,2,3,4 }    
R<= = { (1,3), (2,4) }    
R' = { (1,2), (1,4), (2,3), (3,4) }
`R+` = `R<=` ⋃ `R'`

So, X is a set, `X = {1,2,3,4}`, and a binary relation R<= on X is a set of ordered pairs `R<= = { (1,3), (2,4) }`. Then, a transitive closure of the binary relation `R<=` on the set `X` is `R+` i.e. the smallest relation on `X` that contains `R` and is transitive. Thus, `R+` contains `R<=`, and needs to be united with the relation `R'`, that is the set containing remaining ordered pairs, such that when united with `R<=` the minimal set that is transitive is produced: `R+ = R<= ⋃ R'`.


For finite sets, "smallest" can be taken in its usual sense, of having the fewest related pairs; for infinite sets it is the *unique minimal transitive superset* of `R`.

For example, if `X` is a set of airports and, for `x` and `y` in `X`, `xRy` means "there is a direct flight from airport x to airport y", then the transitive closure of `R` on `X` is the relation `R+` such that `xR+y` means "it is possible to fly from x to y in one or more flights".

Informally, the transitive closure gives you the set of all points you can get to from any other point.

More formally, the transitive closure of a binary relation `R` on a set `X` is the transitive relation `R+` on set `X` such that `R+` contains `R` and `R+` is minimal. If the binary relation itself is transitive, then the transitive closure is that same binary relation; otherwise, the transitive closure is a different relation.

In a closely related area of graph theory, *transitive reduction* is analogous to *adducing* a minimal `R` from the given closure `R+`.

## Transitive relations and examples

A relation `R` on a set `X` is transitive if `∀xyz ∈ X. (xRy ∧ yRz) -> xRz`.

Examples of transitive relations include the equality relation on any set, LE relation on any linearly ordered set, and the relation "x was born before y" on the set of all people.

An example of a *non-transitive relation* is "city x can be reached via a direct flight from city y" on the set of all cities. Simply because there is a direct flight from one city to a second city, and a direct flight from the second city to the third, does not imply there is a direct flight from the first city to the third.

The transitive closure of this relation is a different relation, namely "there is a sequence of direct flights that begins at city x and ends at city y". Every relation can be extended in a similar way to a transitive relation.

An example of a non-transitive relation with a less meaningful transitive closure is "x is the day of the week after y". The transitive closure of this relation is "some day x comes after a day y on the calendar", which is trivially true for all days of the week x and y (and thus equivalent to the Cartesian square, which is "x and y are both days of the week").

## Properties

The **intersection** of two transitive relations is transitive.

The **union** of two transitive relations need not be transitive. To preserve transitivity, one must take the transitive closure. This occurs, for example, when taking the union of two equivalence relations or two preorders. To obtain a new equivalence relation or preorder one must take the transitive closure (reflexivity and symmetry, in the case of equivalence relations, are automatic).
