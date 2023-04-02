# Church numerals

In 1941, Church devised the encoding scheme for representing natural numbers in the untyped λ-calculus. This scheme is now called *Church numerals*. A Church numeral refers to a Church-encoded, Peano-style natural number. A Church numeral is a λ-abstraction of the specific form that represents a natural number.

Namely, it is a challenge to come up with a representation for the natural numbers using only functions. We only have functions, both as the building blocks and as final values. Church's insight was that a natural number `n` could be encoded by a high-order function that applies its first arg `n`-times to its second argument. That is, taking any two arbitrary arguments, a natural number is represented by the number of times the first arg, `f`, is applied to the second arg, `x`, starting with zero applications which encodes the number 0.

- `0 := λ f x. x`
- `1 := λ f x. f x`
- `2 := λ f x. f (f x)`
- `3 := λ f x. f (f (f x))`

To represent 0, `f` is not applied at all, with the second arg `x` just being returned untouched, which is the same lambda as the `KI` combinator. 

To represent 1, `f` is applied once to `x`, returning `f x`. This may be considered as the higher-order function `apply` that takes a farg and an arg, applies the farg to the arg once, returning the result.

To represent 2, `f` is applied twice to `x`, returning `f (f x)`. This may also be a useful combinator `twice` that applies its first farg twice to its second argument.

A number `n` is then encoded by applying the first, farg `f`, to the second argument, `x`, exactly `n` times.


Under the Church encoding natural numbers are realized as iterators. A natural number `n` means iterate some function `f` exactly `n` times over the initial argument `x`. This may be denoted by `fⁿ x`, which means a natural number `n` is the n-fold of `f` over `x`. It also means a natural number `n` is encoded in terms of function application, as the number of times a function is composed with itself, denoted by `f ∘ f … ∘ f` = `fⁿ` = `fⁿ x`.

The higher-order function that represents natural number `n` is a function that maps any function `f` to its `n`-fold composition, `fⁿ x` (sometimes also denoted by the explicit use of the composition operator as `f°ⁿ x`):

- 0 = f⁰ x = x            = x
- 1 = f¹ x = f x          = f x
- 2 = f² x = f (f x)      = (f ∘ f) x
- 3 = f³ x = f (f (f x))  = (f ∘ f ∘ f) x
- n = fⁿ x = f (… (f x)…) = (f ∘ f ... ∘ f) x

The value of a Church numeral is equivalent to the number of times the function `f` folds over itself (the number of times `f` encapsulates its arg `x`):

```
n = n f x = f°ⁿ x = fⁿ x = fⁿ x = f (… (f x) …)
                                  └───┬───────┘
             f applied over x exactly n times (n-fold)
```


A natural number `n` is represented by a lambda term `n f x`, which may be interpreted as an n-fold, i.e. as `fⁿ x`. If `f` is bound to a successor symbol `S` and `x` to a zero symbol `Z`, then (using pseudo code) a number `n` is

`n = fⁿ x = Sⁿ Z`

which is the same as the unary Peano encoding of the naturals.


The Church numeral `n` is a function that takes a function `f` as argument and returns the `n`-th composition of `f`, i.e. the function `f` composed with itself `n` times. This is denoted `fⁿ` and is in fact the `n`-th power of `f` (considered as an operator); `f⁰` is defined to be the identity function. Such repeated compositions (of a single function f) obey the laws of exponents, which is why these numerals can be used for arithmetic.



Besides representing numerals, "numerical functions" are good in implementing any kind of counters and iteration.

A Church numeral is a higher-order function that takes a unary function `f` and returns another unary function.

BTW, in the Church's original lambda calculus, each formal parameter was required to occur at least once in the lambda body, which made the definition of zero as `λab.a` impossible.

One way of thinking about the Church numeral `n`, which is often useful when analysing programs, is as the instruction *repeat `n` times*.

The fundamental tautology of Church numerals: `churchN ≡ churchN S c0`, where `S` is the successor and `c0` is the Church numeral for 0.


## Successor

The successor function should be a lambda term that adds one more application of `f` to some number that is represented by `n f x` i.e. `fⁿ x`. So, if number `n` is encoded by `fⁿ x`, then `S(n)` is encoded by `fⁿᐩ¹ x`.

```hs
-- deriving the successor (1)
f¹ᐩⁿ = f¹ ∙ fⁿ = f ∙ fⁿ
-- restoring the arg x
f¹ᐩⁿ x = f (fⁿ x) = f (n f x)

-- deriving the successor (2)
fⁿᐩ¹ = fⁿ ∙ f¹ = fⁿ ∙ f
-- restoring the arg x
fⁿᐩ¹ x = fⁿ (f x) = n f (f x)
```

So `f (n f x)` is a possibile lambda term for the successor function. Actually, since we need to bind `f` and `x`, the entire term is `λf x. f (n f x)`. Due to the commutativity of addition in the exponent (fⁿᐩ¹ = f¹ᐩⁿ), an alternative but equivalent successor term is `λf x. n f (f x)`.

- zero:          `0 := λ   f x.          x`
- successor (1): `S := λ n f x.   f (n f x)`
- successor (2): `S':= λ n f x. n f (  f x)`


Reduction of the lambda expression `S 0`:

```hs
S := λn f x. f (n f x)
0 := λa b. b

-- reducing S 0
S 0
= S                   0
= (λn f x. f (n f x)) 0
=  λ  f x. f (0 f x)
= λf x. f (0 f x)
= λf x. f ((λa b. b) f x)
= λf x. f ((λb. b) x)
= λf x. f x
=: 1
```


Using the compositional, *point-free style*, a first few natural numbers are defined as:

- ⌜0⌝ = λf. I
- ⌜1⌝ = λf. f
- ⌜2⌝ = λf. f ∘ f
- ⌜3⌝ = λf. f ∘ f ∘ f

In general, `⌜n⌝ = λf. fⁿ`   
where   
`fⁿ` is defined as   
`f⁰ = I` and `fⁿᐩ¹ = f ∘ fⁿ`    
and `I` is the identity lambda.

Building upon this, the successor is: 
`succ n := λf. f ∘ n f`

Ops of addition, multiplication and exponentiation are due to Rosser:
- `m + n = λf. m f ∘ n f`
- `m × n = m ∘ n`
- `m ^ n = n m`

Multiplication is implemented by function composition and 
exponentiation by reverse function application. 

It is relatively straightforward to prove the definitions correct (see Barendregt 1992 for an inductive proof):
- succ  ⌜n⌝ = ⌜n + 1⌝
- ⌜m⌝ + ⌜n⌝ = ⌜m + n⌝
- ⌜m⌝ ∙ ⌜n⌝ = ⌜mn⌝
- ⌜m⌝ ^ ⌜n⌝ = ⌜mⁿ⌝
