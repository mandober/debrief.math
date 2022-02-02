# Proof Theory ∷ GLOSSARY

## Induction
To say that a set is inductively defined means it is the least solution of a certain form of inequation. For instance, the set of natural numbers, ℕ, is the least solution (ordered by set inclusion, ⊆) of the inequation: 
`{0} ⋃ { S(x) | x ∈ X } ⊆ X`. The corresponding *induction principle* states that if some other set satisfies this inequation, then it contains the inductively defined set. To prove a property for all natural numbers, let `X` be the set of numbers with that property, and then show that `X` satisfies the inequation. If so, then `ℕ ⊆ X`, since ℕ is the least such set.

## Coinduction

Coinduction is dual to induction. A set is coinductively defined if it is the greatest solution of a certain form of inequation. For instance, suppose that `~>` repr the reduction relation in a FPL. The set of divergent programs, `↑`, is the greatest solution of the inequation `X ⊆ { a | ∃b(a ~> b ⋀ b ∈ X) }`. The corresponding *coinduction principle* says that if some other set satisfies this inequation, then the coinductively defined set contains it. For instance, suppose that program `Ω` reduces to itself, i.e. `Ω ~> Ω`. To see that `Ω` is contained in `↑`, consider the set `X = {Ω}`. Since `X` satisfies the inequation, `X ⊆ ↑`, as `↑` is the greatest such set. Hence, `Ω` is a member of `↑`.
