# Primitive recursive set function

https://en.wikipedia.org/wiki/Primitive_recursive_set_function

In mathematics, primitive recursive set functions or primitive recursive ordinal functions are analogs of primitive recursive functions, defined for sets or ordinals rather than natural numbers. They were introduced by Jensen & Karp (1971).

(Ronald B. Jensen, Carol Karp, 1971, "Primitive recursive set functions", in Axiomatic Set Theory)

## Definition

A primitive recursive set function is a function from sets to sets that can be obtained from the following basic functions by repeatedly applying the following rules of substitution and recursion:

The basic functions are:
- Projection: `Pⁿᵢ (x₁, …, xₙ) = xᵢ` for `0  ≤ i  ≤  n`
- Zero: `F(x) = 0`
- Adjoining an element to a set: `F(x, y) = x ⋃ {y}`
- Testing membership: `C(x, y, u, v) = x` if `u ∈ v`, else `C(x, y, u, v) = y`


The rules for generating new functions by substitution are:

```
F(x, y) = G (x, H(x), y)
F(x, y) = G (   H(x), y)
```

where `x` and `y` are finite sequences of variables.

The rule for generating new functions by recursion is:

```
F(z, x) = G ({u ∈ z} ⋃ F(u, x), z, x)
```

A primitive recursive ordinal function is defined in the same way, except that the initial function `F(x, y) = x ∪ {y}` is replaced by `F(x) = x ∪ {x}` (the successor of `x` a la von Neumann). The primitive recursive ordinal functions are the same as the primitive recursive set functions that map ordinals to ordinals.

One can also add more initial functions to obtain a larger class of functions.

For example, the ordinal function `ωᵃ` is not primitive recursive, because the constant function with value `ω` (or any other infinite set) is not primitive recursive, so one might want to add this constant function to the initial functions.
