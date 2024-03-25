# CT :: Identities endo-entities

## TL/DR
About identities and endo-entities in CT: identity morphisms, identity functors, identity NTs, and the difference from endofunctions, endomorphisms, endofunctors, etc.

## Terms

- functions
  - functions in set theory
  - functions in sett heory
  - endofunctions
  - identity function
  - identity functions
- endomorphisms
  - endomorphism
  - identity morphisms
  - identity morphism
- endofunctors
  - identity functor
  - identity functors
  - identity functor vs identity morphism
- identity NTs


## Identity morphisms

First, each object in a category must have an **identity morphism**, going from that object back to it. For all categories `C`, and for all objects `a` belonging to `C`, there is a unique identity morphism `1ₐ : a -> a`.

    ∀C(∀a ∈ Ob(C). ∃!1ₐ : a -> a ∈ Ar(C))

Identity morphisms of a category could be collected into a set, which would be the subset of the set of all endomorphisms in that category, which in turn, would be the subset of the set of all morphisms in that category.

>identity morphisms ⊆ endomorphisms ⊆ morphisms

## Endomorphisms

Identity morphisms are **endomorphisms**, i.e. morphisms that loop back on the same object. However, while an object may have infinily many endomorphisms, it always has one unique identity morphism; there is always one endomorphism that is the identity arrow.

For any category `C`, and for any object `a` belonging to `C`, object `a` may be endowed with many endomorphisms, which are the arrows we label by `ι`, that have the signature `ι : a -> a`.

    ∀C(∀a ∈ Ob(C). ∃(ι : a -> a) ∈ Ar(C))

We can safely use the ∃ quantifier (which imposes the existence of at least one item) because there will always be at least one endomorphism on any object - its identity morphism.

## Identity morphisms and endomorphisms

In a monoidal category, all morphisms are endomorphisms (on `a`, obviously, as there are no other objects), and among them is the identity morphism of `a`.

### Monoidal category

To make matters more concrete, take for example the monoid `Sum = (ℕ, 0, +)` that has a myriad of endomorphisms, among which is the single identity morphism, `1ɴ`.

```hs
1ɴ : ℕ -> ℕ  -- identity morphism
ι : ℕ -> ℕ   -- endomorphisms
```

In abstract algebra, we interpret it in set-theoretical terms as a monoid whose carrier set is ℕ endowed with a binary operation of addition, and the identity element, thereby satisfying the axioms of closure, associativity and identity.

Importantly, that 0 is the identity element is merely stated; the identity element is just picked from the set ℕ, in a "there you go" style. Namely, it is not obtained as a result of some operation.

However, in CT, *an identity arrow*, e.g. the identity morphism of object `a` is denoted by `1ₐ`, and knowing that identity arrows go from an object back to that same object, implies the signature `1ₐ : a -> a`. In turn, this signature implies that *identity is a unary function that takes an object and returns that same object*.



Turning this monoid into a monoidal category, there is a single object `ℕ` and a bunch of endomorphisms representing the binary operations; in this case, the binary operator is (+).


>In another category, like in `Set`, `ℕ` is just one of the many objects (sets), but here it is the only object - there is no terminal object ¹. So the quastion is: how do we use the terminal object to select the identity element?

¹ A *terminal object* in a category is one that has a unique arrow coming into it from any other object. The terminal object itself has the identity arrow which is an arrow coming into it from itself. We use the terminal object in `Set` (because it is a singleton) as a selector of elements in other objects (sets) in `Set`. But how do we use it to select element cross-categories? Since that seems certainly forbidden, do all categories have such a termina object that can be used to select elements? "Selecting elements" suggest set-based category, so there may be a set-based terminal object. But a monoidal category has no other objects; even if the object qualifies as a terminal object (and it does since there is exactly one incoming arrow from each object in the category - so from itself), it surely cannot be used an element selector, can it?

>So, how the hell can we say, in a monoidal category `a`, based on the monoid `(ℕ, 0, +)`, that the identity element is selected, i.e. that it has the signature, `1 -> a`? `1` is the terminal object of `Set` (maybe of more set-based categories) but not of `a`?! Does it traverse vast space to come to the `a` category to lend its functionality?

By the way, the signature of the binary operator `μ`, that combines the elements from a carrier set, is `μ : a -> a -> a`, where `a` is the monoid (and the monoidal category based on it). So we have:

```
η : 1 -> a
μ : a -> a -> a
```

In a category based on a group, e.g. __(ℤ, ×, 1, ⁻¹)__ , we'd have an additional operation to express the *selection of inverses*, `ι : a -> a`

```
η : 1 -> a
μ : a -> a -> a
ι : a -> a
```

>In summary: the process/action of selecting elements is very dubious.
One moment, there is the identity element, a value `x`, and the next the identity element has turned into an arrow, `1 -> x`. But even this is ok, considering the fine line between a nullary function and the value it returns. The issue is with the *selector*. Is the selector always a terminal object? Does it have to be based on singleton set (seems it does)? In which case, is it only ever usable in a set-based category?

Too many books just glance over this, as if it is guaranteed that every category has the appropriately shaped terminal object for selecting elements. Selecting elements is certainly something done in a category based on sets, where objects are set, but not all such categories have immediately obvious selector objects.




#### Selecting elements

The identity element, in this case the natural number 0, is, of course an element of ℕ, which set-theory-wise is denoted `0 ∈ ℕ`, and it is all that needs to be said about it - just that the identity element exists and "here it is, it is 0".

