# Properties of the initial functions




- C (and Z), Proj are family of functions

Note: technically, in math notation, a call with no arguments should still contain an empty pair of parenthesis, e.g. `Z()`, but here we mix it up with the FP style which allows the calls without them, e.g. `Z`.

It's not possible for the `succ` function to fail - given a natural it will always return its successor. However, the other two initial functions, `const` and `proj` could in priniciple fail - for one, both are sensitive to the number of arguments they receive. What happens if they receive more or less args then what they expect? Well, PRF theory just proclaims that such situations must not (should not) happen. It states that all the initial functions are well-behaved.

However, concerning a practical implemetation of PRF in a programming language raises the quastion of how are such situations handled? This may be solved with the use of an advanced type system, but in general it is not clear whether it is appropriate to bail out in such situations or to try and return some sensible value anyway.

In PRF, the successor is always a unary function, returning a single number. This may be a problem when implementing PRF in a PL, since other initial functions take tuples of an arbitrary number of arguments. One solution is to also let the successor take a tuple of one element, or a k-tuple like others but to return the successor of the first arg only.



```hs
πᵏᵢ :: ℕᵏ -> ℕ
πᵏᵢ(x₀, x₁,...,xₖ) = xᵢ

-- examples
π³₁(1,2,3) = 1
π¹₁(1) = 1

π²₁(1) = error "argc mismatch"
π²₁() = error "argc mismatch"
π³₄(1,2,3) = error "out of bounds"

```

In the implementation of the `C` initial funciton, we have to arrange for the time to supply the arg that will be fixed. So we should actually create the Haskell's `const` binary function, that fixes its first arg, and when called with another arg, it ignores it and ruturns the first. The problem is that the `C` initial function may take any number of args (not just one) as its "second" argument. This further complicates the check between the number of expected and supplied args.

```hs
-- Haskell's const
const :: a -> b -> a
const a _ = a

-- So it can take one or more args as its "second" arg
konst :: a -> [b] -> a
konst a _ = a
```

## Fallibility of initial functions
