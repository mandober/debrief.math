# Patterns

Sequences, series, polynomials, formulas, functions are all about finding the right pattern that describes them succinctly.

## Factorials

In the sigma notation, if we iterate `n` from 0 to ∞ with the body containing the expression `n!`, we get a series of factorials of the increasing natural nunmbers, `0! + 1! + 2! + 3! + 4! + 5! + ⋯`.

```js
⎲∞
⎳ₙ₌₀ n! = 0! + 1! + 2! + 3! + 4! + 5!  + 6!  + 7!   + ⋯
         = 1  + 1  + 2  + 6  + 24 + 120 + 720 + 5040 + ⋯
```

The factorials also appear when we repeatedly differentiate a function or a term with a large power, like `x⁷`, which possibly has a coefficient, `c₇x⁷`. By repeatedly differentiating `x⁷`, the power rule generates factorials:

```js
f(x) = x⁷

f⁽⁰⁾(x) = x⁷                                  // 0ᵗʰ derivative
f⁽¹⁾(x) = (x⁷)′     = 7∙x⁶                    // 1ˢᵗ derivative
f⁽²⁾(x) = (7x⁶)′    = 6∙7∙x⁵                  // 2ⁿᵈ derivative
f⁽³⁾(x) = (42x⁵)′   = 5∙6∙7∙x⁴                // 3ʳᵈ derivative
f⁽⁴⁾(x) = (210x⁴)′  = 4∙5∙6∙7∙x³              // 4ᵗʰ derivative
f⁽⁵⁾(x) = (840x³)′  = 3∙4∙5∙6∙7∙x²  = 2520x²  // 5ᵗʰ derivative
f⁽⁶⁾(x) = (2520x²)′ = 2∙3∙4∙5∙6∙7∙x = 5040x   // 6ᵗʰ derivative
f⁽⁷⁾(x) = (5040x)′  = 1∙2∙3∙4∙5∙6∙7 = 7!      // 7ᵗʰ derivative
f⁽⁸⁾(x) = (5040)′   = (7!)′          = 0       // 8ᵗʰ derivative
f⁽⁹⁾(x) = (0)′      = 0             = 0       // 9ᵗʰ derivative
```
