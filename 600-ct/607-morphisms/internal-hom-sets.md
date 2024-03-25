# Internal hom-sets

The **internal hom-sets**, denoted by `[X, Y]`, or `Hom(X,Y)`, or `C(X,Y)`, are specified by

    (X × Y) → Z  ≅  X → Hom(Y, Z)

A "point of `X`" is defined to be an arrow from the terminal object, `1`, so we have the following relation:

    points[A, B]  ≅  1 → [A, B]  ≅  1 × A → B  ≅  A → B

    points[A, B]
    ≅  { Definition of points }
    1 → [A, B]
    ≅  { Characterization of internal-hom }
    (1 × A) → B
    ≅  { Terminal object is identity of × }
    A → B

Hence the internal hom and external hom are 'equivalent' in that:

    points[A, B]  ≅  A → B


In the category `Set`, we have `points X ≅ X`, and so the internal and external hom-sets are isomorphic.


~~A/N: Q: Is a point here an element of an object (that is actually a set)? Or, an element in a hom-set projected into `Set`? `1 → [A, B]` seems to pick a homeset (i.e. arrows from A to B), right?~~


## Refs

https://math.stackexchange.com/questions/3008803/are-the-homsets-of-set-themselves-objects-in-the-category
