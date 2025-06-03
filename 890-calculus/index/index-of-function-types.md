# Calculus :: Index :: Types of functions

## All function types

- linear functions
  - constant functions
  - identity functions
- rational functions
  - reciprocal function
  - radical functions
    - root functions
- exponential functions
  - power functions
  - `exp` function
- trig functions
  - inverse trig functions
  - hyperbolic functions
  - inverse hyperbolic functions
- logarithmic functions
  - natural logarithm functions
- algebraic functions
- polynomial functions


## LIATE functions

- logarithmic functions,              ln(x)
- inverse trig functions,             arctan(x)
- algebraic functions (polynomials),  x²
- trig functions,                     sin(x)
- exponential functions,              eˣ

## Polynomials
- first degree
- second degree
- third degree
- nth degree

## Trigonometric functions
- trig functions: (sin, sec, tan), (co…)
- inverse trig functions (arc…)
- hyperbolic functions (…h)
- inverse hyperbolic functions (arc…h)

## More function types
- identity function
- constant functions
- fns with const multiplier, `f(x) = Cx`, e.g. f(x) = 2x
- reciprocals, 1/f(x)
- integer function
- rational function
- irrational function
- real function
- complex function
- Gaussian function
- inverse functions
- elementary functions
- continuous functions
- smooth functions
- discontinuous functions
- differentiable functions
- infinitely differentiable functions
- integrable functions

Combinations of functions
- n-ary sum of functions,         f + g + h + ⋯ + k
- n-ary difference of functions,  f - g - h - ⋯ - k
- n-ary product of functions,     f × g × h × ⋯ × k
- n-ary quotient of functions,    f ÷ g ÷ h ÷ ⋯ ÷ k
- n-ary composition of functions, f ∘ g ∘ h ∘ ⋯ ∘ k
- iteration, fⁿ(x)
  - f⁰ x = x
  - f¹ x = f x
  - f² x = f (f x)
  - f³ x = f (f (f x))
  - f⁴ x = f (f (f (f x)))
  - f⁵ x = f (f (f (f (f x))))
  - fⁿ x = f (… (f x)…)
- differentiation
  - 0th: f⁽⁰⁾(x) = f x
  - 1st: f⁽¹⁾(x) = f′ x
  - 2nd: f⁽²⁾(x) = f′′ x
  - 3rd: f⁽³⁾(x) = f′′′ x
  - 4th: f⁽⁴⁾(x) = f′′′′ x
  - nth: f⁽ⁿ⁾(x)
- integration
  - ∫ f(x) dx = F(x)
  - ∫ g(x) dx = G(x)
  -             F′(x) = f(x)
  -             G′(x) = g(x)
  - f′ x ← f x → F x
  - 4x³ < x⁴ < 1⁄5x⁵


## Function vs derivative vs antiderivative growth rate

x   |D x³  |D `4x³` | f `x⁴` | I `1⁄5x⁵` | I x⁵  | rank
----|------|--------|--------|----------|-------|------
1   |    1 | ¹    4 | ²    1 | ³    0.2 |     1 | 1 2 3
2   |    8 | =   32 | =   16 | =    6.4 |    32 | 1 2 3
3   |   27 | =  108 | =   81 | =   48.6 |   243 | 1 2 3
4   |   64 | =  256 | ↑  256 | ↑  204.8 |  1024 | 1 1 2
5   |  125 | ↓  500 | =  625 | ↑  625.0 |  3125 | 2 1 1
6   |  216 | ↓  864 | ↓ 1296 | = 1555.2 |  7776 | 3 2 1
7   |  343 | = 1372 | = 2401 | = 3361.4 | 16807 | 3 2 1
8   |  512 |   2048 |   4096 |   6553.6 | 32768 | 3 2 1
9   |  729 |   2916 |   6561 |  11809.8 | 59049 | 3 2 1



- 🥉 the dominant term of the derivative      `4x³` is `x³` ↑
- 🥈 the dominant term of the function         `x⁴` is `x⁴` ∙
- 🥇 the dominant term of the antiderivative `1⁄5x⁵` is `x⁵` ↓

Initialy, derivative wins a few rounds, with the function in the second place and antiderivative in the third. Then the function catches up and shares the first place with the derivative. However, in the very next round, the derivative falls behind, while the function persist, again sharing the first place, this time with the antiderivative. The round after that is crucial: the antiderivative takes off and doesn't look back anymore. The derivative does the same but in the wrong direction. The function keeps cruising down the middle between the two from there on out. The dominant term always wins, quickly catching up and then clobbering all over the coefficients which manage to look important initially but only for a brief moment. Them's the apples.

## Power functions
