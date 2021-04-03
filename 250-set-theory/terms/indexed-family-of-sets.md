# Indexed family of sets

If we have 3 sets, `A₁ A₂ A₃`, and the set `Δ = {1,2,3}`, then we can define these three sets by `F = {A₁, A₂, A₃} = { Aᵢ | i ∈ Δ }`

This collection of sets is called **the family of sets indexed by the set Δ**. The set Δ is called the **indexing set**. By modifying Δ, we can define other families of sets. 

A family of enumerable (denumerable) number of sets can be defined by setting the indexing set to ℕ; then we have { Aᵢ | i ∈ ℕ }, that is, a family of sets indexed by the set of the natural numbers.

An infinite family (a family of innumerable number) of sets could perhaps be defined by setting Δ = ℝ, but this is the same problem as the axiom of choice - can we really choose (pick one-by-one) an infinite number of elements from an uncountable set? If this were allowed, we could describe { Aᵢ | i ∈ ℝ }.

## Union and itersection of indexed family of sets

If Δ is an indexing set and 
the family of sets indexed by the set Δ is { Aᵢ | i ∈ Δ } 
where each member set is a subset of the (fixed) universal set 𝓤, 
then we define union and itersection as folows:

i ∈ Δ. `⋃` Aᵢ = { x ∈ 𝓤 . `∃`i ∈ Δ . x ∈ Aᵢ }

i ∈ Δ. `⋂` Aᵢ = { x ∈ 𝓤 . `∀`i ∈ Δ . x ∈ Aᵢ }

So, the universal set 𝓤 contains, as its members, all the sets under consideration. It also contains all sets in our indexed family of sets, F={Aᵢ}, and it also contains the (indexing) set Δ. So, F ∈ 𝓤, Δ ∈ 𝓤, A₁∈𝓤, A₂∈𝓤, and actually wach set Aᵢ ∈ 𝓤. Probably in inclusion relation is Aᵢ ⊆ F ⊆ 𝓤.

The intersection of the indexed family of sets means that, first, the indices come from the indexing set Δ, which presumably contains some contiguous subset of ℕ, anchor at the beginning. Then it states that an arbitrary element x is a member of 𝓤 such that x is member of Aᵢ, where i means for all elements i in Δ. Therefore, the intersection consists of elements such that, for all element x in the intersection set, x must be found in each Aᵢ set. Because, the intersection of sets Aᵢ is a set whose elements are also in each set Aᵢ; i.e. they are the elements these sets Aᵢ have in common.

The union just means that its elements come form all the sets in the indexed family of sets (with duplicates discarded).

* union associates:         `⋃ : ∨ : ∃`
* intersection associates:  `⋂ : ∧ : ∀`



### Union

$$\displaystyle{
\bigcup _{i\ \in\ \Delta }
A _i =
\{ \ x \in\ \mathcal{U}\ .\ \exists\ i\ \in \Delta\ . x \in A_i\ \}
}
$$

### Intersection

$$\displaystyle{
\bigcup _{i\ \in\ \Delta }
A _i =
\{ \ x \in\ \mathcal{U}\ .\ \forall\ i\ \in \Delta\ . x \in A_i\ \}
}
$$
