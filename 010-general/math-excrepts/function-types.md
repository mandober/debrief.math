# Function types

https://en.wikipedia.org/wiki/Category:Functions_and_mappings
https://en.wikipedia.org/wiki/Category:Types_of_functions
https://en.wikipedia.org/wiki/List_of_types_of_functions
https://en.wikipedia.org/wiki/Category:Function_prefixes
https://en.wikipedia.org/wiki/Category:Elliptic_functions
https://en.wikipedia.org/wiki/Category:Elliptic_curves

- boolean functions
- integer functions
- rational functions
- real functions
- complex functions


## Function anatomy

- `f` is function's name, in f(x)
- `x` is the function's param, in f(x)
- function may have more then one param, f(x, y)
- function should be referred just by its name, so `f`, not `f(x)`
- `f(x)` is application of function to an arg `x`
- `f(x)` is technically also a function declaration
- `f(x) = x²` is an example of a function definition

>Defining a function
Unlike in Pls, math does not concerns itself with such techicalities, although stating a function's signature - which is also a function's type - could be considered, at least in part, as a function declaration; (function) declaration is about stating the static, constant terms - those terms that do not change at least not while the function is taken under consideration. So, `|_| : ℤ → ℕ` declares the absolute value function and specifies its type: domain is the set of the integers, while codomain is the set of natural numbers. The signature also assigns a name to the function - in this case, the name is symbolic and has a special form since the argument is placed between bars, `|x|` - but it could have also been declared with an alphabetic name, e.g. `abs(x) = |x|`. In fact, `abs` is commonly considered as an alias of this function, i.e. the two names, `|_|` and `abs`, are aliases. This already imposes concerns of PLs to math provoking questions like: Do functions require declarations or signatures or types? How to denote a place for argument in a function's declaration or definition when its name is symbolic? e.g. `|_|`, `⌊_⌋`, `⌈_⌉` (where the underscore marks the spot where the arg goes, à la Agda), so we get expressions like `⌈x²+2⌉`, `|x+y|`, `⌊x²+x+y²-y+3xy-2x²y+4xy²⌋`.






- `f : A → B`
- `x` are input values, `y` are output values
- x ∈ A, y ∈ B
- function is a map, `x ⟼ y`
- function is wrt x, `y = f(x)` = … x …, so y(x)?
- function wrt `y`, `y = x² - x + 1` Is it just flipped?
- y = 3 (function describing horizontal line which has slope 0)
- x = 2 (function describing vertical line which has undef slope)

## Types of functions
- common functions
  - const function, `y = c`
  - identity function, `y = x`
  - negated functions, `-f(x)`
  - inverse functions, `f(x)⁻¹`
  - f(x)² vs f(x²)
- arithmetic functions
  - absolute value function, `|x|`
  - floor, `⌊x⌋`
  - ceil, `⌈x⌉`
  - sign function, `sg x` (1 if x pos, -1 if x neg)
  - polynomials
- trig
  - trigonometric functions
  - inverse trigonometric functions
  - reciprocal trigonometric functions
  - hyperbolic functions
  - inverse hyperbolic functions
- exponential functions
  - x², x³, x⁴, …, 2ˣ, 3ˣ, 4ˣ, … xˣ
  - quadratic functions
  - cubic functions
  - quintic functions
  - septic functions
  - heptic functions
- permutations, nPk
- combinations, nCk
- factorial, n!
- primorial, n#
- logarithmic functions
  - `eˣ`
  - natural logarithm, `ln x`
  - based logarithm, `logₐx`
  - logarithm base 10, `log x`
- inverse functions
- reciprocal functions
- combioned functions
  - addition of functions,       f(x) + g(x)
  - subtraction of functions,    f(x) - g(x)
  - multiplication of functions, f(x) ⋅ g(x)
  - division of functions,       f(x) ÷ g(x)
  - composition of functions,    f(g(x))
  - exponentiation of functions, f(x)^g(x) ?
  - iteration, f, f², f³, …


