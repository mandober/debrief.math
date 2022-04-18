# Well-founded relation

https://en.wikipedia.org/wiki/Well-founded_relation

A binary relation `R` 
is called **well-founded** (wellfounded) 
on a class `X` 
if every non-empty subset `S ⊆ X` 
has a minimal element with respect to `R` 
such that `(s,m) ∉ R` 
(e.g. "`s` is not smaller than `m`") 
for any element `s ∈ S`.

In other words, a relation is well founded if   
`∀S ⊆ X (S ≠ ∅ -> (∃m ∈ S. ∀s ∈ S. ¬sRm)`

i.e.    
`∀S((S ⊆ X ⋀ S ≠ ∅) -> ∃m(m ∈ S ⋀ ∀s(s ∈ S -> ¬sRm)))`
