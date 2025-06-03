# Function Theory :: Functions :: Function as a set of pairs

A set of pairs (x, y) defines a function really, since in set theory a function is identified with a set of pairs (plus its domain and codomain). Strictly, the *graph of a function* is identified with a set of pairs (from which we can infer the domain but not the codomain).

    {(x, y)}  ≅  f x = y

Moreover, since any function is a relation, we can indeed represent it (really its graph) by a set of pairs,

    f x = y  ≅  {(x, y)}  ≅  {(x, f x)}

This correspondence between f x = y  ≅  {(x, f x)} seems to be the "zeroth" step in currying a polyadic function.

    A × B → R  ≅  A → B → R
