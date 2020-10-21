# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms

1. `0 ∈ ℕ`
2. `n ∈ ℕ -> S(n) ∈ ℕ`
3. `n ∈ ℕ -> S(n) ≠ 0`
4. `n,m ∈ ℕ. n = m <=> S(n) = S(m)`
5. `M ⊆ ℕ. 0 ∈ M ∧ [n ∈ M. S(n) ∈ M] -> M = ℕ`

The 1st axiom above corresponds to the original Peano's 1st axiom. The next 4 are in fact the last 4 axioms (6th, 7th, 8th and 9th) in the order as Peano had presented them. Peano had given for axioms 2-5 the axioms about equality, i.e. the 3 axioms that constitute equivalence relation (refl as 2nd, symm as 3rd, trans as 4th), plus the axiom of totality of equality (as 5th) over the set of the naturals.

## Minimal set of axioms

This set of five Peano axioms (at the top of the page) cannot be further reduced. We may try to admit axiom by axiom and see why not.

With axioms 1-2, we cannot define ℕ because there are counter-examples. One of them is to let `M = {0,1}` and let `S = { (0,1), (1,0) }`. This means that `M` is a set (presumably the set of naturals) and `S` is a successor function is identified by the set of ordered pairs (of the input and output values). Note that the last element of `S` means that `S(1) = 0`; we can define it like so because none of the axioms prevented us. So, this example satisfies both axioms but still doesn't define ℕ, since M ≠ ℕ, meaning these two axioms alone are not enough to define ℕ.

With axioms 1-3, we have fixed the previous issue; that is the third axiom explicitly fixes the problematic case by declaring that the succ of any natural cannot be 0. However, a new issue arises if we let `S = {(0,1), (1,2), (2,2)}` and thus `M = {0,1,2}`: the last element in `S` says that `S(2) = 2`. So, we need more constraints.

With axioms 1-4, we have a fix to the previous issue. The 4th axiom defines the equality relation between `S(n)` and `n` such that if n ∈ ℕ then S(n) ≠ n. It means that the successor of a natural number `n` is never equal to `n`. This follow from the equality that n = m iff S(n) = S(m). The new issue is now fuck-if-I-know-but-it's-induction-something-something.

With axioms 1-5, the induction on ℕ is well-defined, as is the set of the naturals itself. It states that *if* `M` is a subset of the set of the natural numbers, *and* `M` contains 0, *and* every element in `M` has a successor, *then* `M` is, in fact, the set of the natural numbers, `M = ℕ`.



## Peano's axioms

The **Peano axioms** are axioms that define the set of the natural numbers, provided by *Giuseppe Peano*.

The need to formalize arithmetic was underappreciated until *Hermann Grassmann* showed in the 1860s that many facts in arithmetic could be derived from more basic facts about the successor operation and induction. In 1881, *Charles Sanders Peirce* provided an axiomatization of natural-number arithmetic. In 1888, *Richard Dedekind* proposed another axiomatization of natural-number arithmetic, and in 1889, Peano published a simplified version of axioms.

The *Peano axioms* contain three types of statements.
- The first axiom (AX.I) asserts the existence of at least one member of the set of natural numbers.
- The next 4 (AX.II, AX.III, AX.IV, AX.V) are axioms about the *equality* rel:
  - the first 3 are axioms that constitute an **equivalence relation**
  - tha is: *reflexivity*, *symmetry* and *transitivity*
  - the last one in this group is the axiom about the *closure* of the binary operation of equality over the set of the natural numbers.
  - In modern treatments, these 4 axioms are often not excluded from the Peano axioms, instead being recognized as the axioms in the underlying logic.
- The next 3 axioms (AX.VI, AX.VII, AX.VIII) are the first-order statements about the natural numbers expressing the fundamental properties of the successor operation, (equality, closure, membership).
- The ninth (AX.IX), final axiom is a second-order statement of the principle of mathematical induction over the natural numbers.

A weaker, first-order, system called *Peano arithmetic* is obtained by explicitly adding the addition and multiplication operation symbols and replacing the second-order induction axiom with a first-order axiom schema.



## Peano's original formulation

