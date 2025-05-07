# Index :: Notation

## Derivatives

A function `y = f(x)` may be differentiated only if continuous. A function needs to be infinitely differentiable to have an arbitrary number of derivatives.


- Legrange notation
  - with primes
    - function itself: f(x)
    - 1st derivative:  f′(x)
    - 2nd derivative:  f′′(x)
    - 3rd derivative:  f′′′(x)
    - 4th derivative:  f′′′′(x)
  - with superscript
    - function itself: f⁽⁰⁾(x) = f(x)
    - 1st derivative:  f⁽¹⁾(x)
    - 2nd derivative:  f⁽²⁾(x)
    - 3rd derivative:  f⁽³⁾(x)
    - 4th derivative:  f⁽⁴⁾(x)
    - nth derivative:  f⁽ⁿ⁾(x)
  - notation f⁽⁰⁾(x) for function used when f in seq of derivatives
  - primes usually used up to 3rd or 4th derivative, then subscripts
  - f′(x), f′′(x), f′′′(x), f′′′′(x), f⁽⁵⁾(x), f⁽⁶⁾(x), …

- Lebniz notation for derivatives of `y = f(x)`
  - 1st derivative: dy/dx
  - 2nd derivative: d²y/dx²
  - 3rd derivative: d³y/dx³
  - nth derivative: dⁿy/dxⁿ
  - is the 0th derivative `d⁰y/dx⁰`, the function itself?

- Newton notation:
  - 1st derivative: ẏ
  - 2nd derivative: ÿ
  - 3rd derivative: y⃛
  - one dot above per derivative
  - readable up to the third derivative



- `f(x)` a generic form of an arbitrary function `f` (fn declaration/prototype)
- application of `f` to arg `x`, generically: `f(x)`, concretely: f(4)
- functions must state their type, so we know the set where `x`'s come from
- the type of the function (function type) is given as a type signature
- function forms
  - generically: `f(x)`, `f(x) = y`, `y`
  - concretely:  `x²`, `x ⟼ x²`, `f(x) = x²`
- function type
  - function signature states the function type
  - generically: `f : A → B`
    - functions are relations, `f ⊆ A×B`
    - binary relation `(x, y) ∈ f` corresponds to unary function `f(x) = y`
    - binary relation, `f ⊆ A × B. ∃x ∈ A. ∃y ∈ B. (x, y) ∈ f`
    - unary function,  `f : A → B. ∀x ∈ A. ∃y ∈ B. f(x) = y`
    - functions and relations are sets of ordered pairs
    - the graph of the function is only the set of ordered pairs
    - the graph of the function, `f = { (x, y) | x ∈ A, y ∈ B, f(x) = y }`
    - `dom(f) = A`
    - `cod(f) = B`
  - concretely:  f : ℤ → ℝ, f(x) = x²
    - dom(f) = ℤ
    - cod(f) = ℝ
    - ran(f) = ℝᐩ
    - ran(f) ⊆ cod(f)
    - img({-1,1}) = {1}
    - pre({4}) = {-2,2}
- function definition
  - generically: `f(x) = y`
  - concretely:  `f(x) = √x`
- `f(x) = y` a generic arbitrary unary function named `f`
- it takes args `x` of some type that is pressumably annotated in fn's signature, e.g. `f : A → B`.
- `f(x)` the value of function `f` at arg `x`
  - generically, we write `f(x)` or `y`, since we don't have the definition
  - concretely, we just write the evaluted function value, `f(2) = 2² = 4`
- exponential and logarithmic functions
  - exp(x) = eˣ
  - ln(x) = logₑ(x)
  - `ln(x)` is inverse function of `exp(x)` but
  - `exp(x)` is inverse function of `ln|x|` (!)
- Euler's constant, e ≈ 2.7182818284
  - `e` is defined by `lim{n→∞} (1 + x/n)ⁿ` or by `Σ{n=0..∞} xⁿ/n!`
