# Lambda Cube :: Calculi

- λ-cube = { λ͢ , λ͢², λ͢ω̱, λ͢Π, λ͢²ω, λ͢²Π, λ͢Πω, λ͢²Πω }
- λ-cube-alt = { λ͢ , λ2, λω, λΠ, λ2ω, λ2Π, λΠω, λ2Πω }

## Lambda cube axes

- origin: terms may depend on terms (+types)
  - STLC `λ͢` supports only this feature
  - The other 7 calculi support this feature
- x-axis: terms may depend on types (+2 polymorphism)
  - System F `λ2`
  - CoC
- y-axis: types may depend on types (+ω type ctors)
  - λω
  - CoC
- z-axis: types may depend on terms (+Π dependent types)
  - λΠ
  - CoC

## Dependencies


### Terms on terms

- Terms may depend on terms
- `v -> v`


### Terms on types

- Terms may depend on types (polymorphism)
- `τ -> v`


### Types on types

- Types may depend on types (type ctors)
- `σ -> τ`

### Types on terms

- Types may depend on terms (dependent types)
- `v -> τ`

```agda hs
-- non-dependent pair
p : A ⨯ B {- or -} p : A , B
Σ {x: A} (B x)

-- dependent pair, Σ type
((x : A) ⨯ (B x)

-- non-dependent function type
f : A → B

-- dependent function type, Π type
f : (x : A) → (B x)

Π {x: A} (B x)
```



## 1. Simply-Typed Lambda Calculus

- names:
  - Simply-Typed Lambda Calculus
  - STLC
- symbols:
  - main: λ͢
  - auxillary: λ→  λ⃗  λ͢  λ⃕
- contribution:
  - types
- dependencies:
  - terms may depend on terms
- links
  - https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus

STLC is a typed lambda calculi, in fact, it is the simplest typed lambda calculus, having no other type features. Therefore, it sits at the origin point of lambda cube representing the least common factor of features that all 8 lambda cube calculi have in common (i.e. types). From STLC, the other lambda systems branch out, each with a particular advanced type feature, each feature represented by an axes.

The only way to construct an abstraction in STLC is to make a term depend on another term. This is the same as functions in most PLs, where a function's output depends on its input, and both input and output are value terms.

```hs
-- Simply-Typed Lambda Calculus -
-- a term may only depend on a term:
Γ, x : σ |- T : τ
----------------------- (λ)
Γ |- (λx. T) : σ → τ
```

- `σ` and `τ` are types
- `x` is a (value-level) variable of type `σ`
- `t` is a (value-level) λ-term of type `τ`



## 2. System F

- names:
  - System F
  - Second-order typed lambda calculus
- symbols:
  - main: `λ²`
  - auxillary: `λ͢²`  `λ2`  `λ͢2`
- contribution:
  - polymorphism
- dependencies:
  - terms may depend on terms, `v -> v`
  - terms may depend on types, `τ -> v`
- links
  - https://en.wikipedia.org/wiki/System_F


In *System F*, also named `λ2` for the "second-order typed lambda calculus", there is another type of abstraction, written with a `Λ` that allows terms to depend on types, with the following rule:

```hs
-- System F:
-- * A term may depend on a term.
-- * A term may depend on type:

Γ |- T : σ
----------------------- (Λ)     if α ∉ FV(Γ)
Γ |- (Λα. T) : Πα. σ
```

The terms beginning with a `Λ` are called *polymorphic*, as they can be applied to different types to get different functions, similarly to polymorphic functions in ML family of languages.

For instance, in Hskell, the polymorphic identity function is

```hs
id :: forall a. a -> a
id x = x

-- or
id :: ∀a. a -> a
id = λx . x
```

its type is `forall a. (a -> a)`, which means, for any type `a`, it can take an argument of that type and return an element of that typem, `a -> a`. This type corresponds in `λ2` to the type `Πα. α -> α`.

Haskell doesn't require users to pass in the type arg explicitly because it can infer it from the type of the corresponding value arg. However, users have the option to do it explicitly using TypeApplications:

