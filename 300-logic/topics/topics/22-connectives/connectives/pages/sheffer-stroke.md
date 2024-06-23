# Sheffer stroke

https://en.wikipedia.org/wiki/Sheffer_stroke

## Introduction

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


The Sheffer stroke commutes but does not associate. 
For example, `(T ↑ T) ↑ F = T`, but `T ↑ (T ↑ F) = F)`.


NAND Logical operator
  * Names
    - Sheffer stroke
    - NAND
    - Alternative denial
  * Symbols
    - preferred  : `↑`
    - ASCII-only : `|`
    - Bocheński  : `D` ('D' for denial)
  * Notation
    - preferred  : `p ↑ q`
    - ASCII only : `p | q`
    - Bocheński  : `Dpq`
  * Basic properties
    - Associativity         : ✘
      - `p ↑ q ↑ r` != `p ↑ (p ↑ r)` != `(p ↑ q) ↑ r`
    - Commutativity         : ✔
      - `p ↑ q` = `q ↑ p`
    - Arity                 : 2 (polyadic : yes, binary)
    - Equivalences          :
      - p ↑ q ⇔ ¬(p ∧ q)
      - p ↑ q ⇔ ¬p ∨ ¬q
    - Gate name             : NAND
    - Functionally-complete : ✔
      - ¬p ≡ p ↑ p
      - p ∧ q ≡ 
      - p ∨ q ≡ 
      - p → q ≡ 
    - Duality               : ✔ NOR
  * Interpretation
    - negation of conjunction
    - not both
  * Truth table
    - Truth table code : 0111₂
  * Truth values:
    - T if max 1 input is T
    - T if at most 1 input T
    - T if only 1 input T or both F
    - T if at least 1 of the inputs F
    - F if both inputs T
    - F only if both inputs T
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
    - Latex: $\overline{x ⋅ y}$, $\overline{x \cdot y}$
    - Equivalences: `p ↑ q` ≡ `¬(p ∧ q)` ≡ `¬p ∨ ¬q`
  * Post lattices
    - 0-preserving: no
    - 1-preserving: no
    - Monotone:     no
    - Affine:       no
  * Normal forms
    - Disjunctive: `x̅ + y̅`, $\overline x + \overline y$
    - Conjunctive: `x̅ + y̅`, $\overline x + \overline y$
    - Zhegalkin polynomial: `1 ⊕ xy`, $1 \oplus xy$


## Definition

The NAND operation is a logical operation on two logical values. It produces a value of true, iff at least one of the propositions is false.

## Properties

Essential properties
1. truth-preservation
2. falsity-preservation
3. linearity
4. monotonicity
5. self-duality
6. affine


NAND doesn't possess any of the following 5 properties, 
each of which is required to be absent from, 
and the absence of all of which is sufficient for, 
at least one member of 
a set of functionally complete operators:
- truth-preservation
- falsity-preservation
- linearity
- monotonicity
- self-duality

An operator is *truth-preserving* if its value is true 
whenever all of its arguments are true.

An operator is *falsity-preserving* if its value is false 
whenever all of its arguments are false.

If the constant term of an affine function is zero then the function is called a linear Boolean function. Thus, affine Boolean functions are either linear Boolean functions or their compliments. For `n` binary variables, the total number of affine Boolean function is out of which are linear.


Therefore, the set `{ ⊕ }` is a functionally complete set.

This can also be realized as follows: 
All 3 elements of the functionally complete set `{ ∧, ∨, ¬ }` 
can be constructed using only NAND. 
Thus, the set `{ ⊕ }` must be functionally complete as well.

## Connectivs in terms of the Sheffer stroke

* ¬p = p ↑ p
* p ∧ q = (p ↑ q) ↑ (p ↑ q)
* p ∨ q = (p ↑ p) ↑ (q ↑ q)
* p → q = p ↑ (q ↑ q) = p ↑ (p ↑ q)
* p ⇔ q = (p ↑ q) ↑ ((p ↑ p) ↑ (q ↑ q))


The Sheffer stroke commutes but does not associate. 
For example, `(T ↑ T) ↑ F = T`, but `T ↑ (T ↑ F) = F)`.

## Formal system based on the Sheffer stroke

The following is an example of a formal system based entirely on the Sheffer stroke, yet having the functional expressiveness of the propositional logic:

1. Symbols

`pₙ` for natural numbers `n`: ( `|` )

The Sheffer stroke commutes but does not associate; e.g. `(T | T) | F = T`, but `T | (T | F) = F)`.

Hence any formal system including the Sheffer stroke as an infix symbol must also include a means of indicating grouping.

Grouping is automatic if using Polish notation:
- `||TTF = T`  =  `(T | T) | F = T`
- `|T|TF = F`  =  `T | (T | F) = F`

We also write `p, q, r, …` instead of `p₀, p₁, p₂`.

2. Syntax

_Construction Rule I_: 
For each natural number `n`, the symbol `pₙ` is a wff called an atom.

_Construction Rule II_: 
If `X` and `Y` are wffs, then `(X | Y)` is a wff.

_Closure Rule_: 
Any formulae which cannot be constructed by means of the first two Construction Rules are not wffs.

The letters `U, V, W, X, Y` are metavariables standing for wffs.

A decision procedure for determining whether a formula 
is well-formed goes as follows: 
deconstruct the formula by applying the Construction Rules backwards, 
thereby breaking the formula into smaller subformulae. 
Then repeat this recursive deconstruction process 
to each of the subformulae. 
Eventually the formula should be reduced to its atoms, 
but if some subformula cannot be so reduced, 
then the formula is not a wff.

3. Calculus

Axioms are all wffs of the form:

```hs
< ( { U | (V|W) }  |  [ { Y | (Y|Y) } | [ (X|V) | { (U|X) | (U|X) } ] ] >
```

Inference rules are instances of the form:

`(U|(V|W)), U |- W`

4. Simplification

Since the only connective of this logic is `|`, the symbol `|` could be discarded altogether, leaving only the parentheses to group the letters.

A pair of parentheses must always enclose a pair of wffs. Examples of theorems in this simplified notation are

`(p(p(q(q((pq)(pq))))))` and `(p(p((qq)(pp))))`

The notation can be simplified further, by letting `(U) := (UU)` for any `U`.

This simplification causes the need to change some rules:
- More than two letters are allowed within parentheses.
- Letters or wffs within parentheses are allowed to commute.
- Repeated letters or wffs within a same set of parentheses can be eliminated.
- The result is a parenthetical version of the Peirce existential graphs.


Another way to simplify the notation is to eliminate parentheses by using Polish Notation. For example, the earlier examples with only parentheses could be rewritten using only strokes as follows

```js
(p(p(q(q((pq)(pq))))))
// becomes
| p | p | q | q || pq | pq
// and
(p(p((qq)(pp))))
// becomes
| p | p || qq | pp
```

This follows the same rules as the parenthesis version, with the opening parenthesis replaced with a Sheffer stroke and the (redundant) closing parenthesis removed.

Or (for some formulas), one could omit both parentheses and strokes and allow the order of the arguments to determine the order of function application so that, for example, applying the function from right to left (reverse Polish notation):

`pqr` ≡ `(p|(q|r))` whereas `rqp` ≡ `(r|(q|p))`

Any other unambiguous convention based on ordering would work.
