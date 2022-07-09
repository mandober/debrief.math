# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms



$$
\begin{align}
0 ∈ ℕ                           \textsf{membership of 0}            \\
∀n. n ∈ ℕ → S n ∈               \textsf{closure of S over ℕ}        \\
∀n. n ∈ ℕ → S n ≠ 0             \textsf{property of S wrt 0}        \\
∀nm ∈ ℕ. n = m <=> S n = S m    \textsf{property of S wrt 0}        \\
\small{M ⊆ ℕ ∧ (0 ∈ M ∧ (∀n. n ∈ M → S n ∈ M)) → M = ℕ} \textsf{induction} \\
\end{align}
$$


## Modern Peano's axioms (5)

1. `0 ∈ ℕ`                                                [membership of 0]
6. `∀n. n ∈ ℕ -> S n ∈ ℕ`                                [closure of S over ℕ]
7. `∀n. n ∈ ℕ -> S n != 0`                               [property of S wrt 0]
8. `∀nm ∈ ℕ. n = m <=> S n = S m`                       [asserts eq wrt S]
9. `M ⊆ ℕ. [0 ∈ M ⋀ (∀n. n ∈ M -> S n ∈ M)] -> M = ℕ`  [asserts induction]


The 1st axiom above corresponds to the original Peano's 1st axiom. The next 4 are in fact the last 4 axioms (6th, 7th, 8th and 9th) in the order as Peano had presented them.

7 . ∀n. n ∈ ℕ -> S n != 0                               [property of S wrt 0]
8 . ∀nm ∈ ℕ. n = m <=> S n = S m                       [asserts eq wrt S]
9 . M ⊆ ℕ. [0 ∈ M ⋀ (∀n. n ∈ M -> S n ∈ M)] -> M = ℕ  [asserts induction]

Peano had given for axioms 2-5 the axioms about equality, i.e. the 3 axioms that constitute equivalence relation (refl as 2nd, symm as 3rd, trans as 4th), plus the axiom of totality of equality (as 5th) over the set of the naturals.



Modern Peano axioms (1,6-9), and the rest of the original axioms (2-5)

```js
1.        0 ∈ ℕ                                      [membership of 0]
6.    ∀n. n ∈ ℕ -> S n ∈ ℕ                           [closure of S over ℕ]
7.      ∀nm ∈ ℕ. n = m <=> S n = S m                 [S is injective]
8.       ∀n ∈ ℕ. S n ≠ 0                             [property of S wrt 0]
9. N ⊆ ℕ. [0 ∈ N ⋀ (∀n. n ∈ N -> S n ∈ N)] -> N = ℕ  [asserts induction]

2.       ∀n ∈ ℕ. n = n                               [Reflexivity  of eq]
3.      ∀nm ∈ ℕ. n = m <=> m = n                     [Symmetry     of eq]
4.     ∀kmn ∈ ℕ. [(k = m) ∧ (m = n)] -> (k = n)      [Transitivity of eq]
5.       ∀n ∈ ℕ. n = m -> m ∈ ℕ                      [Closure      of eq]
```



- Ax1 Z_MEMBERSHIP  : Z ∈ ℕ
- Ax6 S_CLOSURE     : ∀n. n ∈ ℕ -> S n ∈ ℕ
- Ax9 INDUCTION     : N ⊆ ℕ ⋀ (Z ∈ ℕ ⋀ (∀n. n ∈ N -> S n ∈ N)) -> N = ℕ
- Ax8 Z_PROPERTY    : ∀n. n ∈ ℕ -> S n ≠ Z
- Ax7 S_INJECTIVITY : 



## Original Peano's axioms (9)

```js
1.        0 ∈ ℕ                                      [membership of 0]     ✼
2.       ∀n ∈ ℕ. n = n                               [Reflexivity  of eq]
3.      ∀nm ∈ ℕ. n = m <=> m = n                     [Symmetry     of eq]
4.     ∀kmn ∈ ℕ. [(k = m) ∧ (m = n)] -> (k = n)      [Transitivity of eq]
5.       ∀n ∈ ℕ. n = m -> m ∈ ℕ                      [Closure      of eq]
6.    ∀n. n ∈ ℕ -> S n ∈ ℕ                           [closure of S over ℕ] ✼
7.      ∀nm ∈ ℕ. n = m <=> S n = S m                 [S is injective]      ✼
8.       ∀n ∈ ℕ. S n ≠ 0                             [property of S wrt 0] ✼
9. N ⊆ ℕ. [0 ∈ N ⋀ (∀n. n ∈ N -> S n ∈ N)] -> N = ℕ  [asserts induction]   ✼
```

1. Ax1 Z_MEMBERSHIP
2. Ax2 EQ_REFLEXIVITY
3. Ax3 EQ_SYMMETRY
4. Ax4 EQ_TRANSITIVITY
5. Ax5 EQ_CLOSURE
6. Ax6 S_CLOSURE
7. Ax7 S_INJECTIVITY
8. Ax8 S_Z_ANTAGONISM
9. Ax9 INDUCTION


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

