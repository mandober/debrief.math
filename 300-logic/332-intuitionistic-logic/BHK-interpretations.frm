# BHK-interpretations

BHK-interpretations of some formulas that are tautologies ion classical logic.

```hs
1   ⊥ → p
2   ((p → q) → p) → p

3   p → ¬¬p
4   ¬¬p → p
5   ¬¬¬p → ¬p

6   (¬q → ¬p) → (p → q)
7   (p → q) → (¬q → ¬p)

8   ¬(p ∧ q) → (¬p ∨ ¬q)
9   (¬p ∨ ¬q) → ¬(p ∧ q)

10  ((p ⇔ q) ⇔ r) ⇔ (p ⇔ (q ⇔ r))
11  ((p ∧ q) → r) ⇔ (p → (q → r))
12  (p → q) ⇔ (¬p ∨ q)

13  ¬¬(p ∨ ¬p)
```

These formulas are all classical tautologies.

Some of them can be easily given a BHK-interpretation, but some of them cannot.

For instance, a construction for formula 3, `p → ¬¬p`, rewritten (expanded) to `p → ((p → ⊥) → ⊥)` is as a follows:
- Given a proof of `p`, here is a proof of `(p → ⊥) → ⊥`
- Take a proof of `p → ⊥`
- It is a method to translate proofs of `p` into proofs of `⊥`
- Since we have a proof of `p`, we can use this method to obtain a proof of `⊥`

On the other hand, formula 4 doesn't seem to have such a construction.
(I though IL admits ¬¬E, i.e. formula 4, but not ¬¬I, i.e. formula 3?!)

The classical symmetry between formulas 3 and 4 disappears in IL.
