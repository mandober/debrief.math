# Definition of power series

A power series, centered at `a ∈ ℝ`, is a function `f` defined by

```js
        ∞
       ⎲
f(x) = ⎳ cₙ(x - a)ⁿ (where cᵢ ∈ ℝ)
       ⁿ⁼⁰

dom(f) = {a} ∪ { x ∈ ℝ | series f converges }
```

Note that `a` is always in the domain of `f` function, `a ∈ dom(f)`.

The goal is to rewrite everything in Rust… akhm, as power series.
