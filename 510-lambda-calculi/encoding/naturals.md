# Church numerals

Church encoding of the natural numbers.

Zero, Z := (λsz.z)
Succ, S := (λnfx.f(nfx))

C1 := (λsz.sz)
C2 := (λsz.s(sz))
C3 := (λsz.s(s(sz)))

Cn' = S n S Z ~ Sⁿ(Z)
C6 := S 5 S Z ~ S (S⁵ Z) = S (S (S (S (S (S Z))))) ~ 6


C1 = S Z = (λnfx.f(nfx)) (λsz.z) = (λsz.sz)

```
S Z =
(λnfx. f(n       fx)) (λsz.z) =
  λfx. f((λsz.z) fx) =
  λfx. f((λsz.z) fx) =
  λfx. f((λz.z)   x) =
  λfx. f(x)          =
  λfx. fx ~ 1

S (S Z) =
(λnfx. f(nfx)) (λsz.sz) =
(λfx. f((λsz.sz) fx))   =
(λfx. f((λz.fz) x))   =
(λfx. f(fx))   =
 λfx. f(fx) ~ 2

S (S (S Z)) =
(λnfx. f(nfx)) (λsz.s(sz)) =
(λfx. f((λsz.s(sz)) fx)) =
(λfx. f(f(fx))) =
 λfx. f(f(fx)) ~ 3
```
