# Simple Type Theory
https://www.youtube.com/watch?v=EEz8DGIjXQI

- In this video we describe *Simple Type Theory*, also known as *Typed Lambda Calculus with Sums*.
- This is a formal theory which can be used to describe set theory, intuitionistic logic, and any other *cartesian closed category*.
- We explain all the inference rules for the simple type theory, and describe how they relate to familiar ideas from category theory.
- We also practically demonstrate how to create an implementation of the rules in a PL, using Javascript.

## References

A theory close to the one we've described is given in this paper
[1]: `Extensional Normalisation and Type-Directed Partial Evaluation for Typed Lambda Calculus with Sums` 2004
by Vincent Balat, Roberto Di Cosmo, Marcelo Fiore
https://www.cl.cam.ac.uk/~mpf23/papers/Types/tdpe.pdf

[2]: I wrote the following document which describes the simple type theory and how it gives rise to constructions with universal properties in category theory:
https://github.com/AviCraimer/old-type-theory-js/blob/master/maths/theory_simplified.pdf

The implementation of Simple Type Theory in JS:
[3]: https://github.com/AviCraimer/old-type-theory-js/blob/master/src/libraries/simpleTypeTheory/richdone.js
[4]: https://github.com/AviCraimer/old-type-theory-js/blob/master/src/libraries/simpleTypeTheory/richsimp.js

Additional information about how to justify the universality of coproducts in this simple type theory can be found in these unlisted videos:
[5]: https://youtu.be/mDRHYN37x0s
[6]: https://youtu.be/pqU54EiCxYU
[7]: https://youtu.be/7uvJ0ucZZq0
[8]: https://youtu.be/ieG57w-C6uo


## Introduction

We've been over some fundamental concepts of category theory, in particular, universal constructions, products, coproducts, exponential objects, terminal objects, initial objects, that may be used to encode all sorts of mathematical structures.

We also saw how these things translate to concepts from set theory and logic, especually the notion of partially ordered sets and how it represents subsets, and the role of Hating algebras in these translations.

We now investige type theory. We'll see how, from just a few assumptions and rules about symbolic manipulations, we are able to describe many mathematical structures in a precise and computer-friendly way.

We'll examine the rules behind type theory. The fact is, there are many kinds of type theory, with many different rule sets and different level of sophistication. However, we'll limit ourself for now to Simple Type Theory.

Simple Type Theory (STT) is related, and slightly more complicated than the Hayting algebra that we've saw in the previous video. There is a very direct connection between the two. STT can be understood as a theory of how can one represent general bicartesian closed categories.

## Simple Type Theory

STT is a stripped-down type theory, but still it has just what we require to model bicartesian closed categories.

*Bicartesian closed categories* are categories that support fundamental universal constructions, in particular:
- terminal objects
- products
- initial objects
- coproducts
- exponential objects

These basic operations of category theory allow us to form data structures and most of the things that we can build in set theory and logic, while others may be expressed in terms of those elementary constructions.

STT is a minimalistic language describing cartesian closed categories, allowing us to talk about different constructions. We have a set of formal rules that enable us to express everything symbolically. On the one hand, we gain precision because it's a theory with a very narrow focus (its main focus are symbolic manipulations), which makes it amenable for implementation as a computer program. On the other hand, STT is good for investigations into semantics. We can ask questions about the meaning of the theory itself, about the meaning of symbolical manipulations in general, as well as the meaning of some particular manipulations. Having a way to formally manipulate symbols puts us in a good position to later investigate its numerous interpretations.

STT a sophisticated approach to doing mathematics. If you can simultaneously describe the important things of set theory, as well as of logic, using only a single theory, with a single way of manipulating symbols; if you only need a single proof to show a theorem in set theory or a result in logic, *simultaneously*, that would really be useful, right? Boom, that's what's on.

STT features
- formal theory
- simple syntax with only a few rules
- easily implementable on a computer
- simple semantics
- many interpretations

Important bicartesian closed categories incude
- `Set`, the category of sets
- `Cat`, the category of categories
- Hayting algebras, which allow us to model logics

## Simply-Typed Lambda Calculus

STLC or *λ-calculus with sums*

One of the things that make discussion about type theory difficult are the different interpretations. There are many ways in which you can think about types, terms, contexts, judgements, and so on, but at the end of the day, the most important thing is the set of formal rules.

The base types are usually the primitive types provided by a PL; these are not so important right now, at the moment we'll just assume some exists. There are two special types (perhaps provided as the base types:
- empty type
- unit type

Empty type
- 0, ⊥, `𝟘`
- set theory: the empy set
- logic: falsity or false proposition
- category theory: initial object

Note: set theory admits extensional equality so there is only a single empty set, thus referred to as the empty set. Type theories admit extensional or intensional equality, and thus in former we say *the empty type*, while in later we say *an empty type* or empty types.

Unit type
- 1, ⊤, `𝟙`
- set theory: singleton sets
- logic: truth or true proposition
- category theory: final object

