# Logic :: Logical Connectives :: Index

Logical Connectives

0. Tautology
  - bincode16: 1111
  - truth, verum, always true
  - unicode: `⟙` ⊤
15. Contradiction
    - bincode16: 0000
    - falsity, always false
    - unicode: `⟘` ⊥
  * Identity
    - bincode16:
      - 1100 p
      - 1010 q
  * Negation
    - bincode16:
      - 0011 ¬p
      - 0101 ¬q
    - NOT
    - unicode: `¬` φ̅ p̅ q̅
    - ASCII: ~ ! - φ'
    - Polish: N, Np
  * Conjunction
    - bincode16: 1000
    - AND
    - unicode: `⋀` ∧
    - ASCII: & ^
    - Polish: K, Kpq
  * Disjunction
    - bincode16: 1110
    - short: OR
    - unicode: `⋁` ∨
    - ASCII: v V
    - Polish: A, Apq
  * Alternative denial
    - Sheffer stroke
    - NAND
    - ↑
    - XOR
    - Polish: D, Dpq
  * Joint denial
    - Pierce arrow
    - NOR
    - ↓
  * Material conditional
    - Implication
  * Biconditional
  * Converse implication



* Polish notation ()
  - negation,           N     Np
  - conjunction,        K     Kpq
  - alternative denial, D     Dpq
  - disjunction,        A     Apq
  - joint denial,       X     Xpq
  - implication,        C     Cpq
  - biconditional,      E     Epq

* Alternative names
  - implication (material), conditional
  - non-implication, negated implication
  - converse
  - non-converse, negated converse
  - biconditional, if and only if, iff, bi-implication, ≡ XNOR


* Logical Connectives
  * Properties of connectives
    - name
    - symbol
    - arity
    - laws
    - duality
    - alternative notations
      - Lukaszevic, Polish notation
      - Reverse Polish notation
    - functional completeness
    - truth-functionality
    - false-functionality
  * Atributes of connectives
    - order of precedence
  * default names and all symbols
    - NOT   ¬   ~ -
    - AND   ∧
    - NAND  ↑
    - OR    ∨
    - NOR   ↓
    - XOR   ⨁
    - XNOR  ⨂
    - IMP   →
    - NIMP  ⇏
    - CON   ←
    - NCON  ⇍
    - BIC   ⟺
    - NBIC  ⇎ ⤄
  * Arity of connectives
    - nullary
    - unary
    - binary
  * Duality
    - AND and OR
    - NAND and NOR
    - XOR and XNOR
    - XOR and BIC






p q | F ↓ ⇍ P | ⇏ Q + ↑| ∧ ⇔ q → | p ← ∨ T
----|---------|---------|---------|---------
1 1 | 0 0 0 0 | 0 0 0 0 | 1 1 1 1 | 1 1 1 1
1 0 | 0 0 0 0 | 1 1 1 1 | 0 0 0 0 | 1 1 1 1
0 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1
0 0 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1
----|---------|---------|---------|---------
p q | 


0   0000 ⟘²
1   0001 ↓
2   0010 p ⇍ q
3   0011 ¬p
---------------
4   0100 p ⇏ q
5   0101 ¬q
6   0110 p + q ⨁  XNOR: ⨂
7   0111 p ↑ q
---------------
8   1000 p ⋀ q
9   1001 p ⇔ q
a   1010 q
b   1011 p → q
---------------
c   1100 p
d   1101 p ← q
e   1110 p ⋁ q
f   1111 ⟙²
