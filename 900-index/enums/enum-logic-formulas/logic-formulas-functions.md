# Logic formulas concerning functions

A relation R between two sets A and B is a functional relation iff, for all x in A, there are y and z in B, such that (x,y) ∈ R and (x,z) ∈ R implies y = z.

> ∀x ∈ A. ∃y∃y' ∈ B. [ (x,y) ∈ F ∧ (x,y') ∈ F ] -> y = y'

A partial function is a triple f = <F,A,B> where A and B are arbitrary, possibly empty, sets, and F is a functional, possibly empty, relation between A and B, called *the graph of `f`*.

A function `f: A → B` is **injective** (one to one) iff, ∀x∀y ∈ A. f(x) = f(y) implies that x = y. (dom = ran < cod)

> f:A→B is injective <=> ∀a∀a' ∈ A. [ f(a) = f(a') ] -> a = a'

A function f: A → B is **surjective** (onto) iff, for all y ∈ B, there is
some x ∈ A such that f(x) = y. Equivalently, the range of f is the set B.
(dom >= cod = ran)

> f:A→B is surjective <=> ∀y ∈ B. ∃x ∈ A. f(x) = y

A function is **bijective** (1:1 correspondence) iff it is both injective and surjective. (dom = cod = ran)

- injection : |dom = ran| < |cod|
- surjection: |dom| > |ran = cod|
- bijection : |dom| = |ran| = |cod|



A partial function doesn't have the entire domain engaged. With partial functions, injection cannot be distinguished from bijection. A partial surjection is also possible.