Note: The empty type is uninhabited (it has no values), but the unit type has exactly one value, which just represents existence (it is not important what its actualy name is), thus, that value is often denoted by `*`, i.e. `* : 𝟙` (or sometimes by `tt`, or similar, non-remarkable, names).

Besides these two fundamental (base) types, we have 3 fundamental constructions, i.e. the basic rules of type formation:
- product
- coproduct
- exponentials

So, taking any two types, `A` and `B`, we can form a product type, `A ⨯ B`, a coproduct type, `A + B`, an exponential type, `A -> B`.

In terms of set theory, these constructions respectively correspond to cartesian product of sets, sum of sets, and set of functions from set A to set B. In terms of logic, this would be conjunction, disjunction, and implication.

### Terms, values, variables, types

One of the basic judgements in TT is `x : A`, asserting that `x` is a term of type `A`.

This is a form of declaration - we're declaring a term `x` of type `A` (assuming the type `A` was previously declared).

However, this may also be understood as an arrow of `x` into `A` (?). In set theory, this is understood as a set `A` with (at least one) element `x`. In logic, this may mean that `A` is a proposition and `x` is a proof of that proposition.

We also have *variables*, which range over particular types. So `x` may be undertood as term variable that ranges over the type `A`. For example, in the expression `2 + (x : ℕ)`, var `x` ranges over the natural numbers. This is usually writen, `Γ, x : ℕ |- (2 + x) : ℕ`, where `Γ` denotes a context - a list of declarations, i.e. a list of "term : type" pairs.

A *term* may be a *value*, but also a *type*. The context contains term (values and types) declarations; e.g. `x : ℕ` is a variable declaration, but `ℕ : Type` declares that ℕ is a type.

A **term variable** may be a **value variable** or **value-level variable** that stands for a value of some type, i.e. ranges over the possible values of some type. In the example above, this would be `x : ℕ` where `x` ranges over the natural numbers.

However, a term variable may also be a **type variable**. A type variable is a variable that ranges over a higher type, that is, over a type of types. For example, in `τ : Type`, type variable `τ` ranges over the terms of `Type` type, the terms of which include `Bool`, `ℕ`, empty type, unit type, all the base types, constructed types, etc. These are called the small types.

By convention, values (and value variables) have names that are lowercase letters, while types (and type variables) use capital letters.

* Examples of small types

```hs agda
ℕ : Type      -- ℕ is a conrete type
x : ℕ         -- x is a term of type ℕ, x ranges over ℕ

Bool : Type   -- Bool is a conrete type
x : Bool      -- x ranges over Bool

A : Type      -- A is a type variable
x : A         -- x ranges over A

B : Type      -- B is a type variable
y : B         -- y ranges over B
```

### Context

A context is a list of declarations, i.e. a list of "term : type" pairs.

Contexts are usually denoted by letters `Γ` and `Δ`.

`Γ = a₁ : A₁, …, aₙ : Aₙ`

A context is a list of assumptions upon which we can base a particular judgement.

### Judgement

A judgement is an assertion, e.g. `Γ |- a : A`, means that assuming we already have the term `a` and `A` declared, then we can derive that (indeed) `a` has the type `A`.

In general, `a₁ : A₁, …, aₙ : Aₙ |- b : B` asserts that the term `b : B`, that may depend on terms on the lhs of the turnstile, is derivable. This statement (which is the usual sort of thing we manipulate in STT) is saying that within this context, where we have all these variables declared, we may derive the term `b : B`, which may be understood as *specifying an arrow*, whose domain is the categorical product of objects (on the left of the turnstile), and whose codomain is the object `b : B` (on the right of the turnstile), all within the bicartesian closed category.

More concretely, `a₁ : A₁, …, aₙ : Aₙ |- a₁ : A₁` asserts that the context (lhs of the turnstile) entails the term `a₁`. In fact, we can understood this as a *projection function*.

Another example: `a₁ : A₁, a₂ : A₂, …, aₙ : Aₙ |- ⟨a₁, a₂⟩ : A₁ ⨉ A₂`, where the derived term depends on the first two terms in the context.

Another example of a judgement: `a₁ : A₁, a₂ : A₂, …, aₙ : Aₙ |- * : 𝟙`. We may understood this in that we can always produce the value `* : 𝟙`; we can get it out of the thin air, i.e. it is always available, in any context. In terms of set theory, this is like an n-ary function from all the sets (in the context) to a singleton set; such a function is necessarily surjective, collapsing all the elements of the argument sets into a single element of the singleton set. That is, no matter what values we give it, it always returns the only value `*`; i.e. it's a constant function, `A₁ ⨉ … ⨉ Aₙ -> 1`.

## Typing rules

```
Γ |- a : A    Γ, x : A, ∆ |- b : B
------------------------------- Cut
Γ, ∆ |- b [a := x] : B


Γ      |- b : B    Γ |- A : Type
------------------------------ Weak
Γ,x : A |- b : B


Γ, x : A, y : A, ∆ |- b : B
--------------------------- Contract
Γ, x : A, ∆ |- b [x := y] : B


Γ, x : A, y : B, ∆ |- c : C
--------------------------- Exchange
Γ, y : B, x : A, ∆ |- c : C
```
