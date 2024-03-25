# Dependent type

A dependent type is a family of types. If types are considered as sets, a dependent type is an (indexed) family of sets.



The moduls ponens rule transforms any proof of `A → B` into a function mapping (the type of) proofs of `A` to (the type of) proofs of `B`. Using the ∀-elim rule: if `∀x:A.P(x)` and `e` has type `A`, then we can deduce P[x:=e]. The ∀-elim rule transforms any proof of `∀x:A.P(x)` into a function mapping any element `e:A` to a proof of P[x:=e], (i.e. `P` with `x` replaced by `e`).




## Refs

https://ncatlab.org/nlab/show/dependent+type
https://en.wikipedia.org/wiki/Dependent_type
https://okmij.org/ftp/Haskell/dependent-types.html

* In Praise of Dependent Types, by Mike Shulman
https://golem.ph.utexas.edu/category/2010/03/in_praise_of_dependent_types.html

* Introduction to dependent types in Coq
http://www-sop.inria.fr/members/Yves.Bertot/tsinghua/tsinghua-1.pdf
