

>Symbols:
- pᐪ | pᗮ | a ⊸ b | a & b | a ⅋ b
- Aᗮ Pᐪ ＆ 
- a & b | a 🙴 b | p 🙵 q | a ﹠ b | a ＆ b



The language of Classical Linear Logic (CLL) is defined inductively:

```

A := p
   | pᗮ
   | A ⊗ A
   | A ⊕ A
   | A & A
   | A ⅋ A
   | !A
   | ?A
   | 1 | 0 | ⊤ | ⊥

- `p` and `pᗮ` range over logical atoms
- connectives `&`, `⊕`, `⊤`, `0` are called *additives*
- connectives `⊗`, `⅋`, `1`, `⊥` are called *multiplicatives*
- connectives `!` and `?` are called *exponentials*

Terminology:
- `&` additive conjunction, "with"
- `⊕` additive disjunction, "plus"
- `⊗` multiplicative conjunction, "times", "tensor"
- `⅋` multiplicative disjunction, "par" (`8`)
- `!` "of course", "bang"
- `?` "why not"

conjunction | &    (⊤) | ⊗    (1)
disjunction | ⊕   (0) | ⅋     (⊥)

Every proposition `A` in CLL has a dual `A'`

Proposition             | Dual
------------------------|---------------------
(A)' = A'               | (A')' = A
(A ⊗ B)' = A' ⅋ B'     | (A ⅋ B)' = A' ⊗ B'
(A ⊕ B)' = A' & B'     | (A & B)' = A' ⊕ B'
(1)' = ⊥                | (⊥)' = 1
(0)' = ⊤                | (⊤)' = 0
(!A)' = ?(A')           | (?A)' = !(A')

polarity | add  | mul | exp
---------|------|-----|-----------
pos      | ⊕ 0 | ⊗ 1 | !
neg      | & ⊤  | ⅋ ⊤ | ?
