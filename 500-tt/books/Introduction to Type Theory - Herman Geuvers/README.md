# Introduction to Type Theory - Herman Geuvers

<!-- TOC -->

- [1. Overview](#1-overview)
- [2. Introduction](#2-introduction)
  - [Summary](#summary)
  - [2.1 Types and sets](#21-types-and-sets)
    - [Collections](#collections)
    - [Existence](#existence)
    - [Extensionality versus intensionality](#extensionality-versus-intensionality)
    - [Decidability](#decidability)
  - [2.2 A hierarchy of type theories](#22-a-hierarchy-of-type-theories)
- [3. Simple type theory λ→](#3-simple-type-theory-λ→)

<!-- /TOC -->

## 1. Overview

These notes comprise the lecture "Introduction to Type Theory" that I gave at the Alpha Lernet Summer School in Piriapolis, Uruguay in February 2008. The lecture was meant as an introduction to typed λ-calculus.

In the lecture, I attempted to give an introductory overview of type theory. The problem is: there are so many type systems and so many ways of defining them. Type systems are used in programming languages for various purposes: to be able to find simple mistakes (e.g. caused by typing mismatches) at compile time; to generate information about data to be used at runtime, etc. But type systems are also used in theorem proving, in studying the foundations of mathematics, in proof theory and in language theory.

In these lectures, I have focused on the use of type theory for compile-time checking of functional programs and on the use of types in proof assistants (theorem provers). The latter combines the use of types in the foundations of mathematics and proof theory. These topics may seem remote, but as a matter of fact they are not, because they join in the central theme of these lectures: *Curry-Howard isomorphism* of *formulas-as-types* and *proofs-as-terms* [1].

This isomorphism amounts to two readings of typing judgments `M : A`
- M is a term (program, expression) of the data type A
- M is a proof (derivation) of the formula A

The first reading is very much a "programmers" view and the second a "proof theory" view. They join in the implementation of proof assistants using type systems, where a term (proof) of a type (formula) is sought for interactively between the user and the system, and where terms (programs) of a type can also be used to define and compute with functions (as algorithms).

[1]: P. Urzyczyn and M. Sørensen, Lectures on the Curry-Howard Isomorphism, 2006.

The contents of these notes is as follows.
- Introduction: what are types and why are they not sets?
- Simply typed λ-calculus (Simple Type Theory) and the Curry Howard isomorphism
- Simple Type Theory: à la Curry type assignment, principle type algorithm, and normalization
- Polymorphic type theory: full polymorphism and ML style polymorphism
- Dependent type theory: logical framework and type checking algorithm

## 2. Introduction

### Summary

Types vs sets
- *sets are about semantics*
- sets give "semantic" information
- set theory talks about what things exist (semantics, ontology)
- sets are extensional
- sets are collections of things
- set membership is undecidable
- *types are about syntax*
- types give "syntactic" information
- type theory talks about how things can be constructed (syntax, formal language, exps)
- types are intensional
- typing (and type checking) is decidable

Type theory
- Two readings of typing judments `M : A`
  - M is a term (program, expression) of the data type A
  - M is a proof (derivation) of the formula A
- Curry-Howard isomorphism of formulas-as-types and proofs-as-terms




### 2.1 Types and sets

Types are not sets. Types are a bit like sets, but types give syntactic information, whereas sets give semantic information.

- syntactic information of types: 3 + (7 × 8)⁵ : nat
- semantic information of sets: 3 ∈ { n ∈ ℕ | ∀xyz ∈ ℕᐩ(xⁿ + yⁿ ≠ zⁿ) }

The distinction between syntactical and semantical information cannot always be drawn clearly, but the example should be clear: `3 + (7 × 8)⁵` is of type `nat` simply because 3, 7 and 8 are natural numbers and `×` and `+` are ops on natural numbers.

On the other hand, that 3 is a member of the defined set using the set-builder notation holds because there are no positive x,y,z such that xⁿ + yⁿ = zⁿ. This is an instance of Fermat's Last Theorem, which was proved by A. Wiles.

To establish that 3 is an element of that set, *we need a proof*, we can't just read it off from the components of the statement.

To establish that `3 + (7 × 8)⁵ : nat`, *we don't need a proof but a computation*: our "reading the type of the term" is done by a simple computation.

One can argue about what can be "just read off", and what not; a simple criterion may be whether there is an algorithm that establishes the fact. So then we draw the line between "is of type" (`:`) and 'is an element of" (`∈`) as to whether the relation is *decidable or not*.

A further refinement may be given by arguing that a type checking algorithm should be of low complexity (or compositional, or syntax directed).

There are very many different type theories and also mathematicians who
base their work on set theory use types as a high level ordering mechanism, usually in an informal way. As an example consider the notion of monoid, which is defined as a tuple `(A, ·, e)`, where `A` is a set, `·` a binary operation on A, and `e` an element of A, satisfying the monoidic laws.

In set theory, such an ordered pair `(a, b)` is typically defined using the Kuratowski def, `{{a}, {a, b}}`, and with that we can define ordered triples, but one usually doesn't get into those details, as they are irrelevant *representation issues*: the only thing that is relevant for an ordered pair is that one has pairing operator to introduce a pair (construct it), and two projection operators to eliminate a pair (deconstruct it).

And that is exactly how an ordered pair would be defined in type theory:
- if `A` and `B` are types, then `A×B` is a type
- if `a : A` and `b : B`, then `(a, b) : A×B`
- if `p : A×B`, then `π₁ p : A`, `π₂ t : B`, and, moreover
- `π₁ (a, b) = a` and `π₂ (a, b) = b`.

```hs
A : Type   B : Type
-------------------- F-Pair
A × B : Type

a : A    b : B
--------------- I-Pair
(a, b) : A × B

p : A × B
---------- Pair-E₁, proj1
π₁ p : A

p : A × B
---------- Pair-E₂, proj2
π₂ t : B

p : A × B
-------------------------- Pair-η
p = (π₁ p, π₂ p) : A × B
```

So mathematicians use a kind of high level typed language, to avoid irrelevant representation issues, even if they may use set theory as their foundation.

However, this high level language plays a more important role than just a language, as can be seen from the problems that mathematicians study: whether `√2` is an element of the set `π` is not considered a relevant question. A mathematician would probably not even considered this as a meaningful question, because the types don't match: `π` isn't a set but a number (but in set theory, everything is a set). Whether `√2 ∈ π` depends on the actual representation of the real numbers as sets, which is quite arbitrary, so the question is considered irrelevant.

We now list a number of issues and set side by side how set theory and type theory deal with them.
- Collections
- Existence
- Extensionality versus intensionality
- Decidability of (:), undecidability of (∈)

#### Collections

*Sets* are collections of things, where the things themselves are again sets. There are all kinds of ways for putting things together in a set: basically (ignoring some obvious consistency conditions here) one can just put all the elements that satisfy a property together in a set.

*Types* are collections of objects of the same intrinsic nature or the same structure. There are specific ways of forming new types out of existing ones.

#### Existence

>*Set theory* talks about what things exist.
The infinity axiom states that an infinite set exists and the power set axiom states that the set of subsets of a set exists. This gives set theory a clear *foundational* aspect, apart from its informal use. It also raises issues whether a "choice set" exists (as stated by the axiom of choice) and whether inaccessible cardinals exist (a set X such that for all sets Y with |Y| < |X|, |2ʸ| < |X|).

>*Type theory* talks about how things can be constructed (syntax, expressions).
Type theory defines a formal language. This puts type theory somewhere in between the research fields of software technology and proof theory, but there is more: being a system describing what things can be constructed, type theory also has something to say about the foundations of mathematics, as it also - just like set theory - describes what exists (i.e. what is constructible) and what does not.

#### Extensionality versus intensionality

>Sets are extensional.
Two sets are equal if they contain the same elements. So set equality is undecidable. In general it requires a proof to establish the equality of two sets.

>Types are intensional. Two types are equal if they have the same representation
 something that can be verified by simple syntactic considerations.

So the type `0 + n ≡ n + 0` needs to be proven as a propositional equality. The judgmental equality only states that `n + 0 = n` (provided the addition on ℕ was defined by recursing on the second arg).

Note: However, the first version of Martin-Lof's type theory was extensional, and hence it had undecidable type checking. This type theory is the basis of the proof assistant Nuprl.

#### Decidability

Decidability of (:), undecidability of (∈)

Membership is *undecidable* in set theory, as it requires a proof to establish that `a ∈ A`.

Typing (and type checking) is *decidable*. Verifying whether `M : A` requires purely syntactic methods, which can be cast into a typing algorithm.

As indicated before, types are about syntax: `3 + (7 ∙ 8)⁵ : nat`, because 3, 7, 8 are of type `nat` and the operations take objects of type `nat` to `nat`.

Similarly, `1/2 ∙ Σ 2⁻ⁿ` is not a typing judgment, because one needs additional information to know that the sum is divisible by 2.

The distinction between syntax and semantics is not always as sharp as it seems: the more we know about semantics (a *model*), the more we can formalize it and "turn it into syntax".

For example, we can turn

    { n ∈ ℕ | ∃xyz ∈ ℕᐩ (xⁿ + yⁿ ≠ zⁿ) }

into a (syntactic) type, with decidable type checking, if we take as its terms pairs

    (n, p) : { n ∈ nat | ∃xyz ∈ natᐩ (xⁿ + yⁿ ≠ zⁿ) }

where `p` is a proof of the existence. If we have decidable proof checking, then it is decidable whether a given pair (n, p) is typable with the above type or not.

In these notes, we study the *formulas-as-types* and *proof-as-terms* embedding, which gives syntactic representation of proofs that can be type checked to see whether they are correct and what formula (their type) they prove. With such a representation, proof checking is decidable.

We can therefore summarize the difference between set theory and type theory as the difference between **proof checking** (required to check a typing judgment), which is *decidable*, and **proof finding** (which is required to check an element - of judgment) which is *not decidable*.

### 2.2 A hierarchy of type theories

- simple type theory λ→
- polymorphic type theory
  - à la Church
  - à la Curry
- weakened version of λ2 (corresponding to polymorphism in FP like ML)
- formulas-as-types embedding
- extension with dependent types
  - first order dependent type theory λP 
    and two ways of interpreting logic into it:
    - a direct encoding of *minimal predicate logic*
    - a *logical framework* encoding of many different logics

The first follows the *Curry-Howard version* of the formulas-as-types embedding, which we also follow for λ→ and λ2.

The second follows *De Bruijn's versio*n of the formulas-as-types embedding, where we encode a logic in a context using dependent types.

Simply-typed lambda calculus
- STLC
- λ→
- Propositional logic
- STT (simple type theory)
- typing à la Church
- typing à la Curry

Polymorphic lambda calculus
- λ2
- System F
- Propositional logic
- typing à la Church
- typing à la Curry

Dependently-typed lambda calculus
- λΠ
- calculus of constructions
- predicate logic
- logical framework encoding of many different logics
- direct encoding of minimal predicate logic
- many logics


## 3. Simple type theory λ→

In our presentation of the simple type theory, we have just arrow types. This is the same as the original system [2], except for the fact that we allow type variables, whereas Church starts form two base types `ι` and `o`.

A natural extension is the one with product types and possibly other type constructions (sum types, unit type). A good reference for the simple type theory extended with product types is [3].

[2]: A. Church, A formulation of the simple theory of types, 1940.
[3]: J. Lambek, P. Scott, Introduction to Higher Order Categorical Logic, 1986
