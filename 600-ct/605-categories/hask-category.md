# Hask category

https://wiki.haskell.org/Hask
https://wiki.haskell.org/Category_theory/Natural_transformation
https://wiki.haskell.org/Category:Theoretical_foundations
https://www.stephendiehl.com/posts/monads.html
https://en.wikibooks.org/wiki/Haskell/Category_theory

𝗛𝗮𝘀𝗸 is a category of Haskell types as objects and Haskell functions as morphisms. Because Haskell types also include bottom value, Hask is called quasi-category. The usual "convention" is to ignore bottom and pretend Haskell functions are total.

The objects of Hask are Haskell types, and the morphisms from objects `A` to `B` are Haskell functions of type `A -> B`. The identity morphism for object `A` is the polymorphic function `id :: A -> A` that takes care of identity function/morphism of all objects/types. The composition of morphisms is the composition of Haskell functions and the composition is associative.

Functors are mapping between categories and in the case of Hask category that means mappings between categories that include the Hask category and any of its subcategories.
