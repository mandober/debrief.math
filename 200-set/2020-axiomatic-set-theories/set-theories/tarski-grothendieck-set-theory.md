# Set theory :: Set theories :: Tarski-Grothendieck set theory

https://en.wikipedia.org/wiki/Tarski-Grothendieck_set_theory

## Debrief

- Tarski-Grothendieck set theory (TG)
- named after Alfred Tarski and Alexander Grothendieck
- axiomatic set theory
- non-conservative extension of ZFC
- introduces the Tarski's Axiom (TA)
- TA distinguishes it from other axiomatic set theories
- TA states that each set has a Grothendieck universe it belongs to
- implies the existence of inaccessible cardinals
- provides richer ontology than ZFC, adding TA supports category theory
- proof assistants Mizar and Metamath use TG
- TG axioms: ZF + TA
- TA: `∀x∃y[x∈y ⋀ ∀z∈y(z ⊆ y ⋀ 𝒫(z) ⊆ y ⋀ 𝒫(z)∈y) ⋀ ∀z∈𝒫(y)(z≉ y → z∈y)]`


## Contents


## Introduction

Tarski-Grothendieck set theory (TG), named after mathematicians Alfred Tarski and Alexander Grothendieck, is an axiomatic set theory.

TG is a *non-conservative extension* of ZFC and is distinguished from other axiomatic set theories by the inclusion of Tarski's axiom.

**Tarski's axiom** states that for each set there is a *Grothendieck universe* it belongs to. Tarski's axiom implies the existence of *inaccessible cardinals*, providing a richer ontology than ZFC. For example, adding this axiom supports category theory.

The `Mizar` system and `Metamath` use Tarski-Grothendieck set theory for formal verification of proofs.

## Axioms

Tarski-Grothendieck set theory starts with conventional Zermelo-Fraenkel set theory and then adds the Tarski's axiom.

NOTE: Axioms, definitions and notation of the `Mizar` system is used to describe Tarski's axiom. Mizar's basic objects and processes are fully formal; they are described informally below.

First, we assume that given any
- set `A`, the singleton set `{A}` exists
- two sets, their unordered and ordered pairs exist
- set of sets, its union exists


TG includes these conventional (because they are also part of ZFC) axioms:

- *Set axiom*: quantified variables range over sets alone, i.e. everything is a set, which is the same ontology as used in ZFC.

- *Axiom of extensionality*: two sets are identical if they have the same members.

- *Axiom of regularity*: No set is a member of itself, and circular chains of membership are impossible.

- *Axiom schema of replacement*: let domain of a class function `F` be a set `A`. Then the range of `F` - the values of `F(x)` for all `x ∈  A` - is also a set.

## Tarski's Axiom

The Tarski's Axiom distinguishes TG from other axiomatic set theories. Tarski's axiom implies the axioms of infinity, choice, and powerset. It also implies the existence of inaccessible cardinals, thanks to which, the ontology of TG is much richer than that of conventional set theories such as ZFC.

The definition of the Tarski's axiom (adapted from Tarski 1939):    
- for every set `x`, there is a set `y` that contains
  - `x` itself
- and for every `z ∈ y`, `y` also contains
  - every element of `z`
  - every subset of `z`
  - the powerset of `z`
  - every subset of `y` of cardinality less than that of `y`

More formally,

```hs
∀x∃y[x ∈ y ⋀ ∀z ∈ y(z ⊆ y ⋀ 𝒫(z) ⊆ y ⋀ 𝒫(z) ∈ y) ⋀ ∀z ∈ 𝒫(y)(z≉ y → z ∈ y)]


∀x ∃y                       -- for every set x, there is a set y containing:
  [ x ∈ y                   -- x
  ⋀ ∀z ∈ y                  -- and for every z in y:
    ( z ⊆ y                 -- means that every elemnt of z is an elem of y
    ⋀ 𝒫(z) ⊆ y              -- means that every subset of z is an elem of y
    ⋀ 𝒫(z) ∈ y              -- powerset of z is an elem of y
    )
  ⋀ ∀s ∈ 𝒫(y)               -- elems of 𝒫(y) are subsets s ⊆ y, so
    (s≉ y → s ∈ y)           -- s ⊆ y ∧ |s| < |y| --> s ∈ y
  ]
```

where `≈` denotes equinumerosity, that is, `≉ ` is negated equinumerosity.


<!-- #region formula analysis -->

<details><summary>Formula analysis</summary>

The formula above begins as expected but then some parts weird out. 
The formula should encode these requirements:
1. for every set `x`, there is a set `y` that contains
2. `x` itself
3. and for every `z ∈ y`, `y` also contains
4. every element of `z`
5. every subset of `z`
6. the powerset of `z`
7. every subset `s ⊆ y` if |s| < |y|

