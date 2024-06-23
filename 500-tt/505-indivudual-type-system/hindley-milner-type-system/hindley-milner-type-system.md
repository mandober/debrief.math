# Hindley-Milner type system

A Hindley-Milner (HM) type system is a classical type system for the typed lambda calculus extended with parametric polymorphism.

The origin of HM is the type-inference algorithm for the Simply Typed Lambda Calculus devised by Haskell Curry and Robert Feys in 1958. In 1969, Roger Hindley extended Curry and Feys' work and proved that their algorithm always inferred the most general type. In 1978, Robin Milner, independently of Hindley, provided an equivalent algorithm, called *Algorithm W*. In 1982, Luis Damas finally proved that Milner's algorithm is complete and extended it to support systems with polymorphic references.

## Implicit vs explicit typing

Simply Typed Lambda Calculus (STLC), `λ→`, a form of type theory, is a typed version of the plain λ-calculus. STLC has a single type constructor: function type ctor, `->`, which constructs function types.

A *function type* is the type of the variable to which a function is assigned. Considering that a polyadic function can be expressed as a unary function, a function type depends only on the types of its input and output, i.e. on the type of the parameter and the type of the result the function returns. The type ctor `->` itself (i.e. as the unapplied type ctor, `• -> •`) is a higher-kinded type, `(->) :: Type -> Type -> Type`, that is it takes two types (of the kind `Type` which classifies inhabited types) as its input and output type, and returns a type of the kind `Type`.

```hs
-- first, 'Type' is the kind of inhabited types like
>>> :kind Int, Double, Char :: Type
-- these are base/ground types, all of them as saturated type ctors.

-- the function type ctor (->) itself is unsaturated:
>>> :kind (->) :: Type -> Type -> Type
-- when given a type like Int (as its input) its kind changes:
>>> :kind (->) Int :: Type -> Type
-- when given another type like Bool (as its output) its kind changes;
-- it becomes saturated:
>>> :kind (->) Int Bool :: Type
-- i.e.
>>> :kind Int -> Bool   :: Type
```





In theoretical settings and programming languages where functions are defined in curried form, such as the simply typed lambda calculus, a function type depends on exactly two types, the domain A and the range B. Here a function type is often denoted A → B, following mathematical convention, or BA, based on there existing exactly BA (exponentially many) set-theoretic functions mappings A to B in the category of sets. The class of such maps or functions is called the exponential object. The act of currying makes the function type adjoint to the product type; this is explored in detail in the article on currying.

Simply Typed Lambda Calculus, `λ→`, is a typed version of the plain λ-calculus, and the typing comes in two flavors: implicit and explicit. *Implicit typing* is also called *typing à la Curry*, and in this system the programmer need not annotate expressions with types as the type system is capable of full *type reconstruction*. Implicit typing is opposed to *explicit typing*, which is also known as *typing à la Chuch*, where the expressions need to be type-annotated and the type system just performs *type checking*.

## Monomorphism vs polymorphism
