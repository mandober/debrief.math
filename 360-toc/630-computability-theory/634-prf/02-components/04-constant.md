# Constant

## Contents

- [Contents](#contents)
- [Summary](#summary)
- [Definition](#definition)
- [Literal numbers](#literal-numbers)
- [Common constant functions](#common-constant-functions)
  - [Zero function](#zero-function)
- [Implementing the constant function](#implementing-the-constant-function)


## Summary

- Constant is a n-ary function from ℕᵏ to ℕ, `C : ℕᵏ → ℕ`.
- Constant is named `Const`, `const`, `C`.
- Constant is obviously primitive recursive.
- Constant cannot fail (theoretically), it is always well-defined.
- Constant actually defines a family of functions.

## Definition

Constant function is a number-theorectic function on the set of natural numbers. It takes a `k`-tuple of `ℕ`'s, i.e. `k`-fold of Cartesian product of `ℕ`, `Cᵏₙ :: (ℕ ⨯ … ⨯ ℕ) -> ℕ`, and returns a value in `ℕ`.

`Cᵏₙ : ℕᵏ -> ℕ`     
`Cᵏₙ (x₀, …, xₖ) = n`


Constant function is parameterized by the number of elements it receives in the tuple supplied to it as an argument - even though it ignores it.

Theoretically, constant is always well-defined and well-behaved, which means there cannot be a mismatch between the expected and supplied number of args (at least in theory - in practice, this must be enforced somehow).

```hs
-- definition:
Cᵏₙ :: ℕᵏ -> ℕ
Cᵏₙ (x₀, …, xₖ) = n

-- examples:
C³₉ (1,2,3) = 9
C¹₉ (5) = 9

C⁰₉ () = 9
C⁰₉ = 9
```

The last two examples, show that constant behaves peculiarly in case when it doesn't expect any args. The fact there are no args can be represented with nothing at all, `C⁰₉ = 9`, or with empty parens, `C⁰₉ () = 9`, although the former is more common.

>Constant can behave both as a function and a value.

This means that constant can behave both as a function (which it does, most of the time) and a value (in case of these nullary constant instances).

More clearly, nullary constant instances do not expect any argument - they do not require even a dummy arg in order to return the fixed value. This is impossible to implement in Haskell, where a language item cannot be both a function and a value at the same time. Haskell's native `const` function is binary: it takes and fixes the value passed to it in the first arg, `const 6`, but it cannot return that value until it is called with another, second arg. That second argument can be anything, even a dummy value like `()`, **but it must be given**. However, nullary constant instances do not require it, they can just return the fixed number, **even if no arg is supplied**.

```hs
-- def
const :: a -> b -> a
const a b = a

-- example
x1 = const 1
-- x1 now holds onto the number 1
-- it will return it but only
-- at the time when the second arg is supplied
res = x1 ()
-- res = 1

-- unlike in PRF
C⁰₁ = 1
-- it is 1
-- it doesn't require an additional call
```

## Literal numbers

Due to this pecularity, we can use constant function instances to represent numeric literals. Namely, each such instance *is* a number. 
For example, `C⁰₀ = 0`, `C⁰₁ = 0`, etc.

```hs
-- since
C⁰ₙ = n

-- C⁰ₙ is a number n
C⁰₀ = 0
C⁰₁ = 1
C⁰₂ = 2
C⁰₃ = 3
--- etc.
```

## Common constant functions

Some forms of the constant function are so common they are sometimes named and used as initial functions in their own right, or at least as the abbreviations of their respective constant forms.

### Zero function

- Zero is a n-ary function from ℕᵏ to ℕ, `Z : ℕᵏ → ℕ` that always returns 0
- Zero is named `Zero`, `zero`, `Z`, `ζ`.
- Zero is obviously primitive recursive.
- Zero cannot fail (theoretically), it is always well-defined.
- Zero ignores its arg, always returning 0
- Zero function corresponds to writing a 0 on a blank piece of paper, or initialising a tape cell or a memory location to 0.


The `Zero` function is defined in terms of constant function:

`Zᵏ := Cᵏ₀`, that is `Zᵏ (x₀, …, xₖ) = 0`


```hs
-- def
Zᵏ := Cᵏ₀
Zᵏ (x₀, …, xₖ) = 0

-- examples
Z⁰ = 0
Z¹ (1) = 0
Z² (1,2) = 0
```

Since `Z` is an k-ary function it may be consider as a family of functions, each with a fixed arity: `ζ⁰`, `ζ¹`, `ζ²`, `ζ³`, etc.


## Implementing the constant function

Constant takes an k-tuple of arguments, which it ignores, returning a fixed number `n`.

To implement constant in Haskell, first, we should name it `konst` as Haskell already has `const` function. Second, because we cannot handle tuples of varying number of elements, we must use lists instead - which is acceptable since all the elements are homogeneneous anyway (i.e. natural numbers only). 

```hs
konst :: ℕ -> ℕ -> [ℕ] -> ℕ
konst k n xs = n
```

However, the main problem with implementing the constant function is that it can behave both as a value and functio at the same time, which is impossible to implement in a PL.


```hs
-- possible ERRORS:

-- 1) mismatch between the number of expected and supplied args
C³₁(1,2)   = error "argc mismatch: too few args"
C⁴₁(1,2)   = error "argc mismatch: too many args"
C⁴₁()      = error "argc mismatch: missing args"
```
