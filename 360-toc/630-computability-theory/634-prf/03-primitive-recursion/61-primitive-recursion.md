# Primitive recursion

- Primitive recursion is one of the two primitive operations.
- Primitive recursion is symbolized by the `ρ` operator, `ρ(f,g) = h`

Primitive recursion, symbolized by the `ρ` operator, is defined at a high level as the equation `ρ(f,g) = h`. It means that function `h` is obtained by primitive recursion on the two suppled functions `f` and `g`.

- The function `h` is defined in terms of `f` and `g`, `ρ(f,g) = h`.
- The provided function `f` handles the base case of recursion.
- The provided function `g` handles the recursive case of recursion.

>The primitive recursion operator `ρ(f,g) = h` takes two primitive recursive functions `f` and `g`, returning another primitive recursive function `h` defined recursively in terms of `f` and `g`.

The primitive recursion operator `ρ` defines `h` recursively by plugging `f` and `g` in the appropriate place in the definition. It does this by setting up a recursive definition for `h` by creating two equations with each referring to one of the supplied functions. Namely, the first equation handles the base case of recursion (when the recursive arg is 0) by having its right-hand side defined in terms of `f`; the second equation handles the recursive step by having its right-hand side defined in terms of `g`.

## The equations

In the case when `h` is a unary function, the equations are:

```hs
h    0  = f
h (S n) = g n (h n)
```

In the case when `h` is a binary function, the equations are:

```hs
h    0  x = f x
h (S n) x = g n (h n x) x
```

By a very arbitrary and unstable convention, when `h` is polyadic function, we fix all the others and use the first argument for recursion.

>This is the general form of primitive recursion:

```hs
h    0  x₀ x₁ … xₖ = f x₀ x₁ … xₖ
h (S n) x₀ x₁ … xₖ = g n (h n x₀ x₁ … xₖ) x₀ x₁ … xₖ
```

## The analysis



The arity of the involved functions:
- `f` is `k`-ary
- `g` is `k+2`-ary
- `h` is `k+1`-ary

The parameters (args):
- the first parameter is the one we recurse over, aka *recursive param*
- other params are fixed and immutable, aka *extra params*


```hs
h    0  x = f x
h (S n) x = g n (h n x) x
```


The breakdown:
- `f` is k-ary, it takes extra k params only
- `h` takes all 1+k params: 1 recursive and k extra params
- `g` takes 2+k params:
  - the first arg is the previous value of the recursive arg `n`
  - the second arg is the recursive call `h n x̅`
  - the remaining k args are the extra args, `x̅`

   is the previous value of the recursive arg `n`







```hs
x̅ = x₀, x₁,...,xₖ

h    0  x̅ = f x̅
h (S n) x̅ = g n (h n x̅) x̅
```







```hs
h (S x) = g x (h x)
└──┬──┘       └─┬─┘
current      previous
      value of h
```








```
h    0  = f
h (S x) = g x (h x)
  where
  f = 0
  g a b = a + b
```
