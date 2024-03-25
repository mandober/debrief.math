# Composition of functions

## Composability

The composition of two functions produces a third function; but two functions can only be composed if they are compatible.

This compatibility places a restriction on the domain and codomain of functions that would be composed, such that they must first meet some basic criteria.

>In short, two functions can be composed if the domain of one is the same as the codomain of the other.

Expanding this restriction in terms of two named functions `f` and `g`, it means that `f` and `g` are composable if either
- `dom f == cod g` ==> `f ∘ g`   (input of `f` matches output of `g`)
- `cod f == dom g` ==> `g ∘ f`   (output of `f` matches input of `g`)

Two functions `f` and `g` CANNOT BE COMPOSED if 
`(dom f != cod g) ⋀ (cod f != dom g)`


### Examples

The base function `f : a -> b` is composable with some function `g` if:
* dom of one is the same as cod of the other
  * dom f == cod g
    - `e -> a`   ✔ compatible, dom f == cod g
    - `a -> a`   ✔ compatible, dom f == cod g
  * cod f == dom g
    - `b -> r`   ✔ compatible, cod f == dom g
    - `b -> b`   ✔ compatible, cod f == dom g
* dom of one is NOT the same as cod of the other 
  (dom f != cod g) ⋀ (cod f != dom g)
    - `a -> c`   ✘ incompatible
    - `c -> b`   ✘ incompatible
    - `a -> b`   ✘ incompatible
    - `e -> r`   ✘ incompatible
- Two functions with matching doms and matching cods are incompatible
  - `f : a -> b` and `g : a -> b` (but they are parallelizable)
- Two endofunctions on the same set are always compatible
  - `f : a -> a` and `g : a -> a`
- Two endofunctions on different sets are incompatible
  - `f : a -> a` and `g : b -> b`


```hs
                       compatibe?
g ::          a -> x              a -> x
                ↗                   ↖
f ::          a -> b              a -> b
compare: -- dom and cod         cod and dom
```

## Types

```hs
(.) :: (b -> c) -> (a -> b) -> (a -> c)

flip (.) :: (a -> b) -> (b -> c) -> (a -> c)

(.) :: (a -> a) -> (a -> a) -> (a -> a)
```

## Composition

At least on this page, we let 3 functions `f`, `g` and `h`:

```hs
f :: a -> b
g :: e -> a
h :: b -> r
```

We make `f` the fixed one, i.e. the one from whose perspective we analyse things. The way in which the two arbitrary functions are compatible with `f` immediately becomes evident:

```hs
g :: e -> a
     f :: a -> b
          h :: b -> r
```

We can think of `g` as any arbitrary function that is compatible with `f` in that its codomain (output) matches `f`'s domain (input).

We can think of `h` as any arbitrary function that is compatible with `f` in that its domain (input) matches `f`'s codomain (output).


## Composition operator

The composition operator, `∘`, is a two-hole binary operator, `(- ∘ -)`, that takes two compatible functions, and produces a third, composed function, whose domain is the same as domain of the right operand, and whose codomain is the same as codomain of the left operand.

The standard composition operator is right-to-left, it works backwards, taking arguments from the right.

```hs
          g :: e -> a
     f :: a -> b
h :: b -> r
```

One alternative is to use a left-to-right composition operator, variously denoted by `|>` (pipe) or `&` (conjunction), in which case `(- |> -)` the composition flows naturally from left to right, taking arguments from the left. We can even mention the argument far on the left, `x |> g |> f |> h`, unlike with the standard composition operator which is point-free, `h ∘ f ∘ g`.

Another alternative is reversing the arrows - so e.g. function `f` looks like `f : b <- a`, and `g : a <- e`, while `h : r <- b` - in which case the standard composition operator would work nicely, `h ∘ f ∘ g`

```hs
          g :: a <- e
     f :: b <- a
h :: r <- b
```

## Pre- and post-composition

Composition is the source of two mappings of arrows called pre-composition and post-composition.

## Post-composition

When an arrow `f` is post-composed with an arrow `h`, it produces `f ∘ h`.

Post-composition by `f` is written as `(f ∘ −)`, leaving a hole for `h`.

>Thus, an arrow `f : a -> b` induces a mapping of arrows `(f ∘ −)` that maps arrows which are ending in `a` to arrows which are ending in `b`.

```
        (f ∘ -)
│││ - - - - - - -> │││
│││                │││
↓↓↓                ↓↓↓
 a ---------------> b
          f
```

An arrow `z : x -> a`, on the left, that ends in `a`, gets mapped to an arrow `z' : x -> b` on the right that ends in `b` instead:

`z ⟼ z' = f ∘ z`

Since objects have no internal structure in CT, when we say that `f` transforms `a` to `b`, this is exactly what we mean.

>Post-composition lets us shift focus from one object to another.


## Pre-composition

When an arrow `f` is pre-composed with an arrow `g`, it produces `g ∘ f`.

Pre-composition by `f` is written as `(- ∘ f)`, leaving a hole for `g`.

>Thus, an arrow `f : a -> b` induces a mapping of arrows `(- ∘ f)` that maps arrows which are originating in `b` into arrows which are originating in `a`.

```
          f
 a ---------------> b
│││                │││
│││ <- - - - - - - │││
↓↓↓                ↓↓↓
        (- ∘ f)
```

An arrow `z : b -> x`, on the right, that originates in `b`, gets mapped to an arrow `z' : a -> x`, on the right, that originates in `a` instead:

`z ⟼ z' = z ∘ f`

>Pre-composition let us shift the perspective from one observer to another.

Notice that, this time, the outgoing arrows are mapped in the direction opposite to the arrow `f`.


>Pre- and post-composition are mappings of arrows. Since arrows form sets, these are functions between sets.

Another way of looking at pre- and post-composition is that they are the result of partial application of the two-hole composition operator `(− ∘ −)`, in which we pre-fill one hole or the other with an arrow.

In programming, 
an *outgoing arrow* is interpreted as consuming or extracting data from the source. 
An *incoming arrow* is interpreted as producing or constructing the target.

>Outgoing arrows define the interface, incoming arrows define the constructors.
