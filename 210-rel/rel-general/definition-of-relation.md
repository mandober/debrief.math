# Definition of relation


- Subset of the Cartesian product
- Element of the powerset
- Set-valued function
- Boolean-valued functions of two arguments
- isomorphism between relations and set-valued functions

## Subset of the Cartesian product

In math, the standard definition of relation R between sets A and B is as a subset of the Cartesian product A×B, i.e. `R ⊆ A×B`. Any subset of A×B defines a relation between these two sets.

## Element of the powerset

Equivalently, being defined as a subset of the Cartesian product A×B means that a relation is an element in the powerset, `R ∈ 𝒫(A×B)`.

## Set-valued function

Another way to define a relation is as a set-valued function, `f : A → 𝒫(B)`. This may be a partial function if the relation is not left-total, i.e. if it does not cover the entire source set A. It takes a single argument `a` from the source set `A` and outputs a set of elements of `B` that are associated to `a`.

e.g. `a₀ ⟼ {b₀, b₁, b₂}`, `a₁ ⟼ {b₁}`, …

If a relation is right-unique then it may be defined as a partial function.

If a relation is right-unique and left-total then it may be defined as a total function.

## Boolean-valued functions of two arguments

A relation can also be defined as a Boolean-valued functions of two arguments, `f : A×B → 𝔹`. The first argument `a` comes from the source set `A` and the second argument `b` comes from the target set `B` and the function outputs 'true' or 1 iff `aRb`.

e.g. `f a₀ b₀ = 1`, `f a₀ b₁ = 0`, `f a₀ b₂ = 1`, …

## Isomorphism between relations and set-valued functions




## other

The Cartesian product of sets is a relation, a total relation. Any subset of the product is also a relation. In fact, any set of ordered pairs can be understood as a relation, since the componenets of any ordered pair, in a set of ordered pairs, come from known (identifiable) sets.

*Binary relations* are the most common type of relations, and they are between two sets, more precisely, since relations have directionality, from set `A` to set `B`. Any binary relation is a subsets of the Cartesian product of A and B, so if we denote a relation by `R`, it is `R ⊆ A×B`; or, equivalently, it is the element in the powerset of the Cartesian product, `R ∈ 𝒫(A×B)`.

This lets us easily calculate the number of all possible relations between two sets: if n = |A| and m = |B|, then that number is `2ⁿᵐ`.

*Heterogeneous binary relation* is a binary relation between two different sets, while *homogeneous binary relation* is a binary relation on the same set.

The word "binary" means the arity of the realtion is 2, i.e. it is a 2-place relation. Thus, in a heterogeneous binary relation, the first elements of all ordered pairs that make up the relation come from set A, while all the second elements come from set B. In a homogeneous binary relation, both elements (components) of all ordered pairs come from the only set A.

Homogeneous (or endorelations) relations are thus contained to a single set; that is, all the elements of set A can be associated whatsoever, with arrows outgoing from any element and incoming into any element. A *ternary endorelation* is a 3-place relation on a single set A, so it consists of triples `(a,b,c)`, with all components of a triple originating from set A.

For bigger arities, endorelations are called *n-ary* (or n-place), where `n` is the arity (i.e. number of places in a tuple) of the relation.

Heterogeneous or exorelations are relations on different sets, i.e. they are relation that are not on the same set (i.e. not homogeneous). The most common type of heterogeneous relation between two sets is a binary relation, but the arity can be bigger than 2 even if the count of sets remains two. A ternary relation between sets A and B is thus a 3-place relation, but the 3 places in a triple (3-tuple) can now have different configurations; in fact, it is more common to say that a ternary relation is between 3 sets, A, B and C, and the cases where are of these two sets are the same are just special cases.

So arity determines the number of places in each tuple and also the number of sets between which the relation holds (and the cases when any two sets are equal are just special cases).



https://ncatlab.org/nlab/show/relation

>A relation is the extension of a predicate. 
That is, if you have a statement whose truth value may depend on some variables, then you get a relation that consists of those instantiations of the variables that make the statement true. Equivalently, you can think of a relation as a function whose target is the set of truth values.


## Arity, sets and relations

The correspondence between the arity and the number of sets involved in a relation can be easily modelled by always using `n`, possibly distinct, sets, for any `n`-ary relation. If n=2, then relations are binary and they are between two sets A and B, which incorrporates the case when A and B are the same set, as the special case. And similarly for other values of `n`.


For arity n = 2, binary relations are subsets of `R ⊆ A×B`. 
The spacial case is when the sets are the same, then `R ⊆ A×A`.

For arity n = 3, ternary relations are subsets of `R ⊆ A×B×C`. 
There are 4 spacial cases when some of these 3 sets are the same:
- all 3 sets are the same: `R ⊆ A×A×A`
- two of 3 sets the same: `A×A×B`, `A×B×A`, `B×A×A`

For example,
- relation with the signature `R ⊆ A×A×A` can be used to model addition, with A being equal to ℕ, `(+) ⊆ ℕ×ℕ×ℕ`
- relation `R ⊆ A×A×B` can be used to model subtraction, when A is ℕ and B is ℤ,
`(-) ⊆ ℕ×ℕ×ℤ`



For arities > 3, we call them n-ary relations, and express them using the n-ary Cartesian product over a family of sets. So, if `𝓕 = { A₀, A₁, …, Aₙ }` is a family of set, the Cartesian product over 𝓕 is:   
`A₀ × A₁ × … × Aₙ` = `Π {i ∈ I} {Aᵢ}` = `Π {i=0..n} {Aᵢ}`    
where `I` the indexing set, like an initial segment of the natural numbers, from 0 to some number `n`, `I = {0, 1, …, n}` with n ∈ ℕ.



- n-ary relation is a subset of `A₀×A₁×…×Aₙ`


, or on A
- A ternary relation, n = 3, is nominally between 3 sets, A, B, C, with the special cases:
  - A=B, C, so A×A×C
  - A=C, B





In general, a binary relation between sets A and B is specified via the set-builder notation, `R = { ⟨a,b⟩ | a ∈ A, b ∈ B }`. It is difficult to express it as a FOL formula because the universal quantification works only for defining Cartesian product, `A×B = { ⟨a,b⟩ | ∀a ∈ A, ∀b ∈ B }` (and it is the total relation between A and B), but the existential quantification would exclude the empty relation, which along with the total and identity relation, is one of the 3 easily identifiable and always possible relations between any two sets. All other relations between two sets are somewhere between the empty (null) and total (universal) relation, the space of relations which is separated by the identity relation smack dub the middle. However identity relation is only possible if the two sets are actually the same set, i.e. identity is always an endorelation.






A relation `R` on a (finite or infinite) family of sets `𝓕 = {A₀,…,Aₙ}` is a subset of their Cartesian product, `A₀ × … × Aₙ`.
`R ⊆ A₀ × … × Aₙ`

Equivalently, it is an element in the powerset of their Cartesian product, 
`R ∈ 𝒫(A₀ × … × Aₙ)`
