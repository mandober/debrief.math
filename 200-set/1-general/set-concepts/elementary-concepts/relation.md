# Set theory :: Definitions

## Relation
A relation is an association between sets. If all sets are the same set, it is a **homogeneous relation**, otherwise it is a **heterogeneous relation**. A heterogeneous binary relation is said to be *between* sets, while a homogeneous binary relation is said to be *on* a set, although these propositions are used interchangibly.

A relation is a set of *ordered pairs* and as such it is a *subset* of the *Cartesian product* of those sets, `R ⊆ S₀⨯…⨯Sₙ`, or, equivalently, an element in the powerset of the Cartesian product of sets, `R ∈ 𝒫(S₀⨯…⨯Sₙ)`.

Strictly, a relation between sets is not sufficiently determined by just stating the subset of the Cartesian product of the sets involved. The domain and codomain set must also be specified. The **domain set** is the first or the source set of a relation, while the **codomain sets** are other sets involved in a relation.

A heterogeneous binary relation `R ⊆ A⨯B` is fully determined by specifying all the ordered pairs that make the relation - which is also called **the graph of the relation** - along with specifying the elements of the domain set `A` and the codomain set `B`.

Among the different relations between a given collection of sets, there is always a **universal relation** equal to the Cartesian product of the sets, and an **empty relation** equal to the empty set. If even one of the sets involved in a relation is empty, then the only possible relation is the empty relation; this is because the Cartesian product of any set with the empty set always yields the empty set, `∅ × S₁ × S₂ × … × Sₙ = ∅`.

## N-ary relation
[Definition] An **n-place relation** or an **n-ary relation** on a collection of sets `S₁, S₂, …, Sₙ` is a set `R ⊆ S₁×S₂×…×Sₙ` of n-tuples of elements from `S₁` through `Sₙ`. We say that the elements `s₁ ∈ S₁` through `sₙ ∈ Sₙ` are related by `R` if the n-tuple `(s₁, …, sn)` is an element of `R`.

## Unary relation
Relations are usually taken to have at least two places, so a one-place relation is somewhat pecular. The things that are related then are not sets, but the elements of a set stand in relation to some properties. For example, all elements `x` of a set `A` have the property `∀x(x ∈ A)`; this may be denoted by a predicate `P` that means "belongs to a set `A`", such that `P(x)` means `x ∈ A`.

[Definition] A **one-place relation** or a **unary relation** on a set `S` is called a *predicate* or *property* on `S`. We say that `P` is true of an element `s ∈ S` if `s ∈ P`. To emphasize this intuition, we often write `P(s)` instead of `s ∈ P`, thus regarding the predicate `P` as the function that maps elements of `S` to truth values.

## Binary relation
[Definition] A **two-place relation** `R` on sets `S` and `T` is called a **binary relation**. We often write `aRb` instead of `(a, b) ∈ R`. When `S` and `T` are the same set `U`, we say that `R` is a binary relation on `U`.

## Notation for relations

Unary relations or predicates are denoted `P(x)` or `P x` to mean `x ∈ P`.

Binary relation often use the infix notation, `xRy`, to mean `(x,y) ∈ R`. Many well-known relations have an own standardized symbol used infix: `x≤y` (LE), `x<y` (LT), `x>y` (GT), `x≥y` (GE), `x = y` (EQ), `x≠y` (NE), `m|n` (divides), `a : A` ("term `a` has type `A`", which is a typing relations, although these are considered *judgements*, especially in type theory), etc.

There is a thin line between "proper" relations, as represented by the so-called *relational operators* (≤, >, …), judgements, arithmetic operations (+, -, ⨯, ÷, ^, …), and functions (operations) in general - after all, all functions are relations. Functional notation `f(x) = y` is just a specialized form of relational notation, `(x,y) ∈ f`.

Operation is just a function using the *mixfix syntax* - most commonly *infix syntax*, but some operations prefer *postfix syntax* like the factorial, `n!`, superfactorial `n!!`, or other *"fixities"*. Or equivalently, a function is just an operation using the *prefix syntax*.

The n-ary relations, where n > 2, are often denoted using a *mixfix concrete syntax*, where the elements in the relation are separated by a sequence of symbols that jointly constitute the name of the relation. For example, `a ≡ b (mod m)` (modulo arithmetic), `b ? t : e` (ternary conditional), `a + b = c` (addition as a relation); in PLT, the *typing relation* is denoted by `Γ ⊢ s : T` to mean that the triple `(Γ, s, T)` is in the typing relation.


 ☠ ☬ ⸗ ′ ″ ‴ ⁗ 7⧴ 6:->
⸖ ⸚ ⸓ ‧ ¨ ․ ꞉ : ⁚ ⁝ ⁞ ‥ … ⁖ ⸪ ⸬ ⸫ ⸭ ⁛ ⁘ ⁙
♔ ♕ ♖ ♗ ♘ ♙
♚ ♛ ♜ ♝ ♞ ♟
⚀ ⚁ ⚂ ⚃ ⚄ ⚅
♠ ♣ ♦ ♥
⍥ ⍨ ⍩
⌘ ♃ ♄ ♅ ♆
⎋¬nada = iznenada; ⎋¬⤓✔ = iz-ne-na-da
№
▩ mušema
▒ mušeme
♄emo ♄ete
♆ta
♅ohar
🐕УЉ
[sm:=t]☠
⍏ ⍖ ⍅ ⍆ kroz ⧴
⧭ iz
⎌ preko
⌤ izmedju
⌅ o
ℜ
⊌ unutar
⧆
⧟ sa
⧦ preko
⌁ protivu
≞ jednom
≛ na
↻ oko
⤷ unatoč
⋰ mic po mic
Ojⸯa
⚠ ☤
☫ luk
☧a♇a⅊
✃ ʹkaze
 ode
⚉ bijelo dugme
⚇ ⚆ ⚈ ⚉
♺ izokola ♲
↝ izokola
⏏ mrš
⎗ pali
⎘ makʹse
♗ laufer
⧊♖ tip∙top
⧉ na
AǮℨdajö⍥ℴ
¬₫idaj
↫ onuda
