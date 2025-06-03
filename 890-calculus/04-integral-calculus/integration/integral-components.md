# Integral Calculus :: Integration :: Integrals :: Integral Components

Integral components vs Integrated Components (IC) 

Components of integrals
- integral symbol
- integrand function
  - Combination of functions
    - sum/difference of functions
    - product of functions
      - uni-product of functions (sole function)
      - bi-product of functions
      - tri-product of functions
    - quotient of functions
    - composition of functions
  - Types of functions
    - the type of function is determined after the main operation
    - exponentiation
      - power functions
      - exponential functions
      - radical functions
      - reciprocal functions
      - `exp` function
      - function in base, function in exponent
- differential

## Integrand

The integrand is the meat of an integral, its main component. An integrand may be presented and expressed as a single function, whether it actually consists of a single function or of a combination of several functions.

## Combining functions

Combining multiple functions can be done with arithmetic operators, by *applying them to the result of functions' evaluations* (at particular arguments), or via function composition.

Function composition, unlike the other combinations, produces a function - combinations obtained by joining *function applications* with arithmetic operators, produces constants.

Again, two functions (so unapplied; without args; just functions per se) can only be combined using function composition because it is the only operation that will produce another function - a single function that will represent the combination of the two functions. In general, given two (unary) functions `f` and `g`, thier composition is a new function, named `h`:

```hs
-- define function f
f :: Int -> Int
f x = x²
-- define function g
g :: Int -> Int
g x = if even x then x / 2 else x * 3 + 1


-- define new function as composition
h = f ∘ g
-- define new function as composition (reverse)
j = g ∘ f
-- define new function by composing f with itself
quad = f ∘ f


-- Defines a new function that takes 5 args:
--   `op` is one of the 4 functions/operations {+, -, ×, ÷}
--   `f` is a fn
--   `g` is a fn
--   `x` is an arg of `f`
--   `y` is an arg of `g`
-- Apply f to x, apply g to y, then combine the results using `op`
cop :: (c -> c -> c)  -- op
    -> (x -> c)       -- f
    -> (y -> c)       -- g
    -> x
    -> y
    -> c
cop op f g x y = f x `op` g x




-- calling the function as
r1 = cop (+) sin cos 0.15 0.75
-- returns the (result of) expr: sin(0.15) + cos(0.75)
```


(higher-order) also called functional,


Several functions are most easily combined into a single overall function via function composition. In the simplest case two function `f` and `g` are composed so one of them becomes the "outer" function and the other the "inner" function. The inner function is actually the argument to the outer function, being actually located in the argument position, e.g. `f(g(x))`.

The notation `f(g(x))` is the so-called *point-full* version of the notation that explicitly shows how `x` is the argument of the inner function `g`, and then the result of `g(x)` becomes an argument to the outer function `f`. This is one situation where it pays to use precise notation when referring to a function, e.g. `f` or `g`, as opposed to referring to the result of the application of the function to an argument, `f(x)`, `f(k)`, `g(3)`, `f(g(5))`, etc.

For example, a function `f`, defined by `f(x) = x²`, when applied to an argument 4, `f(4)`, evaluates to the constant 16 by way of `f(4) = 4² = 16`. Too often the function itself is referred by abusing the notation for application, e.g. `g(z)`, rather then just `g`.

There is also an alternative notation for composed functions called the *point-free* notation, `f ∘ g`. It avoids mentioning the point, aka the argument like `x`, leaving it implicit. It is especially useful when composing a number of functions together, producing much cleaner syntax, `f ∘ g ∘ h`, compared to the traditional `f(g(h(x)))`.

Another version of notation for application leaves out the parethesis since they are redundant anyway. In `f x`, it only makes sense that the first variable, here `f`, represents a function, even if names are not this suggestive; what else could `a b` mean? (a bunch, come to think of it, courtesy of loose notation throughout math). Most functions we use in calculus are unary anyway so they are ideal for composition and trying out new notation. Explicitly applying a composition of (two) functions to an arg `x` requires parens around function names: `(f ∘ g)x` or `(f ∘ g)(x)` is `f(g(x))`.

The chain rule expressed in both notations:
- point-free: `(f ∘ g)′ = (f′ ∘ g) ⋅ g′`
- point-full: `f(g(x)) = f′(g(x))g′(x)`
- applied:    `f (g x) = f′ (g x) ⋅ g′ x`

```js
let chain = f => g => x => {
  let df = diff(f)
  let dg = diff(g)
  return df(g(x)) * dg(x)
}

// addition: sum
f + g
// subtraction: difference
f - g
// multiplication: product
f ⋅ g
// division: quotient
f / g
// composition
f ∘ g


(f ∘ g)′x = (f′ ∘ g)x ⋅ g′ x
(f ∘ g)′x = (f′ ∘ g)x ⋅ g′ x
```
