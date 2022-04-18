# Relation theory ∷ Types of relations

* All relations `R` are binary relations and on a set `A`
* `a ~ b` ≡ `(a,b) ∈ R`
* `a ≁ b` ≡ `(a,b) ∉ R`
* `∀a,b,c ∈ A`

- reflexive:             `∀a(a ∈ A -> (a ~ a))`
- irreflexive:           `∀a(a ∈ A -> (a ≁ a))`
- coreflexive:           `∀a,b ∈ A. (a ~ b -> a = b)`
- quasi-reflexive left:  `∀a,b ∈ A. ((a ~ b ⋀ a ≠ b) -> a ~ a)`
- quasi-reflexive right: `∀a,b ∈ A. ((a ~ b ⋀ a ≠ b) -> b ~ b)`
- quasi-reflexive:       `∀a,b ∈ A. ((a ~ b ⋀ a ≠ b) -> (a ~ a ⋀ b ~ b))`

- symmetric:             `∀a,b ∈ A. (a ~ b ⟺ b ~ a)`
- asymmetric:            `∀a,b ∈ A. (a ~ b ⟺ b ≁ a)`
- anisymmetric:          `∀a,b ∈ A. ((a ~ b ⋀ b ≁ a) -> a = b)`

- transitive:       `((a ~ b ⋀ b ~ c) -> a ~ c)`
- intransitive:     `((a ~ b ⋀ b ~ c) -> a ≁ c)`
- quasi-transitive: `((a ~ b ⋀ b ≁ a) ⋀ (b ~ c ⋀ c ≁ b)) -> (a ~ c ⋀ c ≁ a)`

- connected:          `a ≠ b -> (a ~ b ⋁ b ~ a)`
- strongly-connected:         `(a ~ b ⋁ b ~ a)`

- left-total:
  ∀a(a ∈ A -> ∃b(b ∈ B ⋀ a ~ b))
  ∀a ∈ A. ∃b ∈ B. (a, b) ∈ R

- right-total:
  ∀b(b ∈ B -> ∃a(a ∈ A ⋀ a ~ b))
  ∀b ∈ B. ∃a ∈ A. (a, b) ∈ R


Let A and B be sets. Let R ⊆ A⨯B be a relation in A to B.
* Then R is *left-total* iff:  `∀a ∈ A. ∃b ∈ B. (a,b) ∈ R`. 
That is, iff every element of A relates to some element of B.
* Then R is *right-total* iff: `∀b ∈ B. ∃a ∈ A. (a,b) ∈ R`. 
That is, iff every element of B is related to by some element of A. 
That is, iff `Img(R) = B` where Img(R) denotes the image of R.


* A binary relation `∼` on a set `A` is **left euclidean** if every two elements, both related to a third one, are also related to each other:   
- ∀a,b,x ∈ A. `x ∼ a, x ∼ b |- a ∼ b`
* A relation ∼ is **right euclidean** if this holds in the other direction:   
- ∀a,b,x ∈ A. `a ∼ x, b ∼ x |- a ∼ b`

* Euclidean (co-euclidean, op-euclidean) is both:

```js
∀a,b,x ∈ A. (a ∼ x ⋀ b ∼ x -> a ∼ b) ⋀ (x ∼ a ⋀ x ∼ b -> a ∼ b)

  (p ⋀ q -> r) ⋀ (s ⋀ t -> r)
= (p ⋀ q) ⋀ (s ⋀ t) --> r



(a ∼ x ⋀ b ∼ x -> a ∼ b) ⋀ (x ∼ a ⋀ x ∼ b -> a ∼ b) =
  ( (a ∼ x ⋀ b ∼ x) -> a ∼ b )
⋀ ( (x ∼ a ⋀ x ∼ b) -> a ∼ b )
-> a ∼ b


(a ∼ x ⋀ b ∼ x) ⋁ (x ∼ a ⋀ x ∼ b) |- a ∼ b

Γ, x ∼ a, x ∼ b |- a ∼ b        Γ, a ∼ x, b ∼ x |- a ∼ b
--------------------------------------------------
                    Γ |- a ∼ b

```

- left Euclidean:  `∀a,b,x ∈ A. (x ∼ a ⋀ x ∼ b) -> a ∼ b`
- right Euclidean: `∀a,b,x ∈ A. (a ∼ x ⋀ b ∼ x) -> a ∼ b`
- Euclidean:       `∀a,b,x ∈ A. (x ∼ a ⋀ x ∼ b) ⋁ (a ∼ x ⋀ b ∼ x) -> a ∼ b`







