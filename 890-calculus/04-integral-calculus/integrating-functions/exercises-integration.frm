# Integration :: Exercises :: Integrals

## Contents

```js
1.  ∫ x exp(-2x)       dx  = -1⁄2 x exp(-2x) - 1⁄4 exp(-2x)           + C
2.  ∫ sec²(√x)/√x      dx  = 2 tan(√x)                              + C
3.  ∫ tan(x)           dx  = ln|sec(x)|                             + C
4.  ∫ sin(x)/(1-sin²x) dx  = sec(x)                                 + C
5.  ∫ exp(3x) sin(4x)  dx  = 1⁄25 exp(3x) (3 cos(4x) + 4 sin(4x))    + C
6.  ∫ cos³(x)          dx  = sin(x) - 1⁄3 sin³(x)                    + C
7.  ∫ cos⁵(x)          dx  = sin(x) - 2⁄3 sin³(x) + 1⁄5 sin⁵(x)       + C
8.  ∫ cos⁵(x) sin(x)   dx  = -1⁄6 cos⁵(x)                            + C
9.  ∫ sin⁵(x) cos²(x)  dx  = -1⁄3 cos³(x) + 2⁄5 cos⁵(x) - 1⁄7 cos⁷(x)  + C
10. ∫ sin⁵(x) cos³(x)  dx  = -1⁄4 sin⁴(x) + 1⁄3 sin⁶(x) - 1⁄8 sin⁸(x)  + C
11. ∫ sin⁵(x) cos³(x)  dx  =  1⁄6 sin⁶(x) - 1⁄8 sin⁸(x)               + C
```


## Exercise 1: exp with linear exponent, IBP

- family: exponential function
- props: product of 2 functions
- terms:
  - `x`
  - `exp` with linear exponent
- approach: IBP


```js
∫ x exp(-2x) dx

    // use IBP
    // pick u
    u = x
    du = dx
    // pick dv
    dv = e⁻²ˣ dx
    ∫ dv = ∫ e⁻²ˣ dx
    v = -1⁄2e⁻²ˣ

// formula:
∫ u dv      = u v - ∫ v du
∫ x e⁻²ˣ dx = x -1⁄2e⁻²ˣ - ∫ -1⁄2e⁻²ˣ dx
∫ x e⁻²ˣ dx = -1⁄2xe⁻²ˣ + 1⁄2 ∫ e⁻²ˣ dx
∫ x e⁻²ˣ dx = -1⁄2xe⁻²ˣ + 1⁄2 (-1⁄2) e⁻²ˣ
∫ x e⁻²ˣ dx = -1⁄2xe⁻²ˣ - 1⁄4e⁻²ˣ + C
∫ x exp(-2x) dx = -1⁄2 x exp(-2x) - 1⁄4 exp(-2x) + C
```

## Exercise 2: sec, radical, rational and u-subst

```js
∫ sec²(√x)/√x dx

    let u = √x
    du = 1/2 x⁻¹′² dx
    du = 1/2 ⋅ 1/x¹′² dx
    du = 1/2x¹′² dx
    dx = du/(1/2x¹′²)
    dx = 2 x¹′² du
    dx = 2 √x du

= ∫ sec²(u)/√x 2 √x du
= 2 ∫ sec²(u) du
= 2 tan(u) + C
= 2 tan(√x) + C
```

## Exercise 3: tan integral, u-subst

```js
∫ tan(x) dx
= ∫ sin(x)/cos(x) dx
= ∫ sin(x) 1/cos(x) dx

    let u = cos(x)
    du = -sin(x)dx
    dx = -du/sin(x)

= -∫ sin(x) 1/u du/sin(x)
= -∫ 1/u du
= -ln|u| + C
= -ln|cos(x)| + C
= ln|sec(x)| + C
```

## Exercise 4: sin, rational, simple manipulations

```js
∫ sinx/(1-sin²x) dx
= ∫ sinx/cos²x dx
= ∫ sinx/cosx⋅cosx dx
= ∫ sinx/cosx ⋅ 1/cosx dx
= ∫ tanx⋅secx dx   // sec′x = tanx⋅secx
= secx + C
```

## Exercise 5: exp with linear exponent, sin with linear arg

```js
∫ e³ˣ sin(4x) dx

// use the shortcut formula with a=3, b=4
∫ eᵃˣ sin(bx) dx = 1/(a²+b²) eᵃˣ [a⋅sin(bx) - b⋅cos(bx)] + C

= 1/3²+4² e³ˣ (3cos(4x) + 4sin(4x)) + C
= e³ˣ/25 (3cos(4x) + 4sin(4x)) + C
```

## Exercise 6: cos, u-subst

Use u-subst to integrate `cos³x`. Manupulate initial integrand into a more suitable form such that the derivative of `u` cancels some leftover part.

```js
∫ cos³x dx
= ∫ cos²x cosx dx          // split exponent
= ∫ (1 - sin²x) cosx dx    // use Pythagorean identity

    u = sin(x)
    du = cosx dx

= ∫ (1 - u²) du // make substitutions
= u - u³/3 + C
= u - 1⁄3u³ + C
= sin(x) - 1⁄3sin³(x) + C
```





## Exercise 7: cos, u-sub

Use u-subst to integrate `cos⁵x`. Manupulate initial integrand into a more suitable form such that the derivative of `u` cancels some leftover part.

```js
∫ cos⁵x dx
= ∫ cos⁴x cosx dx
= ∫ (cos²x)² cosx dx
= ∫ (1 - sin²x)² cosx dx

    u = sin(x)
    du = cosx dx

= ∫ (1 - u²)² du
= ∫ (1 - 2u² + u⁴) du
= u - 2⁄3u³ + 1⁄5u⁵ + C
= sin(x) - 2⁄3sin³(x) + 1⁄5sin⁵(x) + C
```

## Exercise 1

```js

```
