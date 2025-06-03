# arctan

- dom: ℝ
- ran: (-π/2, π/2)
- x-intercept: 0
- y-intercept: 0
- parity: odd
- increasing: -∞, ∞
- H asymptote: y = π/2
- H asymptote: y = -π/2
- inflection point: (0,0)
- maxima: no
- minima: no
- derivative: `d/dx arctan(x) = 1/(1+x²)`
- integral: `∫ arctan(x) dx = x arctan(x) - ½ ln|1+x²| + C`


```js
/* derivative of arctan */
d/dx arctan(x) = 1/(1+x²)

/* integral of arctan */
∫ arctan(x) dx = x arctan(x) - ½ ln|1+x²| + C
```


In trigonometry, arctan refers to the inverse of the tangent function, denoted `arctan(x)` or `tan⁻¹(x)`. It is not the same as `1/tan(x)`, meaning an inverse trig function is not the reciprocal of the respective trig function (due to historical circumstances).

The purpose of arctan is finding the value of an unknown angle via the value of the tangent trig ratio. In a right-angled triangle, the tan of an angle determines the ratio of the perpendicular and the base, that is, `perpendic ÷ base`. In contrast, the arctan of the ratio `perpend ÷ base` gives us the value of the corresponding angle between the base and the hypotenuse. Thus, arctan is the inverse of the tan function. If tan of angle θ is equal to x, `x = tan θ`, then `θ = arctan(x)`.

- tan(π/2) = ∞   ==>  arctan(∞)  = π/2
- tan(π/3) = √3  ==>  arctan(√3) = π/3
- tan(0)   = 0   ==>  arctan(0)  = 0

>Interesting: arctan(∞) = π/2

## Arctan Identities

```js
// parity: odd
arctan(-x) = -arctan(x)    if x ∈ ℝ
// domain: ℝ
tan(arctan(x)) = x         if x ∈ ℝ
// range: (-π/2, π/2)
arctan(tan(x)) = x         if x ∈ (-π/2, π/2)

arctan(tan(x)) = x         if x ∈ ℝ ∖ { x | x = (2n+1)(π/2) ∧ n ∈ Z }
// the above means:
if (x ≠ odd multiple of π/2)
  arctan(tan(x)) = x
else
  arctan(tan(x)) is undefined

// x is an odd multiple of π/2
x = (2k+1)π/2, where k ∈ ℕ
// x is an even multiple of π/2
x = (2k)π/2, where k ∈ ℕ
// odd multiples of π/2
{ ±π/2, ±3π/2, ±5π/2, ±7π/2, ±9π/2, ………………, ± (2 k + 1) π/2, … }
{ 0, ±2π/2, ±4π/2, ±6π/2, ±8π/2, ±10π/2, …, ± (2 k)    π/2, … }
// even multiples of π/2



arctan(1/x) =  π/2 - arctan(x) = arccot(x)          if x > 0
arctan(1/x) = -π/2 - arctan(x) = arccot(x) - π      if x < 0

arctan(x) + arctan(y) = arctan[(x+y) / (1-xy)]      if xy <  1
arctan(x) - arctan(y) = arctan[(x-y) / (1+xy)]      if xy > -1

2arctan(x) = arcsin(2x / (1+x²))                    if |x| ≤ 1
2arctan(x) = arctan(2x / (1-x²))                    if |x| < 1
2arctan(x) = arccos((1-x²) / (1+x²))                if x ≥ 0

sin(arctan(x)) = x / √(1+x²)
cos(arctan(x)) = 1 / √(1+x²)

arctan(x) = 2 arctan(x / (1 + √(1 + x²)))

arctan(1/x) = arccot(x)                             if x > 0
arctan(x) + arccot(x) = π/2                         if x ∈ ℝ

/* derivative of arctan */
d/dx arctan(x) = 1/(1+x²)

/* integral of arctan */
∫ arctan(x) dx = x arctan(x) - ½ ln|1+x²| + C

// definite integral
arctan(x) = ∫ {0..x} 1/(z²+1) dz



/* In terms of π */
π/4 = 1 arctan(1/2) + arctan(1/3)
π/4 = 2 arctan(1/3) + arctan(1/7)
π/4 = 2 arctan(1/2) - arctan(1/7)
π/4 = 4 arctan(1/5) - arctan(1/239)
π/4 = 3 arctan(1/4)  +   arctan(1/20)  + arctan(1/1985)
π/4 = 8 arctan(1/10) - 4 arctan(1/515) - arctan(1/239)
```

