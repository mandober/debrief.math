# Composition of relations

## Composition of Relations aka Relational Composition

## Definition

Let `R : X → Y` and `S : Y → Z` be relations; their (relational) composition, or their multiplication, or product R ; S : X → Z is defined as the relation

`R;S := { (x, z) ∈ X×Z | ∃y ∈ Y | xRy ∧ ySz }`

Concerning composition, there exist left unit elements and right unit elements, the
so-called identity relations.


The composition of two binary relations `R` and `S` forms a new composed binary relation denoted by `S ∘ R` or `R;S` or `RS` (which is different from `S ∘ R`).

When composing a rel `R ⊆ A×B` with rel `S ⊆ B×C`, there are two directions of composition:

When composing a rel `R ⊆ A×B` with rel `S ⊆ B×C`, there is only one direction of composition enforced by the codomain of R and domain of S. That is, the rel `R` must be applied first, followed by rel `S`, which can be denoted in 2 ways:
- left to right composition, `R ; S` (R then S)
- right to left composition, `S ∘ R` (S after R)


This is the same as with the composition of two function `f` an `g`
- left to right, `f ; g` (f then g), which is `g(f(x))`
- right to left, `g ∘ f` (g after f), which is `g(f(x))`


In the *calculus of relations*, the composition of relations is called relative multiplication. The composition is the relative product of the factor relations.

Function composition is the special case of composition of relations where all relations involved are functions.

The word "uncle" indicates a *compound relation*: for a person to be an uncle, he must be the brother of a parent. In algebraic logic it is said that the relation of Uncle, `xUz`, is the composition of relations "is a brother of" `xBy` and "is a parent of" `yPz`.

`U = P ∘ B` is equivalent to `xByPz ⇔ xUz`

Beginning with Augustus De Morgan, the traditional form of reasoning by syllogism has been subsumed by relational logical expressions and their composition.

  R ⊆ A×B
  S ⊆ B×C
  R ; S = S ∘ R
  R ⟳ S = S ⟲ R
  R ⥁ S = S ⥀ R
  R ⭮ S = S ⭯ R
  R ↻ S = S ↺ R

  I ∘ R = R = R ∘ I
  I;R = R = R;I
  I ∘ R = R = R ∘ I
  ⥁ ⥀   ⟳ ⟲    ⭮ ⭯    ↻ ↺


## Contents

- Definition
- Notational variations
- Mathematical generalizations
- Properties
- Composition in terms of matrices
- Heterogeneous relations
- Example
- Schröder rules
- Quotients
- Join: another form of composition

## Definition

If `R ⊆ X×Y` and `S ⊆ Y×Z` are two binary relations, then their composition, `RS`, is the relation:

`S ∘ R = R;S = RS = { (x,z) ∈ X×Z. ∃y ∈ Y. (x,y) ∈ R ∧ (y,z) ∈ S }`

`S ∘ R = R;S = RS = { (x,z) ∈ X×Z. ∃y ∈ Y. xRySz }`

In other words, `RS ⊆ X×Z` is defined by the rule that says `(x,z) ∈ RS` iff there is an element `y ∈ Y` such that `xRySz`, i.e. `(x,y) ∈ R ∧ (y,z) ∈ S`, that is, `x` is R-related to `y` which is S-related to `z`.

## Notational variations

`R;S`

The *semicolon* as an infix notation for composition of relations dates back to Ernst Schroder's textbook of 1895. Gunther Schmidt has renewed the use of the semicolon, particularly in "Relational Mathematics" by Gunther Schmidt (2011). The use of semicolon coincides with the notation for function composition used (mostly by computer scientists) in category theory, e.g. in "Category Theory for Computer Scientists" by Michael Barr and Charles Wells (1998).

`RS`

*Juxtaposition* is commonly used in algebra to signify multiplication, so too, it can signify relative multiplication.

- `S ∘ R`
- `S ∘ ₗ R` and `R ∘ ᵣ S`

A *small circle* has been used for the infix notation of composition of relations by John M. Howie in his books considering semigroups of relations; used in his book "Fundamentals of Semigroup Theory" by John M. Howie (1995). However, the small circle is widely used to represent composition of functions which reverses the text sequence from the operation sequence. The small circle was used in the introductory pages of "Graphs and Relations" by Gunther Schmidt and Thomas Ströhlein (1993). Further with the circle notation, subscripts may be used: some authors prefer to write `∘ ₗ` and `∘ ᵣ` explicitly when necessary, depending whether the left or the right relation is the first one applied.

