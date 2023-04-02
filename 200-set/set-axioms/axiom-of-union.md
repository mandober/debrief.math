# Axiom of Union

https://en.wikipedia.org/wiki/Axiom_of_union

## About

In axiomatic set theory, the Axiom Of Union is one of the axioms of ZF set theory. This axiom was introduced by Ernst Zermelo in 1908 in "Untersuchungen über die Grundlagen der Mengenlehre I" published in Mathematische Annalen 65.

The axiom states that for each set x there is a set y whose elements are precisely the elements of the elements of x.



## Loosely

For every collection of sets, `W`, there exists a set, `S`, 
containing all the elements that belong to at least one set in `W`.

∀x ((x ∈ A ⋀ A ∈ W) ⟶ ∃S(x ∈ S))

- `W`  is a set of sets, W = {A₀, …, Aₖ}
- `Aᵢ` is a set, a random member of `W`, Aᵢ = {x₀, …, xₙ}
- `S`  is another set that exists, and it contains all the elements that 
       belong to at least one set in `W`.
       S contains all elements of A₀ ⋁ A₁ ⋁ … ⋁ Aₖ


>How the fuck does this makes a union? Esp. the "at least one" part? Why doesn't it just say that `S` contains all the elements that each of the member sets of `W` do? That'd be a union! Like `∀x((x ∈ Aᵢ ⋀ Aᵢ ∈ W) --> x ∈ S)`.


∀W ∃S ∀Aᵢ ∀x ((x ∈ Aᵢ ⋀ Aᵢ ∈ W) ⟶ x ∈ S)

∀x((x ∈ Aᵢ ⟶ Aᵢ ∈ W) ⟶ ∃S(x ∈ S))


S = {x₀, …, xₙ}



∀x( (x ∈ C -> (x ∈ A ⋁ x ∈ C)) -> x ∈ B )



The union over the elements of a set exists.

**The axiom of union** states that 
for any collection (set) of sets `W`, 
there is a set `S` 
  containing all elements that belong to 
  some (at least one) 
  set in the collection `W`.


∀F ∃A ∀Y ∀x (x ∈ Y ∧ Y ∈ F -> x ∈ A)


$$
\forall \mathcal{F} \quad
\exists A \quad
\forall Y \quad
\forall x \quad
((x \in Y \land Y \in \mathcal{F})
  \Rightarrow x \in A
)
$$

Although this formula doesn't directly assert the existence of `F`, the set `F` `⋃ F` can be constructed from `A` (above) using the *axiom schema of specification*:

$$\cup \mathcal {F} := \{x \in A : \exists Y
(x \in Y \land Y \in \mathcal {F} \}$$
