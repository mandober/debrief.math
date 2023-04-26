# Binary relations

- Let `A` (domain) and `B` (codomain) be sets
- Let a, a₀, a₁, …, aₙ be elements of A, `aᵢ ∈ A`
- Let b, b₀, b₁, …, bₙ be elements of B, `bᵢ ∈ B`
- Let `G ⊆ A⨯B` be the graph of relation (set of ord pairs) in `A` to `B`
- Let `ℛ = (A,B,G)` be a fully specified relation in `A` to `B` with graph `G`
- Let `Dom(ℛ) = A` be the domain
- Let `Cod(ℛ) = B` be the codomain
- Let `Rel(ℛ) = G` be the actual set of associations (ordered pairs)
- Let `Pre(G) = Pm` denote the preimage of `G` such that `Pm ⊆ A`
  - `Pre(Gˢ) = map fst Gˢ`
- Let `Img(G) = Im` denote the image of `G` such that `Im ⊆ B`
  - `Img(G) = map snd G`
- Let an ordered pair in `G` be denoted as `(a,b) ∈ G` or `aGb` or `a ~ b`
- Let an ordered pair not in `G` be denoted as `(a,b) ∉ G` or `¬aGb` or `a ≁ b`
+ Some properties require a fully specified relation (refl, irref, totality, …)
+ Some properties can be checked just by using the graph G (tran, sym, asym, …)
- Let `ℛ(x)` or `R(x)` denotes the image of R's graph `G` at `x ∈ A`.
  - R(a) = {b¹, b², …} where `bⁱ ∈ Img(G)` i.e. `bⁱ ∈ B`
  - e.g. `1 ⟼ {1,2,3}` if a subset of G is {(1,1),(1,2),(1,3)}




Left-total
- ℛ is left-total iff `∀a ∈ A. ∃b ∈ B. (a,b) ∈ G`
- That is, iff every element of A relates to some element of B
- That is, iff `Pre(G) = A`, image of graph G is equal to the domain A
- `f : A → B` is left-total iff `∀a ∈ A. ∃b ∈ B. f(a) = b`

Right-total
- ℛ is right-total iff `∀b ∈ B. ∃a ∈ A. (a,b) ∈ G`
- That is, iff every element of B is related to by some element of A
- That is, iff `Img(G) = B`, image of graph G is equal to the codomain B
- `f : A → B` is right-total iff `∀b ∈ B. ∃a ∈ a. f(a) = b`

Left-unique
- `f : A → B` is left-unique iff `∀a₁a₂ ∈ A. f(a₁) = f(a₂) -> a₁ = a₂`