- `S ∘ R`
- `R ⨾ S`

*Z notation* is a further variation encountered in CS that uses `∘` to denote the right composition, but `⨾` to denote left composition.

## Mathematical generalizations

Binary relations `R ⊆ X×Y` are morphisms `R : X → Y` in the category 𝚁𝚎𝚕. In 𝚁𝚎𝚕, the objects are sets (X, Y, …) and the arrows are binary relations, and the composition of arrows is exactly composition of relations.

The category 𝚂𝚎𝚝 of sets and functions is a subcategory of 𝚁𝚎𝚕. In 𝚂𝚎𝚝, the objects are sets (X, Y, …) and the arrows are functions `f : X → Y`, and the composition of arrows is the composition of functions.

Given a regular category `𝕏`, its category of internal relations `𝑹𝒆𝒍(𝕏)` has the same objects as `𝕏`, but now the morphisms `X → Y` are given by *subobjects* `R ⊆ X×Y` in `𝕏`. Formally, these are *jointly monic spans* between X and Y. Categories of internal relations are *allegories*. In particular, `𝑹𝒆𝒍(𝚂𝚎𝚝) ≅ 𝑹𝒆𝒍`.

Given a field `k` (or more generally a principal ideal domain), the category of relations internal to matrices over `k`, `𝑹𝒆𝒍(𝙼𝚊𝚝(k))` has morphisms `n → m` linear subspaces `R ⊆ k n ⊕ k m`. The category of linear relations over the finite field F2 is isomorphic to the phase-free qubit ZX-calculus modulo scalars.

## Properties

Composition of relations is associative: `R;(S;T) = (R;S);T`

The converse relation of R;S is `(R;S)ᵀ = Sᵀ;Rᵀ`. This property makes the set of all binary relations - on a set - a *semigroup with involution*.

* The composition of (partial) functions (that is, functional relations) is again a (partial) function.

* If R and S are injective, then R;S is injective.
* if R;S is injective, then R is injective.

* If R and S are surjective, then R;S is surjective.
* if R;S is surjective, then S is surjective.

The set of binary relations on a set X (that is, relations from X to X) together with (left or right) relation composition forms a *monoid with zero*, where the identity relation/function on X is the neutral element, and the empty set is the zero element.

## Composition in terms of matrices

Finite binary relations are represented by logical matrices. The entries of these matrices are either 0 or 1, depending on whether the relation represented is false or true for the row and column corresponding to compared objects.

Working with such matrices involves the Boolean arithmetic with 1+1=1 and 1×1=1. An entry in the matrix product of two logical matrices will be 1, then, only if the row and column multiplied have a corresponding 1.

Thus the logical matrix of a composition of relations can be found by computing the *matrix product* of the matrices representing the factors of the composition.

"Matrices constitute a method for computing the conclusions traditionally drawn by means of hypothetical syllogisms and sorites" ("Matrix development of the calculus of relations" by Irving Copilowish, 1948).

## Heterogeneous relations

Consider a heterogeneous relation `R ⊆ A×B`, i.e. where A and B are distinct sets. Then using composition of relation R with its converse `Rᵀ`, there are homogeneous relations `R;Rᵀ` (on A) and `Rᵀ;R` (on B).

If for all x ∈ A there exists some y ∈ B, such that xRy (that is, R is a left-total relation), then `∀x. xRRᵀx`, so that `R;Rᵀ` is a reflexive relation or `I ⊆ R;Rᵀ` where `I` is the identity relation, `{ xIx : x ∈ A }`.

Similarly, if R is a surjective relation then `Rᵀ;R ⊇ I = {xIx : x ∈ B}`.

In this case `R ⊆ R;Rᵀ;R`.

The opposite inclusion occurs for a *difunctional relation*.

The composition `(Rᶜ)ᵀ;R` is used to distinguish relations of *Ferrer's type*, which satisfy `R;(Rᶜ)ᵀ;R = R`.

## Example

Let A = { Fr, De, It, Ch } and B = { Fr, De, It } with the relation R given by `aRb` when `b` is a national language of `a`.

