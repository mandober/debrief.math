# Notation

Calculus need not have notation difficult to type on a computer. Even with the Latex, equations become unwieldy. Wolframalpha has a nice textual notation:

- indefinite integral: integrate x^2 sin^3 x dx
- definite integral:   integrate sin x dx from x=1 to pi
- improper integral:   int sin x/x dx, x=0..infinity
- limit: `lim (sin x - x)/x^3 as x->0`
  which seems to be represented as
  `lim Divide[\(40)sin x - x\(41),Power[x,3]] as x->0`
- `integrate by parts | sec(x) tan(x)`
- `1 + x^2/2 + (5 x^4)/24 + O[x]^6`


## Functions

`f(x)` is the usual notation for a genric, arbitrary function named `f` that has a single parameter, here incidently named `x`. But `f(x)` really denotes function application - the act of applying the function named `f` to an argument `x`. Ambiguously, `f(x)` also denotes a function declaration - the fact that there is a function named `f` that takes a single parameter, incidently named `x`. When the function `f` is applied to an argument `a` (or, equivalently, when an argument is passed into the function, or when an arg is plugged into the function), the function is evaluated by binding the argument (which is denoted by `a` here but will actually resolve into a concrete value eventually) `a` to the parameter `x`, then substituting all occurrences of the parameter `x` within the body of the function by `a`.

Note: this is called *positional binding* as the arguemnts are bounds to paramaters in order of appreance: the first argument is bound to the first paramater, the second arg (in binary fns) would be bound to the second parameter, and so on. In brief, there is no binding by name in mathematics.

For example, a function defined by `f : ℕ → ℝ, f(x) = 4x³ + 3x² - 2x`



## Derivatives

The (first) derivative of function `f(x)` is denoted by `f′(x)` in *Legrange notation* or by `d/dx f(x)` in *Lebniz notation*. These two styles of notation are often mixed even within the same expression.


Derivatives of function `f(x)`
- first   `f′(x)`
- second  `f′′(x)`
- third   `f′′′(x)`
- fourth  `f′′′′(x)`
- fifth   `f′′′′′(x)`
- sixth   `f⁶(x)` (ambiguous notation clashing with iteration)
- seventh `f⁷(x)` (ambiguous)
- etc.

Denoting a derivative of function `f(x)` as `f′(x)`, that is, using the prime sign is called the *Lagrange notation*, while using a differential, `d/dx`, is the *Lebniz notation*. Primes and differentials are often mixed in the same expression.

d/dx u = (x²)′




## Antiderivatives

- antiderivative of function `f(x)` is generally denoted `F(x)`
- for indefinite integrals it is actually `F(x) + C`
- for definite integrals it is `F(x) = F(b) - F(a)`
- definite integrals are evaluated by subst their bounds, then subtracting


# Notation

## Differentiation

Derivatives: styles
- Legrange notation
  - f′(x)     first derivative
  - f′′(x)    second derivative
  - f′′′(x)   third derivative
  - f′′′′(x)  fourth derivative
  - f⁽⁵⁾(x)   fifth derivative
  - f⁽⁶⁾(x)   sixth derivative
  - f⁽ⁿ⁾(x)   n-th derivative
  - (x²)′
  - (ax² + bx + c)′′
- Leibniz notation
  - d/dx f(x), df/dx, dy/dx
  - d²y/dx²
  - d³y/dx³
  - d⁴y/dx⁴
  - dⁿ/dxⁿ   n-th derivative
- Newton notation
  - ẏ   first derivative
  - ÿ   second derivative



* An arbitrary, generic function is often denoted by `f(x)` although concrete variable names are unimportant. By convention, the name a generic function is referred by is almost always `f`, followed by the subsequent letters. It could be said that the sequnce `f`, `g`, `h` is practically reserved for functions.
* Math lacks the standard form for defining anonymous functions, although it is sometimes possible to refer to a function just by its body. Rather then stating the complete definition of a function in advance, as e.g. `f(x) = 2x²`, we can often unambiguously reference structurally uncomplicated function like this one by its body alone, i.e. as `2x²`.
* Many math areas, category theory in particular, are very fond of using `f` and `g` for more elementary functions, reserving `h` for naming the composition of functions, often as `h(x) = (f ∘ g)(x) f(g(x))`.
* When stating properties, laws, rules, axioms, etc. of some concept that involved functions, even under informal setting, it is convenient to name the functions we plan to reference more then once (rather then coming up with akward phrases like "this or that function", "the former or latter function"). Instead, it is cleaner to identify each function with a significant role (in the statement we are tying to express), either by name like `g`, or by the form like `f(x)`. This is necessary when stating a formula in FOL, where the precision of the formal language makes the content easier to consume and understand then descriptive sentences.

