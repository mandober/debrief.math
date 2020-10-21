# Datatypes

Pair, P := (λabs.sab)

P1 = (λa. λb. λs. sab) C2 C3 = (λs. s C2 C3)   ~ (2,3)

Fst := (λP. P T)  ~ fst (2,3) = 2

Snd := (λP. P F)  ~ snd (2,3) = 3

```
Fst P1 T =
(λP. λs. P s) (λs. s C2 C3) (λab.a) = 
(λs. s C2 C3) (λab.a) = 
((λab.a) C2 C3) = 
((λb.C2) C3) = 
C2 
```



Cons = (λa. λb. λf. f a b)  ~ P

Head = (λc. c T)
Head = (λc. c (λa. λb. a))  ~ Fst

Tail = (λc. c F)
Tail = (λc. c (λa. λb. b))  ~ Snd



## Pairs

A pair (2-tuple) can be defined in terms of TRUE and FALSE, by using the Church encoding for pairs. For example, PAIR encapsulates the pair (x,y), FIRST returns the first element of the pair, and SECOND returns the second.

PAIR        := λxyf.fxy
FIRST       := λp.pT
SECOND      := λp.pF
NIL         := λx.T
NULL        := λp.p (λx.λy.F)

A linked list can be defined as either NIL for the empty list, or the PAIR of an element and a smaller list. The predicate NULL tests for the value NIL. (Alternatively, with NIL := FALSE, the construct l (λh.λt.λz.deal_with_head_h_and_tail_t) (deal_with_nil) obviates the need for an explicit NULL test).

As an example of the use of pairs, the shift-and-increment function that maps (m, n) to (n, n + 1) can be defined as

Φ := λx.PAIR (SECOND x) (SUCC (SECOND x))

which allows us to give perhaps the most transparent version of the predecessor function:

PRED := λn.FIRST (n Φ (PAIR 0 0))
