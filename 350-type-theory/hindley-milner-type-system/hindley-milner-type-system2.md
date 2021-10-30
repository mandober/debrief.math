## Hindley-Milner type system

https://wiki.c2.com/?TypeInference
https://wiki.c2.com/?HindleyMilnerTypeInference
https://en.wikipedia.org/wiki/Hindley-Milner_type_system

The origin of the Curry-Feys-Hindley-Milner-Damas (DM) type system (type system or type inference algorithm?) was the problem of devising a type inference algorithm for the simply typed lambda calculus (so only type inference algo?). Initial work was done by Haskell Curry and Robert Feys in 1958. In 1969, J. Roger Hindley extended this work and proved that their algorithm always inferred the most general type i.e. principal type. In 1978 Robin Milner, had independently of Hindley, provided an equivalent algorithm, *Algorithm W*. In 1982, in his PhD thesis, Luis Damas has proved that Milner's Algorithm W is complete, and he had it extended to support systems with polymorphic references. (wasn't tha already done by Milner for his language ML?).

Among HMD's more notable properties are its completeness and the ability to infer the majority of types without relying on programmer-supplied type annotations, by employing the Milner's type inference algorithm Algorithm W.

*Algorithm W* is an efficient type inference algorithm in practice, and has been successfully applied on large code bases, although it has a high theoretical complexity.

HMD is preferably used for FPL. It was first implemented as part of the type system of the programming language `ML`. Since then, HMD has been extended in various ways, most notably in Haskell with type class among other things (hmm, type classes desugar to core syntax easily anyway, I'm not sure type inference is dona on type classes directly, i.e. in the desugared form).

Languages with a Hindley-Milner type system have the important property that one can assign to every expression a unique, most general type, called the *principal type*.

## Monomorphism vs. polymorphism

In the simply typed lambda calculus, types `T` are either base types (atomic type constants) or function types of form `T -> T`. Such types are **monomorphic**.

Typical examples of monomorphic types are the types used in arithmetic values:

```hs
3       :: Int
add     :: Int -> Int -> Int
add 3 4 :: Int
```

Contrary to STLC, the untyped lambda calculus doesn't have any notion of typing at all, and many functions can be meaningfully applied to all types of arguments. The trivial example is the identity function, `λa.a`, that returns whatever arg it is applied to; e.g. when applied to itself, `(λx.x)(λy.y)`, it returns its arg, `λy.y`. Less trivial examples include parametric types like lists.

While the term "polymorphism" generally means that an e.g. function works with values of more than one type, the type of polymorphism used here is *parametric polymorphism*, which is sometimes also referred as a *type scheme*, in order to emphasize the parametric nature of polymorphism.

Additionally, type constants may be typed with universally or existentially quantified type variables.

```hs
cons :: forall a. a -> [a] -> [a]
nil  :: forall a. [a]
id   :: forall a. a -> a
```

A polymorphic type becomes monomorphic by consistent substitution of its type variables. Examples of monomorphic (specialized) instances of polymorphic types:

```hs
id  :: String -> String  -- id specialized to String
nil :: [Int]
```

More precisely, a polymorphic function like `id :: forall a. a -> a`, here with an explicitly written universal quantifer (that is usually left implicit), in fact, takes 2 arguments: 1 type and 1 value argument.

```hs
id :: a -> a
-- is in fact:
id :: forall a. a -> a

-- A polymorphic type becomes monomorphic by substitution of its type vars
-- substitute all `a`'s for String to specialize id to String
id @String :: String -> String

-- fully explicit call
id @String "abc"
```

More generally, types are polymorphic when they contain type variables, while types without them are monomorphic.

Contrary to the type systems used for example in Pascal (1970) or C (1972), which only support monomorphic types, HM is designed with emphasis on parametric polymorphism. The successors languages, like C++ (1985), have focused on a different sort of polymorphism, namely subtyping polymorphism, relevant to OOP and overloading.

## Let-polymorphism

When extending the type inference for the STLC towards polymorphic lambda calculi, one has to define when it becomes admissible to derive an instance of a value; ideally, this would be allowed with any use of a bound variable:

```
(λ id. ... (id 3) ... (id "text") ... ) (λ x . x)
```

Let-bound vs lambda function

```hs
-- named function
const :: a -> b -> a
const a b = a
-- lambda bound to a name
const :: a -> b -> a
const = \x y -> x
-- mix
const :: a -> b -> a
const x = \y -> x

-- let
f = let param = arg in body


-- lambda applied to an arg
x1 = (\x -> x) 3

-- let
x2 = let x = 3
     in  x

-- let
x3 = let id = (\x -> x)
     in  (id 3)
```

but unfortunately, type inference in a polymorphic lambda calculus becomes undecidable. Instead, HM provides a restrictred form of polymorphism called **let-polymorphism**, of the form:

```hs
x1 = let id = λx. x
     in  ... (id 3) ... (id "text") ...


x1 = let id = \x -> x
     in  (id 3, id "text", id True) -- (3,"text",True)
```

Let-polymorphism restricts the binding mechanism in an extension of the expression syntax. Only values bound in a `let` construct are subject to instantiation, i.e. are polymorphic, while the parameters in lambda-abstractions are treated as being monomorphic.

This is (probably) about the issue type inference faces when dealing with other syntactic forms for defining a function vs let-bound function form. Namely, a let-bound form has all the elements accounted for: paramaters, function's body and, most importantly, arguments; type inference can consult also the args to make conclusions, while in other function forms args may not be (yet or completely) available - this is solved by instantiating a type var with an existential type (a type that exists, we just don't know at that time what it is).
