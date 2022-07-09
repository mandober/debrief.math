# Lambda Calculus: Variants

The 3 axes of the lambda cube correspond to the 3 augmentations of the `λ→`
- addition of dependent types, (`Π`)
- addition of polymorphism, (`f`)
- addition of higher kinded type constructors, (`ϖ`)

An extra dimension is the order, as in first-order, second-order, higher-order.

Second-order (`2`)
dependently typed (`Π`)   
polymorphic (`f`)   
lambda calculus (`λ`)   
with higher kinded type constructors (`ϖ`)
------------------------------------------- = `λ2fΠϖ`


Lambda calculi
- restricted λ-calculus, `λI` (args cannot be dropped)
- untyped λ-calculus, `λ`
- Simply typed λ-calculus, `λ→`
- Second-order typed lambda calculus, *System F*, `λ2`
- Lambda calculus with higher kinded type constructors, *System Fϖ*, `λϖ`
- First order dependent type theory, `λΠ` (λP, ΛΠ)
- Second order dependent type theory, `λΠ2` (λP2, ΛΠ2)
- Higher order dependently typed polymorphic lambda calculus, `λΠω`
- *System Fω*, `λfω` = `λ2` + `λϖ`
- Higher-order dependently typed polymorphic lambda calculus, `λfΠω`
- Calculus of constructions (CoC), `λC` or `λΠω`


## Simply typed lambda calculus, `λ→`

The simplest system found in the λ-cube is the simply typed lambda calculus, `λ→`. In this system, the only way to construct an abstraction is by making a term depend on a term, with the typing rule

```js
Γ, x : σ |- t : τ
-------------------
Γ |- λx.t : σ -> τ
```

STLC has
- value abstraction, `λ`
- function type constructor, `->`
- monotypes, `τ`
- polytypes, `σ`



## System F, `λ2`

In System F, or `λ2` (second-order typed lambda calculus), there is another type of abstraction, written with a `Λ`, that allows terms to depend on types, with the following rule:

```js
  Γ |- t : σ
-----------------
Γ |- Λα.t : Πα.σ
```

The terms beginning with a `Λ` are called *polymorphic*, as they can be applied to different types to get different functions, similarly to polymorphic functions in Haskell.

For instance, in Haskell, the polymorphic identity function has the type `∀a. a -> a`, meaning it can take an argument of any type `a` and return an element of that type, corresponding to `λ2`'s type `Πα. α -> α`.

```hs
-- Πα. α -> α in System F
id :: forall a. a -> a
id x = x
```

System F has
- monotypes, `τ`
- polytypes, `σ`
- type variables, `α`
- value abstraction, `λ`
- function type constructor, `->`
- universal quantifier, `∀`
- type abstraction, `Λ`
- dependent type constructor, `Π`



## System Fϖ, `λϖ`

In System Fϖ (the `ω` should have an underline, not an overbar, i.e. $$\lambda \underline \omega$$), a construction is introduced to supply types that depend on other types. This is called a *type constructor* and provides a way to build "a function with a type as a value".

An example of such a type constructor is 

$${\mathsf {Tree}} := \lambda A:*\ .\ \Pi\ 
B.\ (A\to B)\to (B\to B\to B)\to B$$

where `A : *` informally means that `A` is a type (of the kind `Type` or `*`).

This is a function that takes a type parameter `A` as an argument and returns the type of `Tree`s of values of type `A`.

In concrete programming, this feature corresponds to the ability to define type constructors inside the language, rather than considering them as primitives.

The previous type constructor corresponds to the following definition of a tree with labeled leaves in Haskell:

```hs
data Tree a = Leaf a | Node a (Tree a) (Tree a)
```

This type constructor can be applied to other types to obtain new types. E.g., to obtain type of `Tree Int`:

```hs
type TreeInt = Tree Int
```

System Fϖ is generally not used on its own, but is useful to isolate the independent feature of type constructors.

System Fϖ has
- monotypes, `τ`
- polytypes, `σ`
- type variables, `α`
- value abstraction, `λ`
- function type constructor, `->`
- universal quantifier, `∀`
- type abstraction, `Λ`
- dependent type constructor, `Π`




## Lambda Π

In the `λΠ` system (ΛΠ, λP) and closely related to the LF Logical Framework, one has so called *dependent types*. These are types that are allowed to depend on terms. The crucial introduction rule of the system is

```js
Γ, x : A |- B : *
--------------------
Γ |- (Πx : A.B) : *
```

where `*` represents valid types (of the kind `*`).

The new type constructor `Π` corresponds via the Curry-Howard isomorphism to a *universal quantifier*. This system as a whole corresponds to *first-order logic with implication* as only connective.

An example of dependent types in concrete programming is the type of vectors of certain length: the length is a term, on which the type depends.

```hs
data Vec (n : Nat) (a :: *)
```

## System Fω, `λfω`

*System Fω* combines both the `Λ` constructor of System F and the type constructors from System Fϖ. Thus System Fω provides both terms that depend on types and types that depend on types.


## Calculus of constructions, `λC`

In the calculus of constructions, `λC` or `λΠω`, these 4 features cohabit, so that both types and terms can depend on types and terms.

The clear border that exists in `λ→` between terms and types is somewhat abolished, as all types except the universal type, `◻`, are themselves terms with a type.

## First order dependent type theory

The system `λΠ` of pure first order dependent types, corresponding to the logical framework LF, is obtained by generalising the function space type of the simply typed lambda calculus to the dependent product type.

## Second order dependent type theory

The system `λΠ2` of second order dependent types is obtained from `λΠ` by allowing quantification over type constructors. In this theory the dependent product operator subsumes both the `→` operator of simply typed lambda calculus and the `∀` binder of System F.

## Higher order dependently typed polymorphic lambda calculus

The higher order system 
�
Π
�\lambda \Pi \omega  extends 
�
Π
2
\lambda \Pi 2 to all four forms of abstraction from the lambda cube: functions from terms to terms, types to types, terms to types and types to terms. The system corresponds to the calculus of constructions whose derivative, the calculus of inductive constructions is the underlying system of the Coq proof assistant.