However, in category theory, we refrain from inspecting a set and from pointing at an element, saying "there's the identity element". Instead, we need to turn this process of selecting the identity element, from `ℕ` (categorically, ℕ is an opaque object), into an operation.

Now, in the category `Set`, the empty set is the initial object and (any) singleton set is the terminal object. The terminal object is one that has a unique arrow going into it from all objects in a category. However, a singleton set (terminal object in `Set`) is intereseting also because of its outgoing arrows.

Namely, since a singleton set has only one element, there are as many arrows (categorically arrows, but set-theoretically functions) going from it to another, target, object (categorically an object, but set-theoretically a set) as there are elements in the target object.

#### Terminal object as the selector

A singleton set, or rather, the terminal object, is denoted by `𝟙` (initial object is denoted by `0`), and it is also called the *unit*, the name which is also used for its sole element: the unit (object, set, type) contains unit (element, value, term); sometimes, that element is also called "star" and denoted by `★`. Therefore, `★ ∈ 𝟙` or `★ : 𝟙`; in Haskell, both the type `()` and its only element `()` are called unit, so `() :: ()`. In logic, the unit corresponds to verum or truth, denoted by `⊤` (the initial object, i.e. the empty set, ∅, corresponds to logical contradiction, `⊥`).


Getting back to the problem of selecting the identity element by categorical means, we said we needed to make this selection an operation. In a suitable category, like `Set`, we can use the terminal object, `𝟙`, to express the selection of an element from a tagert object (set) `a` as an arrow `𝟙 -> a`.

```
𝟙 = {★}
𝔹 = {⊤, ⊥}

𝟙 ------ᵗʳᵘᵉ-----> 𝔹
𝟙 ------ᶠᵃˡˢᵉ----> 𝔹
```

For example, if the target object is the set of Booleans, `𝔹 = {⊤, ⊥}`, we'd have a pair of *selector arrows*:

```tt hs
true : 𝟙 -> 𝔹
true ★ = ⊤

false : 𝟙 -> 𝔹
false ★ = ⊥
```

As is common, we name these arrows according to the element they select - for all intents and purposes, they are the same.


#### ASIDE: Nullary functions

To summarize the things so far: 

From the algebraic view: we are exploring the monoid `(ℕ, 0, +)` - we have the carrier set ℕ endowed with a binary operation (+) and the identity element (0).

`SumMonoid = (ℕ, 0, +)`

From the set-theoretical view: there is no issue (or method) regarding the selection of the identity element (0 in this case) from ℕ. In a way, we just point to it.

`0 ∈ ℕ`

From the categorical view: we refrain from pointing at an object's (set's) innards, and prefer to have an operation that picks the identity element. The terminal object (singletons) are used for this, so we'll have an arrow, `zero`, from `𝟙` to the target set, `ℕ`, selecting the identity element, `0`.

```ct hs
zero : 𝟙 -> ℕ
zero ★ = 0
```

𝟙 ------ᶻᵉʳᵒ----> ℕ

From a programatical view: we should acknowedge the issue that the category theory glances over: namely, the difference between a nullary function returning a value `x` and the value `x` itself.

`() => x   ≅   x`

Category theory considers such nullary functions to be equivalent to the value they return, but most programming languages woudn't agree.

There is a value zero, 0, an element of ℕ, and there is the `zero` nullary function, `zero : 𝟙 -> ℕ`, defined as `zero ★ = 0` that picks the 0 element from ℕ.


#### ASIDE: Selector functions in PLs

TL/DR: Probably too detailed clarification regarding the difference between "nullary" functions in various PLs.

A parameterless function is normally called a *nullary function*. It takes no arguments. No arguments need be supplied when invoking it. However, the notion of "none" (as in "no arguments") is tricky.

Saying that a function returns nothing means that it returns nothing of significance. However, what it returns means something - it is a signal that it has successfully completed (for its side effects), but it has no value to "report".


the value it returns is not 

it doesn't return 


requres no arguments means that is takes an argument, but that that is immaterial

unit




What we have called "nullary functions" are not really nullary, because, e.g. in Haskell, unit, `()`, is a disctinct, standalone type with a distinct value, `()`. So such function are actually unary.

Moreover, but unlike in most PLs, in Haskell we have to explicitly pass in the unit value, `()`, when invoking such functions. 

In other PLs,

`()` instead denotes an empty call list, i.e. most PLs have a quasi data structure called "arguments-list" (or parameters-list), and `()` denotes the empty arguments-list.




In Haskell
- `Bool = {True, False}`  ≅  𝔹 = {⊤, ⊥}
- `() :: ()`              ≅  𝟙 = {★}

the two selector functions would look like this:

```hs
-- In Haskell, Bool = {True, False}

true :: () -> Bool
true () = True

false :: () -> Bool
false () = False
```

Haskell makes a disctinction between a (nullary) function and a value: although `true () = True` is virtually the same as `True`, when we call this function, we must pass it exactly the unit value `()`. Haskell is strict and strongly typed, but just for comparison, in JS, nullary functions, e.g. `const True = () => true`, could be called by passing them any value - but some value nevertheless (`undefined` or `null` would suffice).

```js
// In JS, boolean = {true, false}

// true :: () -> boolean
const true = () => true

// false :: () -> boolean
const false = () => false
```



that is, functions like `true :: () -> Bool`, that take the unit, could be considered nullary functions



This property provides an excellent category-theory compliant way of selecting elements from an object since each of these arrows represents a particular element of the target set.
