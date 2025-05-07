# Classification of Differential Equations

Types of differential equations:
- order:           highest derivative (1st deriv, 2nd deriv, etc.)
- degree:          exponent on the highest derivative
- ordinary:        single indep var
- partial:         multiple indep vars
- linear:          dep var `y` or its deriv `dy/dx` are left alone
- nonlinear:       dep var `y` or its deriv `dy/dx` have a fn acting on either
- homogeneous:     indep var `x` or a constant do not appear alone
- non-homogeneous: indep var `x` or a constant appear alone
- autonomous:      indep var `x` only appears in a derivative (dy/dx)
- non-autonomous:  indep var `x` does not appear only in a derivative (dy/dx)


## Classification of DEs

A diff equation contains a function and its derivative. The function, `y`, is the unknown we need to solve for. The function `y` is in terms of an independent variable `x`. Variable `y` is a dependent variable, depending on `x`, but it also represents a function, y(x). There is also a derivative of this function `y` with respect to `x`, appearing as `dy/dx`.

```js
     y = f(x)
d/dx y = f′(x)
 dy/dx = f′(x)

f(x) = x²
y = f(x) = x²
y = x²
d/dx y = (x²)′
dy/dx = 2x

// examples of DEs
dy/dx + x = 0
dy/dx + yx = 1
dy/dx + yx² = 5
(dy/dx)² + x = 0
d²y/dx² = 2x
(d²y/dx²)³ + y = 2x
```

* Examples of DEs

```js
dy/dx + y = 0
dy/dx + y = 1
dy/dx + y = x
dy/dx + y² = 0
dy/dx + xy = x
(dy/dx)² + y = x
dy/dx + y sin x = 0
dy/dx + xy = tan x
d²y/dt² + (dy/dt)² = 0
d²y/dx² + dy/dx = x
(d²y/dx²)³ + dy/dx = x
d²z/dt² + (dz/dt)³ + cos⁴ z = 1
∂y/∂x - 2 ∂y/∂t = t²y
```


Terms influencing the classification of diff equations
- derivative (dy/dx)
- independent variable (x)
- dependent variable (y)
- constants


## Factors of classification of DEs

Algebraic equation solve for unknown variable, e.g. `x² + 4x + 2 = 0`, but DE have unknown function to solve for expressed in term of its derivatives, e.g. `dy/dx = x²`. Evaluating indefinite integrals was already solving a DE in disguise, `∫ f(x) dx = F(x) + C`. For example, `∫ x² dx = 1⁄3x³ + C`. These were simple types of DEs, but there are more complicated DEs. We want to solve for dependent variable `y`, which is a function of `x`, the independent variable.

Considerations:
- independent variable, `x`
- dependent variable, `y`
- derivative, `dy/dx`

Factors:
- number of indep vars
- whether they appear alone in each term
- whether something acts on them

Properties of DEs:
- order
- degree
- ordinary vs partial
- linear vs nonlinear
- homogeneous vs non-homogeneous
- autonomous vs non-autonomous


## Classes

1. Ordinary vs Partial: number of indep var
- *Ordinary* (ODEs): single indep var
  - only one indep var `x`: `dy/dx + xy = tan x`
- *Partial*  (PDEs): multiple indep var
  - two indep var (x, t): `∂y/∂x - 2 ∂y/∂t = t²y`

2. Linearity
   - some fn acting on either
   - dependent variable `y`, or
   - its derivative `dy/dx`
- *Linear*: if nothing acts on either.
  - `dy/dx + y sin x = 0`
- *Non-linear*: if either has a fn acting on it
  - exponent acting on dep var: `dy/dx + y² = 0`
  - exponent acting on deriv: `d²z/dt² + (dz/dt)³ + cos⁴ z = 1`

3. Homogeneity
  - indep var `x`, or
  - a constant like 1
  - do not appear alone in any term
  - Homogeneous
  - Non-homogeneous

- *Homogeneous*: indep var or const do not appear alone in any term.
  - independent variable `x` does not appear alone in any term
  - a constant does not appear alone in any term
  - `dy/dx + y = 0`
- *Non-homogeneous*: 
  - indep var `x` on its own: `dy/dx + y = x`
  - constant 1 on its own: `dy/dx + y = 1`

4. Autonomy
- whether indep var `x` only appears in a derivative (dy/dx) or not.
- *Autonomous*:
  - indep var only appears as a derivative
  - indep var appears alone in all terms
  - `dy/dx + y = x` (no term with indep var other then derivative)
- *Non-autonomous*: indep var appears not only as a derivative
  - `dy/dx + xy = x` (dep var is not alone in `xy`)




*Order of DEs*: highest derivative present
- `dy/dx + y = x` first order
- `d²y/dx² + dy/dx = x` second order

*Degree of DEs*: exponent on the highest derivative present
- `(dy/dx)² + y = x` first order and second degree
- `(d²y/dx²)³ + dy/dx = x` second order and third degree


## Examples

For example, `dy/dx + y sin x = 0`
- indep var:        x
- depen var:        y
- order:            1st order
- degree:           1st degree
- ordinary:         one indep var
- linear:           dep var and deriv has nothing acting on them
- homogeneous:      indep var or a constant do not appear alone
- non-autonomous:   indep var is not alone in a term (y ⋅ sin x)

For example, `d²z/dt² + (dz/dt)³ + cos⁴(z) = 1`
- indep var:        t
- depen var:        z
- order:            2nd order
- degree:           1st degree
- ordinary:         one indep var
- non-linear:       deriv has exp
- non-homogeneous:  constant (1) appears alone
- autonomous:       indep var appears alone in all terms

Varify that `y = ln(t + A) + B` is a solution of DE `d²y/dt² + (dy/dt)² = 0`. Then find a particular solution that satisfies both `y=2` and `dy/dt=1` when `t=0`.
