# Sheffer stroke

https://en.wikipedia.org/wiki/Sheffer_stroke

Sheffer stroke
- names       : Sheffer stroke, alternative denial, NAND
- arity       : 2
- binary-code : 0111
- hex-code    : 0x07
- gate name   : NAND
- symbols     : `↑`, `|`
- prefix      : `D`
- equivalence : `p ↑ q === ¬(p ⋀ q)` negation of conjunction
- duality     : NOR
- associative : no
- commutative : yes
* truth value :
  - F iff both operands T
  - T iff at most (max) one operand T
  - T if only one operand T or both F
* Normal forms
  - Disjunctive: `p̅ + q̅`
  - Conjunctive: `p̅ + q̅`
  - Zhegalkin polynomial: `1 ⊕ xy`
* Post's lattices
  - T-preserving  : no
  - F-preserving  : no
  - monotone      : no
  - affine        : no




* **The Sheffer stroke** denotes a binary logical connective equivalent to the negation of conjunction, `p ↑ q === ¬(p ⋀ q)`. It is also called **NAND** (from "not and").

* Since it is expressed as "not both" in English, it is also called **alternative denial**, since it is true if *at most one* of its two operands is true (i.e. if only one operand is true, or if both are false).

* In digital electronics, it corresponds to the NAND gate.

* It is named after Henry M. Sheffer

* written as `↑` or `|`.

* In Bocheński notation it is represented by `D`, as in `Dpq`.

The NAND's dual is the NOR operator (aka Peirce arrow or Quine dagger). Like its dual, NAND can be used by itself, without any other logical operator, to constitute a logical formal system (making NAND functionally complete). This property makes the NAND gate crucial to modern digital electronics, including its use in computer processor design.
