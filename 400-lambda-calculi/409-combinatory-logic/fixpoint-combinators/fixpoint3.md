# Lambda calculus: Fixpoint


> Y := λf. (λx. f (x x)) (λx. f (x x))




## Fixpoint

* With values

Let `f` be a function `f(x) = y`
then `x` is the fixpoint of `f` 
if `f(x) = x`

* With functions

Let `h` be a HOF such that `h ϱ = φ`
then `f` is a fixpoint of `h` if `h f = f`

* With function(al)s

Let `Fix` be a HOF that returns a fixpoint
for any input arg (even if arg is a function).

Fn X = Y
Fn X = X

1  Fix f = g            where `g` is a fixpoint of function `f` such that
2  f g   = g
------------------
3  Fix f = f g              (1,2) g = g
4  f g   = f (Fix f)        (1)   g = Fix f
5  f g   = f (f g)          (2)   g = f g
6  Fix f = f (Fix f)        (3,4) f g = f (Fix f)
------------------
f g = g = Fix f
f g       = g
f (Fix f) = Fix f
f (Fix f) = g
f g       = Fix f
f (f g)   = Fix f
f (f (f g)) = Fix f
f (f (f g)) = f (Fix f)
f (f (f g)) = f (f (Fix f))

------------------

g = f g
g = f (f g)
g = f (f (f g))
g = f (f (f (f g)))

--------------------







Fix = Fix f ~> f (Fix f)


## Turing's Fixpoint

Let `A` be `λx. λy. y (x x y)`
then `A A` is a fixpoint combinator.

Let `e` be any lambda term.
`A A e` = `(λx. λy. y (x x y)) A e ~~> e (A A e)`



## Misc

-- self application (little omega)
ω := λf.ff

-- Fixpoint Y-combinator for lazy eval semantics
Y := λf. (λx. f (x x)) 
         (λx. f (x x))

```js
Y = f =>
  ( x => f (x (x)) )
  ( x => f (x (x)) )

Z = f => ( x => f ((v => (x (x))) v) ) ( x => f ((v => (x (x))) v) ) 
```



-- Fixpoint Z-combinator for strict eval semantics (η-introduction)
Z := λf. (λx. f (λv. (x x) v)) 
         (λx. f (λv. (x x) v))

-- η-introduction
(λx. x) A ≡ A
(λx. A) y ≡ A


`x` ≡ `(λ_. x) _`
x ≡ (λv. x) v
x ≡ (λv. v) x

λv. (x x) v)
