# Rules and Tables

## Derivatives

f(x)          | f′(x)             | domain
--------------|-------------------|-------------
k             | 0                 | ℝ
x             | 1                 | ℝ
1 - x         | -1                | ℝ
xⁿ, n ∈ ℤ⃰     | nxⁿ⁻¹             | ℝ
xᵃ, a ∈ ℝ     | axᵃ⁻¹             | (0, ∞)
aˣ, a > 0     | aˣln(a)           | ℝ
a^f(x), a>0   | a^f(x)ln(a)f′(x)  | ℝ
xˣ            | xˣ(1+ln(x))       | (0, ∞)
sin(x)        | cos(x)            | ℝ
sin(f x)      | cos(f x)f′x       | ℝ
cos(x)        | sin(x)            | ℝ
cos(f x)      | sin(f x)f′x       | ℝ
tan(x)        | sec²(x)           | ℝ \ { (n+1⁄2)π | n ∈ ℤ } ⁽¹⁾
tan(f x)      | sec²(f x)f′x      | ℝ \ { (n+1⁄2)π | n ∈ ℤ } ⁽¹⁾
sec(x)        | sec(x)tan(x)      | ℝ \ { (n+1⁄2)π | n ∈ ℤ }
cot(x)        | -csc²(x)          | ℝ \ { nπ | n ∈ ℤ }
csc(x)        | -csc(x)cot(x)     | ℝ \ { nπ | n ∈ ℤ }
arcsin(x)     | 1/√(1−x²)         | (-1, 1)
arcsin(f x)   | f′x/√(1−x²)       | (-1, 1)
arccos(x)     |−1/√(1−x²)         | (-1, 1)
arctan(x)     | 1/ (1+x²)         | ℝ
arcsec(u)     | u′/√(|u| + 1)     | 
eˣ            | eˣ                | ℝ
ln(x)         | 1/x               | (0, ∞)
logₐ(x), a>1  | 1/x∙ln(a)         | (0, ∞)
logₐ(f(x)),a>1| f′(x)/f(x)ln(a)   | (0, ∞)
sinh(x)       | cosh(x)           | ℝ
cosh(x)       | sinh(x)           | ℝ
tanh(x)       | sech²(x)          | ℝ
arcsinh(x)    | 1/√(1−x²)         | ℝ      (same as arcsin) ⁽²⁾
arccosh(x)    |−1/√(1−x²)         | (1, ∞) (same as arccos)
arctanh(x)    | 1/ (1−x²)         | (-1,1) (same as arctan)
```



⁽¹⁾ tan(x) function has asymptotes at {π/2, 3π/2, 5π/2, 7π/2, 9π/2, …}
    so these values are excluded from the domain ℝ

⁽²⁾ Inverse trig functions (arcsin, arccos, arctan) have the same derivative 
    as the inverse hyperbolic trig functions (arcsinh, arccosh, arctanh),
    although with slightly different domains, (-1,1) vs ℝ.

⁽²⁾ This derivatives are shite. If the argument if a function then 
    the derivatives are significantly different:
    (arctan(u))′ = u′/1+u² instead of 1/1+u² if the arg is simple
    that is, when the arg is a fn, the chain rule must be applied, so we get the more complex form of the derivative.
```


## Derivatives

