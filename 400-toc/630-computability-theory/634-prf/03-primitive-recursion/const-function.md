# Constant functions

Constant functions are binary functions that ignore the second and always return their first argument, i.e. `const(x, y) = x`, or, in their curryied form, `const x y = x`. Also pertaining to the curryied form of const functions, although the second arg is ignored it still needs to be supplied.

However, in the realm of PRFs there is no curryied form - all functions receive tuples of arguments. In fact, the number of elements in a tuple determines a function's arity, e.g. a function that takes a 3-tuple is ternary, binary functions take 2-tuples, unary functions take 1-tuple (which is usually just a bare arguemnt, not an argument in an extra set of parens). Besides tuples, lists may also be used as argument containers.

Constant functions are PRFs of two arguments. In fact, this is a family of constant functions distinguished by the number they return. For each natural number `n`, there is a constant function `constₙ`, 

    constₙ m = n

Note the difference between constant function as defined here and `const` function in Haskell. In Haskell, the `const` is actually a constant function maker - it is a *binary function* that is not applied. In PRFs, each constant function coresponds to the Haskell's `const` function that is already applied to the first argument `n`:

    constₙ (prf) ≅ const n x (hs)

So, PRFs constant functions are actually unary functions, while Haskell's constant-maker function `const` is binary. Another difference is that Haskell's `const` accepts args of any type, while in PRF, both args need to be natural numbers. Some variants of this allow constant functions to take list of naturals or k-tuples of naturals, for any `k`, similarly to the `zero` function.

## Construction

For each `n`, `constₙ` can be obtained from the basic functions by finitely many applications of composition.

For any natural number `n`, let the constant function `constₙ` be defined by `constₙ(x) = n`, for all natural `x`.

The first constant function `const₀` is actually the same as the `zero` primitive recursive function.

    const₀ = z

We can construct `const₁` prf by uisng composition of the successor and zero fucntion

    const₁ = s ∘ z

We can construct next constant prfs, by composing the successor function and the previous constant function

    constₙ = s ∘ constₘ˗₁

Thus, the family of constant PR functions:
- const₀ = z
- const₁ = s ∘ z
- const₂ = s ∘ const₁ = s ∘ s ∘ z
- const₃ = s ∘ const₂ = s ∘ s ∘ s ∘ z
- constₙ = s ∘ constₘ˗₁

In alternative notation for composition:
- const₀ = z
- const₁ = Cn[s, z]
- const₂ = Cn[s, const₁] = Cn[s, Cn[s, z]]
- const₃ = Cn[s, const₂] = Cn[s, Cn[s, Cn[s, z]]]
- constₙ﹢₁ = Cn[s, constₙ]

The applied const function is sometiems denoted by e.g. `C₁⁰`, which is equal to 1; that is, the `const₁` function denoted alternatively as `c₁` was applied to the argument 0, which yields the number 1, i.e. `const₁(0) = 1`.
