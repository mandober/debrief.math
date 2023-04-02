# Lambda calculus :: Encoding algebraic data types

## TL/DR

An algebraic data types (ADT) in a FPL like Haskell is a, possibly recursive, sum of products. The syntax for declaring a new data type consists of an `n`-ary type ctor with `n` type variables, along with a number of data ctors, each representing a variant of the type. Each data ctor may refer to any number of `n` type variables (on the rhs of the type declaration), optionally referring to any number of (unparameterized) base types (e.g. `Bool`, `Int`, etc.) or introducing more, existentially quantified, type variables for its own use. Depending on the number of arguments it takes, each data ctor has its own arity, and its arguments may be of different types.

We can encode Haskell ADTs in lambda calculus using nothing but functions.

## Type construction

A Haskell's ADT is modelled in lambda calculus by a set of functions. An ADT consisting of `N` data ctors, each of different arity, corresponds to `N` lambda terms, each of different arity.


## Encoding ADTs

It is best to consult a GADT type declaration because it resambles the corresponding function ctors that will immiatate the data ctors.

### Boolean

```hs
-- Boolean type as a GADT
data Bool where
  True  :: Bool
  False :: Bool

-- Church encoded Booleans

-- The type ctor corresponds to a type alias
type CBool = forall r. r -> r -> r

-- The `True` data ctor corresponds to the ctor fn `true`
true = \ hTrue hFalse -> hTrue
```


Boolean is an enum so `\a b -> a` really is `\ hTrue hFalse -> hTrue`



The example is a simple, non-recursive data type named `Shape` which is declared in Haskell as a nullary type ctor since it uses only the discrete types (i.e. only the `Double` type).

with two data ctors, each of different arity, is translated into the corresponding representation using the Church encoding of data types.

```hs
data Shape where
  Circ :: Double -> Double -> Double -> Shape
  Rect :: Double -> Double -> Double -> Double -> Shape
```
