# Encoding data structures in lambda calculus

To model primitive types like numbers, we assign a particular meaning to lambda terms (usually abstractions). A lambda term like `λfx.x` is often picked to represent the number zero in many encodings. Then, in the Church encoding, the term `λfx.fx` represents 1, `λfx.f(fx)` is 2, `λfx.f(f(fx))` is 3, and so on. Namely, Church numerals are modeled as n-fold compositions of an arbitrary function, `f`, with its initial argument, `x`. In other encoding schemes other lambda terms may represent these numbers.

In essence, lambda terms themselves can be used to represent primitive data types (numbers in particular), but to represent compound data types and data structures, we must use a different approach - because, first of all, we need a way to store the payload data. This is quite different to numbers, which are lambda terms resulting from lambda applications. The only way to store data when all we have are functions, is to turn them into closures - partially applied, almost saturated functions that are still awaiting for some of their arguments required for application.

>A *closure* is a lambda function that may capture a set of variables from the environment in which it was defined, and hang onto them after being returned by a higher-order function, even after its original environment becomes discarded.

This is the crucial property that allows us to use functions as data storage, so the support for closures (by a programming language in which we want to implement lambda calculus) is crucial (although, a possible workaround is to use defunctionalization to mimic higher-order functions and closures, but then the whole affair gets too unwieldy too quickly).

When we use functions in this way, the parameters that bind the payload data are referred to as *fields*. To store `n` values, we need at least an n+1-ary function. Initially, the first `n` formal parameters of the function are uninitialized fields, which we'll initialize and fill with values by applying that function to `n` arguments.

When we supply the field arguments, we say that a function becomes a *loaded closure*, also called an *impregnated lambda*; this is exactly the form a function must have to be called an instance of some data type (i.e. a value).

>A data type instance (a value) is represented by a loaded closure - a lambda with only the field arguments supplied, that still awaits for the remaining args it needs for application.

The final arguments needed for application of a loaded closure are called *selectors*. They are supplied later, when we actually need to retrieve one of the stored values. In simpler cases, one selector is sufficient for field retrieval, so it is enough to reserve only the last formal parameter for it (to bind it).

This final argument not only prevents the application of the function, keeping the stored data on ice, but also serves as a mechanism to retrieve the data. Namely, when we finally apply the loaded closure to a selector argument, thereby fully-saturating it, the selector will pick out and return the specified value.

Implementing lambda calculus in a programming language imposes that functions are first-class value in that language - the language must support passing functions as arguments to functions, as well as returning closures from functions. Ideally, the language should also be lazy, but there is a workaround for strict languages (delaying evaluation with thunks).



## Storing a single value

In the simplest, although impractical, case, to store a single value we can use the `const` function, i.e. the lambda abstaction `K := λa.λb.a`. If we apply `K` to a value `X`, we get back the closure `λb.X` that stores the `X`. When we want to retrieve the stored value, we apply this closure to another (any) argument.

## Storing a pair of values

Generalizing this setup in order to store two values, means having a ternary function, `V := λa b f. f a b`, where the first two formal parameters (`a` and `b`) act as *data fields* - each stores a value supplied as the positionally corresponding argument. To store a pair of values, `X` and `Y`, we only need to apply `V` to them, obtaining the closure `λf. f X Y`.

```hs
V X Y
= (λa. λb. λf. f a b) X Y
= (λb. λf. f X b) Y
= λf. f X Y
```

This is were the situation becomes more complicated then the first example: we can only retrieve one of the two stored values at the time. The closure expects one more argument `f`, which acts as the *selector or accessor function*: it picks and returns a particular field. The two possible selector functions for a stored pair are `FST := λa.λb.a` and `SND := λa.λb.b`. Applying the closure to `FST` retrieves the first component `X`, applying it to `SND` retrieves `Y`.

```hs
FST := λa.λb.a
SND := λa.λb.b

-- getting X form the loaded closure
(λf. f X Y) FST
= (λf. f X Y) (λa.λb.a)
= (λa.λb.a) X Y           = K X Y = X
= (λb.X) Y
= X

-- getting Y form the loaded closure
(λf. f X Y) SND
= (λf. f X Y) (λa.λb.b)
= (λa.λb.b) X Y
= (λb.b) Y                = I Y
= Y
```


## Storing more values

Generalizing this scheme further, we can store any number of values using the formal parameters as data fields and a selector function as the final argument.

In general, a function to be used as a data structure to store `n` data points will have `n+1` formal parameters: the first `n` parameters are the fields that bind the `n` values we wish to store. We don't supply the final parameter so we get a *loaded closure* (all field args supplied just awaiting on the final arg). The final parameter binds the selector function - when we need to retrieve one of the fields we'll apply the closure to it.

```hs
inital lambda abstraction
         │                  data args
         │                     │       selector farg
┌────────┴───────────────┐   ┌─┴───┐   │
( λ a b c. λf.  f  a b c )    A B C    F
            │   │  └─┬─┘
         selector   fields


-- precursor of a data type (unapplied lambda abstraction):
(λ a b c. λf. f a b c)

-- obtaining an instance of the data type, i.e. applying
-- the lambda abstraction to 3 field values (arguments):
(λ a b c. λf. f a b c) A B C
= (λ b c. λf. f A b c) B C
= (λ c. λf. f A B c) C
= λf. f A B C

-- We get the lambda term qhich is a VALUE of a data type.
λf. f A B C
-- It is one particular value of this particular type (i.e. an instance of the type). This lambda term is a VALUE, so in general, VALUES are almost-saturated closures (they still await for their final argument to saturate them).
```

The inital lambda abstraction is a lambda term that acts as a precursor for a particular data type. Here it is a quaternary function whose 3 three params are to bind the 3 data points. The final, fourth arg, is reserved for the selector farg that will pick and retrieve one of the fields.

However, this only models a data type that has a single data ctor (with a number of fields), but how do we represent a Haskell's GADT that has several data ctors, each with a different number of fields?

## Translating a complex data type

The `f` param above represents one data ctor, but to model a data type, like a Haskell's ADT that has several data ctors, each with a different number of fields, we need to represent several of such constructions. In fact, we'll need one such construction for each data ctor we want to encode - that is, each data ctor corresponds to a standalone, loaded, lambda term. By "loaded" we mean that these lambda terms are almost-saturated abstractions - the initial lambda abstraction is already applied to all the field arguments, and now it only awaits for the final argument.

An ADT with N data ctors is therefore translated as a set of N functions:
- there are N lambdas
- each lambda takes a specific number of field args (this number corresponds to the data ctor it represents).
- all lambdas then take the same numeber of selector args, i.e. they all take exactly N selector args.
- each lambda uses only one of the selectors, ignoring the other N-1 selectors
- in the body of each lambda that selector is applied to its fields


```hs
-- This Haskell's GADT:
data T a b c where
  C₁ :: a -> b -> T
  C₂ :: a -> b -> c -> T

-- is translated as the set of the two lambdas:
(λ u v   C₁ C₂. C₂ u v)    -- acts as the binary data ctor C₁
(λ x y z C₁ C₂. C₁ x y z)  -- acts as the ternary data ctor C₂



((λ u v   C₁ C₂. C₂ u v  ) α β)    -- acts as the binary data ctor C₁
((λ x y z C₁ C₂. C₁ x y z) γ δ η)  -- acts as the ternary data ctor C₂
```