Since both A and B is finite, R can be represented by a logical matrix, assuming rows (top to bottom) and columns (left to right) are ordered alphabetically:

    1 0 0
    0 1 0
    0 0 1
    1 1 1

The converse relation Rᵀ corresponds to the transposed matrix, and the relation composition Rᵀ;R corresponds to the matrix product RᵀR when summation is implemented by logical disjunction. It turns out that the 3×3 matrix RᵀR contains a 1 at every position, while the reversed matrix product computes as:

          1 0 0 1
    RRᵀ = 0 1 0 1
          0 0 1 1
          1 1 1 1


This matrix is symmetric, and represents a homogeneous relation on A.

Correspondingly, `Rᵀ;R` is the universal relation on B, hence any two languages share a nation where they both are spoken (Switzerland).

Vice versa, the question whether two given nations share a language can be answered using `R;Rᵀ`.


## Schröder rules

For a given set V, the collection of all binary relations on V forms a Boolean lattice ordered by inclusion (⊆). Recall that complementation reverses inclusion: `A ⊆ B ⇒ Bᶜ ⊆ Aᶜ`.

In the calculus of relations it is common to represent the complement of a set by an overbar, `A̅ = Aᶜ`.

If S is a binary relation, let Sᵀ represent the converse relation, also called the *transpose*. Then the Schröder rules are:

`Q;R ⊆ S` ≡ `Qᵀ;Sᶜ ⊆ Rᶜ` ≡ `Sᶜ;Rᵀ ⊆ Qᶜ`

i.e. one equivalence can be obtained from another: select the first or second factor and transpose it; then complement the other two relations and permute them.

Though this transformation of an inclusion of a composition of relations was detailed by Ernst Schröder, in fact Augustus De Morgan first articulated the transformation as Theorem K in 1860. He wrote `L M ⊆ N implies Nᶜ Mᵀ ⊆ Lᶜ`.

With Schröder rules and complementation one can solve for an unknown relation X in relation inclusions such as `R;X ⊆ S` and `X;R ⊆ S`.

For instance, by Schröder rule `R;X ⊆ S` implies `Rᵀ;Sᶜ ⊆ Xᶜ`, and complementation gives `X ⊆ (Rᵀ;Sᶜ)ᶜ`, which is called the *left residual of `S` by `R`*.


## Quotients

Just as composition of relations is a type of multiplication resulting in a product, so some operations compare to division and produce quotients.

Three quotients are exhibited here:
- left residual
- right residual
- symmetric quotient

The *left residual* of two relations is defined presuming that they have the same domain (source), and the *right residual* presumes the same codomain (range, target). The *symmetric quotient* presumes two relations share a domain and a codomain.

Definitions:
- Left residual,  `A\B = (Aᵀ;Bᶜ)ᶜ` (`\` is NOT set difference, maybe)
- Right residual, `D/C = (Dᶜ;Cᵀ)ᶜ`
- Symmetric quotient, `syq(E,F) = (Eᵀ;Fᶜ)ᶜ ∩ ((Eᶜ)ᵀ;F)ᶜ`

Using Schröder's rules, `A;X ⊆ B` is equivalent to `X ⊆ A∖B`. Thus the left residual is the greatest relation satisfying `A;X ⊆ B`. Similarly, the inclusion `Y;C ⊆ D` is equivalent to `Y ⊆ D/C`, and the right residual is the greatest relation satisfying `Y;C ⊆ D`.

One can practice the logic of residuals with Sudoku.

## Join - another form of composition

A fork operator (<) has been introduced to fuse two relations 
`c : H → A` and 
`d : H → B` into 
`c (<) d : H → A×B`

The construction depends on projections 
`a : A×B → A` and 
`b : A×B → B` 
understood as relations, meaning that there are converse relations 
`aᵀ` and `bᵀ`.

Then the fork of `c` and `d` is given by
`c (<) d := c;aᵀ ∩ d;bᵀ`


Another form of composition of relations, which applies to general n-place relations for n ≥ 2, is the *join operation* of relational algebra. The usual composition of two binary relations as defined here can be obtained by taking their JOIN, leading to a ternary relation, followed by a projection that removes the middle component (SQL query language has JOIN operation).

## Refs

https://en.wikipedia.org/wiki/Composition_of_relations
https://en.wikipedia.org/wiki/Demonic_composition