f(x)              | F(x)                                | domain
------------------|-------------------------------------|------------
xⁿ, n ∈ ℤ, n≠-1   | xⁿᐩ¹/(x+1)                          | ℝ
xᵃ, a ∈ ℝ, a≠-1   | aᵃᐩ¹/(a+1)                          | (0, ∞)
aˣ, a > 0         | aˣ/ln a                             | ℝ
sin x             |−cos x                               | ℝ
cos x             | sin x                               | ℝ
tan x             | ln (sec x)                          | (-1⁄2π, 1⁄2π)
eˣ                | eˣ                                  | ℝ
1/x               | ln x                                | (0, ∞)
1/x               | ln |x|                              | (-∞, 0)
ln x              | x ⋅ ln(x) - x                       | (0, ∞)
sinh x            | cosh x                              | ℝ
cosh x            | sinh x                              | ℝ
tanh x            | ln (cosh x)                         | ℝ
1/(a²-x²), a>0    | 1/2a ln(a+x/a-x)                    | (-a, a)
1/(a²+x²), a>0    | 1/a arctan(x/a)                     | ℝ
1/√(a²-x²), a>0   | arcsin(x/a)                         | (-a, a) ⁽³⁾
1/√(a²-x²), a>0   |−arccos(x/a)                         | (-a, a) ⁽³⁾
1/√(x²-a²), a>0   | ln(x+√(x²-a²))                      | (a, ∞) ⁽⁴⁾
1/√(x²-a²), a>0   | arccosh(x/a)                        | (a, ∞) ⁽⁴⁾
1/√(a²+x²), a>0   | ln(x+√(x²+a²))                      | ℝ ⁽⁵⁾
1/√(a²+x²), a>0   | arcsinh(x/a)                        | ℝ ⁽⁵⁾
eᵃˣsin(bx), a,b≠0 | eᵃˣ/(a²+b²) (a sin(bx) - b cos(bx)) | ℝ
eᵃˣcos(bx), a,b≠0 | eᵃˣ/(a²+b²) (a cos(bx) - b sin(bx)) | ℝ



Functions marked by ⁽³⁾ ⁽⁴⁾ ⁽⁵⁾ are identical pairs of functions, but each has two different antiderivatives because of… `√`? or what?



## Simple functions

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
f(x) = 1         | (1)′ = 0                   | ∫   dx =  x + C
f(x) = 5         | (5)′ = 0                   | ∫ 5 dx = 5x + C
f(x) = k         | (k)′ = 0                   | ∫ k dx = kx + C
f(x) = x         | (x)′ = 1                   |  x²/2 =   1⁄2 x² + C
f(x) = 5x        | 5                          | 5x²/2 =   5⁄2 x² + C
f(x) = kx        | k                          | kx²/2 = k 1⁄2 x² + C


- ∫dx = ∫ 1 dx = x + C
- ∫dy = y + C
- ∫  −f(x) dx =  − ∫ f(x) dx
- ∫ −2f(x) dx = −2 ∫ f(x) dx
- ∫  5f(x) dx =  5 ∫ f(x) dx
- ∫ k f(x) dx =  k ∫ f(x) dx



## Algebraic functions - polynomials

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
x²               | 2x                         |  x³/3 =   1⁄3 x³
3x²              | 6x                         |  x³
x³               | 3x²                        |  x⁴/4
x⁴               | 4x³                        |  x⁵/5
1/x       = x⁻¹  | −x⁻²    = −1/x²            | ln |x|
1/x²      = x⁻²  |−2x⁻³    = −2/x³            |−x⁻¹ = −1/x
1/x³      = x⁻³  |−3x⁻⁴    = −3/x⁴            |−x⁻² = −1/x²
√x        = x¹′² | ½ √x                       | 2 x³′² / 3 = ⅔ x³′²
aˣ               | (none)                     | ∫aˣdx = aˣ/ln(a) + C
xⁿ               | nxⁿ⁻¹                      | xⁿᐩ¹/(n+1)
1/(1+x²)         |−2x/(1+2x²+x⁴)              |     arctan(x)   + C
1/(a²+x²)        |−2x/(a²+x²)²                | 1/a arctan(x/a) + C



## Trig functions

Equation          | Derivative                 | Antiderivative
------------------|----------------------------|----------------
 sin(x)           | cos(x)                     |−cos(x)
-sin(x)           |−cos(x)                     | cos(x)
 sin(−x)          | cos(x)                     |−cos(x)
 sin(3x)          | 3cos(3x)                   |−cos(3x)/3
 cos(x)           |−sin(x)                     | sin(x)
-cos(x)           | sin(x)                     | sin(x)
 cos(2x)          |−2sin(2x)                   | sin(2x)/2
 tan(x)           | sec²(x)                    | ln |cos x|
 sec(x)tan(x)     |                            | sec(x)
 sec²(x)          |                            | tan(x)
 csc(x)cot(x)     |                            |−csc(x)
 csc²(x)          |                            |−cot(x)
 csc(x)           | -csc(x)cot(x)              | 



`sin(x)`
- function        : f(x) = sin(x)
- differentiation : d/dx sin(x)
- derivative      : cos(x)
- integral        : ∫ sin(x) dx
- antiderivative  : cos(x) + C

