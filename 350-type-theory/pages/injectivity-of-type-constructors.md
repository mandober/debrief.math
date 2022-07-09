# Injectivity of type constructors

## Injectivity

https://counterexamples.org/glossary.html#injectivity

A parameterised type like `List a` is said to be injective 
if `List a = List b` implies `a = b`.

>Type ctor `T` is injective if `T a = T b --> a = b`

All, some or none of a language's parameterised types may have this property.

Type checkers spend much of their time verifying that pairs of types are equal, or at least compatible, checking, for instance, that the type of an argument to a function matches the expected type.

Occasionally, they need to do the opposite, and verify that two types are distinct. One common case of this is allowing the programmer to omit those cases of a pattern match which are impossible because they would imply that two distinct types are equal.

For instance, given a value which is either a `String` or an evidence that `Int = String`, then matching on this value need only handle the first case as the second case is impossible.

<!-- #region 1 -->

<details><summary>Examples</summary>

* OCaml

```hs ocaml
type (_,_) eq = Refl : ('a, 'a) eq
type ('a, 'b) either = Left of 'a | Right of 'b

let f (x : (string, (int,string) eq) either) =
  match x with
  | Left s -> s
  (* no case for Right, and yet the match is exhaustive *)
```

* Haskell

```hs
data Eq a b where
  Refl : Eq a a

data Either a b = Left a | Right b

f :: Either String (Int, String)
f x = case x of
  Left s  -> s
--Right s -> -- no case for Right, and yet the match is exhaustive
```

* Agda

```hs agda
-- Agda can reason about distinctness of more than just types
open import Agda.Builtin.String

data Eq (a : String) : String -> Set where
  Refl : Eq a a

data Sum (A B : Set) : Set where
  Left  : A -> Sum A B
  Right : B -> Sum A B

f : Sum String (Eq "foo" "bar") -> String
f (Left s) = s
f (Right ()) -- "()" is the absurd pattern
```

</details>

<!-- #endregion -->

Of course, this is *unsound* if the type system is wrong about two types being distinct. One common way that this can occur is when the *type system assumes that all type constructors are injective*.

>Injectivity of a type constructor `T` means that 
>if `T a = T b` then the types `a` and `b` are equal.

Most common type constructors (`List`, `Maybe`, etc.) are in fact injective, so this is a natural property to expect. However, if it is possible to define a type constructor `T` by `T a = Int`, then injectivity fails.

This issue occurred in Dotty[^dotty], a research Scala compiler, as well as in Agda[^agda] (with the `injective-type-constructors` option). Curiously, Haskell makes the same assumption, but without unsoundness.

<!-- #region 2 -->

<details><summary>Examples</summary>

* Scala

```hs scala
// Counterexample by Aleksander Boruch-Gruszecki
object Test {
  sealed trait EQ[A, B]
  final case class Refl[T]() extends EQ[T, T]

  def absurd[F[_], X, Y](eq: EQ[F[X], F[Y]], x: X): Y = eq match {
    case Refl() => x
  }

  var ex: Exception = _
  try {
    type Unsoundness[X] = Int
    val s: String = absurd[Unsoundness, Int, String](Refl(), 0)
  } catch {
    case e: ClassCastException => ex = e
  }

  def main(args: Array[String]) =
    assert(ex != null)
}
```

* Agda

```agda hs
-- Counterexample by Andreas Abel

{-# OPTIONS --injective-type-constructors #-}

open import Common.Prelude
open import Common.Equality

abstract
  f : Bool → Bool
  f x = true

  same : f true ≡ f false
  same = refl

not-same : f true ≡ f false → ⊥
not-same ()

absurd : ⊥
absurd = not-same same
```

* Haskell

```haskell
data Equ a b where
  Refl : Equ a a

-- not in fact unsound! see below
everythingIsInjective :: Equ (f a) (f b) -> Equ a b
everythingIsInjective Refl = Refl
```

</details>

<!-- #endregion -->


The reason that it is sound for Haskell to assume an arbitrary type constructor `T` is injective is that Haskell draws a distinction between type constructors and type-level functions. The following two declarations are distinct:


```hs
type family Foo :: * -> *

type family Bar a :: *
```


Here, `Foo` is defined as a type constructor, something of kind `* -> *`. 
This kind only contains injective type constructors (List, Maybe, etc.).

By contrast, `Bar` is defined as a type-level function. 
`Bar` is not necessarily injective, as one can define:


```haskell
type instance Bar a = Int
```


However, `Bar` is not of kind `* -> *`, and cannot be passed as a parameter to `everythingIsInjective`:


```haskell
eqFoo :: Equ (Foo a) (Foo b) -> Equ a b
eqFoo = everythingIsInjective             -- works

eqBar :: Equ (Bar a) (Bar b) -> Equ a b
eqBar = everythingIsInjective             -- ERROR!
```


In fact, in Haskell there is currently no way to quantify over things like `Bar`: Haskell's higher-kinded types only allow passing around injective type constructors.

A recent paper by Kiss et al.[^haskell] proposes adding parameterisation by type functions to Haskell, by adding a new kind `* => *` which does not carry injectiveness assumptions.


[^dotty]: <https://github.com/lampepfl/dotty/issues/5658> (2018)
[^agda]: <https://github.com/agda/agda/issues/2250> (2016)
[^haskell]: [Higher-order Type-level Programming in Haskell](https://www.microsoft.com/en-us/research/publication/higher-order-type-level-programming-in-haskell/) (ICFP '19), Csongor Kiss, Susan Eisenbach, Tony Field, Simon Peyton Jones (2019)



## Injectivity of type constructors in Agda

**Injectivity**, or more precisely, **constructor headedness**, is a *property of functions defined by pattern matching* that helps us solve constraints involving blocked applications of such functions.

*"Blocked"* here means that pattern matching is blocked on a certain meta var; constructor headedness lets us learn more about that meta variable.

Consider this simple example:

```hs agda
isZero : Nat -> Bool
isZero zero    = true
isZero (suc n) = false
```

This function is **constructor-headed**, meaning that all RHSs are headed by a *distinct constructor*. Thus, on a constraint like

```hs agda
isZero ?X = false : Bool
```

involving an application of `isZero` that is blocked on meta variable `?X`, we can exploit injectivity and learn that `?X = suc ?Y` for a new meta-variable `?Y`.

Which functions qualify for injectivity

1. The function needs to have at least one, non-absurd, clause that has a **proper match**, meaning that the function can actually be blocked on a meta.

Proper matches are these patterns:
- data constructor, `ConP` (but not record constructor)
- literal, `LitP`
- HIT-patterns, `DefP`

Projection patterns, `ProjP`, are excluded because metas cannot occupy their place!

2. All the clauses that satisfy (1) need to be headed by a distinct ctor.
