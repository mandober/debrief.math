# Logic :: Symbols

* single glyphs (not a combination of multiple glyphs)

```
¬ ∧ ∨ ⇒ ⇔ ↑ ↓ ⊕
∀ ∃
≡ 
⟙ ⊤
⟘ ⊥
p ↚ q
↚
↛
pᐪ , pᗮ
a ⊸ b
a ⅋ b, a & b
A ⊗ B , A ⊕ B
```

binary-4 | 00           | 01           | 10           | 11
---------|--------------|--------------|--------------|--------------
name2    | tautology    | negation     | identity     | contradiction
name     | always true  | not          | id           | always false
p        | ⊤            | ¬p           | p            | ⊥
true     | ⊤            | false        | true         | ⊥
false    | ⊤            | true         | false        | ⊥




  0. 00, ⊤              always true, tautology
  1. 01, ¬p             negation
  2. 10, p, I, Ip = p   identity
  3. 11, ⊥              always false, contradiction


* binary-16
  0. 0000, I, Ip = p
  1. 0001, 
  2. 0010, 
  3. 0011, 



* Classical sets
  - classic-1s  { ↑ }
  - classic-1p  { ↓ }
  - classic-2a  { ¬ ∧ }
  - classic-2o  { ¬ ∨ }
  - classic-2i  { ¬ ⇒ }
  - classic-5  { ¬ ∧ ∨ ⇒ ⇔ }

  - classic-16 { ¬ ∧ ∨ ⇒ ⇔ }



* Connectives
  - negation
    - `¬`
  - conjunction
    - `∧`
    - n-ary: `⋀`
  - disjunction
    - `∨`
    - n-ary: `⋁`
  - implication
    - `⇒`
  - biconditional
    - `⇔`
  - xor
    - `⊕`
  - NAND (Sheffer's stroke)
    - `↑`
  - NOR (Pierce's arrow)
    - `↓`


## linear logic

- A,B,C := X | A ◦ B | A ⊗ B | A & B | A ⊕ B | !A
- pᐪ | pᗮ | a ⊸ b | a & b | a ⅋ b
- a & b | a 🙴 b | p 🙵 q | a ﹠ b | a ＆ b | a ＆ b
- Aᗮ Pᐪ 
- A ◦ B
- A ⊗ B
- A ⊕ B


## Lambda calculus

M `=ᵦ=` M′

M `==ᵦ==` M′

ΒβϐᵝᵦꞴꞵ𝚩𝛃𝛣𝛽𝜝𝜷𝝗𝝱𝞑𝞫

Β β ϐ ᵝ ᵦ
Ꞵ ꞵ
𝚩 𝛃 𝛣 𝛽 𝜝 𝜷 𝝗
𝝱 𝞑 𝞫
x

ᵝ MODIFIER LETTER SMALL BETA
ᵦ GREEK SUBSCRIPT SMALL LETTER BETA

ᵦ ᵧ ᵨ ᵩ ᵪ

=ᵝ= =ᵦ=

==ᵝ== ==ᵦ==


----ᵝ--->

AᵝB

M --\->> M'
M --β->> M'
N --β->> N'
N --α->> N'

M =α= M'
M =β= M'
M =η= M'

M ==α== M'
M ==β== M'
M ==η== M'
