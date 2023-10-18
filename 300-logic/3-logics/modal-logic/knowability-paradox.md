# Knowability paradox

Fitch's paradox of knowability
https://en.wikipedia.org/wiki/Fitch%27s_paradox_of_knowability

>**Knowability thesis** states that every truth is, in principle, knowable.

>**Omniscience principle** asserts that every truth is known.

*Fitch's paradox of knowability* is one of the fundamental puzzles of epistemic logic. It provides a challenge to the *knowability thesis*. The paradox is that this assumption implies the *omniscience principle*.

>*Fitch's paradox* asserts that the existence of an unknown truth is unknowable. So, if all truths were knowable, it would follow that all truths are in fact known.

The paradox is a concern for *verificationist* or *anti-realist* accounts of truth, for which the knowability thesis is very plausible, but the omniscience principle is very implausible.

The paradox appeared as a minor theorem in a 1963 paper by Frederic Fitch, "A Logical Analysis of Some Value Concepts". Other than the knowability thesis, his proof makes only modest assumptions on the modal nature of knowledge and of possibility. He also generalised the proof to different modalities. It resurfaced in 1979 when W. D. Hart wrote that Fitch's proof was an "unjustly neglected logical gem".

## The Proof

Suppose `p` is a sentence that is an unknown truth. 
That is, it is known that:
- the sentence `p` is true, `p`
- but it is not known that `p` is true, `¬Kp`
- so `K(p ∧ ¬Kp)`
- i.e. the following conjunction is known, `K(_ ∧ _)`, that:
  `p` is true (`p`) 
  AND, `∧`, 
  it is not known that `p` is true (`¬Kp`) 
- `K(p ∧ ¬Kp) ≡ Kp ∧ K¬Kp`
- `Kp ∧ K¬Kp` means that:
  it is known that `p` is true, `Kp`, AND 
  it is known that 
    it is unknown that `p` is true, `K¬Kp`


In such a case, the sentence 
*"the sentence `p` is an unknown truth"* is true; 
and, if all truths are knowable, 
it should be possible to know that 
*"`p` is an unknown truth"*, `¬Kp`.

But this isn't possible, because 
as soon as we know that 
*"`p` is an unknown truth"*, 
we know that `p` is true, which 
renders `p` no longer an unknown truth, 
so the statement 
*"`p` is an unknown truth"* becomes false. 

Hence, the statement *"`p` is an unknown truth"* 
**cannot be both known and true at the same time**. 

Therefore, if all truths are knowable, 
the set of "all truths" must not include 
any of the form *"something is an unknown truth"*; 
thus there must be **no unknown truths**, 
and thus **all truths must be known**.

## The Derivation

This can be formalised with modal logic. 
- `K` stands for *known*
- `L` stands for *possible*
- `LK` means *possibly known*, in other words, *knowable*

The epistemic principles of modal logic:
- (A) `Kp ⊢ p`                knowledge implies truth
- (B) `K(p ∧ q) ⊢ Kp ∧ Kq`    knowing a conjunction implies knowing conjuncts

The modality rules:
- (C) `p ⊢ LKp`               all truths are knowable
- (D) `¬p ⊢ ¬Lp`              if `p` is false, then `p` is impossible

The (D) rule says that if `p` can be proven false without assumptions, then `p` is impossible. This is equivalent to the *rule of necessitation*: 
if `q = ¬p` can be proven true without assumptions (a tautology), 
then `q` is necessarily true, and therefore `p` is impossible.

Derivation of the proof:

```hs
 1 assume K(p ∧ ¬Kp)            AS₁
 2   Kp ∧ K¬Kp                  by (B) from 1
 3   Kp                         ∧E₁ 2
 4   K¬Kp                       ∧E₂ 2
 5   ¬Kp                        by (A: Kp ⊢ p), from 4
 6 thus ¬K(p ∧ ¬Kp)             RAA 3,5 (discharging AS₁)
 7 ¬LK(p ∧ ¬Kp)                 by (D: ¬p ⊢ ¬Lp) 6
 8 assume p ∧ ¬Kp               AS₂
 9   LK(p ∧ ¬Kp)                by (C: p ⊢ LKp) 8
10 thus ¬(p ∧ ¬Kp)              by RAA 7,9 (discharging AS₂)
11 p → Kp                       from 10 by classical negated conditional
```

- (1) Suppose `p` is a sentence that is an unknown truth; that is, the sentence `p` is true, but it is not known that `p` is true. It is known that: `p` is true AND (but) it is not known that `p` is true, `K(p ∧ ¬Kp)`.
- (2) Distributing `K` we get `Kp ∧ K¬Kp`
- (3) and each conjunct, so `Kp` and
- (4) `K¬Kp`
- (5) By the rule (A), `Kp ⊢ p`, from `K¬Kp` on line 4, we get `¬Kp`
- (6) `¬Kp` on line 5 and `Kp` on line 3 lead to reduction ad absurdum (lead to contradiction `⊥`), which means the assumption on line 1, `K(p ∧ ¬Kp)`, is wrong and must be negated. Thus, we can discharge the initial assumption and derive `¬K(p ∧ ¬Kp)` in the main proof.
- (7) `¬K(p ∧ ¬Kp)` implies `¬LK(p ∧ ¬Kp)` since by rule (C), `¬p ⊢ ¬Lp`, if `p` is false, then `p` is not possible.
- (8) We make another assumption, `p ∧ ¬Kp`, toward another RAA
- (9) By the rule (C), `p ⊢ LKp`, that all truths are knowable, we can derive `LK(p ∧ ¬Kp)`
- (10) RAA from `LK(p ∧ ¬Kp)` on line 9 and `¬LK(p ∧ ¬Kp)` on line 7, means that the last assumption `p ∧ ¬Kp` is wrong. We discharge it and derive the formula `¬(p ∧ ¬Kp)` in the main proof.
- (11) from `¬(p ∧ ¬Kp)`, we first get `¬p ∨ Kp` by de Morgan's laws, and from it `p → Kp` by classical tautology about material conditional (negated impl).


The last line states that if `p` is true then `p` is known. Since nothing else about `p` was assumed, it means that *every truth is known*.

Since the above proof uses minimal assumptions about the nature of `L`, replacing `L` with `F` (see Prior's *tense logic*) provides the proof for "If all truth can be known in the future, then they are already known right now"!
