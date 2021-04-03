# Church Numerals

*The Church numeral* is the most famous encoding scheme used to represent natural numbers in the pure λ-calculus. When everything is a function, either abstraction or application, it doesn't seem there are many ways to represent, e.g. number 3. Church decided the best way to represent a natural number `n` is in terms of function application, that is, as the number of times a function is composed with itself.

```js lc
self-composition
f°ⁿ = f ∘ f ... ∘ f = f (...f (f x)...))
      \__________/
        n times

for example:
f°³ (x) = f (f (f x))

natural numbers:
n = f°ⁿ (x)
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

A Church numeral is a higher-order function, it takes a unary function `f` and returns another unary function.

The Church numeral `n` is a function that takes a function `f` as argument and returns the `n`-th composition of `f`, i.e. the function `f` composed with itself `n` times. This is denoted `fⁿ` and is in fact the `n`-th power of `f` (considered as an operator); `f⁰` is defined to be the identity function. Such repeated compositions (of a single function f) obey the laws of exponents, which is why these numerals can be used for arithmetic.

In Church's original lambda calculus, the formal parameter of a lambda expression was required to occur at least once in the function body, which made the definition of zero as `λsz.z` impossible.

One way of thinking about the Church numeral `n`, which is often useful when analysing programs, is as an instruction *repeat n times*.

The fundamental tautology of Church numerals: `churchN ≡ churchN S c0`.
