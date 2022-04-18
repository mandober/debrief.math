# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms

In mathematical logic, **the Peano axioms** (aka *Dedekind-Peano axioms*, *Peano postulates*) are the axioms that define the set of the natural numbers as compiled by the XIX century Italian mathematician Giuseppe Peano.

The original Peano's axioms (9) in the second-order formulation:

```js
1.        0 ∈ ℕ                                      [membership of 0]
2.       ∀n ∈ ℕ. n = n                               [Reflexivity  of eq]
3.      ∀nm ∈ ℕ. n = m <=> m = n                     [Symmetry     of eq]
4.     ∀kmn ∈ ℕ. [(k = m) ∧ (m = n)] -> (k = n)      [Transitivity of eq]
5.       ∀n ∈ ℕ. n = m -> m ∈ ℕ                      [Closure      of eq]
6.    ∀n. n ∈ ℕ -> S n ∈ ℕ                           [closure of S over ℕ]
7.      ∀nm ∈ ℕ. n = m <=> S n = S m                 [S is injective]
8.       ∀n ∈ ℕ. S n ≠ 0                             [property of S wrt 0]
9. ∃K(0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = ℕ      [asserts induction]
```

The axioms have been used nearly unchanged in a number of metamathematical investigations, including research into the fundamental questions of whether number theory is consistent and complete.

The need to formalize arithmetic was not well appreciated until the work of Hermann Grassmann, who showed in the 1860s that many facts in arithmetic could be derived from more basic facts about the successor operation and induction. In 1881, Charles Sanders Peirce provided an axiomatization of arithmetic on natural numbers. In 1888, Richard Dedekind proposed another axiomatization of arithmetic on natural numbers. In 1889, Peano published a simplified version of his axioms in his book "The principles of arithmetic presented by a new method" ("Arithmetices principia, nova methodo exposita").

The nine Peano axioms contain three types of statements:
- (1) The first axiom asserts the existence of at least one member of the set of natural numbers, i.e. that `0` is in this set, `0 ∈ ℕ`.
- (2-5) The next 4 are general statements about equality; in modern treatments these are often not taken as part of the Peano axioms, but rather as axioms of the underlying logic.
- (5-8) The next 3 axioms are first-order statements about natural numbers expressing the fundamental properties of the successor operation.
- (9) The ninth axiom is a second order statement of the principle of mathematical induction over the natural numbers, which makes this formulation close to second-order arithmetic. A weaker first-order system called *Peano arithmetic* is obtained by explicitly adding the addition and multiplication operation symbols and replacing the second-order induction axiom with a first-order axiom schema.

Contents
- Introduction
- Historical second-order formulation
  - Defining arithmetic operations and relations
    - Addition
    - Multiplication
    - Inequalities
  - Models
    - Set-theoretic models
    - Interpretation in category theory
  - Consistency
- Peano arithmetic as first-order theory
  - Equivalent axiomatizations
  - Undecidability and incompleteness
  - Nonstandard models
    - Overspill


## Historical second-order formulation

When Peano formulated his axioms, the language of mathematical logic was in its infancy. The system of logical notation he created to present the axioms did not take on, but it influenced modern notation for some symbols:
- the symbol for set membership, `∈`, was derived from Peano's `ε`
- alternative symbol for implication, `⊃`, came from Peano's reversed `C`

Peano maintained a clear distinction between mathematical and logical symbols, a practice that was not yet common in mathematics; such a separation was first introduced in the Frege's "Begriffsschrift" in 1879. Peano was unaware of Frege's work and independently created his own logical apparatus based on the work of Boole and Schröder.

The Peano axioms define the set of the natural numbers, `ℕ`, and their arithmetical properties. The non-logical symbols include a constant `0` (zero) and a unary function `S` (successor).

### The original axioms

The first axiom (Ax.1) declares the constant `0` to be a natural number. Actually, Peano's original formulation used `1` instead of `0` as the first natural number, but he reverted to `0` when he presented the axioms in the "Formulario mathematico".

1. 0 is a natural number.

(Ax.1) `0 ∈ ℕ`

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


Axioms 1, 6, 7, 8 define a unary representation of the intuitive notion of natural numbers: the number 1 can be defined as S(0), 2 as S(S(0)), etc.

However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that `S` *generates all the natural numbers different from 0*. The intuitive notion that each natural number can be obtained by applying `S` sufficiently often to `0` requires an additional axiom, the axiom of induction.

9. (i) The axiom of induction:

    1. if `K` is a set such that   
    2. `0` is in `K`, and   
    3. for every natural number `n`,   
    4. `n` being in `K` implies `S(n)` is in `K`   
    5. then `K` contains every natural number.

The problematic part is the first line "if `K` is a set" - how are we to denote it? There is no notation to assert that K is a set, however, perhaps this is equivalent to saying that there exists a set K; or alternatively, that K is a subset of the set ℕ, although there is no set ℕ yet, we're just defining it! Thus, the first approach seems more reasonable. The last line also asserts the set ℕ, which is usually denoted by `K = ℕ`, but, again, there is not set ℕ!

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


## Defining arithmetic operations

If we use the *second-order induction* axiom, it is possible to define addition, multiplication and total ordering on ℕ directly, using the axioms.

However, with *first-order induction*, this is not possible, so addition and multiplication are often added as axioms.

The respective functions and relations are constructed in set theory or second-order logic, and can be shown to be unique using the Peano axioms.

### Addition

Addition (`+`) is a recursive function that maps two natural numbers to another one:

```js
a + 0 = a                     A.1
a + S(b) = S(a + b)           A.2
```

### Multiplication

Multiplication (`⨯`) is a recursive function that maps two natural numbers to another one:

```js
a ⨯ 0 = a                     M.1
a ⨯ S(b) = a + (a ⨯ b)        M.2
```
