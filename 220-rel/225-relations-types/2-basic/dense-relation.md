# Dense relation

https://ncatlab.org/nlab/show/dense+relation

Dense relation: `∀x,z ∈ X. ∃y ∈ X. xRz → (xRy ⋀ yRz)`

∀a,c ∈ X. ∃b ∈ X. 
     aRc → 
 (aRb ⋀ bRc)


Between any two elements, `a,c ∈ A`, there is another element `b ∈ A`.

`a < c` -> `a < b < c` (a < b ⋀ b < c)

aRc -> (aRb ⋀ bRc)

A relation is dense if, between any two related elements, `a` and `c` (i.e. `aRc`), there is an element `b` with whom both are related such that `aRb` and `bRc`.

A relation is dense if, between any two related elements, `a` and `c`, 
there is an element `b`, 
with whom they form a transitive triple, 
aRc -> aRb ⋀ bRc
