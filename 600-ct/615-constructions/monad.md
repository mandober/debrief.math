# Monad

https://www.youtube.com/watch?v=Si6_oG7ZdK4

A monad is given by an endofunctor `T: C -> C` equipped with 2 NTs, `η: I ⇒ T`, called *unit*, and `μ : T² ⇒ T`, called *join* (or multiplication).

1. For every object `x ∈ Ob(C)`, `η` has a component which is a morphism, so a component of `η` at object `x` is a morphism in C, `ηˣ: x -> T x` (this is also the action of the endofunctor T, it takes `x` to `T x`). The NT `η` (aka `return` in Haskell) has type `a -> m a`, which could/should be interpreted as `Identity a -> m a`, i.e. as a NT from the `Identity` functor to functor `m`.

A functor maps objects to objects - in Haskell this means types to types - so a functor `a -> f a` maps a type `a` into type `f a`. For example, the `Maybe` functor maps, e.g. `Int` to `Maybe Int`. A NT `return` is very similar; its type is `a -> f a` so it may also map `Int` to `Maybe Int`, although this is interpreted as a mapping from the `Identity` functor to the `Maybe` functor.

However, since a NT is a mapping between functors, this signature is instead interpreted as a mapping between the `Identity` functor and some functor `f`, i.e. `return :: Functor f => Identity a -> f a`, even though the signature literally says `return :: Functor f => a -> f a`. It's a kind of a shorthand when the identity functor is involved, to sometimes elide it; this is similar to `a ≅ 1 -> a` situation.

2. For every object `x ∈ Ob(C)`, `μ` has a component which is a morphism, so a component of `μ` at object `x` is a morphism in C, `μˣ : T² x -> T x`.

Such that it satisfies the "obvious" axioms:
1. Left and right unit axioms:
  - `μ ∘ Tη = 1` left unit
  - `μ ∘ ηT = 1` right unit
  - `μ ∘ Tη = 1 = μ ∘ ηT` left and rught unit
  - (T η = η T) : T → T²
  - μ : T² -> T
2. Associativity square
  - `μ ∘ μT = μ ∘ μT`
  - `μ ∘ μT : T³ -> T`
  - μˣT : T³ x -> T² x
  - μˣ : T² x -> T x

```hs
T : C -> C
η : I ⇒ T
∀x ∈ Ob(C). ηˣ : x -> T x
μ : T² ⇒ T
μˣ : T² x -> T x


x :----η----> T x :----η----> T² x :----μ----> T x

T :----η----> T² :----μ----> T
```

## Example: Monad for monoids

The category we're working in is Set. The functor `T` will take objects `x` in Set to objects `[x]` (read: x star), `T : x ⟼ [x]`, where `[x]` is a set of words in `x`, i.e. a lists of words in `x`. A word in `x` is a list of objects in `x`, e.g. [x₁,x₂,x₃], [], [[x₁,x₂],x₃], etc. The NT `η : x -> [x]` takes an object `x` to a singleton list `[x]`. The NT `μ : [[x]] -> [x]` flatens a list of list, e.g. [[x₁,x₂],x₃] ⟼ [x₁,x₂,x₃].

The unit and the associativity axioms do not correspond to the unit and the associativity axioms of the Monoid. Rather, the unit and the associativity of the Monoid have been encoded into the definition of the functor already.

Tη : [a,b,c] ⟼ [[a],[b],[c]]

Txʹ is [x] is a word (a,b,c) which Tη turns to ((a),(b),(c)).

- left unit:  (a,b,c) ----Tηₓ--> ((a),(b),(c)) ----μ---> (a,b,c) add inner
- right unit: (a,b,c) ----ηTₓ--> ((a,b,c)) --------μ---> (a,b,c) add outer
- square: (((a),(b),(c))) -------Tμₓ-----> ((a,b,c))     removes inner brackets
- square: (((a),(b),(c))) -------μTₓ-----> ((a),(b),(c)) removes outer brackets
                T³                               T²

## An algebra for a monad

An algebra for a monad (T, η, μ) is an object A ∈ C equipped with an "action", a morphism `Θ : T A -> A`, such that TFDC (the following diagram commutes).

```
T A     η
● ←┄┄┄┄┄┄┄┄┄┄ ●
│            A
│Θ          /
│         id
↓        /
● A     A


T²A       μ          T A
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●            T : C -> C
│                    │            η : I => T
│TΘ                  │ Θ          μ: T² => T
│                    │            Θ : T A -> A
↓                    ↓
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
T A       Θ          A
```