```hs
-- explicitly instantiating the type arg as Int:
idℤ = id @Int
-- specializes the polymorphic identity to the identity
-- on integers only, which then has the type:
idℤ :: Int -> Int
-- i.e.
idℤ = id @Int :: Int -> Int


-- calling 'id' with both the type and the value seems redundant:
x = id @Bool True
-- the type of x is Bool, the value of x is True
```



## 3. System Fω̱

- names:
  - System Fω̱
- symbols:
  - main: `λω̱`
  - auxillary: `Fω̱`  `λFω̱`
- contribution:
  - type ctors
- dependencies:
  - terms may depend on terms
  - types may depend on types
- refs
  - `Type Theory and Formal Proof`, 2014, Rob Nederpelt, Herman Geuvers


**System Fω̱** introduces a new construction that makes it possible to have a limited form of type-level functions, called a *type constructors*. It becomes possible to have a function that takes a type and returns a type.

This is a new form of dependence in the type system: types can now depend on other types (here called +ω extension of the type system).

However, type ctors barely justify the name of type-level functions as their expressive power is nowhere near the power that the plain ol', value-level, functions have. Type ctors cannot perform arbitrary operations on types - they can just accept an argument type in order to "produce" the result type.

In concrete programming, this feature corresponds to the ability to define type constructors inside the language, rather than considering them as primitives.

In this Haskell example

```hs
data List a = Nil | Cons a (List a)
```

a newdata type called `List` is declared - it has (it is) a unary type constructor named `List`. And this is what is considered a type level function! Because it can be construed that the `List` type ctor, whose full form is `List a`, in fact, has a type arg, `a`. So, when it is given some type, it "returns" another type, e.g. when `List` is given `Int`, it produces `List Int`. Yey, whatta function! This is the miserable sense in which type ctors are functions.

Another example of such a type constructor in Haskell is

```hs
data Tree a = Leaf a | Node (Tree a) (Tree a)
```

From the perspective of the unary type ctor `Tree`, this is formulized as:

```
Tree := λ a : *  .  Π b  .  (a → b) → (b → b → b) → b
        └──┬──┘     └┬┘     └──┬──┘   └────┬────┘  └┬┘
     type arg      bind      handle      handle    return
      binder      return    the Leaf    the Node    type
                   type
```

where `a : *` means that `a` is an (inhabited) type.

`Tree` is a function that takes a type parameter `a` as a type argument and returns the type of `Tree` of values of that arg type `a`; e.g. if we pass `Int` to the `Tree` we get `Tree Int`, i.e. tree is instantiated (specialized) as the tree of integers.

This form of type system extension is so limited and poor it doesn't even have a typing rule. Seeing that the `Π` type is mentioned, I guess it is subsumed by another (superior) typing rule.


## 4. Lambda Π

- names:
  - Lambda Π
- symbols:
  - main: `ΛΠ`
  - auxillary: `λΠ`
- contribution:
  - dependent types
- dependencies:
  - terms may depend on terms
  - types may depend on terms
- links
  - https://en.wikipedia.org/wiki/%CE%9B%CE%A0-calculus


## 5. λ²ω

- names:
  - x
- symbols:
  - main: 
  - auxillary: 
- contribution:
  - x
- dependencies:
  - terms may depend on terms
  - x
- links
  - x

x

## 6. λ²Π

- names:
  - x
- symbols:
  - main: 
  - auxillary: 
- contribution:
  - x
- dependencies:
  - terms may depend on terms
  - x
- links
  - x

x

## 7. λΠω

- names:
  - x
- symbols:
  - main: 
  - auxillary: 
- contribution:
  - x
- dependencies:
  - terms may depend on terms
  - x
- links
  - x


## 8. Calculus of Constructions

- names:
  - Calculus of Constructions
  - CoC
- symbols:
  - main: `λC`
  - auxillary: `λΠω`  `λPω`  λ͢²Πω  λ͢2Πω
- features:
  - polymorphism
  - type ctors
  - dependent types
- dependencies:
  - terms may depend on terms, `v -> v`
  - terms may depend on types, `τ -> v` (polymorphism)
  - types may depend on types, `σ -> τ` (type ctors)
  - types may depend on terms, `v -> τ` (dependent types)
- links
  - https://en.wikipedia.org/wiki/Calculus_of_constructions