`cos(x)`
- function        : f(x) = cos(x)
- differentiation : d/dx cos(x)
- derivative      : -sin(x)
- integral        : ∫ cos(x) dx
- antiderivative  : sin(x) + C

`−sin(x)`
- function        : f(x) = −sin(x) = -f(x) = sin(x)
- differentiation : (−sin(x))′ = -(sin(x))′
- derivative      : -cos(x)
- integral        : ∫ −sin(x) dx = − ∫ sin(x) dx
- antiderivative  : -(-cos(x)) + C = cos(x) + C



## Inverse trig functions

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
arcsin(x)        | 1/√(1−x²)                  | x arcsin(x)
arccos(x)        |−1/√(1−x²)                  | x arccos(x) -      √(1-x²)
arctan(x)        | 1/(1+x²)                   | x arctan(x) - 1/2 ln(1+x²)
arcsin(ax)       |                            | x arcsin(ax) + 1/a √(1−a²x²)
arctan(ax)       |                            | x arctan(ax) - 1/2a ln(1+a²x²)
arccos(ax)       |                            | x arccos(ax) - 1/a ln(1+a²x²)


```
 ___1____
⎷ 1 - x²   = (arcsin(x))′
```

- (arcsin(x))′ = 1/√(1−x²)
- ∫ arcsin(x) dx = x arcsin(x) + C
- ∫ arcsin(ax) dx = x arcsin(ax) + 1/a √(1 - a⁴)
                  = x arcsin(ax) + 1/a √(1 − a²x²)


## Hyperbolic functions


## Inverse hyperbolic functions



## Exponential functions

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
eˣ               | eˣ                         | eˣ
e⁻ˣ              |−e⁻ˣ                        |−e⁻ˣ
e²ˣ              | 2e²ˣ                       | e²ˣ/2
eᵏˣ              | keᵏˣ                       | eᵏˣ/k
e⁻³ˣ             | 3e⁻³ˣ                      | 1/3e³ˣ


## Logarithmic functions

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
ln(x)            | 1/x                        | x ln x − x



## Other functions

Equation         | Derivative                 | Antiderivative
-----------------|----------------------------|------------------------
                 |                            | 



## Rules for function combinations

Sum and difference rules for derivatives
- (f(x) + g(x))′ = f′(x) + g′(x)
- (f(x) - g(x))′ = f′(x) - g′(x)

Sum and difference rules for antiderivatives
- ∫ f(x) + g(x) dx = ∫ f(x) dx + ∫ g(x) dx
- ∫ f(x) - g(x) dx = ∫ f(x) dx - ∫ g(x) dx

Product rule for derivatives
- (f(x) × g(x))′ = f′(x)g(x) + f(x)g′(x)

Quotient rule for derivatives
- (f(x) ÷ g(x))′ = [f′(x)g(x) - f(x)g′(x)] ÷ (g(x))²

Chain rule for derivatives
- (f(g(x)))′ = f′(g(x)) g(x)



## Wolfram

https://www.wolframalpha.com/examples/mathematics/calculus-and-analysis/integrals

Wolfram
- input: `integrate sec(x) tan(x) dx` = `sec(x) + C`
  - Copyable Plain Text: integral sec(x) tan(x) dx = `sec(x) + constant`
  - Wolfram Language code: Integrate[Sec[x] Tan[x], x]
  - Wolfram Language plain text output: Sec[x]
- Alternate form assuming `x` is real
  - Copyable Plain Text: (2 cos(x))/(cos(2 x) + 1) + constant
  - Wolfram Language code: ComplexExpand[Sec[x]]
  - Wolfram Language plain text output: (2 Cos[x])/(1 + Cos[2 x])
- Alternate form of the integral
  - Copyable Plain Text: 1/cos(x) + constant
  - Wolfram Language plain text output: Sec[x]
- Series expansion of the integral at `x=0`
  - Copyable Plain Text: 1 + x^2/2 + (5 x^4)/24 + O(x^6) (Taylor series)
  - Wolfram Language code: Series[Sec[x], {x, 0, 4}]
  - Wolfram Language plain text output: 1 + x^2/2 + (5 x^4)/24 + O[x]^6

Wolfram Language input examples:
- integrate by parts | sec(x) tan(x)
- ResourceFunction["IntegrateByParts"][Sec[x] Tan[x], x]
