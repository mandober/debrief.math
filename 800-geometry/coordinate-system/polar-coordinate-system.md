# Polar coordinate system

## Polar coordinate system

In a 2D polar coordinate system, instead of a point being identified by (x, y) coordinates, it is identified by `(r, θ)` coordinates, where `r` denotes the distance of the point from the pole, and `Θ` is the angle whose vertex is at the pole and initial side is the positive x-axis, while its terminal side is a ray from the pole to the point.

- Points in Q1, will have the angle Θ between 0 and π/2
- Points in Q2, will have the angle Θ between π/2 and π
- Points in Q3, will have the angle Θ between π and 3π/2
- Points in Q4, will have the angle Θ between 3π/2 and 2π

A point on the identtiy line (`y = x`) will have the angle θ of 45ᵒ = π/4 and the `r` coordinate will equal the corresoponding `x` coordinate; e.g. a point with Cartesian coordinates (1, 1) has (1, π/4) polar coordinates.

## Converting between coordinates

```js
// from polar into Cartesian
x = r∙cosθ
y = r∙sinθ

// from Cartesian into polar
r = √(x² + y²)
θ = arctan(y/x)
```


```
(x, y) = (4, 3)
(r, θ) = ?
r = √(4² + 3²) = √16+9 = √25 = 5
θ = arctan(3/4) = 0.6435 (rad)
(r, θ) = (5, 0.64)
```

## Polar equations

`r = cosθ` and `r = sinθ` both define a circle.

We can interpret polar equations as parametric rectangular equations.

## Trandforming rectangular into polar equations

```js
// Ex.1
x = 2
rcosθ = 2
r = 2/cosθ
r = 2×1/cosθ
r = 2secθ

// Ex.2
x² + y² = 16
r²cos²θ + r²sin²θ = 16
r²(cos²θ + sin²θ) = 16
r²(1) = 16
r²(1) = 4²
r = 4

// Ex.3
x = -y²
rcosθ = -(rsinθ)²
rcosθ = -r²sin²θ
cosθ = -rsin²θ
r = -cosθ/sin²θ

// Ex.4
x + y = 4
rcosθ + rsinθ = 4
r(cosθ + sinθ) = 4
r = 4/(cosθ + sinθ)

// Ex.5
x² + y² = 5∙k∙x
r²cos²θ + r²sin²θ = 5∙k∙r∙cosθ
r²(cos²θ + sin²θ) = 5∙k∙r∙cosθ
r²(1) = 5∙k∙rcosθ
r = 5∙k∙cosθ

// Ex.6
xy = 9
r∙cosθ∙r∙sinθ = 9
r²cosθ∙sinθ = 9
r² = 9/cosθ∙sinθ
r = √(9/cosθ∙sinθ)
r = 3/√cosθ∙sinθ
```

## Find the derivative of a polar function

Parametric equation for a circle `(x=rcosθ, y=rsinθ)`, with `θ` as a parameter (parametric variable).


```js
 dy     dx/dθ
---- = -------
 dx     dy/dθ

// We are taking a derivative with respect to θ
// so d/dθ of both sides of parametric equation
// (rcosθ, rsinθ) where the parameter is θ.
// x = rcosθ, y = rsinθ

     y = r∙sinθ
d/dθ y = d/dθ (r∙sinθ)
d/dθ y = (r∙sinθ)′
dy/dθ = r∙cosθ + dr/dθ∙sinθ
//               ^^^^^ deriv of r wrt θ
//        ^^^^ deriv of sinθ wrt θ
```

We have to pay attention that we are taking a derivative with respect to `θ` (not `x`, as usual); so we take a derivative wrt `θ`, that is, `d/dθ`, from both sides of the equation

    y = r∙sinθ

    d/dθ y = (r∙sinθ)′

The lhs is straightforward, so we do `d/dθ y` which is `dy/dθ`. On the rhs, we must use the product rule (`(fg)′ = f′g + fg′`) as we have `r` and `sinθ`. 

    (rsinθ)′ = r∙sin′θ + r′∙sinθ

we better denote the taking-a-derivative as `d/dθ` rather then using the prime notation, so as to remind us that the derivative is wrt `θ`.

    d/dθ r∙sinθ = r∙sin′θ + r′∙sinθ
    d/dθ r∙sinθ = r∙cosθ + dr/dθ∙sinθ

Aha, did you cactch that? Instead of the derivative of `r` being 0 as usual, since we are differentiating wrt `θ` it is `dr/dθ` now. Back to main equation:

    dy/dθ = r∙cosθ + sinθ∙dr/dθ

Now the other equation

    x = rcosθ
    d/dθ x = r∙cosθ
    dx/dθ = r∙(-sinθ) + cosθ∙dr/dθ

Now back to the main equation:

     dy     dx/dθ     r∙cosθ + sinθ∙dr/dθ
    ---- = ------- = ---------------------
     dx     dy/dθ    -r∙sinθ + cosθ∙dr/dθ

    ∎

Thus, this is the derivative of the polar equation.



## Find the slope of a function

>How to find the slope of an equation expressed in polar coordinates.

Knowing the relationship between Cartesian and polar coordinates
- x = rcos(θ)
- y = rsin(θ)
and the general equation of the slope is `dy/dx`, where
- dy = dy/dθ
- dx = dx/dθ

```js
 dy    dx/dθ     r∙cosθ + sinθ dr/dθ
---- = ------ = ------------------------
 dx    dy/dθ    -r∙sinθ + cosθ dr/dθ
```

Now, where do we want to find the slope, at what point, in terms of `r` and `θ` and of what polar equation.

Polar equation: `r = 1 + 2∙sinθ`. Find the slope for `r = 0`. We alter the equation with this specific condition that r=0. So we plug in 0 for every `r` in the equation, evaluating the slope `dy/dx` with this condition.

```js
 dy          dx/dθ     0∙cosθ + sinθ dr/dθ     sinθ dr/dθ   sinθ
----(r=0) = ------ = ----------------------- = ---------- = ---- = tanθ
 dx          dy/dθ    0∙(-sinθ) + cosθ dr/dθ   cosθ dr/dθ   cosθ
```

But now we need to find `θ` when `r=0`.

```js
0 = 1 + 2sinθ
2sinθ = -1
sinθ = -1/2
θ = arcsin(-1/2) = -0.523598776 rad
// arcsin(1/2) = π/6
// there are 2 solutions to this:
// in Q3 at 210ᵒ (3.66519 rad), 210π/180 = 3.67 rad = 7π/6 rad
// 210π/180 = 21π/18 = 7π/6
// and Q4 at 330ᵒ (5.7596 rad), 330π/180 = 5.76 rad = 11π/6 rad
// 330π/180 = 33π/18 = 11π/6

dy/dx (r=0) = tan(210ᵒ) = 0.576
// or
dy/dx (r=0) = tan(330ᵒ) = -0.576
```




### Example 1
