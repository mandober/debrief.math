# Encoding of Data Types in the λ-calculus

`Comprehensive Encoding of Data Types and Algorithms in the λ-calculus`
Jan Martin Jansen, Rinus Plasmeijer, Pieter Koopman, 2010

## Abstract

The λ-calculus is a well known basic universal programming language, but is not considered as a realistic option for expressing algorithms in a comprehensive way. In this paper we show that this bad qualification is mainly caused by the choice of the *Church encoding* for the representation of Algebraic Data Types. We show that, using *Scott encoding*, and with a little aid of a clever lay-out scheme, functional programs, like they are written in languages like Haskell, can be expressed using comprehensive and concise λ-expressions. For this purpose, we also use an alternative way to express recursion without the use of a fixed-point combinator. The resulting formalism not only allows for comprehensive and readable expression of algorithms, but also allows for an efficient implementation.

## The Nature of Algebraic Data Types

Consider Algebraic Data Type (ADT) definitions in languages like Haskell such as tuples, booleans, temperature, maybe, natural (Peano) numbers, and lists:

```hs
data Bool = True | False
data Temp = Fahrenheit Int | Celsius Int
data Tuple a b = Tuple a b
data Maybe a = Nothing | Just a
data Nat = Zero | Suc Nat
data List t = Nil | Cons t (list t)
```

A type consists of one or more alternatives. Each alternative consist of a name, possibly followed by a number of arguments. ADTs are used for several purposes:
- to make enumerations, like in Bool
- to package data, like in Tuple
- to unite things of different kind in one type, like in MayBe and Temperature
- to make recursive structures like in Nat and List (in fact to construct new types with an infinite number of elements)

The power of the ADT construction in modern FPL is that one formalism can be used for all these purposes. Imperative formalisms would need several constructs for this.

Analysing the construction of ADT's, we see that constructor names are used for two purposes:
- to distinguish the different cases in a single type definition (like True and False in Boolean and Fahrenheit and Celsius in Temperature)
- to recognizing them as being part of a type and making type inferencing possible.

Therefore, all constructor names must be different in a single module. For distinguishing the different cases in a function definition, *pattern matching* on constructor names is used.

## Named λ-expressions

We'll give the lambda-expression representing an ADT or a function a name:

True  := λa b . a
False := λa b . b

By introducing an additional λ-abstraction and using the fact that   
`(λtrue . true y z) x ~~> x y z`   
we can introduce names in lambda-expression via parameter binding:

```s
(λx.x (λfg.fg) (λfg.gf)) True ≡
(λx.x (λfg.fg) (λfg.gf)) (λab.a) ≡
(λtrue.true (λfg.fg) (λfg.gf)) (λab.a)
```

When we know a parameter will be bound to a particular function (like `True`), we can give more evokative name to that param (like `true` instead of `x`). That way we can refer to it in the lambda body more conveniently.

Named λ-expressions are only introduced for notational convenience. These definitions behave like macro definitions. The names are replaced by the corresponding body before any reduction is done. This implies that these definitions cannot be recursive.

## Expressing Enumerations Types

The simplest example of such a type is Boolean. We use pattern matching for recognizing the different cases (constructors). So we are looking for an alternative for pattern matching using lambda-expressions. The simplest example of using a pattern match for Booleans is the `if-then-else` construct:

```hs
data Bool = True | False

ifte :: Bool -> a -> b -> ab
ifte True  a b = a
ifte False a b = b
```

But the same effect can easily be achieved by making `True` and `False` functions, selecting the 1st or 2nd arg, respectively, and by making `ifte` the `id` function.

True  := λa b . a
False := λa b . b
ifte  := λx.x

```hs
true  a b = a
false a b = b

ifte :: Bool -> a -> b -> ab
ifte = id
```


## Expressing a Simple Container Type

`Tuple` or `Pair` is the simplest example of a pure container type. If we group data into a container type, we also need constructions to get data out of the container - the projection functions. For `Tuple` this can be realized by pattern matching or by using the projection functions `fst` and `snd`.

```hs
data Tuple a b = Tuple a b

fst (Tuple a b) = a
snd (Tuple a b) = b
```

We can represent containers in lambda-calculus with closures i.e. partially applied functions. The standard way for repr a pair is:

`Pair := λabf.fab`

The `Pair` is an function that takes 3 arguments, but if we supply only two, we have a closure. The closure's third argument should be a binary function that we then apply to the first two arguments, so it can select and return either one. This function argument is therefore called a *continuation* (the function with which the computation continues).

fst := λs.s(λab.a)
snd := λs.s(λab.b)

If applied to a pair-as-closure, `fst` selects the first component, and `snd` the second one.


## Expressing General Multi Case Types

It is now a simple step to come up with a solution for arbitrary ADT by just combining the two solutions from above. Let us look at the definition of the function `warm` that takes a Temperature as an argument:

```hs
data Temp = Fahrenheit Int | Celsius Int

warm :: Temp -> Bool
warm (Fahrenheit f) = f > 90
warm (Celsius c)    = c > 30
```

We need encodings for `Fahrenheit f` and `Celsius c`.

* The first solution tells that we should make a binary function that returns the first arg for `Fahrenheit` and second arg for `Celsius`.

* The second solution tells that we should feed the arg of `Fahrenheit` or `Celsius` to a continuation.

* Combining these two solutions we learn that `Fahrenheit` and `Celsius` should both have 3 args: the 1st arg for closure, 2nd and 3rd as continuation args.

* `Fahrenheit` selects 1st arg (continuation) and applies it to its 1st arg
* `Celsius`    selects 2nd arg (continuation) and applies it to its 1st arg

```
F := λab.a
C := λab.b

Fahrenheit := λf a b . a f
Celsius    := λc a b . b c
```

and the definition of warm becomes:

`warm := λt . t (λf . f > 90) (λc . c > 30)`



If we apply this strategy to the types `Nat` and `List` we obtain the following definitions for the constructors:

Zero := λf g . f
Succ := λn f g . g n



## The General Case

In general, the mapping of an ADT to λ-expressions is hard to denote:
- there is a `k`-ary type ctor, taking `k` type params (a,b,c,...)
- there are `m` data ctors, each with any number of (prev declared) TPs

More generally, an algebraic data type with `m` alternatives becomes a function with `m` parameters. When the `i`th constructor has `nᵢ` arguments, the corresponding parameter of the encoding takes `nᵢ` arguments as well.

Given the following ADT definition in Haskell:

```hs
data typeName a b c
    = A
    | B b
    | C b c
    | D a b c
```

if the type declaration has `m` data ctors, 
then it can be mapped to `m` λ-expressions:

```s
A := λa ... z g ... f . f v ... w
...
C := λa ... z g ... f . f v ... w
```

* Consider the multi-case pattern-based fn `f` in Haskell defined on this type:

```hs
funkzi (Ca v_1_1 ... v_1_n ) = body₁
...
funkzi (Cz v_m_1 ... v_m_nₘ ) = bodyₘ
```

* This function is converted to the following λ-expressions using the Scott encoding of data types:

```s
funkzi := λx . x
    (λv_1_1 ... v_1_n . body₁)
    ...
    (λv_m_1 ... v_m_nₘ . bodyₘ)
```