Set `y` is obviously a big-ass set whose members are sets. However, set `y` is not the subject here (even though semantically it is), but a set `x`, that is, any set at all, in terms of which the rest is laid out. The fact that, for any set `x`, there is a set `y` (1) that contains it (2), is encoded in a straightforward way by `∀x∃y.x ∈ y`.

The formula then relates everything else in term of the "real" subject, i.e. in terms of the set `y` and its memebers.

It should state that, for every element `z` in `y`, set `y` also contains (3) all `z`'s elements (4), but instead it says that all elements `z` of `y` are also subsets of `y`:

`∀x∃y.x ∈ y ∧ ∀z ∈ y(z ⊆ y) ∧ …`

instad of saying that, for all elements `z` of `y`, and for all elements `q` of `z`, `q` is in `y`: 

`∀x∃y.x ∈ y ∧ ∀z ∈ y(∀q ∈ z. q ∈ y) ∧ …`


Sure, they have to express the fact that `y` contains every element of each of its elements, but can it be said like that, in tems of subsets? hmm...analysis follows.


Q: What does it mean if an element of a set is also a subset of that set?   
A: That all of its elements are also in the set it itself is contained in.

`y = {x, …}`
x = {1,2,3}
`y = {{1,2,3}, …}`
x ∈ y,   {1,2,3} ∈ y
x ⊆ y,   {1,2,3} ⊆ y, so ...

let `x = {1,2,3}`
and `x ∈ y` means `{1,2,3} ∈ y`.
and `x ⊆ y` means `{1,2,3} ⊆ y`,
but the only way that makes sense 
is if each element of `x` is in `y`,
`1,2,3 ∈ y`
so
`y = {1, 2, 3, {1,2,3}, …}`
right.

>So to express the fact that, for all elements `x` in `y`, all elements `z` of `x` are also in `y`, we don't need to go the long way, i.e.

∃y(∀x(x ∈ y -> ∀z(z ∈ x -> z ∈ y)))

∃y ∀x ∀z (x ∈ y -> (z ∈ x -> z ∈ y))

∃y ∀x ∀z (x ∈ y -> z ∈ x -> z ∈ y)


>because it suffices to say that `x ∈ y` and `x ⊆ y`, i.e.

∃y(∀x(x ∈ y -> x ⊆ y))

∃y ∀x (x ∈ y -> x ⊆ y)


And the last part of the formula    
`∀s ∈ 𝒫(y) (s≉ y → s ∈ y)`

can also be expresed as:    
`∀s(s ∈ 𝒫(y) -> (|s| < |y| -> s ∈ y))`    
i.e.    
`∀s(s ∈ 𝒫(y) -> |s| < |y| -> s ∈ y)`


</details>

<!-- #endregion -->


What Tarski's axiom states is that for each set `x` there is a *Grothendieck universe* it belongs to.

That `y` looks much like a "universal set" for `x` - it not only has as members the powerset of `x`, and all subsets of `x`, it also has the powerset of that powerset and so on - its members are closed under the operations of taking powerset or taking a subset.

It's like a "universal set" except that, of course, it is not a member of itself and is not a set of all sets. That's guaranteed by the Grothendieck universe it belongs to.

And then any such `y` is itself a member of an even larger "almost universal set" and so on.

It's one of the strong cardinality axioms guaranteeing vastly more sets than one normally assumes to exist.

## Implementation in Mizar

The Mizar language, underlying the implementation of TG and providing its logical syntax, is typed and the types are assumed to be non-empty. Hence, the theory is implicitly taken to be non-empty. The existence axioms, e.g. the existence of the unordered pair, is also implemented indirectly by the definition of term constructors.

The system includes equality, the membership predicate and the following standard definitions:
- Singleton: a set with one member
- Unordered pair: a set with two distinct members, `{a,b} = {b,a}`
- Ordered pair: the set `{{a,b},{a}} = (a,b) ≠ (b,a)`
- Subset: a set all of whose members are members of another given set
- Union of a set of sets `Y`: the set of all members of any member of `Y`

## Implementation in Metamath

The Metamath system supports arbitrary higher-order logics, but it is typically used with the `set.mm` definitions of axioms. The `ax-groth` axiom adds the Tarski's axiom.

Definition of the Tarski's axiom in Metamath:

```hs
⊢ ∃y(x ∈ y 
   ∧ ∀z ∈ y(∀w(w ⊆ z → w ∈ y) 
    ∧ ∃w ∈ y(∀v(v ⊆ z → v ∈ w))) 
     ∧ ∀z(z ⊆ y → (z ≈ y ∨ z ∈ y)))


⊢ ∃y
  ( x ∈ y 
  ∧ ∀z ∈ y
    (         ∀w(w ⊆ z → w ∈ y)
    ∧ ∃w ∈ y. ∀v(v ⊆ z → v ∈ w)
    )
  ∧ ∀z(z ⊆ y → (z ≈ y ∨ z ∈ y))
  )
```
