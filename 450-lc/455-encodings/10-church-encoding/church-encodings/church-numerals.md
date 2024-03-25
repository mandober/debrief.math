# Church numerals

https://en.wikipedia.org/wiki/Church_encoding
https://en.wikipedia.org/wiki/Fixed-point_combinator
https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/Reduction_strategy#Lambda_calculus
https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding

*Church numerals* is an encoding invented by Church himself as a way to represent (encode) the natural numbers (and operations over them) as lambda terms in the untyped lambda calculus.

An expresion `g (f x)` may be denoted as the composition of functions `f` and `g`, that is, as `g ∘ f`. However, if `f = g` then instead of composition we talk about folding a function over itself, `f ∘ f` = `f (f x)`. If we extend this pattern indefinitely, `f ∘ … ∘ f ∘ f`, we get what is called *iteration* or an *n-fold*, denoted by `fⁿ x`.

Note: when expressing composition like `g ∘ f`, we use the so-called point-free style which allows us to skip the argument (which is still there, only it's implicit). Denoting the composition explicity, as `(g ∘ f)(x)`, is too noisy but also possible. On the other hand, an n-fold `fⁿ x` usually mentions the argument `x` explicitly because leaving it implicit would be easily confused with exponentiation - that's why some authors denote it as `fᵒⁿ x` even.

>Composing a function over itself `n` times, `f ∘ … ∘ f ∘ f`, is called the iteration or an n-fold, more concisely denoted by `fⁿ x`.

The number of folds, `n`, is exactly what each Church numeral specifies. Thus, Church numerals are interpreted as iterators - they iterate a given function a particular number of times. This also means their time complexity is `O(n)`, since getting the number `n` requires `n` steps, i.e. `n` applications.


Each natural number represents the number of times an arbitrary function `f` is applied to an arbitrary argument `x`, starting with zero times - making it the representation of the first natural number.

n | lambda term   | fold     | result       |
--|---------------|----------|--------------|
0 | λfx.x         |    f⁰ x  |         x    |
1 | λfx.f(f(fx))  |    f¹ x  |       f x    |
2 | λfx.f(f(fx))  |    f² x  |    f (f x)   |
3 | λfx.f(f(fx))  |    f³ x  | f (f (f x))  |
n | λfx.f(nfx)    | f (fⁿ x) | f (… (f x)…) |


Under this encoding, each natural number is an iterator whose values specifies the number of times an arbitrary function is applied to an arbitrary argument. Which function is being applied and to which argument is completely irrelevent.


$
\displaystyle{
  n := n f x = f^{n} \\
  f^{n^m}
}
$

$
{\displaystyle
  n / m = \operatorname {if}
  \ n \geq m \ \operatorname {then}
  \ 1+(n-m)/m\ \operatorname {else}
  \ 0
} \\
$




- suc n = fⁿᐩ¹ = n + 1
- pre n = fⁿ⁻¹ = if n ≤ 0 then 0 else n − 1
- n + m = fⁿᐩᵐ
- n - m = fⁿ⁻ᵐ = if n ≥ m then (n − m) else 0
- n ∙ m = fⁿ˙ᵐ
- n ^ m = f ^ (nᵐ)
- n / m = if n ≥ m then 1 + (n − m) / m else 0



```hs
n     -> fⁿ x        … n     applications of f
n + 1 -> fⁿᐩ¹ x      … n + 1 applications of f
n - 1 -> fⁿ⁻¹ x      … n - 1 applications of f (but 0 - 1 = 0)
n + m -> fⁿᐩᵐ x      … n + m applications of f
n - m -> fⁿ⁻ᵐ x      … n - m applications of f (if n < m then 0 else n - m)
n ∙ m -> fⁿ˙ᵐ x      … n ∙ m applications of f
n ^ m -> f^(nᵐ) x    … n ^ m applications of f


The shift-and-increment function that maps (m,n) to (n,n+1) can be defined as

Φ := λx.PAIR (SECOND x) (SUCC (SECOND x))

which allows us to give the most transparent version of the predecessor:

PRED := λn. FST (n Φ (PAIR 0 0))

=============================================================================
    (n f  x) = fⁿ x
  f (n f  x) = f  (fⁿ x) = fⁿᐩ¹ x
m f (n f) x  = fᵐ (fⁿ x) = fⁿᐩᵐ x
m   (n f) x  = m  (fⁿ x) = fⁿᵐ x

(m n) f x = nᵐ f x = f^(nᵐ) x

m  (fⁿ x) = fⁿᵐ x


=============================================================================
SUC :=    λn.λf.λx.     f (n f  x)
ADD := λm.λn.λf.λx.   m f (n f  x)
MUL := λm.λn.λf.λx.   m   (n f) x
POW := λm.λn.λf.λx.   (n m)  f  x

=============================================================================
SUCC    := λn.λf.λx.      f (n f x)

PLUS    := λm.λn.λf.λx.   m f (n f x)
PLUS    := λm.λn.         m SUCC n

MULT    := λm.λn.λf.λx.   m (n f) x
MULT    := λm.λn.λf.      m (n f)
MULT    := λm.λn.         m (PLUS n) 0

POW     := λm.λn.λf.λx.   (n m) f x
POW     := λm.λn.         n m

TRUE    := λa.λb.a
FALSE   := λa.λb.b

ISZERO  := λn.            n (λx.FALSE) TRUE
SUB     := λm.λn.         n PRED m
LEQ     := λm.λn.         ISZERO (SUB m n)

0       := λf.λx.         x
1       := λf.λx.         f x

PRED    := λn.            n (λg.λk.ISZERO (g 1) k (PLUS (g k) 1)) (λv.0) 0
PRED    := λn.λf.λx.      n (λg.λh.h (g f)) (λu.x) (λu.u)
PRED    := λn.            FST (n Φ (PAIR 0 0))

Φ       := λx.            PAIR (SND x) (SUCC (SND x))

PAIR    := λx.λy.λf.      f x y
FST     := λp.            p TRUE
SND     := λp.            p FALSE
NIL     := λx.            TRUE
NULL    := λp.            p (λx.λy.FALSE)
=============================================================================
```