1. `    0 ∈ ℕ`                                   [membership of 0]
2. `    n ∈ ℕ . n = n`                           [EQ reflexivity]
3. `  n,m ∈ ℕ . n = m <=> m = n`                 [EQ symmetry]
4. `x,y,z ∈ ℕ . x = y ∧ y = z -> x = z`          [EQ transitivity]
5. `    n ∈ ℕ . (n = m) -> m ∈ ℕ`                [EQ closure]
6. `    n ∈ ℕ -> S(n) ∈ ℕ`                       [closure of S over ℕ]
7. `  n,m ∈ ℕ . m = n <-> S(n) = S(m)`           [asserts eq wrt S]
8. `    n ∈ ℕ . S(n) ≠ 0`                        [property of S towards 0]
9. `M ⊆ ℕ. 0 ∈ M ∧ [n ∈ M. S(n) ∈ M] -> M = ℕ`   [property of induction]

The non-logical symbols appearing in the axioms are the constant symbol `0` and the unary function symbol `S`, representing the successor function.

1. Axiom I 
- states that the constant zero is a natural number
- `0 ∈ ℕ`

The next 4 axioms describe the equality relation (EQ). Since they are logically valid in first-order logic with equality, they are not considered an essential part of the Peano axioms in modern treatments.

2. Axiom II: Reflexivity
- For every natural number n, n = n
- `n ∈ ℕ . n = n`
- IF n is a Nat THEN n is EQ to itself
- that is, equality is reflexive

3. Axiom III: Symmetry
- For all natural numbers n and m, if n = m then m = n
- `n,m ∈ ℕ . n = m <=> m = n`
- IF n is a Nat AND m is a Nat THEN n is EQ to m iff m is EQ to n
- that is, equality is symmetric

4. Axiom IV: Transitivity
- For all natural numbers x, y and z, if x = y and y = z, then x = z
- `x,y,z ∈ ℕ -> [ (x = y ∧ y = z) -> (x = z) ]`
- IF x,y,z are Nat, THEN IF x is EQ to y AND y is EQ to z THEN x is EQ to z
- that is, equality is transitive

5. Axiom V: Totality under EQ
- For all a and b, if b is a natural and a = b, then a is also a natural
- `b ∈ ℕ -> [a = b -> a ∈ ℕ]`
- IF b is a Nat THEN IF a is EQ to b THEN a is a Nat
- that is, closure under equality
- i.e. the naturals numbers are closed under equality relation. This is pretty obvious when the relation is equality, but there are numerous other relations.


6. Axiom VI
- The set of the natural numbers is closed under the successor function
- `n ∈ ℕ -> S(n) ∈ ℕ`
- IF n is a Nat THEN the successor of n is a Nat
- Asserts the closure of S

7. Axiom VII
- For every natural number n, S(n) is a natural number.
- That is, the natural numbers are closed under S.
- `n ∈ ℕ -> S(n) ∈ ℕ`
- (again?) Asserts the membership

8. Axiom VIII
- For all natural numbers m and n, `m = n` if and only if `S(m) = S(n)`
- that is, S is an injection
- `n,m ∈ ℕ . m = n <-> S(n) = S(m)`

9. Axiom IX
- For every natural number n, `S(n) = 0` is false
- that is, there is no natural number whose successor is 0
- `n ∈ ℕ . S(n) ≠ 0` or `n ∈ ℕ . S(n) = 0 -> ⊥`


Peano's original formulation of the axioms used 1 instead of 0 as the "first" natural number.

This choice is arbitrary, as axiom 1 does not endow the constant 0 with any additional properties. However, because 0 is the additive identity in arithmetic, most modern formulations of the Peano axioms start from 0.

Axioms 1, 6, 7, 8 define a unary representation of the intuitive notion of natural numbers: the number 1 can be defined as S(0), 2 as S(S(0)), etc. However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that the successor function generates all the natural numbers different from 0. Put differently, they do not guarantee that every natural number other than zero must succeed some other natural number.

The intuitive notion that each natural number can be obtained by applying successor sufficiently often to zero requires an additional axiom, which is sometimes called the axiom of induction.

If K is a set such that:
0 is in K, and
for every natural number n, n being in K implies that S(n) is in K,
then K contains every natural number.
The induction axiom is sometimes stated in the following form:

If φ is a unary predicate such that:
φ(0) is true, and
for every natural number n, φ(n) being true implies that φ(S(n)) is true,
then φ(n) is true for every natural number n.

In Peano's original formulation, the induction axiom is a second-order axiom. It is now common to replace this second-order principle with a weaker first-order induction scheme. There are important differences between the second-order and first-order formulations, as discussed in the section § Models below.
