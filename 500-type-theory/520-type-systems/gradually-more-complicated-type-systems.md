# Gradually complicating a type system

- base types
- functions on base types
- type constructors
  - by arity
    - nullary type ctors
      - type constants (base types)
      - saturated (polyadic) type ctors
    - polyadic type ctors
      - unary
      - binary
      - n-ary
  - by algebraic properties
    - function type ctor
    - product type ctors
      - canonical: `(,)`
      - `Pair`
    - sum type ctors
      - canonical: `Either`
      - `Or`
- type operators
- type variables
- monotypes
- polytypes
- polymorphic types
  - polymorphic identity function, `forall a. a -> a`
  - monomorphic function (identity on Int), `Int -> Int`
  - quantified types
    - universally
    - existentially
- dependent types
  - dependent function space
    - dependent function
  - dependent product space
    - dependent pair



## Base types

- B, base types, ground types, type constants, atomic types
  - Bool, Int, Char, Double
    - integers in several flavors of combined bitness and signedness
    - floating-point numbers in two flavors by bitness: binary32 and binary64
    - impl of Char depend on the encoding, usually it's UTF-8 or UTF-16
  - in the code, values of base types are expressed as literals
    - the type `Bool` has two values - literals `True` and `False`
      - `True : Bool`
      - `False : Bool`
    - `Char`s are easily recognized due to being delimited by single quotes
      - `'c' : Char`
      - `'\n' : Char`
      - `'\0' : Char`
      - `'\DEL' : Char`
    - `Int` and `Double` form the numeric types
      - `1 : Int`
      - `3.41 : Double`
      - there may be a class of numeric types, a la Haskell's `Num`, that implements ad hoc polymorphism, e.g. `(+) :: Num a => a -> a -> a`
      - the literal `1` without a type annotation could be interpreted as both an `Int` or `Double`. For this situation, (implicitly or explicitly given) *type defaulting* rule may state the order of precedence, so that the literal `1` is first assumed to be an `Int`, falling back to `Double`.


## Function types

The terms "function" and "function type" have quite a lot of baggage. But here, as pertains to type systems bases on a particual type theory, there are at least functions on terms (aka functions as values), function types (functions as types), with the latter constructed using the function type ctor denoted by `->`.

In an untyped setting, a "function" is actually a value like `λx.x`. These are then types moving to a typed setting, `λ(x:τ).x : τ -> τ`.

In STLC à la Church, at least function parameters must be type-annotated. This, explicitly typed lambda calculus is about *type-checking*.

ANOTE: I know that formal parameters must be typed, but I'm not so sure about the abstractions; probably they also need type-annotations, e.g. if the type of an argument is annotated, then, given that the parameter is, it is easy to infer the type of the abstraction; although I suspect in the explicitly-typed STLC one needs to type ev-ery-thing.

In STLC, with implicit typing à la Curry, expressions need not be annotated with types [but can they nevertheless be? probably]; type annotations are not required as the type system can infer the types. This, implicitly typed lambda calculus is about *type-inference*.

In both implicitly- and explicitly-typed type systems, we end up with a type on (of) each expression. The former systems perform type-checking to make sure that the user-supplied types make sense. This seems to be only slighlty less compicated than full on type inference - since the system must infer the type of some exp to have something to compare the user-supplied type with. [Probably, not quite] as it can just check whether the user-supplied types make sense for that particualr exp: e.g. in case of a function, whether the type given for the parameter and the abstraction itself aligns with the type of an argument to which the abstraction is to be applied.

Most of the time, explicitly-typed lambda expressions that are type-checked to be well-typed, have the types that match with the inferred ones. Most differences come from the more-less specialized/generalized types, e.g. the user-supplied type may be more specialized, like `Int -> Int`, while inferred types tend to be more general, like `a -> a`, for the same expression.

The function type `Int -> Int` is the type of many functions over `Int`s. Function types over some fixed set `B` (e.g. `B = {Int,Char,Double}`) of base types, `B -> B`, stand for an infinite number of types, like `B -> B -> B`, `(B -> B) -> B`, etc. Here , `B` is a meta-variable that ranges over the base types of the object-language, i.e. over the types `Int`, `Char`, `Double`.

What is the interpretation than if we allow *type variables*? Isn't it the same if we represent all these types using type variables, i.e. `a -> b -> c`, instead of `B -> B -> B`?

>That is, aren't *type variables* of the object language the same thing as *meta-variables* of the mata-language that range over the types (of the object-language)?

Type variables are a property/feature of the object-language. They range over the types in that language. At least: if we have type variables, then there's no need to use meta-variables that range over types (in the object language), right?

This has to do with the difference beteen the types `a -> a` and `∀a. a -> a`.


The universally-quantified type is actually more clear to me: it first declares a type variable and then uses it, which is ismilar to generic types from PL like Rust, e.g. `foo<T>(a : T) -> T` (where `<T>` declares a type var `T`).

How exactly is the non-polymorphic type like `a -> a` interpreted?

I know that the non-polymorphic type "represents" types like `Int -> Int` and `Bool -> Bool`, but how exactly? Are we allowed to say that the type variable `a` is "instantiated" at the type `Int`, for example?

For the polymorphic type `∀a. a -> a`, we say that the type variable `a` can be "instantiated" at various types, like `Int` in which case it yields the type `Int -> Int`; at `Bool` in which case it yields the type `Bool -> Bool`, etc.

Also, being a truly polymorphic type, we should be allowed to instantiate `a`
- at any base type
- at any function type over the base types
- at any function type that includes type variables (?)
- at any type that includes polymorphic types/type variables (?)
  Although the last one would be the *rank-N polymorphism*
  - `∀a. (∀r. (a -> r) -> r)`
  - `∀a. a -> (∀r. (a -> r) -> r)`


This is what is said in the article about STLC:   
https://en.wikiversity.org/wiki/Foundations_of_Functional_Programming/Simply_typed_%CE%BB-calculus

  The interpretation of type variables is tricky, and is unfamiliar relative to languages like Haskell and ML. A type variable `α` does not denote a polymorphic type. `α → α` is not the type of a function which takes *an object of an arbitrary type*, and returns an object of the same type. Rather, it is the type of a function which takes *an object of type* `α`, and returns an object of type `α`.

ANOTE: WTF?! Are they saying that somehow the phrases "an arbitrary type" and "a type" denote different things?! Wtf is the type `α` then?!

  A type variable denotes a single, *monomorphic type*, such as integer, boolean, etc. The simply typed λ-calculus does not say what types the type variables represent. As far as the λ-calculus is concerned, they can denote any types; but each denotes a single, fixed, monomorphic type.

ANOTE: STLC may not even have integers and booleans as base types - it may just be λ-calulus with types - so which types are considered monomorphic then?

ANOTE: Should the type variable then be understood as a meta-variable that ranges over the monomorphic types of the object language? If so, then, again, what is the exact difference between such meta-variables and type variables of the object-language?

ANOTE: I mean I have "feeling" what they're trying to say, but this is no way to explain it, informally; let alone formally. Perhaps concerete examples would clear things up? alas...

ANOTE: This seems to be *analoguous to the difference between constants and variables in polynomials*. Constant terms are "constant numbers" and variables stand for "variable numbers", aka the unknowns... But once a polynomial is translated into a PL, these two categories tend to get very blurry (with all these numbers end up being represented by parameters).
