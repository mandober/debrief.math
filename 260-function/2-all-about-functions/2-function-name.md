# Function name

- named functions
  - alphabetic name
    - generic, single-letter names (f,g,h)
    - for temporary and throw-away functions with brief lifetime
    - but also for longer-lived functions due to carelessness
    - Functions with alphabetic name
      - Trigonometric functions
        - trig          (sin,     cos,     tan,     sec,     csc,     cot)
          - inverse  (arcsin,  arccos,  arctan,  arcsec,  arccsc,  arccot)
        - hyperbolic    (sinh,    cosh,    tanh,    sech,    csch,    coth)
          - inverse  (arcsinh, arccosh, arctanh, arcsech, arccsch, arccoth)
      - Logarithimic functions (ln, log)
      - other: sg (sign), recip
  - Functions with symbolic names
    - operators:
      - arithmetic: `+, -, ×, ÷`
      - roots and exp: √x, ³√x, ʳ√x; x², x³, xⁿ, eˣ
      - hyperops: ³2 = 2 ↑² 3 = 2 ↑↑ 3; 2 ↑³ 4; 2 ↑ᵏ 4
      - inverses and reciprocals: 1/x, x⁻¹, -x
      - factorials: x!, x!!, x$
      - ∫, Σ, Π
      - x′, x′′, x⁽³⁾, x⁽ⁿ⁾
    - symbolic name and alphabetic alias:
      - abs(x) = |x|
      - ceil(x) = ⌈x⌉
      - floor(x) = ⌊x⌋
      - round(x) = [x]
      - exp(x) = eˣ
      - sq(x) = x²
      - sqrt(x) = √x
      - mod(x) = %
    - combined symbolic and alphabetic parts
      - 2 ≡ 0 (mod 2)



In math, functions have a name, of which the most popular are `f`, followed by `g` and `h`. These single letter names are used for one-off, throw-away concrete functions (because there is no standardized mechanism and notation to define anonymous functions) or as names of generic functions, when a paricular form is the center of interest more then a concrete function. This leads us to the frequently (ab)used form that showcases the general function form:

    f(x) = y

There goes the name `f` again. The generic form is always used in definitions, when emphasizing something about the form is the priority (and more important then coming up with examples of concrete functions, which could not convey the intention as good; it's like the "lorem ipsum" text in typography). For instance, describing how the *composition of functions* works and the associated notation is preferably described using functions in their generic form, rather then immediately giving examples with concrete functions (although examples are certainly useful so they often follow after).

    (f ∘ g)(x) = f(g(x))

This also uses named functions, although both with "generic" names, `f` and `g`. The third most popular choice, `h` can also be squeezed in:

    h(x) = (f ∘ g)(x) = f(g(x))

So `h` represents a whole new function constructed by composing two other ones. Functions like `h` are called *composed, composited or compound functions*.

To reiterate, the short, one-letter names are mostly used for temporary, short-lived functions. On the other hand, there is no trend to give longer, more sensible names to functions intended to live longer - even those often go (multiple paragraphs or pages) under the `f` moniker.

However, when a function does have a longer, non-{f,g,h} alphabetical name, then it is a *unique name*, typically for functions that are well-known even outside mathematics.

Functions with alphabetic name
- trig functions
- inverse trig functions
- hyperbolic trig functions
- inverse hyperbolic trig functions
- logarithimic functions (`ln`, `log`, `exp`)
- some other


---

# Referring to a function

- function name
- referencing a general function
- referencing a previously defined (concrete) function 

It is usual to name a function `f`. This names the function and `f` acts as an identifier, identifying the function. We can then refer to it as `f`, although people often abuse the notation and refer to it by `f(x)`, even though this signifies *function application*.
