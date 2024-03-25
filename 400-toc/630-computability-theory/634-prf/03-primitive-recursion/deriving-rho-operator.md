# The rho operator

## Deriving the rho operator

Why does the `ρ` operator looks like this? More concretely and specifically, what determines the shape of the `g` function?

The primitive-recursion, `ρ`, is a binary operator: it takes two primitive recursive functions `f` and `g`, and produces a function, `h`, as a result that is also primitive recursive.

`ρ(f, g) = h`

The function `h` is a multipart function defined by two cases: the base case and the recursive case. The function `f` abstracts and handles the right-hand side of the base case (first equation), and the `g` function abstracts and handles the right-hand side of the recursive case (second equation).

```hs
-- PR: recursing on the first param
h x̅    y  = f y
h x̅ (S y) = g x̅ (h x̅ y) y
```

## Generalizing the base case

The function `f` deals with the base case, that is, instead of directly specifying the base case value on the rhs (e.g. we return the non-recursice arg for the base-case of add; we return the constant 0 in the base case of mul, etc.), we handle the base-case value as a function application, i.e. it becoms the result of application of the function we supply to some value (that is liekly to be 0 or 1 or an argument that appeared on the lhs).


For example, consider these 3 operations where each returns a different value in the base case (the recursive param is always the last one):

```hs
add m 0 =   n
mul m 0 =   0
exp m 0 =   1

-- by supplying f, we have this setup:
add m 0 = f n   -- = n
mul m 0 = f 0   -- = 0
exp m 0 = f 1   -- = 1

-- to get those results, we need to set f as:
add m 0 = f n  where f = id       -- (A)
mul m 0 = f 0  where f = const 0  -- (B)
exp m 0 = f 1  where f = const 1  -- (C)
```

Note that (A) and (B) show the discrepancy between Haskell and PR wrt to the constant function: in math, `C⁰₀` just returns 0 as if being 0 itself (no args required), and `C¹₀` requires one arg to in order to return 0. Thus, **the primitive recursive constant function acts as both a value and a function depending on the number of args**. However, this is not possible in Haskell: there is no function that can act as both a value and a function. The best we can do to model this is by Haskell's `const` function, which (being a function) requires all the arguments (the second arg can even be a dummy value like `()` but it must be supplied nonetheless), in order for `const` to return the first (fixed) argumen, generally `const n () = n`.

Note that above, in (B) and (C), we applied `f` to the value that we wanted to retur - which actually just serves as a remainder - in fact, the second arg might as well have been any number, in both cases. This is because, in (A), `f = const 0` and the rhs reads `f 0`, which evals to `const 0 0` which is 0 regardless of the serconf arg,. which could have been 42 as in `const 0 42`.

```hs
mul m 0 = f 42  -- f 42 here is actually const 0 42, which is 0
  where
  f = const 0         -- (B)

exp m 0 = f 42  -- f 42 here is actually const 1 42, which is 1
  where
  f = const 1         -- (C)
```


If we want to generalize this recursive pattern, without considering their recursive cases for the time being, we can now assume that the base case value should be a param, `f`, that we assume will be a value like 0 or 1. But then how do we express that the result is an existing arg like `n` in `add`? Obviously, we cannot do it by passing some value, so we infer `f` must be a function instead. Then we can apply `f` to whatever arg we like. By making `f` be the `id` function we can return an existing argument; and by making `f` be the `const` funcion we can return a number directly.

>Therefore, the function `f` represents our handling of the result in the equation responsible for the base case. That is, `f` represents the righ-hand side of the base-case equation.


## Generalizing the recursive cases

```hs
add m    0  = m
add m (S n) = suc (add m n)

mul m    0  = 0
mul m (S n) = add (mul m n) m

pow m    0  = 1
pow m (S n) = mul (pow m n) m

fac      0   = 1
fac n@(S n') = mul n (fac n')

fib    0  = 1
fib    1  = 1
fib (S n) = add (fib n) (fib (n - 1))
```

Having solved the generalization of the base cases, we now turn to the rec cases. If rec cases are defined also in terms of a function, that function `g` should take - how many (and what) args?

- add: g is 1-ary
- mul: g is 2-ary
- pow: g is 2-ary
- fac: g is 2-ary
- fib: g is 2-ary; *Can we express 2 base cases in PR format at all?*

So far, it seems `g` should be a binary fn, `g a b`. Yet in PR scheme `g` as 
`h x (S n) = g x (h x n) n` is a ternary fn accepting:
- the first (fixed) arg, as `x`
- the previous `h` value, as `(h x n)`
  and the current `h` value (on the lhs as `h x (S n)`) is being computed
- the second (rec) arg, as `n`

>But it seems 2 args is enough? What rec fn needs all 3 args?
