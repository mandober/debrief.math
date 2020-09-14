# Church encoding

## Encoded functions

TRUE        := λab.a          aka: True, T, K, Kastrel
FALSE       := λab.b          aka: False, F, KI
NOT         := λp.pFT
AND         := λpq.pqp
OR          := λpq.ppq
IFTHENELSE  := λpab.pab
ISZERO      := λn.n (λx.F) T
LEQ         := λm.λn.ISZERO (SUB m n)
PRED1       := λn.n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0) 0
SUCC        := λnfx.f(nfx)
PLUS        := λm.λn.λf.λx.m f (n f x)
PLUS'       := λm.λn.m SUCC n
MULT        := λm.λn.λf.m (n f)
MULT'       := λm.λn.m (PLUS n) 0
POW         := λb.λe.e b
PRED2       := λn.λf.λx.n (λg.λh.h (g f)) (λu.x) (λu.u)
SUBSAT      := λm.λn.n PRED m         Therefore, SUB m n = m > n ? m − n : 0
PAIR        := λxyf.fxy
FIRST       := λp.pT
SECOND      := λp.pF
NIL         := λx.T
NULL        := λp.p (λx.λy.F)
Φ           := λx.PAIR (SECOND x) (SUCC (SECOND x))
PRED3       := λn.FIRST (n Φ (PAIR 0 0))





## Exposition

Church's encoding system for λ-calculus.

T := (λab.a)    always return 1st arg
F := (λab.b)    always return 2nd arg

AND := λp.λq.p q p
OR  := λp.λq.p p q
NOT := λp.p F T

IfThenElse := λp. λa. λb . p a b

`IfThenElse := λpab.pab`

A predicate is a function that returns a boolean value. The most fundamental predicate is `ISZERO`, which returns TRUE if its argument is the Church numeral 0, and FALSE if its argument is any other Church numeral:

ISZERO := λn.n (λx.FALSE) TRUE

The following predicate tests whether the first argument is less-than-or-equal-to the second:

LEQ := λm.λn.ISZERO (SUB m n)

and since m = n, if LEQ m n and LEQ n m, it is straightforward to build a predicate for numerical equality.

The availability of predicates and the above definition of TRUE and FALSE make it convenient to write "if-then-else" expressions in lambda calculus. For example, the predecessor function can be defined as:

PRED := λn.n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0) 0

which can be verified by showing inductively that 

n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0)

is the (add n − 1) function (for n > 0)


## Pairs

As an example of the use of pairs, the shift-and-increment function that maps (m, n) to (n, n + 1) can be defined as

Φ := λx.PAIR (SECOND x) (SUCC (SECOND x))
which allows us to give perhaps the most transparent version of the predecessor function:

PRED := λn.FIRST (n Φ (PAIR 0 0))

-------------------------------------------------------------------------------

¬p
NOT := λp.pFT = λp.p(λab.b)(λab.a)
NOT T =   TTF = T
NOT F =   TTF = F

Binary operators are permutation of 3 Church Booleans:
- `S` is a Boolean function, fixed as either T or F in each operation
- 2 Boolean function are passed as args into each λ-abstraction, as `p` & `q`



## 3-place permutations

* the set permutations:
  - Boolean set, `B = {T,F}`
  - Boolean vars `p` and `q`, p,q ∈ B
  - Selector Boolean function, `s` ranges over the `S = {T,F,p,q}`, s ∈ S
  - S = {p,q,s}
  - S   = {  p:{T,F} , q:{T,F} , s:{T,F,p,q} }
  - |S| = 2 2 4
  - example combo (1/96): TFT (pqp)

2 2 4
_ _ _



3-place permutations for vars:
p q S =
- - -
p q S
p S q
q p S
q S p
S p q
S q p
- - -
p q S ~>
p * q * S ~>
2 * 2 * 4 = 16 compounds in each row
16 * 6 rows =
96 combos total




