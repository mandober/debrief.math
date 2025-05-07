# Derivatives :: Numeric approximation

*Derivatives* are useful in a variety of application: finding area under a curve, root-finding, optimization, curve and surface tessellation, and computation of surface normals for 3D rendering.

Considering the usefulness of derivatives, it is worthwhile to find software methods that are simple to implement, easy to prove correct, convenient, accurate, efficient and general.

## Numeric approximation

One differentiation method is **numeric approximation**, using simple finite differences. This method is based on the *definition of (scalar) derivative*:

```
                 f(x + h) − f(x)
f′(x) = lim{h→0} ---------------
                       h
```

The left-hand side reads "the derivative of `f` at `x`", which is more commonly denoted by `f′(x)` or `y′`. In fact, originally the notation `d f(x)` was used, i.e. with a single `d`, very strange, jamais vue. Lebniz notation is `d/dx`; applied as an operator to a function `f(x)`, the derivative of the function is denoted by `d/dx f(x)` or `df(dx)` or `dy/dx`, or similar, asssuming `f(x) = y`.

The approximation method uses the fact that, for a small value of `h`, the derivative `f′(x)` is almost equal to the *difference quotient* of y-coordinates (aka *the rise*), divided by the differentiation quotient of x-coordinates (aka *the run*), which got reduced to `h` (was `(x + h) - x`).

```
        f(x + h) − f(x)
f′(x) ≈ ---------------
              h
```

While very simple, this method is often inaccurate, due to choosing either too large or too small a value for `h` (small values of `h` lead to rounding errors). More sophisticated variations improve accuracy while sacrificing simplicity.

## Symbolic differentiation

Another method is **symbolic differentiation**. Instead of using the limit-based definition directly, the symbolic method uses a collection of rules.

There are two main drawbacks to the symbolic approach to differentiation. One is simply the inconvience of symbolic methods, requiring access to and transformation of the source code of computation, and placing restrictions on that source code. A second drawback is that implementations tend to be quite expensive and in particular perform redundant computation.

## Automatic differentiation

A third method is called **automatic differentiation**, aka **algorithmic differentiation** (AD) invented by Wengert in 1964. It has two modes, forward and reverse, as well as mixtures of the two.

The idea of forward-mode AD is to simultaneously manipulate values and derivatives. Overloading of the standard numerical operations makes this combined manipulation a convenient and elegant as manipulating values without derivatives.

First-order, scalar, functional automatic differentiation, implemented in Haskell, packaged as a data type `D` with a collection of numeric type class instances.

## Differentiation - Haskell code

```hs
data D a = D a a deriving (Eq, Show)

constD :: Num a => a -> D a
constD x = D x 0

idD :: Num a => a -> D a
idD x = D x 1

instance Num a => Num (D a) where
  fromInteger x = constD (fromInteger x)
  D x x' + D y y' = D (x + y) (x' + y')
  D x x' * D y y' = D (x * y) (y' * x + x' * y)
  negate (D x x') = D (negate x) (negate x')
  signum (D x _ ) = D (signum x) 0
  signum (D x x') = D abs x (x' * signum x)

instance Fractional x => Fractional (D x) where
  fromRational x = constD (fromRational x)
  recip (D x x') = D (recip x) (−x' / x * x)

instance Floating x => Floating (D x) where
  π = constD π
  exp  (D x x') = D (exp  x) (x' * exp x)
  log  (D x x') = D (log  x) (x' / x)
  sqrt (D x x') = D (sqrt x) (x' / (2 * sqrt x))
  sin  (D x x') = D (sin  x) (x' *   cos x)
  cos  (D x x') = D (cos  x) (x' * (−sin x))
  asin (D x x') = D (asin x) (x' /   sqrt (1 − x * x))
  acos (D x x') = D (acos x) (x' / (−sqrt (1 − x * x)))
```

Every operation acts on a regular value and a derivative value in tandem (the derivatives for `abs` and `signum` need more care at 0). 

For example, try this out in GHCi:

```hs
f1 :: Floating a => a -> a
f1 z = sqrt (3 * sin z)

>>> f1 (D 2 1)
D 1.6516332160855343 (-0.3779412091869595)
```

To test correctness, here is a symbolically differentiated version:

```hs
f2 :: Floating a => a -> D a
f2 x = D (f1 x) (3 * cos x = (2 * sqrt (3 * sin x)))

>>> f2 2
D 1.6516332160855343 (-0.3779412091869595)
```
