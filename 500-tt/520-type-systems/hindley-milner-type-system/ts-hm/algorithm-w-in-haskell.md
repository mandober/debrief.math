# Algorithm W in Haskell

**Type inference** refers to the process of determining the appropriate types for expressions based on how they are used. It is performed on a language's expressions that are not (fully) type annotated by the user.

**Type checking**, on the other hand, checks expression that are type annotated by the user to see if the types check out.

Type inference is performed at compile time, after the source code has been parsed and arranged into AST. Here, we describe the "Algorithm W" that is a well-known algorithm for inferring the types in a PL based on Hindley-Milner type system. We skip the syntax, semantics, parsing and all that jazz, and just assume we have some expressions of some object language available as structured expressions in the meta-language, i.e. Haskell.

We're dealing with an object language that has terms (no shit) and types that classify the terms.

Like every PL, our object language (OL) has constant terms (literal or constant values) which are terms that represent themselves, and they all belong to the set of the base types. For example, `True`, `False`, `3`, `42`; and what that we have already listed all terms of base type `Bool`, and a few terms of our other base type `Int`. So, `Bool` and `Int` are in the set of our base types.

The base types are part of a more general category of types, called **monotypes**. In our language, and in general notation, monotypes are denoted by `τ`. Monotypes are concerete types, like the base types `Int` and `Bool`, but also function types on the base types, like `Int -> Bool`.

The base types are like a base case of recursion - something the recursion approaches closer with each iteration, until finally reaching it and terminating. Here, the function types are an example of types that will recursively work towards the base type. The function type are generally denoted by the form `τ -> τ`.

Then, now, techically, type variables, `α` are included in monotypes, but it is exactly type variables, either standalone (`a`) or as part of a function type (`a -> a`) that will be generalized into polytypes. Polytypes are denoted by `σ` and they subsume monotypes, plus the special "forall-type" of the form `∀α.τ`.

The rules say when a type may be generalized (made into a type scheme or a foall type), but an aditional clearity about it is left desired. Sometimes it seems that each type variable will be generalized into a forall type var. Note: the entire type is called type scheme (forall type) even though that whole business depends on the presence of type var(s), so I might slip and say that the type var is generalized. An example of a forall type is:

`apply :: forall a b. a -> (a -> b) -> b`

My inability to come up with a prompt example of a type that has type vars but is not generalized, make sits own statement.


* Types, `Ty`
  * Monotypes, `τ`
    - base types (type literals, type constants)
      - `Int`
      - `Bool`
    - function types, `τ -> τ`
      - Int -> Int
      - Int -> a
      - a -> Int
      - a -> a
      - etc.
    - type application, `C τ₀ … τₖ`
    - type variables, `α`
      - `a`
      - `b`
      - etc.
  * Polytypes, `σ`
    - monotypes, `τ`
    - type schemes, `∀ α₀ … αₙ . σ`
      - `forall a. a`
      - `∀a. a -> a`
      - `∀a b. (a -> b) -> a -> b`
* Substitution mapping, `Subst`
* Type environment, `TyEnv`
