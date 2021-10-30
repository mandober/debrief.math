# Lambda calculus

## Church encoding


## Scott encoding

Mogensen-Scott encoding
https://en.wikipedia.org/wiki/Mogensen-Scott_encoding



ZERO = 0 := λab.a
SUCC := λnxf.fn
CASE := λnaf.naf

PRED := λn.n(0)(λx.x)


* CASE is for pattern matching caseN

(case)(n)(a)(f) returns:
    a      if n = 0
    f(x)   if n = succ(x)

* With pattern matching, we can define predecessor function:

PRED := λn.caseN n Z (λn'.n')


0 := λzs.z
1 := λzs.s(0)
2 := λzs.s(1)
3 := λzs.s(2)
