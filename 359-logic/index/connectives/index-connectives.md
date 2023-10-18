# Logic :: Index :: Logical connectives

https://en.wikipedia.org/wiki/List_of_rules_of_inference

- 1100 C  𝒑
- 1010 A  𝒒
- 0000 0  ⊥
- 0001 1
- 0010 2
- 1000 8
- 1001 9
- 1010 A
- 1011 B
- 1100 C
- 1101 D
- 1110 E
- 1111 F  ⊤


𝒑
𝒒
---
⊥
∧
⇏
𝒑̅
---
⇍
𝒒̅
⊕
∨
---
↓
⟺
𝒒
←
---
𝒑
→
↑
⊤



Index of logical connectives
- nullary
  - 1 truth, verum, veracity, tautology, `⊤` (constant)
  - 0 false, falsity, contradiction,     `⊥` (constant)
- unary
  - 11 truth,  `⊤` (constant)
  - 10 id
  - 01 NOT,    `¬`
  - 00 falsum, `⊥` (constant)
- binary
   0. 0000 falsum, `⊥` (constant)
   1. 0001 NOR, `↓`
   2. 0010 NEG_RIMP, `⇍`
   3. 0011 NEG_P, `¬P` (negation of the first proposition)
   4. 0100 NEGIMP, `⇏`
   5. 0101 NEG_Q, `¬Q` (negation of the second proposition)
   6. 0110 XOR, `⊕`
   7. 0111 NAND, `↑`
   8. 1000 AND, `∧`
   9. 1001 BIC, `⟺`, XNOR
  10. 1010 `Q` (second proposition)
  11. 1011 IMP, `→`
  12. 1100 `P` (first proposition)
  13. 1101 RIMP, `←`
  14. 1110 OR, `∨`
  15. 1111 truth, `⊤` (constant)



- Index of logical connectives
  - negation,                 NOT
  - conjunction,              AND
  - disjunction (inclusive),  OR
  - implication, conditional  IMP
  - biconditional,            BIC
  - Sheffer's stroke,         NAND
  - Pierce's arrow,           NOR
  - exclusive disjunction,    XOR
  - reversed implication      RIMP
  - non-implication           NIMP
  - reversed non-implication  RNIMP

- Types of logical connectives
  - by arity
    - nullary
    - unary
    - binary
    - ternary
  - by duality
    - AND, OR
    - XOR, BIC
    - NAND, NOR
    - IMPL, RNIMP
  - by self-duality
    - NOT

## Table of connectives :: Logical connectives

- Negation,                   NOT,    ¬  ~  p̅  q̅
- Tautology,                  TRUE,   ⊤  ⟙
- Contradiction,              FALSE,  ⊥  ⟘
- Conjunction,                AND,    ∧  ⋀
- Disjunction,                OR,     ∨  ⋁
- Exclusive or,               XOR,    ⊕  +  ↮
- Alternative denial,         NAND,   ↑  |       Sheffer stroke
- Joint denial,               NOR,    ↓
- Biconditional,              XNOR,   ⇔  ⟺  ↔
- *Converse implication*,    `CIMP`   ←  
- *Implication*,              IMPLY,  →
- *Nonimplication*,           NIMPLY, ⇏  ↛
- *Converse nonimplication*,  `CNI`,  ⇍  ↚

## Table of connectives

┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┐
│ F  │ ∧  │ ⇏           │ P  │ ⇍    │ Q  │ ⊕     │ ∨  │ ↓  │ ⟺ │ Q̅  │ ←  │ P̅  │ →  │ ↑  │ T  │
├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
│ 0  │ 0  │ 0  │ 0  │ 0  │ 0  │ 0  │ 0  │ 1  │  1 │ 1  │  1 │  1 │  1 │  1 │  1 │
│ 0  │ 0  │ 0  │ 0  │ 1  │ 1  │ 1  │ 1  │ 0  │  0 │ 0  │  0 │  1 │  1 │  1 │  1 │
│ 0  │ 0  │ 1  │ 1  │ 0  │ 0  │ 1  │ 1  │ 0  │  0 │ 1  │  1 │  0 │  0 │  1 │  1 │
│ 0  │ 1  │ 0  │ 1  │ 0  │ 1  │ 0  │ 1  │ 0  │  1 │ 0  │  1 │  0 │  1 │  0 │  1 │
├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
│0000│0001│0010│0011│0100│0101│0110│0111│1000│1001│1010│1011│1100│1101│1110│1111│
├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
│ A  │ B  │ C  │ D  │ E  │ F  │ G  │ H  │ H  │ G  │ F  │ E  │ D  │ C  │ B  │ A  │
├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
│ A  │ B  │    │    │    │    │ D  │ B  │ C  │ D  │    │    │    │    │ C  │ A  │
├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │    │ x  │    │ x  │    │    │    │    │ x  │    │  x │    │    │    │
└────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┘

## Dual connecives

0000 1111 F T
0001 1110 ∧ ∨
0111 1110 ↓ ↑
0110 1001 + ⟺

## Opposite connecives

0000 1111 F T
0001 1110 ∧ ↑
0010 1101 ⇏ →
0011 1100 P P̅
0100 1011 ⇍ ←
0101 1010 Q Q̅
0110 1001 ⊕ ⟺
0111 1000 ∨ ∧
