# Mathematical induction

- https://en.wikipedia.org/wiki/Mathematical_induction
- https://en.wikipedia.org/wiki/Axiom_of_induction


**Mathematical induction** is a mathematical proof technique used to prove that a statement `P(n)` holds for every natural number `n`; that is, the overall statement is a sequence of infinitely many cases, `P(0), P(1), P(2), P(3), …`.

Informal metaphors help to explain this: induction is a method of proof we use to prove that we can climb as high as we like on a ladder, by proving that we can climb onto the bottom rung (the base case), and that from each rung we can climb up to the next one (the inductive case).

**Proof by induction** is a proof method consisting of two cases:

1. *The base case* (the basis, the initial case) proves the statement for `n = 0` without assuming any knowledge of other cases.

2. *The induction case* (the step) proves that, if the statement holds for any given case `n = k`, then it must also hold for the next case `n = S(k)`.

Together, these two cases establish that the statement holds for every natural number `n`. The base case does not necessarily begin with `n = 0`, but possibly with any fixed natural number, establishing the truth of the statement for all natural numbers `n ⩾ N`.

The method of the proof by induction can be extended to prove statements about more general well-founded structures (list, tree, etc.). This generalization of mathematical induction is known as the **structural induction** and is employed in mathematical logic and computer science. Mathematical induction in this extended sense is closely related to *recursion*. Mathematical induction is an *inference rule* used in formal proofs, and it is the foundation of many proofs of correctness regarding computer programs.

Mathematical induction must not be confused with inductive reasoning as used in philosophy. The mathematical method examines infinitely many cases to prove a general statement, but does so by a finite chain of deductive reasoning involving a variable `n`, which can take infinitely many values.

## Description

The simplest and the most common form of mathematical induction concerns a statement about the natural numbers in the form of a predicate, `φ`. A universally quantified formula `∀x.φ(x)` represents a statement about the entire domain of discurse, while an existentially quantified formula `∃x.φ(x)` represents a statement about, at least one, individual in the domain of discurse. If we fix the domain of discurse to the set of the natural numbers, then the variable `x` ranges over `ℕ`, and `φ(x)` represents a statement about the natural numbers, with `∀x.φ(x)` concerning the entire set, and `∃x.φ(x)` concerning at least one natural number.

The induction axiom is sometimes stated as

`φ(0) ⋀ (∀xφx -> φ(Sx)) -> ∀xφx`

That is, if `φ` is a unary predicate 
such that `φ(0)` is true, 
and for every natural number `n`, 
`φ(n)` being true implies that `φ(S(n))` is true, 
then `φ(n)` is true for every natural number `n`.


To prove that a predicate, `φ`, about natural numbers holds, we need to prove both cases:

* In the base case, we need to show that `φ` holds in the case of the initial member of ℕ, i.e. in cae of `0`. This corresponds to the first axiom of the definition of ℕ, that asserts that `0` is a natural number. So, we have to prove that `φ(0)` holds.

* In the induction case, we need to prove that `φ` holds for the rest of natural numbers. This corresponds to the second axiom of the definition of ℕ that asserts that, if n is a natural number, then so is its successor, S(n), denoted as `n ∈ N -> S(n) ∈ N`. In a similar fashion, to prove that `φ` holds for every natural number `n`, we can assume that `φ(n)` holds, and, using that assumption, we need to prove that `φ(S(n))` holds.

The assumption in the inductive step is called the *induction hypothesis*. To prove the inductive step, we assume the induction hypothesis for `n`, and then, using this assumption we need to prove that the statement holds for the successor of n, `S(n)`, i.e. for `n + 1` in the case of the naturals.

<!-- #region proof-->

<details><summary>Example proof by induction</summary>

Given the definition of addition

```js
a + 0 = a                     A.1
a + S(b) = S(a + b)           A.2
```

Show that `a + S(n) = S(a) + n`.

We proceed by considering the two cases:

1. In the base case, `n = 0`, so we need to show that `a + S(0) = S(a) + 0`

```js
a + S(0) = S(a) + 0         (to prove)

S(a + 0) = S(a) + 0         A.2 to the LHS
S(a)     = S(a) + 0         A.1 to `a + 0` on the LHS
S(a)     = S(a)             A.1 to `S(a) + 0` on the RHS
S(a) = S(a)                 refl.
```

2. In the inductive case, assuming the inductive hypothesis   
`a +   S(n)  = S(a) +   n`, we need to show that 
`a + S(S(n)) = S(a) + S(n)` holds.

```js
a + S(n) = S(a) + n          IH
a + S(S(n)) = S(a) + S(n)    (to prove)

a + S(S(n)) = S(a) + S(n)     A.2 to the LHS
S(a + S(n)) = S(a) + S(n)     IH to `a + S(n)` ~~> `S(a) + n`
S(S(a) + n) = S(a) + S(n)     A.2 to the RHS
S(S(a) + n) = S(S(a) + n)     refl.

QED
```

</details>

<!-- #endregion -->
