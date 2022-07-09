# Trinitarianism

https://thehottgameguide.readthedocs.io/en/latest/0-trinitarianism/index.html
https://github.com/thehottgame/TheHoTTGame

Trinitarianism is about how logic, type theory and category theory come together as different ways to view the same thing.

```
    computation
         /\
        /  \
       /    \
      /      \
     /        \
    /__________\
logic          spaces
```

The traingle of trinitarianism introduces the setting "a place to do maths". The "types" that will populated this "place" have three interpretations:
1. *Proof-theoretically*, with types as propositions
2. *Type-theoretically*, with types as programs
3. *Category-theoretically* (geometrically), with types as objects (spaces) in a category (the space of spaces)


Here are some things that we could like to have in a 'place to do maths'
- objects to reason about, like ℕ
- algorithms (recipes) for making things inside objects, like n + m for n,m ∈ ℕ
- propositions to reason with, like n = 0 for n ∈ ℕ
- a notion of equality

1. In proof theory, types are propositions and terms of a type are their proofs.
2. In type theory, types are programs (constructions) and terms are algorithms.
3. In category theory, types are objects (spaces) and terms are generalised elements (points in the space).

* Non-dependent Types

Proof Theory  | _Type Theory_ | Category Theory
--------------|---------------|------------------------------
false         | empty       𝟘 | initial object
true          | unit        𝟙 | terminal object
or            | sum         + | coproduct
and           | pairs       ⨯ | product
implication   | functions   → | internal hom

* Dependent Types

Proof Theory  | _Type Theory_ | Category Theory
--------------|---------------|------------------------------
predicate     | type family   | bundle
substitution  | substitution  | pullback (of bundles)
existence     | Σ type        | total space of bundles
for all       | Π type        | space of sections of bundles



What is *the same*? The last missing piece is a notion of equality. How HoTT treats equality is where it deviates from its predecessors.



## Terms and Types

There are three ways of looking at `A : Type`
- proof theoretically:    `A` is a proposition
- type theoretically:     `A` is a construction
- category theoretically: `A` is a space and `Type` is the category of spaces

An example of a type construction is the *function type*.

Given types `A B : Type`, we have another type `A → B : Type`, seen as
- the proposition, `A` implies `B`
- the construction to convert `A` algorithms into `B` algorithms
- the space of maps from `A` to `B`, that is, 
  maps from `A` to `B` correspond to points of `A → B`.
- internal hom (homset) of the category `Type`

To give examples of this, lets make some types first.

## True, Unit, Terminal object

```hs agda
data ⊤ : Type where
  tt : ⊤
```

This means that `⊤` is an inductive type with a constructor `tt`, 
with these interpretations:
- ⊤ is a proposition "true", and there is a proof of it, called `tt`
- ⊤ is a construction "top", with a algorithm called `tt`
- ⊤ is the singleton space
- ⊤ is a terminal object: every object has a morphism into it given by `· ↦ tt`

In general, the expression `a : A` means "`a` is a term of type `A`", 
and it has these interpretations:
- `a` is a proof of                the proposition  `A`
- `a` is a algorithm for           the construction `A`
- `a` is a point in                the space        `A`
- `a` is a generalised element of  the object       `A` in the category `Type`
