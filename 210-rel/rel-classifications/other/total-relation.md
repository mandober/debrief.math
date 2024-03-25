# Total relation

https://en.wikipedia.org/wiki/Total_relation

A binary relation `R ⊆ X×Y` between two sets X and Y is **left total** (sometimes just **total**) if the domain set `X` equals the domain of the relation `R`, that is, if `X = { x | ∀x(x ∈ X -> ∃y(y ∈ Y ∧ xRy) }`.

Conversely, `R` is called **right total** if the codomain `Y` equals the range of the relation `R`, that is, if `Y = { y | ∀y(y ∈ Y -> ∃x(x ∈ X ∧ xRy) }`.

When `f : X → Y` is a (total) function, the domain of `f` is always equal to the domain `X`, hence any (total) function is a total relation.

On the other hand, if `f` is a partial function, then the domain of `f` may be a proper subset of the domain `X`, in which case `f` is not a total relation.

A binary relation is said to be total with respect to a universe of discourse (domain, source set) just in case everything in that universe of discourse stands in that relation to something else.

## Algebraic characterization

Total relations can be characterized algebraically by equalities and inequalities involving compositions of relations.

To that end, let `X` and `Y` be sets, and let `R ⊆ X×Y`. For any two sets `A` and `B`, let `LA,B = A×B` be the universal relation between A and B, and let IA={(a,a):a∈A} be the identity relation on A. We use the notation ⊤R⊤ for the converse relation of R.
