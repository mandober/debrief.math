---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Sheffer_stroke
page-title:       Sheffer stroke - Wikipedia
---
# Sheffer stroke

In propositional calculus and Boolean functions, **the Sheffer stroke** denotes a logical operation that is equivalent to the negation of the conjunction operation, expressed in English as "not both".

The Sheffer stroke is also called **NAND** ("not and") or the **alternative denial** since it says that *at least one of its operands is false*.

The Sheffer stroke is named after Henry M. Sheffer who was searching for a functionally complete logical operator; that is, the one that could be used alone and in terms of which all the other logical operators could be defined. Having succedeed in this, the NAND operator is named in his honor.

NAND's dual is the, later discovered, NOR operator (aka the Peirce arrow or Quine dagger). Both of them are functionally complete. This property makes the NAND gate crucial to modern digital electronics, including its use in CPU design.

NAND is denoted by `↑` (impaled `∧`) or by `|` (austere Amish presentation).

In Bocheński's Polish prefix notation, NAND is represented by the letter _D_ ('D' for denial), e.g. `p ↑ q` ≡ `Dpq`.


## NAND Venn diagram

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Venn1110.svg/150px-Venn1110.svg.png)


## NAND truth table

p q | p ↑ q
----|------
0 0 |   1
0 1 |   1
1 0 |   1
1 1 |   0

Comparision: AND and NAND, OR and NOR

p q | p ∧ q | p ↑ q | p ∨ q | p ↓ q
----|-------|-------|-------|-------
0 0 |   0   |   1   |   0   |   1
0 1 |   0   |   1   |   1   |   0
1 0 |   0   |   1   |   1   |   0
1 1 |   1   |   0   |   1   |   0


## NAND properties

  * Name
    - Sheffer stroke
    - Alternative denial
    - NAND
  * Interpretation
    - True iff at least one of the inputs is False
    - False only if both inputs are True
    - negation of conjunction of p and q, ¬(p ∧ q)
    - not both, not 'and', not AND, ¬∧, ¬AND
  * Notation
    - Preferred:  `↑` e.g. `p ↑ q`
    - ASCII only: `|` e.g. `p | q`
    - Bocheński:  __D__, e.g. `Dpq`
  * Definition
    - `p ↑ q` ≡ `¬(p ⋀ q)`
    - Unicode: `p̅∙̅q̅`
      - `p̅∙̅q̅` ≡ `p + q`
      - `p̅∙̅q̅` ≡ `¬(p ∧ q)`
      - That is
        - p̅∙̅q̅ ≡ ¬(p ∧ q) ≡ ¬p ∨ ¬q
        - p̅∙̅q̅ = ¬(p ∙ q) = ¬p + ¬q
      - Generally
        - p ∙ q ≡ p ∧ q
        - p + q ≡ p ∨ q
        - p̅    ≡ ¬p
    - Latex
      - $\overline{x ⋅ y}$
      - $\overline{x \cdot y}$
  * Truth table
    - 0111₂
  * Post lattices
    - 0-preserving: no
    - 1-preserving: no
    - Monotone:     no
    - Affine:       no
  * Dual: NOR
  * Normal forms
    - Disjunctive
      - `x̅ + y̅`
      - $\overline x + \overline y$
    - Conjunctive
      - `x̅ + y̅`
      - $\overline x + \overline y$
    - Zhegalkin polynomial
      - `1 ⊕ xy`
      - $1 \oplus xy$


## Definition

The NAND operation is a logical operation on two logical values. It produces a value of true, iff at least one of the propositions is false.

## Logical equivalences

p ↑ q ⇔ ¬(p ∧ q) ⇔ ¬p ∨ ¬q
