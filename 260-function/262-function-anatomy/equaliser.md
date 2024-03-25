# Equaliser

https://en.wikipedia.org/wiki/Equaliser_(mathematics)

An equaliser is a *set of arguments* where two or more *functions* have equal values. *An equaliser is the solution set of an equation*. In certain contexts, a difference kernel is the equaliser of exactly two functions.

## Definitions

Let `X` and `Y` be sets. Let `f` and `g` be functions, both from `X` to `Y`. Then the equaliser of `f` and `g` is the set of elements `x ∈ X` such that 
`f(x) = g(x)` in `Y`.

`Eq(f,g)` := `{ x ∈ X | f(x) = g(x) }`

```js
// for example
X = { a, b, c, d, e }
Y = { a, b, c, d }

f : X → Y = { a ⟼ c, b ⟼ b, c ⟼ d, d ⟼ d, e ⟼ d }
g : X → Y = { a ⟼ c, b ⟼ d, c ⟼ d, d ⟼ c, e ⟼ c }
//            ^^^^^^          ^^^^^^

eq(f,g) = { a, c }
```

The equaliser may be denoted `Eq(f,g)` or `eq(f,g)`. In informal contexts, the notation `{f=g}` is common.

The definition above used two functions f and g, but there is no need to restrict to only two functions, or even to only finitely many functions. 

In general, if `F` is a set of functions from `X` to `Y`, then the equaliser of the members of `F` is the set of elements `x ∈ X` such that, given any two members `f` and `g` of `F`, `f(x) = g(x)` in `Y`. Symbolically:

`eq(𝓕)` := `{ x ∈ X | ∀f,g ∈ 𝓕. f(x) = g(x) }`


This equaliser may be written as `eq(f,g,h,…)` if `𝓕 = {f,g,h,…}`.

As a degenerate case of the general definition, let `F` be a singleton `{f}`. Since `f(x)` always equals itself, the equaliser must be the entire domain `X`.

As an even more degenerate case, let `F` be the empty set. Then the equaliser is again the entire domain `X`, since the universal quantification in the definition is vacuously true.

## Difference kernels

A *binary equaliser* (equaliser of two functions) is also called a **difference kernel** and denoted `DiffKer(f, g)` or `Ker(f, g)` or `Ker(f − g)`.

The last notation shows where this terminology comes from, and why it is most common in the context of abstract algebra: the difference kernel of `f` and `g` is simply the kernel of the difference `f − g`. 

Furthermore, the kernel of a single function `f` can be reconstructed as the difference kernel `Eq(f,0)`, where `0` is the constant function with value zero.

Of course, all of this presumes an algebraic context where the kernel of a function is the preimage of zero under that function; that is not true in all situations. However, the terminology "difference kernel" has no other meaning.
