# Haskell and Category Theory :: CT2H

Mapping Category Theory to Haskell

Developing intuition about the translation of Category Theory to Haskell (CT2HS)

This sections is about category theory with regards to Haskell, primarily the use of Haskell to illustrate examples rathat then (or, at least, along with) giving those examples in math-bound terms ones.

Due to CHI, types, here particularly Haskell's types form a category called Hask, which is not a bona-fide category due to bottoms and laziness, but these caveats are usually successfull ignored and don't prevent the illustration of categorical concepts in Haskell, along with the exasperating super and subscript overkill of their mathematical deposition.

The category `Hask`
- Haskell's types are objects
- Haskell's functions are arrows between the types
