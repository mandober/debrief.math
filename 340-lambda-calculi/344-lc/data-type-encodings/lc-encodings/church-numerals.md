# Church Numerals

The unqualified term **Church numeral** refers to a Church-encoded natural number. A Church numeral is a *λ-abstraction* of specific form that represents a natural number (`0`, either zero, or `S n`, successor of some natural number).

The natural number 0 

0 := λ f x . x

Under the Church encoding natural numbers are realized as iterators. A natural number `n` means iterate some function `f` `n` times over the initial argument `x`.

Church decided the best way to represent a natural number `n` is in terms of function application, that is, as the number of times a function is composed with itself.

## Church numerals

**Church numerals** are the representations of natural numbers under *Church encoding*. The higher-order function that represents natural number `n` is a function that maps any function `f` to its `n`-fold composition, `fⁿ x`.

- if `n = 3` then `f³ x` = `f (f (f x))`
- if `n = 2` then `f² x` = `f (f x)`
- if `n = 1` then `f¹ x` = `f x` = `f x`
- if `n = 0` then `f⁰ x` = `x`

The "value" of a Church numeral is equivalent to the number of times the function `f` folds over itself; the first time `f` is applied to the arg `x`, and from then on, to its result:

𝕟 := n f x = f°ⁿ x = fⁿ x = f (… (f x) …)
                            \__________/
                                  |
                               n times


In simpler terms, the "value" of the numeral is equivalent to the number of times the function encapsulates its argument.


```js
fⁿ = f ∘ f ... ∘ f
     \__________/
       n times

fⁿ x = (f ∘ f ... ∘ f) (x) = f (...f (f x)...))

f³ x = (f ∘ f ∘ f) x

f³ x = (f ∘ f ∘ f) (x) = f (f (f x))

n = fⁿ(x)
```



So, the number zero is represented by `0:=λab.b` and `S:=λnfx.f(nfx)` is the successor function, alternativelly and equivalently `S':=λnfx.nf(fx)`.

```js lc
S := λnfx.f(nfx)
0 := λab.b
1 := S 0 = (λnfx.f(nfx)) (λab.b) ⟿ᵦ λf.λx.fx
2 := S 1 = λsz.s(sz)
3 := S 2 = λsz.s(s(sz))
4 := S 3 = λsz.s(s(s(sz)))
```

The thing about natural numbers, e.g. 3, is that a Church numeral represents a number by the count of function application. Number 3 means "to apply a function `f` to arg `x` 3 times". Besides representing numerals, "numerical functions" are good in implementing any kind of counters and iteration.

A *Church numeral* is a higher-order function, it takes a unary function `f` and returns another unary function.

The Church numeral `n` is a function that takes a function `f` as argument and returns the `n`-th composition of `f`, i.e. the function `f` composed with itself `n` times. This is denoted `fⁿ` and is in fact the `n`-th power of `f` (considered as an operator); `f⁰` is defined to be the identity function. Such repeated compositions (of a single function f) obey the laws of exponents, which is why these numerals can be used for arithmetic.

In Church's original lambda calculus, the formal parameter of a lambda expression was required to occur at least once in the function body, which made the definition of zero as `λsz.z` impossible.

One way of thinking about the Church numeral `n`, which is often useful when analysing programs, is as an instruction *repeat n times*.

The fundamental tautology of Church numerals: `churchN ≡ churchN S c0`.
