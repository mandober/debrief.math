# Integration :: Exercises :: Trig functions

## Contents

```js
1. ∫ exp(3x) sin(4x)    dx = 1⁄25 exp(3x) (3 cos(4x) + 4 sin(4x))   + C
2. ∫ cos³(x)            dx = sin(x) - 1⁄3 sin³(x)                   + C
3. ∫ cos⁵(x)            dx = sin(x) - 2⁄3 sin³(x) + 1⁄5 sin⁵(x)      + C
4. ∫ cos⁵(x) sin(x)     dx = -1⁄6 cos⁵(x)                           + C
5. ∫ sin⁵(x) cos²(x)    dx = -1⁄3 cos³(x) + 2⁄5 cos⁵(x) - 1⁄7 cos⁷(x) + C
6. ∫ sin⁵(x) cos³(x)    dx = -1⁄4 sin⁴(x) + 1⁄3 sin⁶(x) - 1⁄8 sin⁸(x) + C
6. ∫ sin⁵(x) cos³(x)    dx =  1⁄6 sin⁶(x) - 1⁄8 sin⁸(x)              + C
7. ∫ sin(x)/(1-sin²(x)) dx = sec(x)                                + C
8. ∫ tan(x)             dx = ln|sec(x)|                            + C
9. ∫ sec²(√x)/√x        dx = 2 tan(√x)                             + C
```



## Exercise 1: exp with linear exponent, sin with linear arg

Use shortcut formula to integrate a product of trig and exp functions, where exp has linear exponent.

```js
∫ e³ˣ sin(4x) dx
    // use the shortcut formula:
    ∫ eᵃˣ sin(bx) dx = 1/(a²+b²) eᵃˣ [a⋅sin(bx) - b⋅cos(bx)] + C
    // a = 3, b = 4
= 1/3²+4² e³ˣ (3cos(4x) + 4sin(4x)) + C
= e³ˣ/25 (3cos(4x) + 4sin(4x)) + C
```

## Exercise 2: cos, u-sub

Use u-subst to integrate `cos³x`. Manupulate initial integrand into a more suitable form such that the derivative of `u` cancels some leftover part.

```js
∫ cos³x dx
= ∫ cos²x cosx dx          // split exponent
= ∫ (1 - sin²x) cosx dx    // use Pythagorean identity

    u = sinx
    du = cosx dx

= ∫ (1 - u²) du // make substitutions
= u - u³/3 + C
= u - 1⁄3u³ + C
```

## Exercise 3: cos, u-sub

Use u-subst to integrate `cos⁵x`. Manupulate initial integrand into a more suitable form such that the derivative of `u` cancels some leftover part.

```js
∫ cos⁵x dx
= ∫ cos⁴x cosx dx
= ∫ (cos²x)² cosx dx
= ∫ (1 - sin²x)² cosx dx

    u = sinx
    du = cosx dx

= ∫ (1 - u²)² du
= ∫ (1 - 2u² + u⁴) du
= u - 2⁄3u³ + 1⁄5u⁵ + C
```

## Exercise 4: cos, sin, u-sub

Use u-subst to integrate trig functions.

```js
∫ cos⁵x sinx dx

    u = cos(x)
    du = -sinx dx

= -∫ u⁵ du
= -1⁄6u⁵ + C
= -1⁄6cos⁵(x) + C
```

## Exercise 5: sin, cos, u-sub

```js
∫ sin⁵x cos²x dx
// expand sin⁵
∫ sin⁴x sinx cos²x dx
// express the power differently
∫ (sin²x)² sinx cos²x dx
// use Pythagorean identity: sin²x = 1 - cos²x
∫ (1 - cos²x)² sinx cos²x dx

    u = cos(x)
    du = -sinx dx
    -du = sinx dx
    dx = -du/sinx

// substitute
= -∫ (1 - u²)² u² sinx du/sinx
= -∫ (1 - u²)² u² du
= -∫ (1 - u²)² u² du
= -∫ (1 - 2u² + u⁴)u² du
= -∫ (u² - 2u⁴ + u⁶) du
= ∫ (-u² + 2u⁴ - u⁶) du
= -u³/3 + 2u⁵/5 - u⁷/7 + C
= -1⁄3u³ + 2⁄5u⁵ - 1⁄7u⁷ + C
= -1⁄3cos³(x) + 2⁄5cos⁵(x) - 1⁄7cos⁷(x) + C
```