∀x ∈ A. ∃y ∈ B. f(x) = y

* If a function is defined by `f(x) = x²`, we can refer to it as `f(x)` or directly by its body, `x²`.

* An arbitrary generic function also has the form `y = f(x)` which emphasizes the fact that its inputs are `x` and outputs `y`, so its graph is a set of ordered pairs `(x, y)` which are also coordinates that make up points comprising the curve defined by the function's graph.

* When differentiating a defined function, like `f(x) = x³`, we can denote the differentiation by `f′(x)` or by directly referring to the function's body and writing `(x²)′`. Both `f′(x)` and `(x²)′` may also denote the result of differentiation, i.e. the resulting derivative.

* When neither the function `f(x)` nor `f′(x)` is defined, the notation `f′(x)` is used to state the properties or rules about derivatives. In such case, it is assumed that the derivative `f′(x)` is related to a function which itself is denoted by `f(x)`; however, both `f(x)` and its derivative `f′(x)` are undefined, generic, arbitrary functions.

* Differentiation actually has two forms: the *Lagrange notation* uses the prime sign to denote differentiation, as in `f′(x)`. The notation with a single prime actually denotes the first derivative `f′(x)` of function `f(x)`. Its second derivative is denoted by `f′′(x)`, third by `f′′′(x)`, etc. The *Lebniz notation* uses differentials which are often ambisuous as to their role of notational vs active elements in equations. A differential is often written as `d/dx` and it may serve as a differentiation operator, as in `d/dx f(x)`, which is equivalent to `f′(x)`. However, differentials pack more information then primes: besides being a part of notation, a differential also signifies with respect to which variable the operation is performed. Differentials appear in both differential equations and integrals. A particular differential is always with respect to a certain (single) variable, so `d/dx` is a with respect to `x`, while `d/dt` is a with respect to `t`.

* As an operator, placing `d/dx` in front of a function, referenced by its name, as in `f` or `f(x)`, or by its body, as in `x²`, signifies that the derivative of that function is demanded, the same as with `(x²)′`. When denoting a generic function by `y = f(x)`, the differentiation may be applied to both sides, taking any of these forms:

    d/dx y = d/dx f(x)
    dy/dx = df/dx
    dy/dx = df(x)/dx
    dy/dx = f′(x)

The last form, `dy/dx = f′(x)`, is often used is differential equations, especialy when the goal is to isolate `dy` or `dx` on one side:

    dy/dx = f′(x)
    dy = f′(x) dx
    dx = dy/f′(x)

* Things are more complicated for integration, since antiderivatives do not have a special operator like derivatives do. Instead they use this akward notation by uppercasing the function's name, so tthe antiderivative of function `f(x)` is denoted by `F(x)`.

* Since differentiation and integration are opposite operations, that means that if function's `f(x)` derivative is `f′(x)`, then the antiderivative of `f′(x)` function is `f(x)` - and so this notational variant is also employed.

* The operation of differentiation lacks notation - there is notation for taking a derivative of a function, but not for differentiation itself (if that makes sense). On the other hand, integration has a specialized sign (integration sign) and special notational form, `∫ f(x) dx`, called an integral. The results of an integral like this, is the antiderivative, denoted `F(x)`.

* The result of integration is often referred to as integral, even though an integral is the name of the operation, the solutions of which is called a general antiderivative, `F(x) + C`, in case of indefinite integrals; in case of definite integrals, the result is a value since they can be fully evaluated.

* There is a lot of confusion regarding terminology and notation of calculus, especially what particular parts of an equation mean and what are they called, whether some things are only "passive" parts of notation or can become "active" under special circumstances, perhaps triggered by specially-crafted subliminal messages. Various factors overlap, further muddying the point, promoting mystery or being generally [unclear], just like this conclusion.

* `f'(x)` is a derivative of function `f` evaluated at `x`.
