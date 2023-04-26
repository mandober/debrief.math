# Finitary relation

https://en.wikipedia.org/wiki/Finitary_relation
https://en.wikipedia.org/wiki/Theory_of_relations


* A finitary relation is a relation between finite number of sets.

* A finitary relation over sets `A₁, …, Aₙ` is a subset of the Cartesian product `A₁ × ⋯ × Aₙ`, that is, it is a set of n-tuples `⟨xᵢ, …, xₙ⟩` consisting of elements `xᵢ` in `Xᵢ`.

* A relation describes a possible connection between elements of an n-tuple.

* For example, the relation *"x is divisible by y and z"* is a 3-ary (ternary) relation consisting of the set of 3-tuples such that when substituted to `x`, `y` and `z`, respectively, make the sentence true:

`R(x,y,z) = { (x,y,z) ¦ y|x ⋁ z|x }`

* The non-negative integer `n` giving the *number of "places"* in the relation is called the *arity*, *adicity* or *degree* of the relation.
* A relation with n "places" is variously called an *n-ary relation*, *n-adic relation*, or *relation of degree n*.
* Relations with a finite number of places are *finitary relations*.
* It is also possible to generalize this concept to *infinitary relations* with infinite sequences.

* When all the sets involved in an n-ary relation are the same set, `A₁ = A₂ = … = Aₙ`, the relation is called **homogeneous relation**; otherwise it is a **heterogeneous relation**.

* An n-ary relation over sets `A₁, …, Aₙ` is an element of the powerset of `A₁ × ⋯ × Aₙ`, that is, `R(A₁, …, Aₙ) ∈ 𝓟(A₁ × ⋯ × Aₙ)`

* Nullary (0-ary) relations count only two members: the one that always holds, and the one that never holds. This is because there is only one 0-tuple, the empty tuple (). They are sometimes useful for constructing the base case of an induction argument.

* Unary (1-ary) relations are called *properties*.
* Unary relations can be viewed as a collection of members having some property.

* Binary (2-ary) relations are the most commonly studied form of finitary relations.

* Homogeneous relations relate sets that are of the same "type". In the following examples, we assume these are the integers relating to integers, i.e. the relations are on a set of integers, `𝓡(ℤ, ℤ, R ⊆ ℤ²)`:
  - equality, denoted by `=`, in statement such as `6 = 6`
  - inequality, denoted by `≠`, `<`, `>`, `>=`, `<=` in `5<6`, `4<=4`, `3≠5`
  - divisibility, denoted by `|`, in `13|143`
  - inclusion relation, `⊆`, in `R ⊆ A²`, `R ≠ A² -> R ⊂ A²`

* Heterogeneous relations relate sets that are not of the same "type".
  - set membership relation, `∈`, in `1 ∈ N`; since it relates (a set of) objects and (a set of) sets, `𝓞𝓫𝓳 ∈ 𝓢𝓮𝓽` which may be diff types.
