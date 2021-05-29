# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms

1. `0 ∈ ℕ`
2. `n ∈ ℕ -> S(n) ∈ ℕ`
3. `n ∈ ℕ -> S(n) ≠ 0`
4. `n,m ∈ ℕ. n = m <=> S(n) = S(m)`
5. `M ⊆ ℕ. 0 ∈ M ∧ [n ∈ M. S(n) ∈ M] -> M = ℕ`

The 1st axiom above corresponds to the original Peano's 1st axiom. The next 4 are in fact the last 4 axioms (6th, 7th, 8th and 9th) in the order as Peano had presented them. Peano had given for axioms 2-5 the axioms about equality, i.e. the 3 axioms that constitute equivalence relation (refl as 2nd, symm as 3rd, trans as 4th), plus the axiom of totality of equality (as 5th) over the set of the naturals.

## Minimal set of axioms

This set of 5 Peano axioms (at the top of the page) cannot be further reduced. We may try admitting axioms one by one to see why ww need all 5 to define ℕ.

With axioms 1 and 2, we have counter-examples: let `S={ (0,1), (1,0) }` and `M = {0,1}`; this means that `M` is a set (presumably, ℕ) and the successor fn `S` is identified by the set of ordered pairs; the last pair sends `S(1) = 0` and the first two axioms don't prevent us from doing so. Therefore, with just these two axioms 1) 0 is a ℕ 2) if n is a ℕ then S(n) is also, we have admited more things - we need to restict what is allowed to construct, that is, we need to restrict constructions so only ℕ can be constructed.

Adding the third axiom fixes the previous issue since it explicitly states that no natural number's successor is 0. On the other hand, we can let `S = {(0,1), (1,2), (2,2)}` and `M = {0,1,2}` allowing us to state that `S(2) = 2`. We need further restrictions.

By admitting the 4th axiom, we fix the previous problem by stating that two naturals are equal iff their successors are. Now S(2) = 2 <=> S(S(2)) = S(2) cannot hold. The new issue is now about [some words missing], if you can believe it! The 5th axiom restricts the constructible set (M) to be the subset of (in fact, to be the same as) ℕ by going on about the well-definedness of induction on ℕ (or M... or both?). It assumes that M is a subset of ℕ, stating that if M contains 0 and if every element in M has a successor that is also in M, then M is, in fact, none other than the set of the natural numbers, for M = ℕ.


## About the axioms

The **Peano axioms**, authored by Giuseppe Peano, define the (minimal correct set) of the natural numbers. This was provoked by the fact that the need to formalize arithmetic was still not well appreciated in Peano's time.
- 1860s, Hermann Grassmann showed that many facts in arithmetic could be derived from more basic facts about the successor and induction.
- 1881, Charles Sanders Peirce provided an axiomatization of arithmetic on ℕ.
- 1888, Richard Dedekind proposed another axiomatization of arithmetic on ℕ.
- 1889, Peano published a simplified version of his axioms.

The *Peano axioms* contain three types of statements:
- assertion of existence (AX.1)
- assertions of equality (AX.2-5): equivalence relation (reflexivity, symmetry, transitivity) and the closure of equality over the set
- first-order statements (AX.6-8): properties of succ (eq, closure, membership)
- second-order statement (AX.9) about the mathematical induction over ℕ

* In modern treatments, the four axioms about equality are often excluded, instead being recognized as the axioms in the underlying logic. Also, the induction axiom (AX.9) is a second-order statement - in modern treatments, it is common to replace it with a weaker *first-order induction scheme*. A weaker, first-order, system called *Peano arithmetic* is obtained by explicitly adding the addition and multiplication operation symbols and replacing the second-order induction axiom with a first-order axiom schema.



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


* Axioms 1, 6, 7, 8 define a unary representation of the intuitive notion of natural numbers: the number 1 can be defined as S(0), 2 as S(S(0)), etc. However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that the successor function generates all the natural numbers different from 0. Put differently, they do not guarantee that every natural number other than zero must succeed some other natural number. The intuitive notion that each natural number can be obtained (by applying S sufficiently often) requires an additional axiom, sometimes called the **axiom of induction**.

The axiom of induction:   

If M is a set such that 0 is in M    
and for every natural number n     
if n being in M implies that S(n) is in M     
then M contains every natural number.

M = { 0 ∈ M ∧ (∀m. m ∈ M -> S(m) ∈ M) }

M = { 0, S(0), S(S(0)), ... } = ℕ

M ⊆ ℕ -> ℕ ⊆ M


The induction axiom is sometimes stated in the following form:

If φ is a unary predicate    
such that φ(0) is true,    
and    
for every natural number n    
if    φ(n) is true implies that φ(S(n)) is true    
then  φ(n) is true   
for every natural number n (!?).

[ φ(0) ∧ ∀n. φ(n) -> φ(S(n)) ] -> φ(n)



(|if φ(n) is true for every natural number n    
then φ(n) is true for every natural number n |)
right...
