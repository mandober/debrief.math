# BHK interpretation

https://en.wikipedia.org/wiki/Brouwer-Heyting-Kolmogorov_interpretation

The Brouwer-Heyting-Kolmogorov interpretation of intuitionistic logic was proposed by L. E. J. Brouwer and Arend Heyting, and independently by Andrey Kolmogorov. It is also sometimes called the *realizability interpretation*, because of the connection with the *realizability theory* of Stephen Kleene.

BHK interpretation is the standard explanation of intuitionistic logic. It also has similarities with the Curry-Howard correspondence and the correspondence between intuitionistic logic and proof theory and FPLs.

## BHK interpretation

BHK interpretation states what is intended to be a proof of a given formula, which is specified by induction on the structure of that formula.

* A proof of `P ⋀ Q` is a pair `⟨a,b⟩`, 
  where `a` is a proof of `P`, and `b` is a proof of `Q`
* A proof of `P ⋁ Q` is either 
  a pair `⟨0,a⟩`, where `a` is a proof of `P`, or
  a pair `⟨1,b⟩`, where `b` is a proof of `Q`.
  This is a disjoint union type (sum type), and the terms of this type are pairs that have, the so-called tag, as their first component; the tag serves to distinguish terms, specifying which disjunct is present in the term; e.g. 0 means the term is a left disjunct or variant, i.e. it is a `P`, while 1 means the term is a variant "right", i.e. a `Q`.


```js
(P ⋀ Q) is proven by a pair (a : P, b: Q)                         product type
(P ⋁ Q) is proven by a pair (a = 0, b: P) or (a = 1, b: Q)      disjoint union
(P → Q) is proven by f : P → Q                                   function type
∀x ∈ S.φ(x) is proven by f : a ∈ S → φ(a)                   dependent function
∃x ∈ S.φ(x) is proven by (a ∈ S, b: φ(a))                       dependent pair
```




### Conjunction

A proof of `P ⋀ Q` 
is a pair `(a,b)` where
`a` is a proof of `P` and
`b` is a proof of `Q`

### Disjunction

A proof of `P ⋁ Q` 
is a pair `(i,b)` where
if `i = 0` then `b` is a proof of `P`, or
if `i = 1` then `b` is a proof of `Q`

A witness of disjunction is given by a pair 
of the tag recording which case holds 
and its corresponding witness.

`A : φ ⋁ ψ <=> A = (i, B)` where 
`i = 0` and `B : φ`, or
`i = 1` and `B : ψ`


### Implication

A proof of `P → Q` 
is a function `f` that converts
proofs of `P` into proofs of `Q`


* A proof of ∃x ∈ S.φ(x) is a pair <a, b> where a ∈ S, b is a proof of φ(a)

* A proof of ∀x ∈ S.φ(x) is a function f that converts an element a of S into a proof of φ(x)

* The formula ¬P is defined as P → ⊥, so the proof is a function f that converts a proof of P into a proof of ⊥, but

* There is no proof of ⊥ i.e. the absurdity or bottom type (nontermination)


The interpretation of a primitive proposition is supposed to be known from context. In the context of arithmetic, a proof of the formula s=t is a computation reducing the two terms to the same numeral.

**The identity function** is a proof of the formula P → P, no matter what P is.

**The law of non-contradiction** `¬(p ⋀ ¬p)` expands into `p ⋀ (p → ⊥) → ⊥`
* A proof of `p ⋀ (p → ⊥) → ⊥` is a fn that converts a proof of `p ⋀ (p → ⊥)` into a proof of `⊥` (!)
* A proof of `p ⋀ (p → ⊥)` is a pair of proofs <a, b>, where `a` is a proof of `p`, and `b` is a proof of `p → ⊥`
* A proof of `p → ⊥` is a function that converts a proof of `P` into a proof of `⊥` (!)

Putting it all together, a proof of `p ⋀ (p → ⊥) → ⊥` is a function f that converts a pair <a, b> (where a is a proof of P and b is a function that converts a proof of P into a proof of ⊥) into a proof of ⊥. There is a function f that does this, where f(⟨a,b⟩) = b(a), proving the law of non-contradiction, no matter what P is. The same princliple provides a proof for `p ⋀ (p → q) → q` where q is any proposition.

