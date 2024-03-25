# Relations and categories

<!-- TOC -->

- [Categories of functions and relations](#categories-of-functions-and-relations)
  - [`Fun` category](#fun-category)
  - [`Par` category](#par-category)
  - [`Rel` category](#rel-category)
  - [Product category](#product-category)
- [Functors](#functors)
  - [Identity functor](#identity-functor)
  - [Constant functor](#constant-functor)
  - [Square and Product functors](#square-and-product-functors)
    - [Product functor](#product-functor)
    - [Square functor](#square-functor)
  - [Product functor](#product-functor-1)
  - [List functor](#list-functor)
  - [Powerset functor](#powerset-functor)
  - [Existential image functor](#existential-image-functor)
  - [Graph functor](#graph-functor)
- [Natural transformations](#natural-transformations)

<!-- /TOC -->

## Categories of functions and relations

### `Fun` category

**Fun** category of sets and total functions
- objects are sets
- arrows are *typed functions*

More precisely, an arrow is a triple `(f, A ,B)` in which set `A` contains the range of `f` and set `B` is the domain of `f`.

By definition, A is the target and B the source of `(f, A, B)`.

The identity arrow `idᴀ : A ← A` is the identity function on A.

The composition of two arrows `(f, A, B)` and `(g, C, D)` is defined iff B = C, in which case `(f, A, B) ∘ (g, B, D) = (f ∘ g, A, D)`, where, on the right, `f ∘ g` denotes the usual composition of functions.

### `Par` category

**Par** category of sets and partial functions
- objects are sets
- arrows are *partial functions*

The definition is similar to `Fun` except that, now, the triple `(f, A, B)` is an arrow if `A` contains the range of `f`, and `B` contains the domain of `f`.

Since a total function is a special case of a partial function, `Fun` is a subcategory of `Par`.

### `Rel` category

**Rel** category of sets and relations
- objects are sets
- arrows are *relations*

This time the arrows are triples `(R, A, B)`, where `R` is a subset of the Cartesian product `A×B`.

The target of `(R, A, B)` is A and the source B. 

The identity arrow `idᴀ : A ← A` is the relation `idᴀ = { (a, a) | a ∈ A }`.

The composition of arrows `(R, A, B)` and `(S, B, C)` is the arrow `(T, A, C)`, where, writing aRb for (a, b) ∈ R, we have `aTc = (∃b | aRb ∧ bSc)`.

### Product category

We can also combine two categories A and B to form another category `A×B`, called the **product category of A and B**.

The product category has, as objects, pairs `(A, B)`, where A is an object of A and B is an object of B. 

The arrows are pairs `(f, g)`, where `f` is an arrow of `A` and `g` is an arrow of `B`.

Composition is defined component-wise: `(f, g) ∘ (h, k) = (f ∘ h, g ∘ k)`

The identity arrow is `idᴀʙ = (idᴀ, idʙ)`.

## Functors

### Identity functor

Identity functor, `I : 𝒞 → 𝒞`
- obj: sends each object `x` in 𝒞 to itself, `x ⟼ x`
- arr: sends each arrow `f` in 𝒞 to itself, `f ⟼ f`, 
  where f : x → y and x,y are objects in 𝒞


Identity functor is an endofunctor on category `𝒞`.


### Constant functor

Constant functor, `Cₖ : 𝒞 → 𝒦`

- obj: each obj in category A is mapped to one and the same (constant) object `b` in category B; `b` is a particular, fixed object in cat B.
- arr: each arrow in category A is mapped to the identity arrow `Iᵇ` (the identity arrow of this constant object `b` in cat B to which all objects of A are mapped).

The constant functor from cat A to B is completely determined by the constant object b ∈ B, so it is usually denoted by subscripting it, as in `Kᵇ`.


### Square and Product functors

The Cartesian product between two sets takes a pair of sets `A` and `B` to their product `A×B`, defined by: `A×B = { (a,b) | ∀a ∈ A, ∀b ∈ B }`.

The Cartesian product of a set `A` with itself is just `A×A` or `A²`, or the square product, defined by `A² = { (a,b) | ∀ab ∈ A }`.

The Cartesian product `A×B` corresponds exactly to the **product functor**, while the square product `A²` corresponds to the **square functor**.

The same way as the Cartesian product requires two sets as args, `(A,B) ⟼ A×B`, the product functor requires two categories as arguments, `(𝒞,𝒟) ⟼ 𝒞×𝒟`.

The same way as the square product requires just one set as arg, `A ⟼ A²`, the square functor requires just one category as argument, `𝒞 ⟼ 𝒞²`.

#### Product functor

Product functor, `(⨉) : 𝑭𝒖𝒏 → 𝑭𝒖𝒏`


#### Square functor

Square functor, `(◌)² : 𝑭𝒖𝒏 → 𝑭𝒖𝒏`


----




Squaring functor, `(◌)² : Fun → Fun`
- obj: A ⟼ A²
  A² = { (a,b) | a,b ∈ A } 
  (A,A) ⟼ A×A
  (A,A) ⟼ A²
- arr: f²(a, b) = (f a, f b) 
    (f×f)(a, b) = (f a, f b)
  f ⟼ f²


The squaring functor is an endofunctor, corresponding to the Cartesian product of sets A and B when A = B; i.e. to the Cartesian product of A with itself, A². The product functor corresponds to the Cartesian product of sets A and B in general (particularly when A ≠ B).

Objects are sets in `Fun`, so the squaring functor maps each set A in `Fun` to A², `A ⟼ A²`, which is a set consisting of ordered pairs of elements `(a, b)`, where both `a,b ∈ A`.

Arrows are functions in `Fun`, so the squaring functor maps each function f in `Fun` to f², `f ⟼ f²`, which consists of a pair `(f a, f a)`, where `a,b ∈ A`.


### Product functor


Product functor, `(⨉) : Fun → Fun`
- obj: takes a pair of objects A and B to A×B, `(A,B) ⟼ A×B`
- arr: (f×g)(a, b) = (f a, g b)

It maps each pair of objects A and B to A×B, `(A,B) ⟼ A×B`. 

It maps each pair of functions f and g to f×g, `(f,g) ⟼ f×g`, defined by 
`(f×g)(a, b) = (f a, g b)`






The product functor is a *bifunctor*. A bifunctor is a functor whose source set is a product category. Bifunctors must obey these laws:
- F (Id, Id) = Id
- F (f ∘ h, g ∘ k) = F (f, g) ∘ F (h, k)


### List functor

List functor, `listr : Fun → Fun`
- obj: maps a set (obj) `A` to `listr A` (const list)
- arr: maps a fn `f` to `listr f`, meaning it applies `f` to each list elem
- Laws: `listr Id = Id` and `listr (f . g) = listr f . listr g`

### Powerset functor

Powerset functor, `P : Fun → Fun`
- obj: takes obg A to 𝒫(A)
- arr: takes fun `f` to 𝒫(f), meaning it applies `f` to each set element

Powerset and listr functor only differ in that one is on sets and the other on lists.

### Existential image functor

**Existential image functor**, `E : Rel → Fun`
- obj: takes a set A (object in Rel) to 𝒫(A)
- arr: maps a relation (arrow in Rel) to its *existential image function* defined by `(E R) x = { a | ∃b : aRb ∧ b ∈ x }`.

For example, the existential image of a finite set `x : 𝒫(ℕ)` under `≤` is the function that takes a set of sets to the union of its members, `E(∈) = ⋃`.

`E` and `P` both send a set to its powerset but these two functors are between different categories: `E : Rel → Fun`, while `P : Fun → Fun`. In fact, `P` is a *restriction* of `E` to functions.

### Graph functor

Graph functor, `J : Fun → Rel`
- obj: unchanged
- arr: maps functions to the corrsponding set of pairs

*Inclusion functor* is a functor that embeds one cat into another, larger category; e.g. `P = E J`.


## Natural transformations
