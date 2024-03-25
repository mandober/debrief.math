# Primitive recursion

## Capturing the general pattern of recursion

A characteristic of the natural numbers is that every natural number can be reached from 0 by applying the successor finitely many times; any natural number is either 0 or the successor of some natural number.

One way to specify a function `h : ℕ → ℕ` that makes use of this fact is:
1. specify what is the value of `h` at 0
2. given the value of `h x`, specify how to compute the value of `h (S x)`


```hs
                h x
----- zero    ------- succ
 h 0          h (S x)

-- (1) with pattern matching
h :: ℕ -> ℕ
h    0  = z
h (S x) = s (h x)
-- so
h    0  = z
h (S 0) = s (h 0) = s z
h (S 1) = s (h 1) = s (s z)
h (S 2) = s (h 2) = s (s (s z))
-- etc.

-- (2) on the right-hand side
h :: ℕ -> ℕ
h 0  = z
h x = s (h $ x - 1)
-- so
h 0 = z
h 1 = s (h $ 1 - 1) = s (h 0) = s z
h 2 = s (h $ 2 - 1) = s (h 1) = s (s z)
h 3 = s (h $ 3 - 1) = s (h 2) = s (s (s z))
-- etc.


-- | With all 3 args accounted
--      z        s       x
recu :: ℕ -> (ℕ -> ℕ) -> ℕ -> ℕ
recu z s x = case x of
  0    -> z
  S x' -> s (recu z s x')
```

For (1) tells us directly what the value of `h 0` is, so `h` is defined for 0. Using (2) when `x=0`, we can compute `h (S 0) = h 1` from `h 0`. When `x=1`, we compute `h (S 1) = h 2` from `h 1`, and so on. For every natural number `x`, we'll eventually reach the step where we define `h x` from `h (S x)`, and so `h x` is defined for all `x ∈ ℕ`.

For example, we specify `h` by the following equations for `z` and `s` and get the function, `h x = 2ˣ`, that computes the powers of two:

```hs
h :: ℕ → ℕ
h    0  = z
h (S x) = g (h x)
  where
  z = 1
  s = (2 *)
```


The characteristic feature of the natural numbers guarantees that there is only one function `h` that meets the two rules. A pair of equations like this above is called a *definition by primitive recursion* of the function `h`.

It is a recursive definition because `h` is mentioned on the right-hand side of its own definition. 
It is "primitive" because in defining `h (S x)`, we only use the value `h x`, that is, the preceding value of the function `h`. 
This is (probably) the simplest way to define a recursive function on ℕ.

We can define more fundamental functions by primitive recursion like addition and multiplication which are binary functions - so we fix one of the arguments, and use the other to recurse over.

```hs
add x    0  = x
add x (S y) = S (add x y)

-- which is generically
h x    0  = z
h x (S y) = g (h x y)  -- (rc1)
--          ↑
-- g is unary here
```

We can think of the recursive definition as given in terms of a single function which we apply to the previous value of the function. However, it is often necessary to allow the function to depend not just on the previous value but also on the current value of the recursive argument (the other args are fixed).

```hs
mul x    0  = 0
mul x (S y) = add (mul x y) x
-- btw, is it better for add's first (fixed)
-- arg to be mul's fixed arg x? like this:
mul x (S y) = add x (mul x y)

-- which is generically
h x    0  = z
h x (S y) = g (h x y) x -- (rc2)
--          ↑
-- g is binary here
```

In add `g` was unary, `g (h x y)`, but in mul we need it to be a binary function, `g (h x y) x`

## General pattern of recursion


The general pattern is: to define a primitive recursive function `h`, we pick one arg to recurse over (here the last arg `y`), while fixing the other args. There may be one or more additional args and we'll refer to them all by the symbol `x̅` which just abbreviates the list of args `x₀, x₁,...,xₙ`. So, to actually define a primitive recursive function `h x̅ y`, we provide two equations: the first, without referencing `h`, specifies the base case of `h` when `y = 0`, and the other specifies the general case when the recursive argument is a successor of some natural number, `S y`.

```hs
-- generally (n-ary)
h x̅    0  = f x̅
h x̅ (S y) = g x̅ (h x̅ y) y

-- basically (binary)
h x    0  = f x
h x (S y) = g x (h x y) y
```

The second equation defines the value of `h x̅ (S y)` in terms of `x̅`, `(h x̅ y)`, and `y`, that is, in terms of a call to `g` function, `g x (h x y) y`.

Only the immediately preceding value of `h` may be used in the second equation.

If we think of the operations given by the right-hand sides of these two equations as themselves being functions `f` and `g`, then the *general pattern* to define a new function `h` by primitive recursion is this:
