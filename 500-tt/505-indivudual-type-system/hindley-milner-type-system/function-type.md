# Function type

A **function type** (or an arrow type, or an exponential) is the type of a variable to which a function is assigned; it is also the type of a paramater (and thus also the type of the corresponding argument) to a higher-order function that accepts a function; it is also the return type of a higher-order function that returns a function.

```hs
-- function type is the type of a var to which a function is assigned:
s = (\x y -> x + y :: Int)
>>> :type s
s :: Int -> Int -> Int

-- function type is also the type of a HOF's param that takes a function
map :: (a -> b) -> [a] -> [b]
map f xs = [ f x | x <- xs ]
-- in map, the param `f` has the function type:
   f :: a -> b

-- when map is applied to one arg, it returns the function type:
map succ :: [a] -> [b]
```



We consider all functions as unary since any polyadic function can be converted to a unary function under the currying conversion process. The type of a unary function, in general denoted by `a -> b`, depends only on the types of its input and output (i.e. on the type of the input parameter `a`, and the type of its output, that is on the function's return type, `b`.

A function type depends on the type of the parameters and the result type of the function; it, or more accurately, the unapplied type constructor `· → ·` is a *higher-kinded type*.

This means, first, that all functions are constructed using a type ctor called function type ctor, `->`; this is similar to how all pairs are constructed using the pair type ctor `(,)`, or how lists are constructed using the list type ctor, ... well, lists have two type ctors: `[]` used for constructing an empty list, and `:` used for expanding a list (an existing list) by prepending an new element to it. So, under this view, function type ctor is nothing special; it, like the pair ctor, has two type holes - thus, it is a binary type ctor. Once provided with both types, a new function is constructed.

Function types are build by applying the function type ctor itself, `->`. It is a binary type ctor - it expects two types. Once it is supplied with two types, it becomes saturated, and at that time a new function is created.

```hs
>>> :kind (->)
Type -> Type -> Type
```

This says that the kind of function type ctor is `Type -> Type -> Type`. 
First, `Type` is the name of the kind that classifies all inhabited types - so types like `Int`, `Char`, `Double`, but also types like `Int -> Bool`. If a type has kind `Type`, then that type is inhabited - it has values.

```hs
>>> :kind Int
Type

>>> :kind Char
Type

>>> :kind Double
Type

>>> :kind Int -> Bool
Type
```

It may be evident that the type `Bool` is inhabited with two values (`True` and `False`), but so is the function type `Int -> Bool`! A value of this type is the function `odd` that checks if an integer is odd; another value of this type is the function `even`. In this cases, the function type ctor is saturated - it was saturated by being provided with two types.

However, before the second type was provided, it was an unsaturated type: by itself, `->`, is an unsaturated type ctor; its kind, `Type -> Type -> Type`, say so. Remember, only types of the kind `Type` have values, but types of the kind `Type -> Type` or the kind `Type -> Type -> Type` do not. List ctor `:` has the former kind, i.e. it is a unary type ctor. The function type ctor is a binary type ctor, but once it is given a type it becomes unary! For example, given an `Int` its kind changes from `Type -> Type -> Type` to `Type -> Type`:

```hs
-- (->) is an unsaturated, binary type ctor
>>> :kind (->)
Type -> Type -> Type

-- Given one type, (->) becomes a unary type ctor, still unsaturated
>>> :kind (->) Int
Type -> Type

-- Given two types, (->) becomes a nullary, fully-saturated type ctor:
>>> :kind (->) Int Bool
Type
-- thus spawning a new function, Int -> Bool
```

The function type ctor, as the unapplied type ctor, `• -> •`, is a higher-kinded type (i.e. its kind is `Type -> Type -> Type`), that is, it expects two types and both must be of the kind `Type` as its kind signature suggests.

```hs
-- Given one type, (->) becomes a unary type ctor, still unsaturated
>>> :kind (->) Int
Type -> Type

>>> :kind (->) Int (->)
ERROR
```

Since `->` expects two types (type arguments), both of the kind `Type`, the last example triggers an error, not because of its first type argument (`Int :: Type` which is ok), but because of the second.



In theoretical settings and programming languages where functions are defined in curried form, such as the Simply Typed Lambda Calculus, a function type depends on exactly two types, the domain `A` and the range `B`.

Following a mathematical convention, a function type is denoted `A → B`. In, e.g. category theory, a function type is denoted by `Bᴬ`. This stems from the fact that there are `mⁿ` set-theoretic unary functions from `A` to `B`, where `n = |A|` and `m = |B|`. The class of such maps is called an *exponential object*. The act of currying makes the function type adjoint to the product type.

The function type can be considered as a special case of the *dependent product type*, which among other properties, encompasses the idea of a *polymorphic function*.

## Denotational semantics

The function type in programming languages does not correspond to the space of all set-theoretic functions: Given the *countably infinite* type of natural numbers as the domain, and the Booleans as the codomain, then there are an *uncountably infinite* number, `2^ℵ₀ = 𝔠`, of set-theoretic functions between ℕ and 𝔹.

- set ℕ is countably infinite, `ℵ₀`
- powerset of ℕ, `𝒫(ℕ)`, is uncountably infinite, `2^ℵ₀`
- set of functions `ℕ -> 𝔹` ≅ `𝔹^ℕ`, is thus also uncountably infinite, `2^ℵ₀`

Clearly the space of functions, `ℕ -> 𝔹`, is larger than the number of functions that can be defined in any programming language, as there exist only countably many programs (a program being a finite sequence of a finite number of symbols) and one of the set-theoretic functions effectively solves the halting problem.

Denotational semantics concerns itself with finding more appropriate models (called domains) to model programming language concepts such as function types.

It turns out that restricting expression to the set of computable functions is not sufficient either if the PL allows writing non-terminating computations (which must be the case if the PL is Turing complete).

Expression must be restricted to the so-called continuous functions  (corresponding to continuity in the Scott topology, not continuity in the real analytical sense). Even then, the set of continuous function contains the parallel-or function, which cannot be correctly defined in all PLs.
