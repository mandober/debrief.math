# Compatible relation

https://en.wikipedia.org/wiki/Compatible_relation

A tolerance relation on an algebraic structure `(A,F)` is usually defined to be a reflexive symmetric relation on `A` that is compatible with every operation in `F`. A tolerance relation on an algebraic structure `(A,F)` is a binary relation `∼` on `A` that satisfies reflexivity, symmetry and compatibility.

**Compatibility relation**: 
for each n-ary operation `f ∈ F` and 
`a₁, …, aₙ, b₁, …, bₙ ∈ A`, 
if `aᵢ ∼ bᵢ` for each `i = 1, …, n` 
then `f(a₁, …, aₙ) ∼ f(b₁, …, bₙ)`.

That is, the set `{(a,b) | a ∼ b}` is a subalgebra of the direct product `A²` of two `A`.

The general notion of a *congruence relation* can be formally defined in the context of universal algebra, a field which studies ideas common to all algebraic structures. In this setting, a relation `R` on a given algebraic structure is called **compatible** if, for each `n` and each n-ary operation `μ` defined on the structure, whenever 

`R(a₁, a₁′) ∧ … ∧ R(aₙ, aₙ′)` 
then 
`R(μ(a₁, …, aₙ), μ(a₁′, …, aₙ′))`

A congruence relation on the structure is then defined as an equivalence relation that is also compatible.
