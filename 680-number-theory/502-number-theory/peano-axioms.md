# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms

Modern definition of **Peano Axioms**
1. 0 ∈ N                                  (at least one element exists)
2. ∀n(n ∈ N -> S(n) ∈ N)                    (closure of S over N)
3. ∀n(n ∈ N -> S(n) ≠ 0)                      (exclude negative nums)
4. ∀n,m ∈ N. (n = m ⇔ S n = S m)                   (S is injective)
5. ∃K(0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = N   (induction)


In mathematical logic, the **Peano Axioms** (Dedekind-Peano axioms) are the axioms that define the set of the natural numbers, composed by the XIX century Italian mathematician Giuseppe Peano.

The original 9 Peano's axioms (in the second-order formulation due to the 9th):

```js
1.        0 ∈ ℕ                                   [membership of 0]
2.       ∀n ∈ ℕ. n = n                            [Reflexivity  of eq]
3.      ∀nm ∈ ℕ. n = m <=> m = n                  [Symmetry     of eq]
4.     ∀kmn ∈ ℕ. [(k = m) ∧ (m = n)] -> (k = n)   [Transitivity of eq]
5.       ∀n ∈ ℕ. n = m -> m ∈ ℕ                   [Closure      of eq]
6.    ∀n. n ∈ ℕ -> S n ∈ ℕ                        [closure of S over ℕ]
7.      ∀nm ∈ ℕ. n = m <=> S n = S m              [S is injective]
8.       ∀n ∈ ℕ. S n ≠ 0                          [excludes negatives nums]
9. ∃K(0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = ℕ   [asserts induction]
```

The axioms have been used nearly unchanged in a number of metamathematical investigations, including research into the fundamental questions of whether number theory is consistent and complete.

The need to formalize arithmetic was not well appreciated until the 1860.
* In 1860s, Hermann Grassmann showed that many facts in arithmetic could be derived from more basic facts about the successor operation and induction.
* In 1881, Charles Sanders Peirce provided an axiomatization of arithmetic on natural numbers.
* In 1888, Richard Dedekind proposed another axiomatization of arithmetic on natural numbers.
* In 1889, Peano published a simplified version of his axioms in his book "The principles of arithmetic presented by a new method" (`Arithmetices principia, nova methodo exposita`).

The 9 Peano axioms contain several types of logical statements:
- Axiom 1 asserts the existence of at least one member in the set of naturals.
- Axioms 2-5 are general statements about equality and in modern treatments these 4 axioms are often elided being the axioms of the underlying logic.
- Axioms 5-8 are first-order statements about natural numbers expressing the fundamental properties of the successor operation.
- Axiom 9, a statement in a *second-order* logic, states the principle of mathematical induction over the natural numbers, which makes this formulation close to second-order arithmetic.

A weaker first-order system called **Peano Arithmetic** is obtained by explicitly adding the addition and multiplication operation symbols and *replacing the second-order induction axiom with a first-order axiom schema*.

NOTE: Both `Peano Axioms` and `Peano Arithmetic` are often abbreviated as `PA`.

## Contents

<!-- TOC -->

- [Contents](#contents)
- [Historical second-order formulation](#historical-second-order-formulation)
  - [The original axioms](#the-original-axioms)
  - [Arithmetic operations and relations](#arithmetic-operations-and-relations)
    - [Addition](#addition)
    - [Multiplication](#multiplication)
    - [Inequalities](#inequalities)
  - [Models](#models)
    - [Set-theoretic models](#set-theoretic-models)
    - [Interpretation in category theory](#interpretation-in-category-theory)
  - [Consistency](#consistency)
- [Peano arithmetic as first-order theory](#peano-arithmetic-as-first-order-theory)
  - [Equivalent axiomatizations](#equivalent-axiomatizations)
  - [Undecidability and incompleteness](#undecidability-and-incompleteness)
  - [Nonstandard models](#nonstandard-models)
    - [Overspill](#overspill)

<!-- /TOC -->


## Historical second-order formulation

When Peano formulated his axioms, the language of mathematical logic was in its infancy. The system of logical notation he created to present the axioms did not take on, but it influenced modern notation for some symbols:
- the symbol for set membership, `∈`, was derived from Peano's `ε`
- alternative symbol for implication, `⊃`, came from Peano's reversed `C`

Peano maintained a clear distinction between mathematical and logical symbols, a practice that was not yet common in mathematics; such a separation was first introduced in the Frege's "Begriffsschrift" in 1879. Peano was unaware of Frege's work and independently created his own logical apparatus based on the work of Boole and Schröder.

The Peano axioms define the set of the natural numbers and their arithmetical properties. The non-logical symbols include a constant `0` (zero) and a unary function `S` (successor).

### The original axioms

1. Ax.1 declares the constant `0` to be a natural number (Peano had originally used `1` instead of `0`, but reverted to `0` soon after).

`0 ∈ ℕ`   (PAX.1)

The next four axioms (Ax.2-5) describe the *equality relation*. Since they are logically valid in first-order logic with equality, they are considered to be unnecessary in modern treatments, so the modern phrase "the Peano axioms" denotes the set of axioms that excludes these four.

2. For every natural number `x`, `x = x`, i.e. equality is reflexive.

(Ax.2) `∀x ∈ ℕ. x = x`

3. For all natural numbers `x` and `y`, if `x = y`, then `y = x`, i.e. equality is symmetric.

(Ax.3) `n,m ∈ ℕ . n = m ⟺ m = n`

4. For all natural numbers x, y and z, if x = y and y = z, then x = z, i.e. equality is transitive.

(Ax.4) `x,y,z ∈ ℕ . x = y ∧ y = z -> x = z`

5. For all a and b, if b is a natural number and a = b, then a is also a natural number, i.e. the natural numbers are closed under equality.

(Ax.5) `n ∈ ℕ . (n = m) -> m ∈ ℕ`

The remaining axioms define the arithmetical properties of the natural numbers. The natural numbers are assumed to be closed under a single-valued successor function `S`.

6. For every natural number n, S(n) is a natural number. That is, the natural numbers are closed under S.

7. For all natural numbers m and n, m = n if and only if S(m) = S(n). That is, S is an injection.

8. For every natural number n, S(n) = 0 is false. That is, there is no natural number whose successor is 0.


<details><summary>Dominoes</summary>
The chain of light dominoes may represent the set of natural numbers, `N`; however, axioms 1-8 are also satisfied by the set of all light and dark dominoes. (The non-contiguous set satisfies axiom 1 as it has a 0 element, 2-5 as it doesn't affect equality relations, 6 & 8 as all pieces have a successor, bar the zero element and axiom 7 as no two dominos topple, or are toppled by, the same piece). The 9th axiom (induction) limits N to the chain of light pieces ("no junk") as only light dominoes will fall when the nearest is toppled.
</details>


Axioms 1, 6, 7, 8 define a **unary representation** of the intuitive notion of natural numbers: the number 1 can be defined as S(0), 2 as S(S(0)), etc.

However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that `S` *generates all the natural numbers different from 0*. The intuitive notion that each natural number can be obtained by applying `S` sufficiently often to `0` requires an additional axiom, the axiom of induction.

9. (i) The axiom of induction:
    1. if `K` is a set such that   
    2. `0` is in `K`, and   
    3. for every natural number `n`,   
    4. `n` being in `K` implies `S(n)` is in `K`   
    5. then `K` contains every natural number.


DRIVEL: The problematic part is the first line "if `K` is a set" - how are we to denote it? There is no notation to assert that K is a set, however, perhaps this is equivalent to saying that there exists a set K; or alternatively, that K is a subset of the set ℕ, although there is no set ℕ yet, we're just defining it! Thus, the first approach seems more reasonable. The last line also asserts the set ℕ, which is usually denoted by `K = ℕ`, but, again, there is not set ℕ!

Ax.9 `(∃K(0 ∈ K ⋀ ∀n(n ∈ K -> Sn ∈ K))) -> (K = ℕ)`


9. (ii) To elide the problem of having to assert the set `K`, the axiom of induction is sometimes stated as follows, where the predicate `φ(x)` means that `x` is a member of the set `K`.

    1. If `φ` is a unary predicate such that   
    2. `φ(0)` is true and   
    3. for every natural number `n`   
    4. `φ(n)` being true implies that `φ(S(n))` is true   
    5. then `φ(n)` is true for every natural number `n`

AxSch.9 `φ(0) ⋀ (∀xφx -> φ(Sx)) -> ∀xφx`

In Peano's original formulation, the induction axiom is a second-order axiom. It is now common to replace this second-order principle with a weaker first-order induction scheme.

In the *first order Peano Arithmetic*, __PA__, which is the "standard" theory of arithmetic, the axioms are the axioms of Robinson arithmetic, together with the axiom scheme of induction:

1. ∀x(Sx ≠ 0)
2. ∀x(x ≠ 0 -> ∃y(Sy = x))
3. ∀x∀y(Sx = Sy -> x = y)
4. ∀x(x + 0 = x)
5. ∀x∀y(x + Sy = S(x + y))
6. ∀x(x ⨯ 0 = x)
7. ∀x∀y(x ⨯ Sy = x + (x ⨯ y))
8. φ(0) ⋀ (∀xφx -> φ(Sx)) -> ∀xφx

…for any formula `φ` in the language of PA. 
`φ` may contain free variables other than `x`.

Kurt Gödel's 1931 paper proved that PA is incomplete, and has no consistent recursively enumerable completions.

In the *Robinson arithmetic*, __Q__, the axioms (1) and (2) govern the distinguished element 0. (3) assures that S is an injection. Axioms (4) and (5) are the standard recursive definition of addition; (6) and (7) do the same for multiplication. Robinson arithmetic can be thought of as Peano arithmetic without induction. Q is a weak theory for which Gödel's incompleteness theorem holds.

Axioms of Robinson arithmetic:
1. ∀x(Sx ≠ 0)
2. ∀x(x ≠ 0 -> ∃y(Sy = x))
3. ∀x∀y(Sx = Sy -> x = y)
4. ∀x(x + 0 = x)
5. ∀x∀y(x + Sy = S(x + y))
6. ∀x(x ⨯ 0 = x)
7. ∀x∀y(x ⨯ Sy = x + (x ⨯ y))


### Arithmetic operations and relations

If we use the *second-order induction* axiom, it is possible to define addition, multiplication and total ordering on ℕ directly, using the axioms.

However, with *first-order induction*, this is not possible, so addition and multiplication are often added as axioms.

The respective functions and relations are constructed in set theory or second-order logic, and can be shown to be unique using the Peano axioms.

#### Addition

Addition is a recursive function that maps two natural numbers to another one

```hs
(+) :: ℕ -> ℕ -> ℕ
m +   0 = n                   A.1
m + S n = S (m + n)           A.2
```

* `0` is the *additive right identity*, `m + 0 = m`  [ADD.IDR]
* `0` is the *additive left identity*,  `0 + n = n`  [ADD.IDL]

by induction on `n`
1.    `0` is the left identity of   `0` , `0 + 0 = 0`
2. If `0` is the left identity of   `n` , `0 + n = n`
 then `0` is the left identity of `S(n)`, `S(0) + S(n) = S(n)`

(...)


* The structure `(ℕ, +)` is a *commutative monoid* with identity element `0`.

```hs
m + 0 = n                   A.ID.R (A.1)
0 + n = n                   A.ID.L
m + 0 = n = 0 + m           A.ID

m + (n + k) = (m + n) + k   A.ASSOC

m + n = n + m               A.COMM
```

(...)



* `(ℕ, +)` is also a *cancellative magma*, and thus embeddable in a group. 
The smallest group embedding ℕ is the integers, ℤ.


#### Multiplication

Similarly, multiplication is a function mapping two natural numbers to another one. Given addition, it is defined recursively as:

```hs
(*) :: ℕ -> ℕ -> ℕ
m *   0 = 0                   M.1
m * S n = m + (m * n)         M.2
```

`S(0)` is the *multiplicative right identity*, `m * S(0) = m` [M.ID.R]

```js
  m * S 0         // by M.2
= m + (m * 0)     // by M.1
= m + 0           // by A.1
= m
```

To show that `S(0)` is also the *multiplicative left identity* requires the induction axiom due to the way multiplication is defined.

Induction on `n`:
1. S(0) is the left identity of 0,              `S(0) *   0  = 0`
2. If   `S(0)` is the left identity of n,       `S(0) *   n  = n`,
   then `S(0)` is the left identity of `S(n)`,  `S(0) * S(n) = S(n)`

```js
S(0) *   0  = 0      [zero]     // S(0) is the left ID of 0
                                // Assuming that
S(0) *   n  = n      [ih]       // S(0) is the left ID of n
                                // show that
S(0) * S(n) = S(n)              // S(0) is the left ID of S(n)


  S(0) * S(n)         // 
= S(0) + S(0) * n     // 
= S(0) + n            // A.COMM
= n + S(0)            // A.2
= S(n + 0)            // A.1
= S(n)
```

Therefore, by the induction axiom `S(0)` is the multiplicative left identity of all natural numbers.

Multiplication is commutative and distributes over addition:

a(b+c) = ab + ac
(b+c)a = ba + ca

Thus, `(ℕ, +, 0, ⨯, 1)` is a commutative semiring.

#### Inequalities

The usual total order relation `⩽` on natural numbers can be defined as follows, assuming 0 is a natural number:    
`∀a,b ∈ N. (a ⩽ b) ⇔ (∃c ∈ N. a + c = b)`

This relation is stable under addition and multiplication:    
`∀a,b,c ∈ ℕ. (a ⩽ b) -> (a+c ⩽ b+c) ⋀ (ac ⩽ bc)`

Thus, the structure `(ℕ, +, ⨯, 1, 0, ⩽)` is an *ordered semiring*. And because there is no natural number between 0 and 1, it is a *discrete ordered semiring*.


**The axiom of induction** is sometimes stated in the following form that uses a stronger hypothesis, making use of the order relation `⩽`

For any predicate `φ`
- if `φ(0)` is true, and
- for every `n,k ∈ N`,
  - if `k ⩽ n` implies that `φ(k)` is true,
  - then φ(S(n)) is true,
- then for every `n ∈ N`, `φ(n)` is true.

`∀m ∈ N ( φ(0) ⋀ ∀n,k ∈ N. ((k ⩽ n) -> φ(k)) -> φ(S(n)) ) -> φ(m)`

This form of the induction axiom, called **strong induction**, is a consequence of the standard formulation, but is often better suited for reasoning about the `⩽` order.

To show that the naturals are *well-ordered*, i.e. that every nonempty subset of ℕ has a least element, one can reason as follows:

Let a nonempty `X ⊆ ℕ` be given and assume `X` has no least element.
- Because 0 is the least element of ℕ, it must be that `0 ∉ X`.
- For any `n ∈ ℕ`, suppose for every `k ⩽ n. k ∉ X`.
- Then `S(n) ∉ X`, for otherwise it would be the least element of `X`.
- Thus, by the strong induction principle, for every `n ∈ ℕ. n ∉ X`.
- Thus, `X ⋂ ℕ = ∅`, which contradicts `X` being a nonempty subset of `ℕ`.
- Thus `X` has a least element.

### Models

A model of the Peano axioms is a triple `(N, 0, S)`, where `N` is a (necessarily infinite) set, `0 ∈ N` and `S : N → N` satisfies the Peano axioms.

Dedekind proved that any two models of the Peano axioms (including the second-order induction axiom) are isomorphic. In particular, given two models `(Nₐ, 0ₐ, Sₐ)` and `(Nᵦ, 0ᵦ, Sᵦ)` of the Peano axioms, there is a unique homomorphism `f : Nₐ → Nᵦ` satisfying:

```js
(Nₐ, 0ₐ, Sₐ)
(Nᵦ, 0ᵦ, Sᵦ)

f : Nₐ → Nᵦ
f(0ₐ) = 0ᵦ
f(Sₐ(n)) = Sᵦ(f(n))
```

and it is a bijection. This means that the second-order Peano axioms are categorical (this is not the case with any first-order reformulation of the Peano axioms).


#### Set-theoretic models

Main article: 
https://en.wikipedia.org/wiki/Set-theoretic_definition_of_natural_numbers

The Peano axioms can be derived from set theoretic constructions of the natural numbers and axioms of set theory such as ZF.

The standard construction of the naturals, due to John von Neumann, starts from a definition of 0 as the empty set, and an operator `s` on sets defined as:

`s(n) := n ⋃ {n}`

The set of natural numbers `N` is defined as the intersection of all sets closed under `s` that contain the empty set. Each natural number is equal (as a set) to the set of natural numbers preceding (less then) it. The set `N` together with `0` and the successor function `s : N → N` satisfies the Peano axioms.

*Peano arithmetic* is equiconsistent with several weak systems of set theory. One such system is ZFC with the axiom of infinity replaced by its negation.

Another such system consists of *general set theory* (extensionality, existence of the empty set, and the axiom of adjunction), augmented by an axiom schema stating that a property that holds for the empty set and holds of an adjunction, whenever it holds of the adjunct, must hold for all sets.

#### Interpretation in category theory

The Peano axioms can also be understood using category theory.

Let `C` be a category with terminal object `1ᴄ`, and define the category of *pointed unary systems*, `US₁(C)` as follows:
- the objects of `US₁(C)` are triples `(X, 0x, Sx)` where `X ∈ C`, `0x : 1ᴄ → X` and `Sx : X → X` are `C`-morphisms.
- a morphism `φ : (X, 0x, Sx) → (Y, 0Y, SY)` is a C-morphism `φ : X → Y` with φ `0x = 0ʏ` and `φ Sx = Sʏ φ`.

Then `C` is said to satisfy the Dedekind-Peano axioms if `US₁(C)` has an initial object. This initial object is known as a natural number object in `C`.

If `(N, 0, S)` is this initial object, and `(X, 0x, Sx)` is any other object, then the unique map `u : (N, 0, S) → (X, 0x, Sx)` is such that
- `u(0) = 0x`
- `u(S x) = S x(u x)`

This is precisely the recursive definition of `0x` and `Sx`.

### Consistency

When the Peano axioms were first proposed, **Bertrand Russell** and others agreed that these axioms implicitly defined what we mean by a "natural number".

**Henri Poincaré** was more cautious, saying they only defined natural numbers if they were consistent; if there is a proof that starts from just these axioms and derives a contradiction such as 0 = 1, then the axioms are inconsistent, and don't define anything.

In 1900, **David Hilbert** posed the problem of proving their consistency using only finitistic methods as the second of his 23 problems.

In 1931, **Kurt Gödel** proved his second incompleteness theorem, which shows that such a consistency proof cannot be formalized within Peano arithmetic itself. Although it is widely claimed that Gödel's theorem rules out the possibility of a finitistic consistency proof for Peano arithmetic, this depends on exactly what one means by a finitistic proof. Gödel himself pointed out the possibility of giving a finitistic consistency proof of Peano arithmetic or stronger systems by using finitistic methods that are not formalizable in Peano arithmetic, and in 1958, Gödel published a method for *proving the consistency of arithmetic using type theory*.

In 1936, **Gerhard Gentzen** gave a proof of the consistency of Peano's axioms, using *transfinite induction* up to an ordinal called `ε₀`. Gentzen explained: "The aim of the present paper is to prove the consistency of elementary number theory or, rather, to reduce the question of consistency to certain fundamental principles". Gentzen's proof is arguably finitistic, since the transfinite ordinal `ε₀` can be encoded in terms of finite objects (for example, as a Turing machine describing a suitable order on the integers, or more abstractly as consisting of the finite trees, suitably linearly ordered). Whether or not Gentzen's proof meets the requirements Hilbert envisioned is unclear: there is no generally accepted definition of exactly what is meant by a finitistic proof, and Hilbert himself never gave a precise definition.

The vast majority of contemporary mathematicians believe that Peano's axioms are consistent, relying either on intuition or the acceptance of a consistency proof such as Gentzen's proof.

A small number of philosophers and mathematicians, some of whom also advocate *ultrafinitism*, reject Peano's axioms because accepting the axioms amounts to accepting the infinite collection of natural numbers.

In particular, addition (including the successor function) and multiplication are assumed to be total. Curiously, there are self-verifying theories that are similar to PA, but have subtraction and division instead of addition and multiplication, which are axiomatized in such a way to avoid proving sentences that correspond to the totality of addition and multiplication, but which are still able to prove all true `Π₁` theorems of PA, and yet can be extended to a consistent theory that proves its own consistency (stated as the non-existence of a Hilbert-style proof of "0=1").

## Peano arithmetic as first-order theory

All of the Peano axioms except the 9. axiom (the induction axiom) are statements in first-order logic.

The arithmetical operations of addition and multiplication and the order relation can also be defined using first-order axioms.

The axiom of induction is second-order, since it quantifies over predicates (equivalently, sets of natural numbers rather than natural numbers).

As an alternative one can consider a *first-order axiom schema of induction*. Such a schema includes one axiom per predicate definable in the first-order language of Peano arithmetic, making it weaker than the second-order axiom.

The reason that it is weaker is that the number of predicates in first-order language is countable, whereas the number of sets of natural numbers is uncountable. Thus, there exist sets that cannot be described in first-order language (in fact, most sets have this property).

First-order axiomatizations of Peano arithmetic have another technical limitation. In second-order logic, it is possible to define the addition and multiplication operations from the successor operation, but this cannot be done in the more restrictive setting of first-order logic. Therefore, the addition and multiplication operations are directly included in the signature of Peano arithmetic, and axioms are included that relate the three operations to each other.

The following list of axioms (along with the usual axioms of equality), which contains 6 of the 7 axioms of Robinson arithmetic, is sufficient for this purpose:
- ∀x(0 ≠ S x)
- ∀x,y (S x = S y -> x = y)
- ∀x(x + 0 = x)
- ∀x,y (x + S y = S (x + y))
- ∀x(x ∙ 0 = 0)
- ∀x,y (x ∙ S y = x + (x ∙ y))

In addition to this list of numerical axioms, Peano arithmetic contains the induction schema, which consists of a recursively enumerable set of axioms.

For each formula `φ(x, y₁, …, yₖ)` in the language of Peano arithmetic, the first-order induction axiom for `φ` is the sentence

`∀y̅( [ φ(0,y̅) ⋀ ∀x{φ(x,y̅) -> φ(S x,y̅)} ] -> ∀xφ(x,y̅) )`

where `y̅` is an abbreviation for `y₁, …, yₖ`.

The first-order induction schema includes every instance of the first-order induction axiom; that is, it includes the induction axiom for every formula `φ`.

### Equivalent axiomatizations

There are many different, but equivalent, axiomatizations of Peano arithmetic. While some axiomatizations, such as the one just described, use a signature that only has symbols for `0` and `S`, `+` and `⨯` operations, other axiomatizations use the language of ordered semirings, including an additional order relation symbol.

One such axiomatization begins with the following axioms that describe a discrete ordered semiring.
1. add is associative,       ∀x,y,z (((x + y) + z = x + (y + z))
2. add is commutative,       ∀x,y (x + y = y + x)
3. mul is associative,       ∀x,y,z (((x ∙ y) ∙ z = x ∙ (y ∙ z))
4. mul is commutative,       ∀x,y (x ∙ y = y ∙ x)
5. mul distributes over add, ∀x,y,z (x ∙ (y + z) = x ∙ y + x ∙ z)
6. 0 is identity for add,    ∀x (x + 0 = x)
6. 0 is absorbing for mul,   ∀x (x ∙ 0 = 0)
7. 1 is identity for mul,    ∀x (x ∙ 1 = x)
8. LT is transitive,         ∀x,y,z (x < y ⋀ y < z -> x < z)
9. LT is irreflexive,        ∀x (¬(x < x))
10. LT is trichotomous,      ∀x,y (x < y ⋁ y < x ⋁ x = y)
11. LT is monotonic for add, ∀x,y,z (x < y -> ∃z (x + z = y))
12. LT is monotonic for mul, ∀x,y,z (0 < z ⋀ x < y --> x ∙ z < y ∙ z)
13. Euclidean property,      ∀x,y (x < y -> ∃z (x + z = y))
14. Nats are discrete,       0 < 1 ⋀ ∀x (x > 0 -> x ⩾ 1)
15. 0 is the minimum,        ∀x (x ⩾ 0)


The theory defined by these axioms is known as `PA⁻`; the theory `PA` is obtained by adding the first-order induction schema.

An important property of `PA⁻` is that any structure `M` satisfying this theory has an initial segment (ordered by `⩽`) isomorphic to `ℕ`.

Elements in that segment are called *standard elements*, while other elements are called *nonstandard elements*.

### Undecidability and incompleteness

According to Gödel's incompleteness theorems, the theory of PA (if consistent) is incomplete.

Consequently, there are sentences of FOL that are true in the standard model of PA but are not a consequence of the FOL axiomatization.

Essential incompleteness already arises for theories with weaker axioms, such as *Robinson arithmetic*.

Closely related to the above incompleteness result (via Gödel's completeness theorem for FOL) it follows that there is no algorithm for deciding whether a given FOL sentence is a consequence of a first-order axiomatization of Peano arithmetic or not.

Hence, PA is an example of an undecidable theory. *Undecidability* arises already for the existential sentences of PA, due to the negative answer to Hilbert's 10. problem, whose proof implies that all computably enumerable sets are diophantine sets, and thus definable by existentially quantified formulas (with free variables) of PA.

Formulas of PA with higher quantifier rank (more quantifier alternations) than existential formulas are more expressive, and define sets in the higher levels of the arithmetical hierarchy.

### Nonstandard models

https://en.wikipedia.org/wiki/Non-standard_model_of_arithmetic

Although the usual natural numbers satisfy the axioms of PA, there are other models as well (called "non-standard models"); the *compactness theorem* implies that the existence of nonstandard elements cannot be excluded in FOL.

The *upward Löwenheim-Skolem theorem* shows that there are nonstandard models of PA of all infinite cardinalities. This is not the case for the original (second-order) Peano axioms, which have only one model, up to isomorphism. This illustrates one way the first-order system PA is weaker than the second-order Peano axioms.

When interpreted as a proof within a first-order set theory, such as ZFC, Dedekind's categoricity proof for PA shows that each model of set theory has a unique model of the Peano axioms, up to isomorphism, that embeds as an initial segment of all other models of PA contained within that model of set theory. In the standard model of set theory, this smallest model of PA is the standard model of PA; however, in a nonstandard model of set theory, it may be a nonstandard model of PA. This situation cannot be avoided with any first-order formalization of set theory.

It is natural to ask whether a countable nonstandard model can be explicitly constructed. The answer is affirmative as Skolem in 1933 provided an explicit construction of such a nonstandard model. On the other hand, Tennenbaum's theorem, proved in 1959, shows that there is no countable nonstandard model of PA in which either the addition or multiplication operation is computable.

This result shows it is difficult to be completely explicit in describing the addition and multiplication operations of a countable nonstandard model of PA. There is only one possible order type of a countable nonstandard model. Letting ω be the order type of the natural numbers, ζ be the order type of the integers, and η be the order type of the rationals, the order type of any countable nonstandard model of PA is ω + ζ·η, which can be visualized as a copy of the natural numbers followed by a dense linear ordering of copies of the integers.

#### Overspill

A cut in a nonstandard model M is a nonempty subset C of M so that C is downward closed (x < y and y ∈ C ⇒ x ∈ C) and C is closed under successor. A proper cut is a cut that is a proper subset of M. Each nonstandard model has many proper cuts, including one that corresponds to the standard natural numbers. However, the induction scheme in Peano arithmetic prevents any proper cut from being definable. The overspill lemma, first proved by Abraham Robinson, formalizes this fact.

**Overspill lemma**

Let `M` be a nonstandard model of PA and 
let `C` be a proper cut of `M`.

Suppose that `a̅` is a tuple of elements of `M` 
and `φ(x,a̅)` is a formula in the language of arithmetic so that    
`M |= φ(b,a̅)` for all `b ∈ C`

Then there is a `c` in `M` that is greater than 
every element of `C` such that    
`M |= φ(c,a̅)`
