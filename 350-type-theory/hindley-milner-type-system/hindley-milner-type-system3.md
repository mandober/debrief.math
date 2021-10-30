# Hindley-Milner type system

https://en.wikipedia.org/wiki/Hindley-Milner_type_system
https://en.wikipedia.org/wiki/Algorithm_W

* *Hindley-Milner (HM)* is a type system for the lambda calculus with parametric polymorphism.

* *Damas-Milner* and *Damas-Hindley-Milner*. First described by J. Roger Hindley, later rediscovered by Robin Milner. In 1982 Luis Damas finally proved that Milner's algorithm is complete and extended it to support systems with polymorphic references.

* HM's more notable properties: completeness, the ability to infer the *principal type*, i.e. the most general type for a given expression, despite the lack of user annotations.

* `Algorithm W` is an efficient and practical type-inference algorithm, applied on large code bases, although it has a high theoretical complexity.

* HM is preferably used for functional languages. It was first implemented as part of the type system of the programming language ML. Since then, HM has been extended in various ways, most notably with type class constraints like those in Haskell.

* HM imposes the restriction that function params must have monomorphic types. Lifting this restriction and providing `System F` with first-class polymorphism has a consequence that inference of types becomes undecidable. 

* The usual *Hindley-Milner restriction on polymorphism* is that only type variables that do not occur free in the environment may be generalized. In addition, the *constrained type variables* of a restricted declaration group may not be generalized in the generalization step for that group. A type variable is constrained if it must belong to some type class. Any *monomorphic type variables* that remain when type inference for an entire module is complete, are considered *ambiguous*, and are resolved to particular types using *the defaulting rules*.

A given *declaration group is unrestricted* iff:
- every variable in the group is bound
  - by a *function binding*,          e.g. `f x = x`, or
  - by a *simple pattern binding*,    e.g. `pat = (+)`
- an explicit type signature is given 
  for every variable in the group 
  that is bound by simple pattern binding, 
  e.g. `plus :: Num a => a -> a -> a; plus = (+)`.




## Hindley-Milner Type Inference

Robin Milner's type system with parametric polymorphism was a significant advance over the systems of Russell and Church. Arguably it is the ability to use type variables that makes higher order logic a practical vehicle for proving non-trivial theorems. The Hindley-Milner algorithm is used to automatically infer types in theorem provers and in several other functional programing languages.

SML is Milner's language which uses this parametric polymorphic type system. The type inference algorithm consists of some 250 lines of code. No explicit type annotations are required, yet the type of each expression is correctly inferred (or checked if user-annotated).

The algorithm was proven sound and complete by Damas and Milner in 1982 in their "Principal type-schemes for functional programs" paper.





## References

Hindley-Milner Type Inference
http://steshaw.org/hm/

Does Damas-Milner still have principal types if existential type schemata are added? - Roel Van de Paar
https://www.youtube.com/watch?v=-g4rbdYeQjo
https://cs.stackexchange.com/questions/60701/does-damas-milner-still-have-principal-types-if-existential-type-schemata-are-ad

HM impl in Haskell
https://github.com/thumphries/hm

Damas-Milner-like subset of the calculus of constructions with global type inference
https://cstheory.stackexchange.com/questions/36221/damas-milner-like-subset-of-the-calculus-of-constructions-with-global-type-infer

2D1456, Advanced Functional Programming, D-level
Mini Project 4.1: Implementing Hindley-Milner-Damas Type Inference
http://www.csc.kth.se/utbildning/kth/kurser/2D1456/avfunk07/view.php?arg=P4-1.h

Describe the Damas-Milner type inference in a way that a CS101 student can understand
https://stackoverflow.com/questions/1109509/describe-the-damas-milner-type-inference-in-a-way-that-a-cs101-student-can-under

https://www.cambridge.org/core/books/from-semantics-to-computer-science/nominal-verification-of-algorithm-w/F22FBC353236233CC9A76A0AB89E1770

https://web.archive.org/web/http://joomla.di.unipi.it/~levi//Bertinoro/HTMLtipi/tsld058.htm


Foundations of Programming Languages - Course
https://www.dcc.fc.up.pt/~sandra/Home/FLP1920.html
