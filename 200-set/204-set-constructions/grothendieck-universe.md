# Grothendieck universe

https://en.wikipedia.org/wiki/Grothendieck_universe

A **Grothendieck universe** is a set `𝒰` with the following properties:
1. `B ∈ A ∧ A ∈ 𝒰 --> B ∈ 𝒰`
2. `A B ∈ 𝒰 --> {A,B} ∈ 𝒰`
3. `A ∈ 𝒰 --> 𝒫(A) ∈ 𝒰`
4. `{Aᵢ}{i ∈ I} ∈ 𝒰 ⋀ (I ∈ 𝒰) --> ⋃ {i ∈ I} Aᵢ ∈ 𝒰`


1. If `A` is an element of `𝒰` and `B` is an element of `A`, then `B` is also an element of `𝒰` (that is, 𝒰 is a transitive set).
[A/N: hmm, but is it though? or is `∈` is a transitive relation?]

`(A ∈ 𝒰 ∧ B ∈ A) -> B ∈ 𝒰`

If, for all elements `A` in `𝒰` and for all `B` in `A`, then `B` is also in `𝒰`.

`∀A∀B((A ∈ 𝒰 ∧ B ∈ A) -> B ∈ 𝒰)`



<!-- #region shootinshit -->

<details><summary>tinkering</summary>

  Q: Is the basic tenet `A ≠ {A}` somehow broken with this? Seems no…

  (B ∈ A ∧ A ∈ 𝒰) -> B ∈ 𝒰
  thus A ∈ 𝒰
       B ∈ 𝒰
       B ∈ A
   and A ≠ 𝒰
       B ≠ 𝒰

  So A = {…, B, …} and
    𝒰 = {…,     A    , B, …} i.e.
    𝒰 = {…, {…, B, …}, B, …}

  but if `A = {B}` then `(B ∈ {B} ∧ {B} ∈ 𝒰) -> B ∈ 𝒰`
     B  ∈ {B}
     B  ∈ 𝒰
    {B} ∈ 𝒰
  so what?

  or if `A = B` then `(B ∈ B ∧ B ∈ 𝒰) -> B ∈ 𝒰`
    B ∈ B
    B ∈ 𝒰
  so what?

</details>

<!-- #endregion -->


2. If `A` and `B` are in `𝒰`, then `{A,B}` is in `𝒰`.

`A,B ∈ 𝒰 -> {A,B} ∈ 𝒰`

For any two elements of 𝒰, their unordered pair is also in 𝒰.

`∀A∀B((A ∈ 𝒰 ∧ B ∈ 𝒰) -> {A,B} ∈ 𝒰)`

If A = B then `A ∈ 𝒰 -> {A} ∈ 𝒰`, i.e. for each element in 𝒰, its singleton set is also in 𝒰.


3. If `A` is in `𝒰`, then `𝒫(A)` is also in `𝒰`.

`A ∈ 𝒰 -> 𝒫(A) ∈ 𝒰`

The powerset of any element of `𝒰` is also in `𝒰`.

`∀A(A ∈ 𝒰 -> 𝒫(A) ∈ 𝒰)`

- (thinktank)
    A ∈ 𝒰 -> 𝒫(A) ∈ 𝒰
    A ∈ 𝒰
    𝒫(A) ∈ 𝒰
    A = {1,2}
    𝒫(A) = {∅, {1,2}, {1}, {2}}
    {∅, {1,2}, {1}, {2}} ∈ 𝒰
    implies that
      ∅ ∈ 𝒰
      A = {1,2} ∈ 𝒰
      {1} ∈ 𝒰
      {2} ∈ 𝒰
      {{1}, {2}} ∈ 𝒰




4. If `{Aᵢ} {i ∈ I}` is a family of elements (family of sets indexed by a set `I`) of `𝒰`, and `I` is an element of `𝒰`, then the n-ary union `⋃{i ∈ I}Aᵢ` is an element of `𝒰`.

`({Aᵢ}{i ∈ I} ∈ 𝒰) ∧ (I ∈ 𝒰) -> ⋃ {i ∈ I} Aᵢ ∈ 𝒰`

