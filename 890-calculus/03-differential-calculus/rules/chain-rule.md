# Calculus :: Differential :: The Chain rule

The Chain rule

```js
(f ∘ g)′ = (f′ ∘ g) × g′

d/dx f(g(x)) = f′(g(x)) × g′(x)
```

## The Chain rule and composition of functions

```js
y = f(g(x))

d/dx y = d/dx f(g(x))
dy/dx = d/dx f(g(x))

 dy     dy   dg
---- = ---- ----
 dx     dg   dx

// concrete functions
y = sin(x³), so let f(x) = sin(x) and g(x) = x³, thus y = f(g(x))

y = sin(x³)
g(x) = x³
dy/dx? // what?

// All of a sudden, the lowely y is not a variable anymore but a function! A function of x, just like f in f(x) = y. So now y(x)=f; well, not really, but
y(x) = sin(x³)
g(x) = x³
// it goes further…
y(g) = sin(x³)
// and since g = x³
y(g) = sin(g)

// So these two are we needed (right) to take a derivative
y(g) = sin(g)
g(x) = x³

dy/dx = cos(g)
dg/dx = 3x²

dy/dx = 3x²cos(g)
// but g is x³ so…
dy/dx = 3x²cos(x³)
// as if *that* makes sense.
// Couldn't we left alone y and use h(x) instead, like normal people?

// Extended chain rule
y = f(g(h(x)))

 dy     dy    dg    dh
---- = ---- ----- -----
 dx     dg    dh    dx
```










The chain rule for differentiating a composition of two functions `f` and `g`, with `f` designated as the outer function and `g` as the inner function.

Composition of `f` and `g`:
- `f ∘ g`      (point-free notation)
- `(f ∘ g)(x)` (point-full notation)
- `f(g(x))`    (application)

Taking a derivative of a composition of functions:
- `(f(g(x)))′`
- `(f ∘ g)′(x)`
- `d/dx (f ∘ g)(x)`
- `d/dx (f(g(x))`

The chain rule: take the derivative of the outer function ignoring its argument then multiply it by the derivative of the inner function.

```js
(f ∘ g)′(x) = d/dx f(g(x)) = f′(g(x)) × g′(x)
```


## Exponential

`e³ˣ` is exponential function and function composition.

h(x) = (f ∘ g)(x) = f(g(x))

```
h(x) = e³ˣ          the two composed functions are:
f(x) = eˣ           as outer
g(x) = 3x           as inner

h(x) = (f ∘ g)(x) = f(g(x))
h(x) = ((e^) ∘ (3 ⋅))(x) = (e^(3x))(x)

e.g. with x=5 we get:
(e^(3x))(5) = e^(3 ⋅ 5) = e^15
```

The inner function `g` is first applied to an arg `x`, the result of which is passed as an arg to the outer function `f`.