Peano's original formulation contained 9 axioms, but the modern preentation of Peano's numbers includes just 5 axioms leaving out the subgroup of 4 axioms that deal with the relation of equality (2-5).

1. `    0 ∈ ℕ`                                   [membership of 0]

2. `    n ∈ ℕ . n = n`                           [eq: reflexivity]
3. `  n,m ∈ ℕ . n = m <=> m = n`                 [eq: symmetry]
4. `x,y,z ∈ ℕ . x = y ∧ y = z -> x = z`          [eq: transitivity]
5. `    n ∈ ℕ . (n = m) -> m ∈ ℕ`                [eq: closure]

6. `    n ∈ ℕ -> S(n) ∈ ℕ`                       [closure of S over ℕ]
7. `  n,m ∈ ℕ . m = n <-> S(n) = S(m)`           [asserts eq wrt S]
8. `    n ∈ ℕ . S(n) ≠ 0`                        [property of S towards 0]

9. `∃K(0 ∈ K ⋀ (∀n (n ∈ K -> S n ∈ K))) -> K = ℕ `   [property of induction]


The non-logical symbols appearing in the axioms:
- the constant symbol `0 :: ℕ` representing the initial natural number (zero)
- the unary function symbol `S :: ℕ¹ -> ℕ` representing the successor function

1. Axiom, Ax1
- __Asserts membership of zero in ℕ__
- `0 ∈ ℕ`
- asserts that the constant zero is a natural number
- from this and other axioms it is evident that zero is the initial natural
- Peano himself included 0 as the initial natural number, but other treatments that don't include 0 and start from 1 instead are also valid.

2. Axiom, Ax2
- <kbd>eq1</kbd> *Reflexivity of equality*
- `∀n ∈ ℕ. n = n`
- For every natural number `n`, `n` is equal to itself
- Or, if `n` is an ℕ, then `n` is equal to itself, `∀n. n ∈ ℕ -> n = n`

3. Axiom, Ax3
- [eq2] *Reflexivity of symmetry*
- `∀nm ∈ ℕ. n = m <=> m = n`
- If `n` and `m` are in ℕ, then `n` is equal to `m` iff `m` is equal to `n`

4. Axiom, Ax4
- [eq3] *Reflexivity of transitivity*
- `∀xyz ∈ ℕ -> x = y ⋀ y = z -> x = z`
- For all natural numbers x, y and z, if x = y and y = z, then x = z
- If x,y,z are ℕ, then, if x = y AND y = z, then x = z

5. Axiom, Ax5
- [eq4] *Closure (totality) of equality over ℕ*
- For all a and b, if b is a natural and a = b, then a is also a natural
- `b ∈ ℕ -> [a = b -> a ∈ ℕ]`
- IF b is a Nat THEN IF a is EQ to b THEN a is a Nat
- that is, closure under equality
- i.e. the naturals numbers are closed under equality relation. This is pretty obvious when the relation is equality, but there are numerous other relations.



6. Axiom, Ax6
- __Closure (totality) of S over ℕ__
- `∀n. n ∈ ℕ -> S n ∈ ℕ`
- If `n` is a ℕ, then the successor of `n` is also a ℕ
- This axiom asserts the closure of the successor function over the set ℕ:
- the set of the natural numbers is closed under the successor function.

7. Axiom, Ax7
- 
- For every natural number n, S(n) is a natural number.
- That is, the natural numbers are closed under S.
- `n ∈ ℕ -> S(n) ∈ ℕ`
- (again?) Asserts the membership

8. Axiom, Ax8
- For all natural numbers m and n, `m = n` if and only if `S(m) = S(n)`
- that is, S is an injection
- `n,m ∈ ℕ . m = n <-> S(n) = S(m)`

9. Axiom, Ax9
- For every natural number n, `S(n) = 0` is false
- that is, there is no natural number whose successor is 0
- `n ∈ ℕ . S(n) ≠ 0` or `n ∈ ℕ . S(n) = 0 -> ⊥`


6.    ∀n. n ∈ ℕ -> S n ∈ ℕ                           [closure of S over ℕ] ✼
9. N ⊆ ℕ. [0 ∈ N ⋀ (∀n. n ∈ N -> S n ∈ N)] -> N = ℕ  [asserts induction]   ✼
7.      ∀nm ∈ ℕ. n = m <=> S n = S m                 [asserts eq wrt S]    ✼
8.       ∀n ∈ ℕ. S n ≠ 0                             [property of S wrt 0] ✼
4.     ∀kmn ∈ ℕ. [(k = m) ∧ (m = n)] -> (k = n)      [Transitivity of eq]
5.       ∀n ∈ ℕ. n = m -> m ∈ ℕ                      [Closure      of eq]


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