That is, all unions of all families of elements of `𝒰` indexed by an element of `𝒰` are in `𝒰`.


- ({Aᵢ}{i ∈ I} ∈ 𝒰) ∧ (I ∈ 𝒰) -> ⋃ {i ∈ I} Aᵢ ∈ 𝒰
  I = 𝔹
    Aᵢ{i ∈ 𝔹} ∈ 𝒰
  ∧
    𝔹 ∈ 𝒰
  →
    ⋃ {i ∈ 𝔹} Aᵢ ∈ 𝒰
  so
    (A₀ ∪ A₁) ∈ 𝒰



>A Grothendieck universe is meant to provide a set in which all of mathematics can be performed.

In fact, *uncountable Grothendieck universes* provide models of set theory with the *natural `∈`-relation*, *natural powerset operation*, etc.

Elements of a Grothendieck universe are sometimes called **small sets**.

The idea of universes is due to Alexander Grothendieck, who used them as a way of avoiding proper classes in algebraic geometry.

The existence of a nontrivial Grothendieck universe goes beyond the usual axioms of Zermelo-Fraenkel set theory; in particular it would imply the existence of *strongly inaccessible cardinals*.

*Tarski-Grothendieck set theory* is an axiomatic treatment of set theory, used in some automatic proof systems, in which every set belongs to a Grothendieck universe.

The concept of a Grothendieck universe can also be defined in a topos.

## Properties

As an example, we will prove an easy proposition.

Proposition: `x ∈ 𝒰 ∧ y ⊆ x --> y ∈ 𝒰`.   
Proof:    
`y ∈ 𝒫(x)` because `y ⊆ x`.   
`𝒫(x) ∈ 𝒰` because `x ∈ 𝒰`.   
thus, `y ∈ 𝒰`.


It is similarly easy to prove that any Grothendieck universe `𝒰` contains:

- All singletons of each of its elements, 
  `∀x(x ∈ 𝒰 -> {x} ∈ 𝒰)`

- All products of all families of elements of `𝒰` indexed by an element of `𝒰`, `{Aᵢ}{i ∈ I} ∈ 𝒰 ∧ (I ∈ 𝒰) --> Π {i ∈ I} Aᵢ ∈ 𝒰`

- All disjoint unions ⧉ of all families of elements of `𝒰` indexed by an element of `𝒰`, `{Aᵢ}{i ∈ I} ∈ 𝒰 ∧ (I ∈ 𝒰) --> ⊌ {i ∈ I} Aᵢ ∈ 𝒰`

- All intersections ⎅ of all families of elements of `𝒰` indexed by an element of `𝒰`, `{Aᵢ}{i ∈ I} ∈ 𝒰 ∧ (I ∈ 𝒰) --> ⋂ {i ∈ I} Aᵢ ∈ 𝒰`

- All functions between any two elements of `𝒰`, 
  `∀ x y f (x,y ∈ 𝒰 ∧ f : x → y --> f ∈ 𝒰)`

- All subsets ◰ of `𝒰` whose cardinal is an element of `𝒰`, 
  `∀x(x ⊆ 𝒰 --> |x| ∈ 𝒰)`

⅌

In particular, it follows from the last axiom that if `𝒰` is nonempty, it must contain all of its finite subsets and a subset of each finite cardinality.

We can also prove immediately from the definitions that the intersection of any class of universes is a universe.

## Grothendieck universes and inaccessible cardinals

There are two simple examples of Grothendieck universes:
- the empty set
- the set of all hereditarily finite sets `Vω`, `V̫`

🙣 🙚

Other examples are more difficult to construct. Loosely speaking, this is because Grothendieck universes are equivalent to strongly inaccessible cardinals. More formally, the following two axioms are equivalent:
- (U) For each set x, there exists a Grothendieck universe 𝒰 such that `x ∈ U`
- (C) For each cardinal `κ`, there is a strongly inaccessible cardinal `λ` that is strictly larger than `κ`.
