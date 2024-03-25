# Semiring

https://en.wikipedia.org/wiki/Semiring

In abstract algebra, a semiring is an algebraic structure similar to a ring, but without the requirement that each element must have an additive inverse.

>semiring (rig) = ring without additive inverse

The term *rig* is also used occasionally, suggesting that rigs lack `n` (inversion), i.e. rigs are rings without *additive inverse* (negative elements), similar to using *rng* to mean a ring without a *multiplicative identity*.

>rig = ring without additive inverse (n)
>rng = ring without multiplicative identity (i)

*Tropical semirings* are an active area of research, linking algebraic varieties with piecewise linear structures.

## Definition

A semiring is a (carrier) set `R` equipped with two binary operations
- additive operation, `+`
- multiplicative operation, `∙`
such that:
- `(R, +)` is a Commutative Monoid, with identity element `0`
  - additive associativity: `(a + b) + c = a + (b + c)`
  - additive identity (left and right): `0 + a = a = a + 0`
  - additive commutativity: `a + b = b + a`
- `(R, ∙)` is a Monoid, with identity element `1`
  - multiplicative associativity: `(a ∙ b) ∙ c = a ∙ (b ∙ c)`
  - multiplicative identity (left and right): `1 ∙ a = a = a ∙ 1`
- Multiplication by 0 (left and right) annihilates R:
  - multiplicative annihilation (zero element): `0 ∙ a = 0 = a ∙ 0`
- Multiplication (left and right) distributes over addition
  - multiplicative left distributivity:  `a ∙ (b + c) = (a ∙ b) + (a ∙ c)`
  - multiplicative right distributivity: `(a + b) ∙ c = (a ∙ c) + (b ∙ c)`


Compared to a ring, a semiring omits the requirement for aditive inverses; that is, it requires only a Commutative Monoid, not a Commutative Group. In a ring, the Additive Inverse requirement implies the existence of a Multiplicative Zero, so here it must be specified explicitly.

If a semiring's multiplication is commutative, then it is called a Commutative Semiring.

There are some authors who prefer to leave out the requirement that a semiring has a `0` or `1`. This makes the analogy between ring and semiring on the one hand, and group and semigroup on the other hand, work more smoothly. These authors often use *rig* for the concept of semirings as defined here.
- group = semigroup + inverse

A semiring in which every element is an *additive idempotent*, 
`∀ a ∈ R. a + a = a`, 
is called an **idempotent semiring**.

A **star semiring** or **closed semiring** 
is a semiring with an additional unary operator `❜` 
(called star or closure, `a⃰` ) satisfying    
`a⃰ = 1 + a ∙ a⃰ = 1 + a⃰ ∙ a`

A Kleene algebra is a star semiring with idempotent addition and some additional axioms. They are important in the theory of formal languages and regular expressions. `a❜ = 1 + a ∙ a❜ = 1 + a❜ ∙ a`
https://en.wikipedia.org/wiki/Kleene_algebra