- (S,p,q) permutations: (Spq, pSq, pqS, qSp, qpS, Sqp)
  - each one of (S,p,q) are Booleans vars that range over {T,F}
- (B,p,q) permutations: (Bpq, pBq, pqB, qBp, qpB, Bqp)
  - where B is {p,q}
    - (Bpq,      pBq,      pqB)
    = (ppq, qpq, ppq, pqq, pqp, pqq)

    - (qBp,      qpB,      Bqp)
    = (qpp, qqq, qpp, qpq, pqp, qpq)

    - qqq



p | q | Tpq  | Fpq  | pTq  | pFq  | pqT  | pqF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | T | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  p   |  q   | p ∨ q|¬(p←q)| p → q| p ∧ q


p | q | Tqp  | Fqp  | qTp  | qFp  | qpT  | qpF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | T | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  q   |  p   | p ∨ q|¬(p→q)| p ← q| p ∧ q


(ppq, qpq, ppq, pqq, pqp, pqq)

p | q | ppq  | qpq  | ppq  | pqq  | pqp  | pqq
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | T | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  p   |  q   | p ∨ q|¬(p←q)| p → q| p ∧ q


(qpp, qqq, qpp, qpq, pqp, qpq)

p | q | qpp  | pqqp  | qTp  | qFp  | qpT  | qpF
--|---|------|------|------|------|------|-------
T | T | TTT 1| FTT 1| TTT 1| TFT 0| TTT 1| TTF 1
T | F | TFT 0| FFT 1| FTT 1| FFT 1| FTT 1| FTF 0
F | T | TTF 1| FTF 0| TTF 1| TFF 0| TFT 0| TFF 0
F | F | TFF 0| FFF 0| FTF 0| FFF 0| FFT 1| FFF 0
p | q |  q   |  p   | p ∨ q|¬(p→q)| p ← q| p ∧ q








```
Spq:
Tpq = p
Fpq = q

pSq:
pTq = p ∨ q         pTq ≡ qTp = OR
pFq = ¬(p ← q)

pqS:
pqT = p → q
pqF = p ∧ q         pqF ≡ qpF = AND

Sqp:
Tqp = q
Fqp = p

qSp:
qTp = p ∨ q         qTp ≡ pTq = OR
qFp = ¬(p → q)

qpS:
qpT = p ← q
qpF = p ∧ q         qpF ≡ pqF = AND
```




p ∨ q
OR := λpq.pTq
OR T T  = TTT = T
OR T F  = TTF = T
OR F T  = FTT = T
OR F F  = FTF = F

p ∧ q
AND := λpq.pqF
AND T T  = TTF = T
AND T F  = TFF = F
AND F T  = FTF = F
AND F F  = FFF = F

p -> q
IMPL := λpq.pqT
IMPL T T  = TTT = T
IMPL T F  = TFT = F
IMPL F T  = FTT = T
IMPL F F  = FFT = T

¬(p <- q)
O1 := λp.λq. pFq
O1     T  T= TFT = F
O1     T  F= TFF = F
O1     F  T= FFT = T
O1     F  F= FFF = F

p
P := λpq.Tpq
P T T  = TTT = T
P T F  = TTF = T
P F T  = TFT = F
P F F  = TFF = F

q
Q := λpq.Fpq
Q T T  = FTT = T
Q T F  = FTF = F
Q F T  = FFT = T
Q F F  = FFF = F


λ p q  . qTp ≡ OR
S T T  = TTT = T
S T F  = FTT = T
S F T  = TTF = T
S F F  = FTF = F

λ p q  . qFp =  ≡ ¬(p -> q)
S T T  = TFT = F
S T F  = FFT = T
S F T  = TFF = F
S F F  = FFF = F


λ p q  . qpT ≡ (q <- p)
S T T  = TTT = T
S T F  = FTT = T
S F T  = TFT = F
S F F  = FFT = T

λ p q  . qpF ≡ AND
S T T  = TTF = T
S T F  = FTF = F
S F T  = TFF = F
S F F  = FFF = F
