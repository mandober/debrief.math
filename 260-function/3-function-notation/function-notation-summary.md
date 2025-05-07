# Function :: Function notation :: Summary

Strictly, `f(x) = y` is not a function definition; concretely, because `y` is undefined. However, it may be understood as a *meta function definition*, where `y`, by convention, represents *the value of the function* (aka the result or return value or output). Both `x` and `y` are variables, primarily meaning that they range over specific sets: x ranges over the *domain set*, `y` ranges over the *codomain set*. The domain and codomain sets must be specified when defining the function - the generic form is `f : A → B`. In practice, this is usually worded like: "let `f : A → B` be a function defined by `f(x) = y`", except these generic placeholders are replaced with concrete expressions, e.g. let `f : ℝ → ℝ` be a function defined by `f(x) = x²`.

Curiously, the generic form `f(x) = y` is used quite a lot nevertheless. 

whatever the defining function expression happens to be, thereby avoiding to refer to it explicitly (perhaps it's not relevant at the moment, or it's not important at all, or we'd like to keep things generic to suggest soemthing that holds for all functions).

it only shows the form of a function definition, like a template. Or, it may be understood as a 


- generic/arbitrary function names: `f`, `g`, `h`
- generic/arbitrary function type, `f : A → B`
- generic/arbitrary anonymous function, `x ⟼ y`
- anonymous function definition, `x ⟼ x²`
- generic/arbitrary function definition `f(x) = y`
  - by convention `x` stands for input, `∀x ∈ A. ∃y ∈ B. f(x) = y`
  - by convention `y` stands for output, `∀x ∈ A. ∃y ∈ B. f(x) = y`
- `f` is a popular name for throw-away, temporary, ad hoc, generic functions
- referring to an already defined function, like `f(x) = x²`
  - by function name: `f`, `sin`
  - by function head: `f(x)`, `sin x`, `sin(x)`
  - by function body: `x²`, `1/x`
- alterations or forms derived from `f`
  - inverse: `f⁻¹`
  - derivatives
    - first derivative
      - Legrange notation (prime): `f′`, `f′(x)`, `(x²)′`
      - Legrange notation (superscipt): `f⁽¹⁾`, `f⁽¹⁾(x)`, `(x²)⁽¹⁾`
      - Leibniz notation: `dy/dx`, `d/dx f`, `d/dx f(x)`, `df/dx`, `df(x)/dx`
      - Newton notation: `ẏ` (referring to a generic fn `f(x) = y`)
    - second derivative
      - Legrange notation (prime): `f′′`, `f′′(x)`, `(x²)′′`
      - Legrange notation (superscipt): `f⁽²⁾`, `f⁽²⁾(x)`, `(x²)⁽²⁾`
      - Leibniz notation: `d²y/dx²`, `d/dx f`, `d/dx f(x)`, `df/dx`, `df(x)/dx`
      - referring to a generic function, `f(x) = y`
        - Leibniz notation: `d²y/dx²`
        - Newton notation: `y¨`

it can thereafter be referenced by name, `f`, or as `f(x)`, or even by the defining expression, `x²`.


- persistent (aka "builtin") functions have more elaborate names, either symbolic or alphanumeric
- symbolic names: |x|, √x, x², ⌈x⌉
- alphanumeric names: ln, log, sin, arcsin, sinh, arcsinh, sg or sign
- functions derived from function `f(x)` are annotated by symbols
  - inverse: `◌⁻¹` e.g. `f⁻¹`
  - derivative: ◌′, f′ or g′(x)


```hs
∫f(x)dx

◌ init
○ mid
● done

-- f𝆘
-- ′ ″ ‴ 
-- 𝚤 ∘ 𝚥
-- Σ⁽ⁱ⁼¹⋅⋅ᴺ⁾
-- 1/x
-- ʳ√xᵏ = x⁻ᵏ′ʳ
-- f♯ g𝄰 h𝄱
-- fª f※ f⁜ fꝴ fᶠ fғ 
--
-- 1⧸(x + 1)
-- 
--    1
-- ------
--  x + 1

f(x) = y
f′
f(x)
d/dx f(x)
dy/dx
f⁽¹⁾(x)
d²y/dx²
f′′
f′′(x)
f⁻¹
f⁻¹(x)
f⁰(x)
f¹(x)
f²(x)
f³(x)
f ∘ f
(f ∘ f)(x)
f(f(x))
f ∘ g ∘ h = f ∘ (g ∘ h) = (f ∘ g) ∘ h
(f ∘ g ∘ h)(x) = f(g(h((x))))
(f ∘ g ∘ h)(2) = f(g(h((2))))
f(x) = x²
f(2) = 2² = 4
x ⟼ x³
4 ⟼ 4³
λx. x²
(λx. x²)(4) = 4²
(λxy. x + y)(4)(3) = 4 + 3
(λxy. x + y)(4) = λy. 4 + y
f(x,y) = x - y

-- functions
f x y = x + y
-- lambdas
f = \x → \y → x + y
f = \x y → x + y
f 2 3 = 2 + 3 = 5
f 2 = \y → 2 + y
-- sections
(2 -) ≡ \x → 2 - x
(^ 3) ≡ \x → x ^ 3
(^) ≡ \x y → x ^ y
-- let expressions
f = let x = f x in f
a = let x = 0 in f x
fu w = let f = \x → x * x in f w

-- lambda calculus
λxy. x + y
SUC := (λxy. x + y)(1)
SUC := λy. 1 + y

```
