# Rules of differentiation

```js
            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h
```


## Constant factor rule

Constant Factor Rule (CFR)

https://www.mathsisfun.com/calculus/derivatives-rules.html

```js
f(x) = C  ⇒ f′(x) = 0     f(x) = 5  ⇒ f′(x) = 0 (equation for hline at y=5)
f(x) =  x ⇒ f′(x) = 1     f(x) =  x ⇒ f′(x) = 1 (equation of identity line)
f(x) = Cx ⇒ f′(x) = C     f(x) = 5x ⇒ f′(x) = 5

f(x) = C + x, e.g. f(x) = 1 + x, f′(x) = 1
f′(x) = (C + x)′ = (C)′ + (x)′
f′(x) = (1 + x)′ = (1)′ + (x)′
f′(x) = 0 + 1 = 1

f(x) = C - x, e.g. f(x) = 1 - x, f′(x) = -1
```


## Chain rule

For `f(g(x))`, the derivative is `f′(g(x)) ∙ g′(x)` 
aka `f ∘ g` is `(f′ ∘ g) × g′`, aka

```
dy   dy du
-- = -- --
dx   du dx
```


## Reciprocal rule

```js

// Reciprocal
(1 ÷ g)′ = -g′ ÷ g²

// Inverse
(f⁻¹)′ = 1/f′(f⁻¹(x))

// reciprocal rule of differentiation
           f′(x)
h′(x) = - -------
          (f(x))²
```

## Derivatives of trig functions

```js
// sin, cos
sin′(x) =  cos(x)
cos′(x) = -sin(x)

// tan, sec
tan′(x) = sec²(x)
sec′(x) = sec(x) tan(x)

// cot, csc
cot′(x) = -csc²(x)
csc′(x) = -csc(x) cot(x)
```


## Derivatives of inverse trig functions

```js
                1                        -1                         1
arcsin′(x) = -------      arccos′(x) = -------       arctan′(x) = ------
             √(1-x²)                   √(1-x²)                    1 - x²

                  1                        -1                      -1
arcsec′(x) = -----------  arccsc′(x) = -----------   arccot′(x) = ------
             |x| √(x²-1)               |x| √(x²-1)                1 + x²
```



## Table of derivatives

Equation/Fn      | Exp       | Derivative
-----------------|-----------|----------------------------------
Constant         | f(x) = C  | 0     f(x) = 1, f′(x) = 0
Line             | f(x) = x  | 1     f(x) = x¹, f′(x) = 1x
Line             | f(x) = Cx | C     f(x) = 2x, f′(x) = 2
Square           | x²        | 2x
Cube             | x³        | 3x²
Square Root      | √x        | (½)x^(-½)
Exp              | eˣ        | eˣ
exp              | e²ˣ       | 2e²ˣ + C
exp              | e³ˣ       | e³ˣ ⋅ 3 (chain rule)
exp              | 3e²ˣ      | 6e²ˣ + C
Exponential      | f(x) = aˣ | ln(a) aˣ
Nat Log          | ln x      | 1/x
Logarithm        | logₐ x    | 1 / (x ln a)
sine             | sin(x)    | cos(x)
cosine           | cos(x)    | −sin(x)
tangent          | tan(x)    | sec²(x)
arcsin           | sin⁻¹(x)  |  1 / √(1 − x²)
arccos           | cos⁻¹(x)  |−1 / √(1 − x²)
arctan           | tan⁻¹(x)  |  1 / (1 + x²)
mult by constant | c∙f       | c∙f'
Power Rule       | xⁿ        | n∙xⁿ⁻¹
Sum Rule         | f + g     | f′ + g′
Difference Rule  | f − g     | f′ − g′
Product Rule     | f ∙ g     | f∙g′ + f′∙g
Quotient Rule    | f / g     | (f′∙g − f∙g′) / g²
Reciprocal Rule  | 1 / f     | −f′ / f²
Chain Rule       | f ∘ g     | (f′ ∘ g) × g′