1/x, 1/x², 1/x³, …, 1/eˣ, 1/xˣ, 1/ln x, 1/x⋅ln x, 1/sin x

- inverse
- square
- cube
- xth power of y
- square root
- cube root
- xth root of y
- percent
- power
- radical root
- 10 to the power of x
- common logarithm, `log₁₀ x`
- logarithm of x to base a, `logₐ x`
- exponential
- logarithmic
- 10ˣ, ln, log, exp, √x, ∛x, ∜x
- e to the power of x, `eˣ`
- natural logarithm, `ln x`
- absolute value, `|x|`
- floor, `⌊x⌋`
- ceil, `⌈x⌉`
- sign function, `sg x` (1 if x pos, -1 if x neg)

Matrix calculation
Fractional calculations
Absolute value
Trigonometric functions
Arc trigonometric functions: sin⁻¹, cos⁻¹, tan⁻¹
Hyperbolic functions: hyp, cosh, sinh, arc hyp, tanh
Coordinate conversion: polar ⇔ Cartesian
Angle unit conversion: degree ⇔ radian
Number base conversion: bin ⇔ oct ⇔ dec ⇔ hex
Differentiation calculation
Integration calculation
Polynomial equation
Complex calculation
Simultaneous calculation



## Special functions

- gamma, `Γ`, factorial function extended to integer domain
- `π`, frequency of primes
- counts rational numbers among irrational numbers

## Functions all

Functions
- base functions (building blocks)
  - arithmetic functions
  - elementary functions
  - elementary arithmetic functions (only use +, -, ×, ÷)
  - simple functions
- compound functions
  - combinations
  - composition
  - reciprocals, `x²` vs `1/x²`
  - logs,        `x²` vs `ln(x²)`
  - inverse

Manipulating function's graph
- y = f(x)
- y = f(x+a) shift up
- y+b = f(x) shift down, y = f(x) - b
- y = f(x/c) dilute vertically
- y/d = f(x) dilute horizontally, y = f(x)⋅d
- y = f(x/c + a) d - b

Elementary special functions (7 C, 27 P)
Exponentials (4 C, 68 P)
 Hyperbolic functions (25 P)
 Inverse hyperbolic functions (27 P)
 Inverse trigonometric functions (47 P)
Logarithms (3 C, 64 P)
 Trigonometric functions (69 P)
Trigonometry (6


### Base functions

- Operators
  - `+` Addition operator
  - `-` Subtraction operator
  - `*` Multiplication operator
  - `/` Division operator
  - `^` Power operator
- Functions
  - sqrt  square root of x.
  - Trig
    - sin   sine of x
    - cos   cosine of x
    - tan   tangent of x
  - Inverse trig
    - asin  inverse sine (arcsine) of x
    - acos  inverse cosine (arccos) of x
    - atan  inverse tangent (arctangent) of x
  - Hyperbolic trig
    - sinh  Hyperbolic sine (sinh) of x
    - cosh  Hyperbolic cosine (cosh) of x
    - tanh  Hyperbolic tangent (tanh) of x
  - Exponential
    - `exp(x)` or `eˣ` is e raised to the power of x
  - Logarithmic
    - `ln x`   The natural logarithm of x
    - `logₑ x` The base−10 logarithm of x
  - Arithmetics
    - `floor(x)` or `⌊x⌋`
      Returns the largest (closest to positive infinity) value that is not greater than the argument and is equal to a mathematical integer.
    - `ceil(x)` or `⌈x⌉`
      Returns the smallest (closest to negative infinity) value that is not less than the argument and is equal to a mathematical integer.
    - `round(x)`, `rnd(x)`, `[x]` Rounding x to the nearest integer
       round(−2.5) = −2, round(-0.1) = 0, round(0.1) = 0, round(2.5) = 3
    - `abs(x)` or `|x|` magnitude of x
    - `sign(x)` or `sg(x)`, sign of x as 1 (if x > 0) or −1 (if x < 0)
- Constants
  - pi  The number π (3.14159265...)
  - e   Euler's number (2.71828...), the base for the natural logarithm
