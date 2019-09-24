# Algebraic structure

<!-- TOC -->

- [The underlying set](#the-underlying-set)
- [The operations](#the-operations)
- [An example](#an-example)

<!-- /TOC -->


**Algebraic structure** is a carrier set together with operations on that carrier set, with the operations satisfying certain axioms.

A set with such an additional structure is also called an **algebra**. Some algebraic structures have friendly names, such as group, field, ring.

An algebraic structure, or algebra, is a type of mathematical object, more narrowly, it is a special mathematical structure. To satisfy the minimal requirements of becoming an algebraic structure, a mathematical structure must be equipped with a binary operation and obey a certain set of axioms.

3 parts of an algebraic structure:
1. a carrier set
2. a set of operations
3. a set of axioms


## The underlying set

A carrier (or underlying) set is a plain old set. For example, the set of natural numbers. In programming languages, a type is the underlying set. This set alone is never an algebra unless it has an additional structure "attached".


## The operations

Only when a carrier set is equipped with an operation and a set of axioms, it becomes an algebra. The operation that operates on (combines, relates) the elements of the set must satisfy the prescribed axioms.

Commonly, the operation is binary and denoted by a `⋆` ("star") or `•` ("dot").

Symbols repo for denoting a binary operation:
- common: ⋆ • ⋅ ⋄ ⁕ ⁎ ⋇ ⨳ ※ ⁜ ⁂ ⁑ ∵ ⁘ ⁙ ⊹ ⨉ ⨯ ⨰ ⨝ ⋈ ¤
- numeric: `a ① b`, `x ② y`, `w ③ z`, `x ⑴ y`, `a ⑵ b`, `w⑶z`
- superscripted: `a •¹ b`, `x *² y`, `a *³ b`, `x*⁴y`
- subscripted: `a *₀ b, x •₁ y, a•₂b, x*₃y, a*₄b`
- geo: □ ▧ ▤ ▨ ▩ ◙ ⊡ ⊞ ⊟ ⊠ ● ◓ ◑ ◐ ◎ ◍ ○ ◉ ◇ ◆ ◈ ◊ ↀ ↂ ↈ
- misc: ௹ ૱ ₯ ♪ ɤ ʁ ɷ ʭ ʬ ⩆ ⩋ ⫯ ⫰ ⫼ ⫶ ⫚ ⫙ ⫛ ⩨ ⫵ ⫲
- `(∀a,b ∈ G) ∧ (∀x,y ∈ M) . a ௹ b -> x ⫚ y`
- `h(u ⋆ v) = h(u) • h(v)`


## An example

A familiar group is the set of integers, $$\mathbb{Z}$$, together with addition (denoted by a plus sign), $$G = \{ \mathbb{Z}, +\}$$. This group upholds the axioms of totality, identity, associativity, invertibility and commutativity. Since commutativity is not the required group axiom, this is an abelian or commutative group.

The integers are closed under addition. There is a unique identity element, 0. Every integer has an inverse; when an integer is combined with its inverse, the identity element is produced; e.g. inverse pairs: (1,-1), (-1,1), (0,0).

$$\forall x,y,z \in \mathbb{Z}$$:
- closure: $$x+y \in \mathbb{Z}$$
- identity: $$x+0 = 0+x = x$$
- invertibility: $$x+(-x) = (-x) + x = 0$$
- associativity: $$x+(y+z) = (x+y)+z$$
- commutativity: $$x+y = y+x$$