https://en.wikipedia.org/wiki/Binary_relation



* Category: Properties of binary operations
https://en.wikipedia.org/wiki/Category:Properties_of_binary_operations

- Alternativity
- Anticommutative property
- Antidistributive
- Associative property
- Cancellation property
- Commutative property
- Distributive property
- Divisibility (binary operation)
- Flexible algebra
- Idempotence
- Identity element
- Jacobi identity
- Jordan identity
- Leibniz identity
- N-ary associativity
- Nil algebra
- Nilpotent algebra
- Power associativity
- Power commutativity
- Quasi-commutative property
- Sub-distributivity
- Symmetric function
- Unital algebra

https://en.wikipedia.org/wiki/Alternativity
https://en.wikipedia.org/wiki/Anticommutative_property
https://en.wikipedia.org/wiki/Antidistributive
https://en.wikipedia.org/wiki/Associative_property
https://en.wikipedia.org/wiki/Cancellation_property
https://en.wikipedia.org/wiki/Commutative_property
https://en.wikipedia.org/wiki/Distributive_property
https://en.wikipedia.org/wiki/Divisibility_(binary_operation)
https://en.wikipedia.org/wiki/Flexible_algebra
https://en.wikipedia.org/wiki/Idempotence
https://en.wikipedia.org/wiki/Identity_element
https://en.wikipedia.org/wiki/Jacobi_identity
https://en.wikipedia.org/wiki/Jordan_identity
https://en.wikipedia.org/wiki/Leibniz_identity
https://en.wikipedia.org/wiki/N-ary_associativity
https://en.wikipedia.org/wiki/Nil_algebra
https://en.wikipedia.org/wiki/Nilpotent_algebra
https://en.wikipedia.org/wiki/Power_associativity
https://en.wikipedia.org/wiki/Power_commutativity
https://en.wikipedia.org/wiki/Quasi-commutative_property
https://en.wikipedia.org/wiki/Sub-distributivity
https://en.wikipedia.org/wiki/Symmetric_function
https://en.wikipedia.org/wiki/Unital_algebra


## Ordered Sets

- A reflexive and transitive relation R on a set S is called a preorder on S

- We denote a preorder by `s < t` "is-less-than" to mean `s ≤ t ∧ s ≠ t`.

- A preorder (on a set S) that is also antisymmetric is called a partial order
on S.

- A partial order ≤ is called a total order if it also has the property that,
for each s and t in S, either `s ≤ t` or `t ≤ s`.

- Suppose that ≤ is a partial order on a set S and s and t are elements of S. An element `j ∈ S` is said to be a join (or least upper bound) of s and t if `s ≤ j` and `t ≤ j`, AND for any element `k ∈ S` with `s ≤ k` and `t ≤ k`, we have `j ≤ k`.

- an element `m ∈ S` is a meet (or greatest lower bound) of s and t if `m ≤ s` and `m ≤ t`, AND for any element `n ∈ S` with `n ≤ s` and `n ≤ t`, we have `n ≤ m`

- a reflexive, transitive, and symmetric relation on a set S is called
an equivalence on S.

- let R is a binary relation on a set S. The reflexive closure of R is the smallest reflexive relation R' that contains R. "Smallest" in the sense that if R'' is some other reflexive relation that contains all the pairs in R, then we have `R' ⊆ R''`

- the transitive closure of R is the smallest transitive relation R' that contains R

- The transitive closure of R is often written R+

- The reflexive and transitive closure of R is the smallest reflexive and transitive relation that contains R, often written R∗.

- Let preorder ≤ on a set S. A decreasing chain in ≤ is a sequence s1,s2,s3,... of elements of S such that each member of the sequence is strictly less than its predecessor: `si+1 < si` for every i.

- Chains can be either finite or infinite

- Suppose we have a set S with a preorder ≤. We say that ≤ is well
founded if it contains no infinite decreasing chains. For example, the usual order on the natural numbers, with `0 < 1 < ...`, is well founded, but the same order on the integers, `...< −1 < 0 < 1 <...` is not. We sometimes omit mentioning ≤ explicitly and simply speak of S as a well-founded set.