**The law of excluded middle** (LEM) `p ⋁ ¬p` expands to `p ⋁ (p → ⊥)`, and in general has no proof. According to the interpretation, a proof of `p ⋁ ¬p` is a pair <a, b> where a is 0 and b is a proof of `p`, or a is 1 and b is a proof of `p → ⊥`. Thus, if neither `p` nor `p → ⊥` is provable, neither is `p ⋁ ¬p`.


## Summary

```
⟨pair⟩ P ⋀ Q is proven by a pair <a:P, b:Q>
⟨pair⟩ P ⋁ Q is proven by a pair <a=0, b:P> or <a=1, b:Q>
⟨func⟩ P → Q is proven by f: P → Q
⟨pair⟩ ∃x ∈ S.φ(x) is proven by <a∈S, b: φ(a)>
⟨pair⟩ ∀x ∈ S.φ(x) is proven by f: a∈S → φ(a)

¬p = p → ⊥
 ⊥ = ⊥ → ⊥

id = p → p

LNC: ¬(p ⋀ ¬p)
p ⋀ (p → ⊥) → ⊥
```


## Absurdity

It is not, in general, possible for a logical system to have a formal negation operator such that there is a proof of "not" P exactly when there isn't a proof of P. The BHK interpretation instead takes "not" P to mean that P leads to absurdity, designated ⊥, so that a proof of ¬P is a function converting a proof of P into a proof of absurdity.

A standard example of absurdity is found in dealing with arithmetic. Assume that 0=1, and proceed by mathematical induction: 0=0 by the axiom of equality. Now (induction hypothesis), if 0 were equal to a certain natural number n, then 1 would be equal to n+1, (Peano axiom: S(m) = S(n) iff m=n), but since 0=1, therefore 0 would also be equal to n+1. By induction, 0 is equal to all numbers, and therefore any two natural numbers become equal.

Therefore, there is a way to go from a proof of 0=1 to a proof of any basic arithmetic equality, and thus to a proof of any complex arithmetic proposition. Furthermore, to get this result it was not necessary to invoke the Peano axiom that states that 0 is "not" the successor of any natural number. This makes 0=1 suitable as ⊥ in Heyting arithmetic; and the Peano axiom is rewritten 
0 = S(n) → 0 = S(0). This use of 0=1 validates the principle of explosion.

## Function

The BHK interpretation depends on the view taken about what constitutes a function that converts one proof to another, or that converts an element of a domain to a proof. Different versions of constructivism diverge on this point.

Kleene's realizability theory identifies the functions with *computable functions*. It deals with Heyting arithmetic, where the domain of quantification is the natural numbers and the primitive propositions are of the form x=y. A proof of x=y is simply the trivial algorithm if x evaluates to the same number that y does (which is always decidable for natural numbers), otherwise there is no proof. These algorithm are then built up by induction into more complex ones.

If one takes lambda calculus as defining the notion of a function, then the BHK interpretation describes the correspondence between *natural deduction* and functions.


## Refs

https://en.wikipedia.org/wiki/Constructive_proof
https://en.wikipedia.org/wiki/Bottom_type
https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence
https://en.wikipedia.org/wiki/Intuitionistic_logic
https://en.wikipedia.org/wiki/Curry-Howard_correspondence
https://en.wikipedia.org/wiki/Curry-Howard-Lambek_correspondence
https://en.wikipedia.org/wiki/Category:Substructural_logic

History of Constructivism in the XX Century - Anne Sjerp Troelstra, 1991
http://www.illc.uva.nl/Research/Publications/Reports/ML-1991-05.text.pdf

Proof Theory - Helmut Schwichtenberg, 2006
http://www.mathematik.uni-muenchen.de/~schwicht/lectures/proofth/ss06/s.pdf

Five Stages Of Accepting Constructive Mathematics - Andrej Bauer 2016
https://www.ams.org/journals/bull/2017-54-03/S0273-0979-2016-01556-4/S0273-0979-2016-01556-4.pdf

Intuitionistic Mathematics And Logic - Joan Rand Moschovakis And Garyfallia Vafeiadou 2020
https://arxiv.org/pdf/2003.01935.pdf

Similar papers, books and articles
https://philpapers.org/rec/TROCAP
