# Partial order

>A relation `R` on a set `S`, `R ⊆ S²` is a **partial order** if it is
- refl:      xRx
- antisymm:  xRy ∧ yRx ⇒ x = y
- trans:     xRy ∧ yRz ⇒ xRz

Partial order is abstraction of the `≤` relation, or the qualitative notion of comparison itself.

Partial means that not every pair of elements is comparable.

Canonical example of a partial order is set inclusion of 𝒫(S).

A binary relation on a set S, `≤`:
- refl:      x ≤ x
- antisymm:  x ≤ y ∧ y ≤ x ⇒ x = y
- trans:     x ≤ y ∧ y ≤ z ⇒ x ≤ z
- total order: ∀xy. x ≤ y ∨ y ≤ x

>**Total order** or **linear order** arises if all pairs of elements are comparable.

## Well-founded order

>`x < y` is a **strict (partial) order** and it means that `x ≤ y` and `x ≠ y`.

Given a poset `(S, ≤)` and `U ⊆ S`, we say `u ∈ U` is a *minimal element* of `U` if `∀v < u. v ∉ U`. Because this is only a partial order, it does not mean `u` is the smallest element of `U` - there may be some distinct but mutually incomparable elements - but minimal means that no element strictly smaller then `u` is in `U`; though, there may be smaller elements then `u` outside `U`.

A poset may not have a minimal element, or it could have a unique minimal element - in this case called *the least element*, or it could have many minimal elements (even infinitely many).

- ℕ, ℤ⋆ have a minimal element (0)
- ℤ, ℚ, ℚ, ℝ, ℝᐩ, … do not have a minimal element

>A poset `(S, ≤)` is **well-founded** if every non-empty subset `U ⊆ S` has a minimal element.

- ℕ is a well-founded order
- ℚᐩ is not well-founded order
- pairs `(m, n) ≤ (m', n')` if `m < m'`, or if `m = m'` and `n ≤ n'` are wfo. These is an interesting order cos there are elements which have infinitely many elements between them, e.g. (1,17) ≤ (2,5), yet it is a wfo.

```
(1,17) ≤ (2,5)
(1,17) ≤ (2,4)
(1,17) ≤ (2,3)
(1,17) ≤ (2,2)
(1,17) ≤ (2,1)
(1,17) ≤ (2,0)
(1,18) ≤ (2,5)
(1,19) ≤ (2,5)
(1,∞)  ≤ (2,0)
(1,17) ≤ (1,18)
(1,17) ≤ (1,19)
(1,18) ≤ (1,19)
(1,19) ≤ (1,19)
```

An order is well-founded iff it has no strictly decreasing sequences (chains): 
x₁ > x₂ > x₃ > …

>An order that is both well-founded and total is called **well-order**.

- ℕ is a well-order
- ℚ is not a well-order - it has infinitely descending chains with numerical ordering (but there are other orders when ℚ is well-ordered).
- ℝ is not a well-order (has infinitely descending chains), and it is seemed impossible to find any other kind of order to make it well-founded.

However, E. Zermelo proved that any set can be well-ordered.

*Zermelo's theorem (Zermelo's well-ordering principle)*: any set can be well-ordered assuming AC (axiom of choice).

*Zorn's lemma*: given a poset, if every increasing chain has a least upper bound (lub), then that poset has a maximal element.

AC, Zermelo's theorem and Zorn's lemma all turned out to be equivalent.

People don't want to give up on Zorn's lemma cos it is very useful, AC is contraversial, and nobody wants to believe in Zermelo's theorem, especially regarding well-ordering of ℝ cos there seems not be a way to figure out what that well-order could be.

## Induction

https://www.youtube.com/watch?v=HzYby2xo9NI&list=PL5A7YJbdLraFIVpCD3Kv3YUuSQ6OoJag2&index=14

Predicates are interchangible with (sub)sets; that is, a predicate describes a subset, and any subset may be described by a predicate,

U = { x  ∈ S | P(x) }

Here, predicate `P` describes a subset `U` of a set `S`.

*Principle of induction*: given a poset `(S, ≤)` (order is a crucial part of induction), it is inductive if `∀P. ∀x ∈ S. ((∀y < x. P y) ⇒ P x) ⇒ ∀x. P x`, that is, if every `y` strictly smaller then `x` satisfies `P`, then everything satisfies `P`.

Note that base case is taken care of by having a minimal element; `P` holds unconditionally for the minimal element.

Not all orderes are inductive.

>A order is **inductive** iff it is well-founded:

    well-foundedness ⇔ induction
