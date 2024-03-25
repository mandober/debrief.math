# Pointed functor


## Pointed functor in JS

A pointed functor is a functor `F` together with a function `of` defined for every type `a`, that sends a value `x` of type `a` into a value `of(x)` of type `F a`, i.e. `of :: a -> F a`.

For instance, the Array functor is pointed with `of = x => [x]`, defined for all types `a` (and forall values `x` of type `a`).

Further, the function `of` (or more precisely, the collection of functions `of`, since you can have one forall types `a`) must be a natural transformation from the identity functor into `F`.

This means that `of` applied to a function's value equals `of` applied to the function's arg and then mapped over the function: 

`of (f (x)) === of (x).map (f)`


* For instance, in the Array example you have 

`[f(x)] === [x].map(f)`

so `x => [x]` is indeed a natural transformation.

* But you can also redefine `of` as `of = x => [x, x]`

`[f(x), f(x)] === [x, x].map(f)`

which makes Array into another pointed functor, even if the map method remains the same. Note that in each case, you only get very special arrays as values of `of(x)`.

* However, you cannot define your of as e.g. `of = x => [x, 0]`

`[f(x), 0] !== [x, 0].map(f)`


```js
// of :: a -> F a
// of = pure

of(f(x)) === of(x).map(f)

// the Array functor is pointed with
// of :: a -> [a]
of = x => [x]

// in the Array example
[f(x)] === [x].map(f)
// so
x => [x]
// is indeed a natural transformation
```
