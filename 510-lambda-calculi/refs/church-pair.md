# Pair

Encoding a pair, `(a,b)`, in LC means representing a pair as a function that will later allow extraction of its components.

        cpair := λabs.sab = λa.λb.λs.sab

cpair is a constructor function, it constructs a pair given 2 values (`a` and `b`) as pair's components, and a selector function `s` that will extract the components. The second form more explicitly showcases the eventual currying of the cpair function; e.g. providing just the first component (as X) returns the function that expects the second component (λb.λs.sXb); if the value for the second component is then supplied, a function that expects the selector function is returned (with both components fixed).

        (((λa.λb.λs.s a b) X) Y)
        ((    λb.λs.s X b) Y)
        (        λs.s X Y)

        (((λa.λb.λs.sab) X) Y) ~~> λs.sXY
        ((λa.λb.λs.sab) X) ~~> λb.λs.sXb
        ((λb.λs.sXb) Y) ~~> λs.sXY

        fst := (λab.a) (kestrel, true)
        snd := (λab.b) (kite, false, zero)

        cpair(fst p)(snd p) = p




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
