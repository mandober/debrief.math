# Lambda calculus :: About data types

## Summary

- Fundamental divison of data types:
  - Primitive (base, simple, "flat") data types
    - value
    - provided by a PL, closely match machine primitive types
  - Compound data types
    - aggregation of a number of simpler types

- fundamental divison of data types

- compound data types
  - compound data types consist of a number of components
  - a component (field) is a value of some type
  - fundamental compound types
    - 0 (uninhabited type)
    - 1 (singleton type)
    - product type,       `A ⨯ B`
    - sum (product) type, `A + B`
    - exponential type,   `A → B` ≅ `Bᴬ`
- data structures
  - self-referencing data structures
  - recursive data structures


## TL/DR

In the pure lambda calculus, there is no native notion of data types - they have to be encoded using functions.

In lambda calculus however, there are no distinctions between program and data.

In the context of lambda calculus, the term "encoding" refers to a particul way to model data types using only functions. Namely, since lambda calculus only has a way to define and apply functions, the familiar data types from various programming languages can only be represented by some intricate encoding schema that relies exclusively on functions.

Even outside the context of lambda calulus, the `functions-as-datatypes` paradigm is useful because, unlike recursion (e.g. Dhall) and sum types (e.g. JS), functions are almost always supported, hence we can encode themissing language features with them.


## Primitive data types

Most programming languages provide a set of base types, the *primitive types*, that usually include the types such as the Boolean, integers, floating-point numbers, etc. Besides the primivite types, programming languages also offer a way to build more complex types, the *compound types*.

The biggest difference between the primitive and compound types is that the primitives stand for themselves (e.g. a literal value like `5` stands for a number 5), while the values of compound types are more intricate.

Compound types are built using the primitive types as their building blocks governed by the type construction machinery a particular programming language offers. This machinery determines the kind of types you are allowed to make. Type-theoretically speaking, the two fundamental sorts of compound types are products and coproducts (sums).

*Product types* are types like records, structs, arrays, lists. The most singificant property of product types is that all their components (component values) must be supplied in order to construct it. Product types correspond to the `AND` logical connective.

*Sum (or coproduct) types* correspond to the `OR` logical connective. In order to construct a value of a sum type, you only need to provide one component value. In fact, you must supply only a single component value because it can only hold one.

Most PLs have good support for various kinds of product types, but very few support sum types (for some reason), even though the methuselah "C" supported both kinds. It had product types in the form of structs, and coproducts in the form of unions (although C's unions are not the best realization of sum types because they lack the information of what is actually stored at the moment; that is, the user has to maintain this information herself).

The bottom line is that a PL has primitive, simple, types, and a way to build (and perhaps already offers some prebuild) compound types from the simpler ones. The two fundamental sorts of compound types are sum and product types, and we need to come up with a way to represent (encode) all of them in lambda calculus. A comprehensive way to do this is called an *encoding scheme*.



The obvious, and perhaps the only, way to represent a data type by a function is to 