## Exercise 6: sin, cos, u-sub

Similar to the exercise above except `cos³x` instead of `cos²x`. Since above, `cos²x` term was untouched until we replace it by `u²`, it means everything below is the same as above only `cos³x` gets replaced by `u³`.

However, if we use another approach - splitting `cos³x` into `cos²xcosx` - we get a different solution!?

```js
∫ sin⁵x cos³x dx
// expand sin⁵
∫ sin⁴x sinx cos³x dx
// express the power differently
∫ (sin²x)² sinx cos³x dx
// use Pythagorean identity: sin²x = 1 - cos²x
∫ (1 - cos²x)² cos³x sinx dx

    u = cosx
    du = -sinx dx
    dx = -du/sinx

// substitute
= -∫ (1 - u²)² u³ sinx du/sinx
= -∫ (1 - u²)² u³ du
= -∫ (1 - 2u² + u⁴)u³ du
= -∫ (u³ - 2u⁵ + u⁷) du
= ∫ (-u³ + 2u⁵ - u⁷) du
= -1⁄4u⁴ + 2⁄6u⁶ - 1⁄8u⁸ + C
= -1⁄4u⁴ + 1⁄3u⁶ - 1⁄8u⁸ + C            /* WTF (!?!) see below */
```

Alternatively, if we approach this problem differently, we get a different solution (*!?!*).

```js
∫ sin⁵x cos³x dx
= ∫ sin⁵x cos²x cosx dx
= ∫ sin⁵x (1 - sin²x) cosx dx

    u = sin(x)
    du = cosx dx

= ∫ u⁵(1 - u²) du
= ∫ (u⁵ - u⁷) du
= 1⁄6u⁶ - 1⁄8u⁸ + C                   /* WTF (!?!) see above */
= 1⁄6sin⁶(x) - 1⁄8sin⁸(x) + C
```

>We get different solutions depending on how we approach this intergral. Maybe the two solutions are the same?

```js
/* are the two solutions the same? */
-1⁄4u⁴ + 1⁄3u⁶ - 1⁄8u⁸ + C = 1⁄6u⁶ - 1⁄8u⁸ + C
-1⁄4u⁴ + 1⁄3u⁶ - 1⁄8u⁸ = 1⁄6u⁶ - 1⁄8u⁸
-1⁄4u⁴ + 1⁄3u⁶ = 1⁄6u⁶
-1⁄4u⁴ + 1⁄3u⁶ - 1⁄6u⁶ = 0
-3⁄12u⁴ + 4⁄12u⁶ - 2⁄12u⁶ = 0
-3⁄12u⁴ + 2⁄12u⁶ = 0
2⁄12u⁶ = 3⁄12u⁴
1⁄6u⁶ = 1⁄4u⁴
```

If `2⁄12u⁶ = 3⁄12u⁴` holds, i.e. `1⁄6u⁶ = 1⁄4u⁴`, then the two solutions are the same.




## Exercise 7: sin, rational, simple manipulations

```js
∫ sinx/(1-sin²x) dx
= ∫ sinx/cos²x dx
= ∫ sinx/cosx⋅cosx dx
= ∫ sinx/cosx ⋅ 1/cosx dx
= ∫ tanx⋅secx dx   // sec′x = tanx⋅secx
= sec(x) + C
```


## Exercise 8: tan integral

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

## Exercise 9: sec, radical and rational

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

## Exercise

```js

```
