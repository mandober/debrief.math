# PL Features :: Types

- Types classify values
- Normally, a value belongs to only one type
- Types hold info about the values they classify
- Types are intrinsic to values, but extrinsic to variables

## TLDR

>A type defines the ways how the data of that type is intended to be used.

>Types classify values. Type is an intrinsic property of value.

>Types approximate behaviour of expressions they annotate.


## Intro

There's no PL without types. Even when types are not exposed, they are used by the compiler.

A compiler doesn't need to know what value a variable holds, it just needs to know the type. Since each type comes with a size, knowing the type of a variable is enough for the compiler to calculate the amount of memory it needs to reserve to store the values of that type.

Types are a practical abstraction - each type can carry useful information about the values it classifies. Besides the size, all kinds of practical information may be attached to a type: the exact layout of memory, memory alignment, memory padding, info for the garbage collector; container types may also store the number of their currently occupied slots, total capacity, expansion strategy, etc.

Types classify values. Each value in a PL has a certain type. And each type groups values with common properties. Type is an intrinsic property of value.

Variables are also associated with types, but unlike for values, types are not intrinsic to variables. After all, dynamic PLs allow variables to change the type of value they hold throughout the program.

Implementation-wise, a PL that permits variables to change the type of value they hold almost always have a universal type, large enough to store values of any (other) type. For example, Visual Basic embedded in MS Office applications (VBA), has such a type; it is called *variant*, and it is a tradeoff between the comfortable use (the user can skip the type when declaring a variable), and the compact storage; that is, it offers the former on the account of the latter.

## Terminology

- type, data type
- type system
- Lambda calculi
  - lambda cube: 3 axes for 3 extensions of the basic type system
    - all calculi are typed, `λ→` (simply-typed)
    - +polymorphism    (+2)   λ→ + 2 = `λ2` (System F)
    - +type ctors      (+ω)   λ→ + ω = `λω`
    - +dependent types (+Π)   λ→ + Π = `λΠ`
    - 2 + ω = `λ2ω` (HM)
    - 2 + Π = `λ2Π`
    - ω + Π = `λωΠ`
    - ω + Π + 2 = `λ2ωΠ` = `λC` (CoC)
- Hindley-Milner type system, λ2ω (STLC, polymorphism, type ctors)
- Haskell's type system (HM + classes, type families, HKT, HRT, etc.)
- type-cheking
- type inference
- type annotation
- type signature
- typing: the process of cheking or inferring the types of exp


## Types approximate behaviour

In PLs with a more serious type system (i.e HM and beyond), types contain even more information and can even approximate the behaviour of values they type.

>Types approximate behaviour of expressions they annotate.
