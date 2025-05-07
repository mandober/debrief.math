# Math constants

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/log1p

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/LN10

```js
// Math constants
Math.PI       = 3.141592653589793  // π
Math.E        = 2.718281828459045  // e
Math.SQRT1_2  = 0.7071067811865476 // √1⁄2
Math.SQRT2    = 1.4142135623730951 // √2
Math.LN2      = 0.6931471805599453 // ln(2)
Math.LN10     = 2.302585092994046  // ln(10)
Math.LOG2E    = 1.4426950408889634 // log₂(e)
Math.LOG10E   = 0.4342944819032518 // LOG10E = log10(e) = log₁₀(e)

// Math constants (by magnitude)
Math.LOG10E   = 0.4342944819032518
Math.LN2      = 0.6931471805599453
Math.SQRT1_2  = 0.7071067811865476
Math.SQRT2    = 1.4142135623730951
Math.LOG2E    = 1.4426950408889634
Math.LN10     = 2.302585092994046
Math.E        = 2.718281828459045
Math.PI       = 3.141592653589793


// Math functions: arity is 1 (except where noted)
abs()
acos()
acosh()
asin()
asinh()
atan()
atan2(), arity: 2
atanh()
cbrt()
ceil()
clz32()
cos()
cosh()
exp()
expm1()
f16round()
floor()
fround()
hypot(), arity: 2
imul(), arity: 2
log()
log1p()
log2()
log10()
max(), arity: 2
min(), arity: 2
pow(), arity: 2
random(), arity: 0
round()
sign()
sin()
sinh()
sqrt()
tan()
tanh()
trunc()

// ----------------------------------------
// functions by type
// ----------------------------------------
// trig
cos()
sin()
tan()
// inverse trig
asin()
acos()
atan()
atan2(), arity: 2
// hyperbolic
sinh()
cosh()
tanh()
// inverse hyperbolic
asinh()
acosh()
atanh()

// logarithmic
log()
log2()
log10()
log1p() // ∀x > −1. log1p(x)=ln(1+x)  (for x = -1, y=-∞; for x < -1, y=NaN)

// exponential
sqrt() // square root
cbrt() // cube root
exp()
expm1()

// algebraic
abs()
ceil()
floor()
sign()
trunc()

round()
fround()
f16round()

clz32() // count leading zeros, 32-bit
pow(),    arity: 2
imul(),   arity: 2
hypot(),  arity: 2
max(),    arity: 2
min(),    arity: 2
random(), arity: 0
```