## Arctan Domain and Range

All trig functions including tan are many-to-one relations. However, the inverse of such a function can only exist if it is a one-to-one and onto relation. For this reason, the domain of tan must be restricted, otherwise the inverse cannot exist. In other words, tan must be restricted to its principal branch as we desire only one value.

The domain of `tan` is restricted to `(-π/2, π/2)`; values where `cos(x)=0` are excluded. The range of `tan` is ℝ.
- dom(tan) = (-π/2, π/2) ==> dom(tan⁻¹) = ℝ
- ran(tan) = ℝ           ==> ran(tan⁻¹) = (-π/2, π/2)

In general, domain and range of trig functions are converted to range and domain of inverse trig functions:
- dom(f) = ran(f⁻¹)
- ran(f) = dom(f⁻¹)

The `arctan` may be extended to complex numbers, with ℂ as its domain.

## Table of arctan values

To convert an angle in degrees multiply the value by `π/180°`.

The `arctan` takes a real number as input, and outputs the corresponding unique angle value.

x     | arctan(x°) | arctan(x) | dec
------|------------|-----------|-------
 ∞    |  90°       |  π/2      | arctan(90ᵒ) = 89.3634
-∞    | -90°       | -π/2      | 
-3    | -71.565°   | -1.2490   | 
-2    | -63.435°   | -1.1071   | 
-√3   | -60°       | -π/3      | 
-1    | -45°       | -π/4      | 
-1/√3 | -30°       | -π/6      | 
-1/2  | -26.565°   | -0.4636   | 
0     | 0°         | 0         | 
?     | 15°        |           | arctan(15ᵒ) = 86.1859
1/2   | 26.565°    | 0.4636    | 
1/√3  | 30°        | π/6       | arctan(30ᵒ) = 88.0908
1     | 45°        | π/4=0.7854| arctan(45ᵒ) = 88.7270
√3    | 60°        | π/3       | arctan(60ᵒ) = 89.0452
2     | 63.435°    | 1.1071    | 
3     | 71.565°    | 1.2490    | 
4     |            |           | 1.3258
5     |            |           | 1.3734
6     |            |           | 1.4056
7     |            |           | 1.4289
8     |            |           | 1.4464
9     |            |           | 1.4601
10    |            |           | 1.4711
11    |            |           | 1.4801
12    |            |           | 1.4877
20    |            |           | 1.5208
30    |            |           | 1.5375
10¹³  |            |           | 1.5708


- when x = ∞,   y = π/2
- when x = √3,  y = π/3
- when x = 0,   y = 0
- when x = -√3, y = -π/3
- when x = -∞,  y = -π/2

## Derivative of arctan

```js
y = arctan(x)
// take tan on both sides
tan(y) = tan(arctan(x))
// since: tan(arctan(x)) = x
tan(y) = x
// differentiate both sides using the chain rule
// wrt to y?
d/dy tan(y) = (x)′
// wrt to xy?
d/dx tan(y) = (x)′

sec²y dy/dx = 1

dy/dx = 1 / sec²y

// identity: sec²y = 1 + tan²y
dy/dx = 1 / (1 + tan²y)

// back substitute
d/dx arctan(x) = 1 / (1 + x²)
```

## Integral of arctan

The integral of `arctan` is the antiderivative of the inverse of `tan`. Integration by parts is used to evaluate the integral of `arctan`.

    f(x) = arctan(x)
    g(x) = 1

    u = arctan(x)
    dv = dx

The formula is given as

    ∫ f(x) g(x) dx = f(x) ∫ g(x) dx - ∫ [ df/dx × ∫ g(x) dx ] dx

    ⎰ u dv = u v - ⎰ v du

On substituting the values and solving, we get the integral of arctan as

    ∫ arctan(x) dx = x arctan(x) - ½ ln |1+x²| + C


```js
∫ arctan(x) dx

u = arctan(x)       | dv = 1 dx
d/dx u = 1/(1+x²)   | v = x
du = 1/(1+x²) dx    | v = x

⎰ u         dv = u         v - ⎰ v du
∫ arctan(x) dx = arctan(x) x - ⎰ x 1/(1+x²) dx
∫ arctan(x) dx = x arctan(x) - ⎰ x/(1+x²) dx
∫ arctan(x) dx = x arctan(x) - ½ ln |1+x²|   + C
```



## Links

https://www.cuemath.com/trigonometry/arctan/

https://www.geeksforgeeks.org/arctan/
