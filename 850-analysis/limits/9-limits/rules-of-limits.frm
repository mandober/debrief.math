# Limits

## Limit rules

1. Constant:   `lim{x→a} c ∙ f x    =  c ∙ lim{x→a} f x`
2. Sum:        `lim{x→a} f x + g x  =  lim{x→a} f x + lim{x→a} g x`
3. Difference: `lim{x→a} f x - g x  =  lim{x→a} f x - lim{x→a} g x`
3. Product:    `lim{x→a} f x ∙ g x  =  lim{x→a} f x ∙ lim{x→a} g x`
4. Quotient:   `lim{x→a} f x ÷ g x  =  lim{x→a} f x ÷ lim{x→a} g x`
5. Powers:     `lim{x→a} (f x)ⁿ     =  (lim{x→a} f x)ⁿ`
6. Roots:      `lim{x→a} √(f x)     =  √(lim{x→a} f x)`

## Evaluation of some limits

```
lim{x→∞}  eˣ = ∞
lim{x→-∞} eˣ = 0

lim{x→∞}  ln x = ∞
lim{x→0ᐩ} ln x = -∞

lim{x→∞}  b/xʳ = 0    (r > 0)
lim{x→-∞} b/xʳ = 0    (r > 0, xʳ ∈ ℝ, x < 0)

lim{x→±∞} xⁿ =  ∞     (n even)
lim{x→∞}  xⁿ =  ∞     (n odd)
lim{x→-∞} xⁿ = -∞     (n odd)

lim{x→±∞} axⁿ + … + bx + c =  sg(a)∞     (n even)
lim{x→∞}  axⁿ + … + bx + c =  sg(a)∞     (n odd)
lim{x→-∞} axⁿ + … + cx + d = -sg(a)∞     (n odd)
```

## Evaluation techniques

### Continuous Functions

If `f(x)` is continuous at `a`, then `lim{x→a} f(x) = f(a)`

### Continuous Functions and Composition

If `f(x)` is continuous at `b` and 
if `lim{x→a} g(x) = b` then, 
`lim{x→a} f(g(x)) = f[lim{x→a} g(x)] = f(b)`


## L'Hôpital's Rule

If `lim{x→a} fx/gx = 0/0 or ±∞/±∞` 
then `lim{x→a} fx/gx = lim{x→a} f′x/g′x` 
(and `a` is a constant, `∞` or `−∞`)

## Polynomials at Infinity

Let p(x) and q(x) be polynomials. To compute `lim{x→±∞} p(x) q(x)`, factor out the largest power of `x` in `q(x)` out of both p(x) and q(x) then compute limit.

```
          3x² − 4     x²(3 − 4/x²)   3 − 4/x²
lim{x→±∞} --------- = ------------ = --------- = -3/2
          5x - 2x²    x²(5/x - 2)     5/x - 2
```

In the nominator, `4/x²`, and as `x` tends to `-∞`, `x² = ∞`, so we get `4/∞`, which is 0, so only 3 is left. In the denominator, `5/x`, is 0, so -2 is left.

## Factor and Cancel

```
          x² + 4x - 12     (x - 2)(x + 6)    x + 6                    8
lim{x→2} -------------- = ---------------- = ------ = plugin limit = ---- = 4
            x² - 2x            x(x - 2)        x                      2
```
