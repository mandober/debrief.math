# Universe types

The universe types 
allow proofs to be written 
about all the types created 
with the other type ctors.

Every term in the universe type `𝓤₀`
can be mapped to a type created 
with any combination of 
`𝟘, 𝟙, 𝟚, Σ, Π, =` and
the inductive type constructor. 
However, to avoid paradoxes, 
there is no term in `𝓤₀` that maps to `𝓤₀`.

To write proofs about 
all "the small types" and `𝓤₀` 
you must use `𝓤₁` 
which does contain a term for `𝓤₀`, 
but not for itself `𝓤₁`.
Similarly, for `𝓤₂`. 

There is a predicative hierarchy of universes, 
so to quantify a proof over any 
fixed constant `k` universes use `𝓤ₖ﹢₁`

❧

Universe types are a tricky feature of type theories. 
Martin-Löf's original type theory had to be changed to 
account for Girard's paradox.

Later research covered topics such as 
- super universes
- Mahlo universes
- impredicative universes
