# Differential equation

Given a function `y = f(x)`, we call `dy` and `dx` differentials, and the relationship between them is given by `dy = f′(x)dx`.

If we are just given `f(x)`, then the differentials are `df` and `dx`, but we compute them in the same manner, `df = f′(x)dx`.

Computing a differential of a function means taking its derivative - given a function f(x), we can denote this generically by `df = f′(x)dx`. For a concrete function like `y = t³ − 4t² + 7t`, we compute the differential by taking a derivative of both sides, `d/dx y = (t³ − 4t² + 7t)′`. Then we just treat the `dx` on the left side as a term, moving it to the right side, `dy = (3t² − 8t + 7)dx`.


```js
     y =  t³ − 4t² + 7t
d/dx y = (t³ − 4t² + 7t)′
dy/dx  = 3t² − 8t + 7
dy = (3t² − 8t + 7)dx

     y =       t³ − 4t² + 7t
d/dx y = d/dx (t³ − 4t² + 7t)
dy/dx = 3t² − 8t + 7
dy = (3t² − 8t + 7)dx
```

Generally, we need to know in respect to which variable we are calcululating the derivative of a function.

```js
(1)  y =  t³ − 4t² + 7t
d/dx y = (t³ − 4t² + 7t)′
dy/dx  = 3t² − 8t + 7
dy = (3t² − 8t + 7)dx

(2)  w =  x² sin(2x)
d/dx w = (x² sin(2x))′
dw/dx = 2x sin(2x) + 2x²cos(2x)
dw = (2x sin(2x) + 2x²cos(2x))dx

(3)  f(z) =  e^(3-z³)
d/dx f(z) = (e^(3-z³))′
df/dx = -4e^(3-z⁴) dz
```

## Application of differentials

There is a nice application to differentials.

If we think of `Δx` as the change in `x`, 
then `Δy = f(x + Δx) − f(x)` is the change in `y` 
corresponding to the change in `x`. 

Now, if `Δx`is small, we can assume that `Δy ≈ dy`.

### Example 1

Compute `dy` and `Δy` if `y = cos(x² + 1) − x` as `x` changes from `x = 2` to `x = 2.03`.

First, let's compute the actual change in `y` as `Δy`:

```js
Δy = cos((2.03)² + 1) − 2.03 − (cos(2² + 1) − 2) = 0.083581127
Δy = 0.083581127
```

Now, let's get the formula for `dy`.

```js
y = cos(x² + 1) − x
dy/dx = (cos(x² + 1) − x)′
dy = (cos(x² + 1) − x)′ dx
dy = (-2x sin(x² + 1) − 1) dx
```

Next, the change in `x` from `x=2` to `x=2.03` is `Δx = 0.03`, so we then assume that `dx ≈ Δx = 0.03`. This gives an approximate change in `y` of

```js
dy = (-2x sin(x² + 1) − 1) dx
dy = (-2(x) sin((x)² + 1) − 1) dx
dy = (-2(2) sin((2)² + 1) − 1) 0.03
dy = (-4 ⋅ sin(5) − 1) ⋅ 0.03
dy = 0.085070913
```

We can see that in fact we do have that `Δy ≈ dy` provided we keep `Δx` small.

```js
     dy = 0.085070913
     Δy = 0.083581127
Δy - dy = 0.001489786
```

### Example 2

A sphere was measured and its radius was found to be 45 inches with a possible error of no more that 0.01 inches. What is the maximum possible error in the volume if we use this value of the radius?

First, recall the equation for the volume of a sphere, `V = 4/3πr³`.

Now, if we start with `r = 45` and use `dr ≈ Δr = 0.01`, then `ΔV ≈ dV` should give us maximum error.

So, first get the formula for the differential:

```js
V = 4/3πr³
d/dr V = (4/3 π r³)′
dV/dr = 4 π r²
dV = 4πr² dr
```

Now compute `dV`:

```js
     dV = 4 π r²    dr
ΔV ≈ dV = 4 π (45)² (0.01)
        = 254.47 in³
```

The maximum error in the volume is then approximately `254.47` cubic inches.

Be careful to not assume this is a large error. On the surface it looks large, however if we compute the actual volume for `r=45`, we get `V=381,703.51in³`. So in comparison the error in the volume is `254.47 / 381703.51 × 100 = 0.067%` which is not much of an error.
