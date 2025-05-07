# Parametric equations

https://en.wikibooks.org/wiki/Calculus/Parametric_Introduction

## Contents

- Introduction to Parametric Equations
  - Introduction
  - Forms of Parametric Equations
    - Parametric Form
    - Vector Form
    - Equalities
  - Converting Parametric Equations
- Parametric Differentiation
  - Taking Derivatives of Parametric Systems
  - Slope of Parametric Equations
  - Concavity of Parametric Equations
- Parametric Integration
  - Introduction
  - Arc length



## Introduction to Parametric Equations

### Introduction

Parametric equations are typically defined by two equations that specify both the `x` and `y` coordinates of a graph using a parameter. They are graphed using the parameter, usually `t`, to figure out both x and y coordinates.

For example, parameteric equation pair `x = t` and `y = t²` is equivalent to the *rectangular equation* `y = x²`.

Consider this parameteric equation pair: `x = cos(t)` and `y = sin(t)`. This pair is equivalent to the rectangular equation `x² + y² = 1` and to the *polar equation* `r = 1`.

Parametric equations can be plotted by using a 3-column table to show values of `(x, y)` for each value of `t`. They can also be plotted by eliminating the parameter, though this method removes the parameter's importance.

### Forms of Parametric Equations

Parametric equations can be described in 3 ways:
- parametric form
- vector form
- equality

The first two forms are used far more often, as they allow us to find the value of the component at the given value of the parameter. The final form (as an equality) is used less often; it allows us to verify a solution to the equation, or find the parameter (or some constant multiple thereof).

#### Parametric Form

A parametric equation can be shown in parametric form by describing it with a system of equations. For instance, `x = t` and `y = t² − 1`.

#### Vector Form

Vector form can be used to describe a parametric equation in a similar manner to parametric form. In this case, a position vector is given:

```js
⎛ x ⎞   ⎛   t    ⎞
⎝ y ⎠ = ⎝ t² - 1 ⎠
```

#### Equalities

A parametric equation can also be described with a set of equalities. This is done by solving for the parameter `t`, then equating the component equations.

Given `x = t` and `y = t² − 1`. In the first component `t` is already isolated, `t = x`. Isolating `t` in the second component, we get `t = ±√(1 + y)`. Then we just equate the two components, `x = ±√(1 + y)`.

```js
x = t         // (1)
y = t² − 1    // (2)
t = x         // isolate t in (1): done!
y = t² − 1    // isolate t in (2)
t² = y + 1    // rearrange
t = ±√(1 + y) // (4)
x = ±√(1 + y) // equate equations (1) and (4)
```

### Converting Parametric Equations

There are a few common place methods used to change a parametric equation to rectangular form.

The first involves solving for `t` in one of the two equations and then replacing the new expression for `t` with the variable found in the second equation.

#### Example 1

```js
x = t − 3     // (1)
y = t³        // (2)
x = t − 3     // isolate x
t = x + 3     // isolate t
y = (x + 3)³  // subst t in (2)
```

#### Example 2

```js
x = 3cos(t)             // (1)
y = 4sin(t)             // (2)
cos(t) = x/3            // isolate cos
sin(t) = y/4            // isolate sin
cos²(t) + sin²(t) = 1   // identity: unit circle
(x/3)²  + (y/4)²  = 1   // subst by rhs of cos(t) and rhs of sin(t)
x²/9    + y²/16   = 1   // simplify
```


## Parametric Differentiation

### Taking Derivatives of Parametric Systems

Just as we are able to differentiate functions of `x`, we are able to differentiate `x` and `y`, which are functions of `t`.

Consider:
- x = sin(t)
- y = t

The derivative of `x` with respect to `t`, and of `y` with respect to `t`
- x′ = cos(t)
- y′ = 1

In general, we say that if
- x = x(t)
- y = y(t)
then:
- x′ = x′(t)
- y′ = y′(t)

This process works for any amount of variables.

### Slope of Parametric Equations

In the above process, `x′` has told us only the rate at which `x` is changing, not the rate for `y`, and vice versa. Neither is the slope.

In order to find the slope, we need something of the form `dy/dx`.

We can discover a way to do this by simple algebraic manipulation:

```js
        dy
       ----
 x′     dt     dy
---- = ---- = ----
 y′     dx     dx
       ----
        dt
```

For example
- x = sin(t)     y = t
- x′ = cos(t)   y′ = 1
- the slope at any time t is `1/cos(t) = sec(t)`

* In order to find a vertical tangent line, set the horizontal change, or `x′`, equal to 0 and solve.
* In order to find a horizontal tangent line, set the vertical change, or `y′`, equal to 0 and solve.
* If there is a time when both `x′` and `y′` are 0, that point is called a *singular point*.

### Concavity of Parametric Equations

Solving for the second derivative of a parametric equation can be more complex than it may seem at first glance.

When you have take the derivative of `dy/dx` in terms of `t`, you are left with

```js
d²y/dx
------
  dt

 d   ⎡ dy ⎤   d²y/dx
---- ⎢----⎥ = -------
 dt  ⎣ dx ⎦     dt
```

By multiplying this expression by `dt/dx`, we are able to solve for the *second derivative of the parametric equation*:

```js
d²y/dx   dt    d²y
------- ---- = ----
  dt     dx    dx²
```

Thus, the *concavity* of a parametric equation can be described as:

```js
 d   ⎡ dy ⎤    dt
---- ⎢----⎥ × ----
 dt  ⎣ dx ⎦    dx
```

So for the example in sections 1 and 2, the concavity at any time t:

d/dt[csc(t)] × cos(t) = −csc2(t) × cos(t)

## Parametric Integration

### Introduction

Because most parametric equations are given in explicit form, they can be integrated like many other equations. Integration has a variety of applications with respect to parametric equations, especially in kinematics and vector calculus.

    x = ∫ x′(t) dt
    y = ∫ y′(t) dt

So, taking a simple example, with respect to `t`:

    y = ∫ cos(t) dt = sin(t) + C

### Arc length

Consider a function defined by,
- x = f(t)
- y = g(t)

Say that `f` is increasing on some interval, [α,β]. Recall, as we have derived in a previous chapter, that the length of the arc created by a function over an interval, [α,β], is given by,

L = ∫ {β..α} √(1+(f′(x))²) dx

Or in Leibniz's notation

L = ∫ {β..α} √(1+(dy/dx)²) dx

Using the chain rule,

```js
 dy     dy     dt
---- = ---- × ----
 dx     dt     dx
```

we may then rewrite `dxdt/dt`. Hence, `L` becomes

L = ∫ {β..α} √(1 + (dy/dt ÷ dt/dx)²) dx/dt dx

...

As `f` is increasing on [α,β], `dt/dx`, and hence we may write our final expression for `L` as

L = ∫ {β..α} √[(dx/dt)² + (dy/dt)²] dt

### Surface area

(...)

### Voulme

(...)
