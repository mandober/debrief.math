# Intuitionistic type theory

https://en.wikipedia.org/wiki/Intuitionistic_type_theory

- intuitionistic (constructive, Martin-Löf) type theory
- intuitionistic intensional/extensional type theory
- intuitionistic predicative type theory
- Girard's paradox
- constructive logic
- dependent types
- inductive types
- unbounded data structures
- judgement, context, conclusion, turnstile

## TOC

<!-- TOC -->

- [TOC](#toc)
- [Intro](#intro)
- [Design principles](#design-principles)
- [Martin-Löf type theory](#martin-löf-type-theory)
- [Base types](#base-types)
- [Type constructors](#type-constructors)
  - [Sigma type constructor](#sigma-type-constructor)
  - [Pi type constructor](#pi-type-constructor)
  - [Equality type constructor](#equality-type-constructor)
  - [Inductive types](#inductive-types)
  - [Universe types](#universe-types)
- [About judgements](#about-judgements)
- [Judgements in ITT](#judgements-in-itt)
- [Categorical models of type theory](#categorical-models-of-type-theory)
- [Extensional versus intensional](#extensional-versus-intensional)
- [Implementations](#implementations)
- [MLTT versions](#mltt-versions)

<!-- /TOC -->


## Intro

Intuitionistic type theory (ITT) is a type theory and an alternative foundation of mathematics, created by Per Martin-Löf in 1972.

ITT has multiple versions: Martin-Löf himself proposed both intensional and extensional variants. The impredicative versions turned out inconsistent due to Girard's paradox, which prompted him to create predicative versions. However, all versions keep the core design of constructive logic using dependent types.

ITT is also known as constructive type theory or Martin-Löf type theory (MLTT).

## Design principles

Martin-Löf designed the ITT on the principles of mathematical constructivism that demands existence proofs produce a "witness". A proof of the form "there exists a prime greater than 1000" must also identify a specific number that satisfies this existential claim. ITT meets this goal by internalizing the *BHK interpretation*, a consequence of which is a property that proofs become proper mathematical objects that can be manipulated; consequently, in a ITT-supporting programming language, proofs are priviledged first-class values.

ITT's type constructors have a one-to-one correspondence with logical connectives, e.g. implication corresponds to the function types. Previous type theories have also displayed the symptoms of the Curry-Howard isomorphism, but Martin-Löf's was the first to extend it to predicate logic by introducing dependent types.

## Martin-Löf type theory

MLTT introduceds dependent types and used inductive types to represent unbounded data structures, such as natural numbers. One of its key features is that it unifies set theory and logic.

Unlike set theories, type theories are not built on top of a logic, like Frege's, so each feature of the type theory does double duty as a feature of both math and logic.

Types contain terms just like sets contain elements. Each term belongs to exactly one type. Terms like 2+2 and 2⋅2 compute, or "reduce" down, to canonical terms like 4.

MLTT uses the standard type-theoretic notation, so `τ : Type` asserts that `τ` is a type, and `a : τ` is a judgement asserting `a` is a term of a type `τ`. But then, what sort of thing is this `Type`, knowing that `τ` is a term belonging to it?

A *judgement* is an assertion about a mathematical object that may or may not be provable from the rules of a particular type theory. A judgement always contains the turnstile symbol that separates antecedents (context, hypothesis) from the consequent (conclusion).

Intuitionistic type theory has 3 finite types, upon which new types are built using the 5 different type constructors.

## Base types

The 3 base types are finite:
- `0 Type` or `⟘` contains 0 terms
- `1 Type` or `⟙` contains 1 canonical term
- `2 Type` contains 2 canonical terms

The `0 type`, also known as the empty type or bottom type, `⟘`, represents anything that cannot exist, anything unprovable; that is, a proof of it cannot exist. The definition of negation is a function to the 0 type: `¬A := A -> ⟘`.

The `1 Type` contains 1 canonical term and represents existence. It is also called the unit type, and sometimes denoted as `⟙` (top type). It is used to represent propositions that can be proven. 

The `2 Type` contains 2 canonical terms and represents a definite choice between two values. It can be used to represent Boolean values, but not propositions.

Propositions are considered the 1 type and may be proven to never have a proof (amounting to the 0 type), or may not be proven either way (and ITT doesn't recognize the law of excluded middle, so LEM cannot be applied to propositions in ITT).

## Type constructors

5 type ctors:
- `Σ` type constructor
- `Π` type constructor
- `=` type constructor
- Inductive types
- Universe types


> Universal   quantification, `∀a. P(a) → R(a)`, is expressable with Π-types.
> Existential quantification, `∃a. P(a) ⋀ R(a)`, is expressable with Σ-types.

The *Σ-types* correspond to *existentially quantified* propositions, which relate their predicates using *conjunction*. For example, if `E` is a predicate, or, more precisely, a property "is-even", then a proposition "there is a natural number `n` such that `n` is even" is written as `∃n. n ∈ ℕ ⋀ E(n)`.

The *Π-types* correspond to *universally quantified* propositions, which relate their predicates using *implication*. For example, if `P` is a predicate, or, more precisely, a property "is-positive", then a proposition "if `n` is a natural number, then `n` is positive" is written as `∀n. n ∈ ℕ -> P(n)`.

### Sigma type constructor

The `Σ types` contain ordered pairs. The `Σ` type constructor is used to create *dependent pairs (products)*, where the type of the second term can depend on the value of the first term.

$$
\displaystyle
\Huge
\sum_{a : A} B(a)
$$

For example, the first term of a pair may be a natural number and the second term's type a vector of length equal to the value of the first term, denoted by

$$
\displaystyle
\Huge
\sum_{n \mathbin{:} {\mathbb N}} \operatorname{Vec}({\mathbb R}, n)
$$

which is similar to an indexed disjoint unions of sets. If dependent typing is not used (i.e. if the second term doesn't depend on the first), then a pair is the common Cartesian product, `A ⨯ B`, denoted as

$$
\displaystyle
\Huge
\sum_{a : A} B
$$

Logically, such an ordered pair would hold a proof of `A` and a proof of `B`, so one may see such a type written as `A ⋀ B`.

Naturally, Σ-types can be used to build up longer dependently-typed tuples, which can then represent records and structs as found in most PLs. An example of a dependently-typed 3-tuple is two integers and a proof that the first integer is smaller than the second integer, described by the type:

$$
\displaystyle
\Huge
{\sum _{m {\mathbin {:}} {\mathbb {Z} }}}
{\sum _{n {\mathbin {:}} {\mathbb {Z} }}}
((m < n) = {\text{True}})
$$

Dependent typing allows Σ-types to serve the role of *existential quantifier*. The statement "there exists an `n` of type `ℕ` such that `P(n)` is proven" becomes the type of ordered pairs where the first item is the value `n` of type `ℕ` and the second item is a proof of `P(n)`, denoted by

$$
\displaystyle
\Huge
\sum _{n {\mathbin {:}} {\mathbb {N} }} P(n)
$$


### Pi type constructor

Π-types contain functions. As with typical function types, they consist of an input type and an output type. They are more powerful than typical function types however, in that the return type can depend on the input value.

$$
\displaystyle
\Huge
\prod _{a{\mathbin {:}}A} B(a)
$$

Functions in type theory are different from set theory. In set theory, you look up the argument's value in a set of ordered pairs. In type theory, the argument is substituted into a term and then computation ("reduction") is applied to the term.

As an example, the type of a function that, given a natural number `n`, returns a vector containing `n` count of real numbers is written: `n:ℕ ∏ Vec(ℝ, n)`

$$
\displaystyle
\Huge
\prod_{n \mathbin{:} {\mathbb N}} \operatorname{Vec}({\mathbb R}, n)
$$

When the output type does not depend on the input value, the function type is often simply written with as `a → b` Thus, `ℕ -> ℝ` is the type of functions from natural numbers to real numbers.

Π-types correspond to logical *implication*. The logical proposition `a ⟹ b` corresponds to the type `a -> b`, containing functions that take *proofs-of-A* and return *proofs-of-B*. This type could be written more consistently as `a:A ∏ B`,

$$
\displaystyle
\Huge
\prod _{a{\mathbin {:}}A} B
$$

Π-types are also used in logic for *universal quantification*. The statement "for every `n` of type ℕ, `P(n)` is proven" becomes a function from `n` of type ℕ to proofs of `P(n)`. Thus, given the value for `n` the function generates a proof that `P()` holds for that value. The type would be `n:ℕ ∏ P(n)`,

$$
\displaystyle
\Huge
\prod _{n{\mathbin {:}}{\mathbb {N} }}P(n)
$$

### Equality type constructor

`=-types` are created from two terms. Given two terms like `2+2` and `2⋅2`, you can create a new type `2+2 = 2⋅2`. The terms of that new type represent proofs that the pair *reduce to the same canonical term*. Thus, since both `2+2` and `2⋅2` compute to the canonical term `4`, there will be a term of the type `2+2 = 2⋅2`.

In intuitionistic type theory, there is a single way to make terms of `=-types` and that is by *reflexivity*, `refl: a:A ∏ (a = a)`,

$$
\displaystyle
\Huge
\operatorname{refl} \mathbin{:} \prod_{a \mathbin{:} A} (a = a)
$$

It is stil possible to create =-types such as `1=2` where the terms do not reduce to the same canonical term, but you will be unable to create terms of that new type. In fact, if you were able to create a term of `1=2`, then you could create a term of `⟘`. Putting that into a function would generate a function of type `1 = 2 → ⟘`. Since ITT defines negation of `a` as `¬a := a -> ⟘`, you would have `¬(1 = 2)`, and finally `1 ≠ 2`.

Equality of proofs is an area of active research in proof theory and has led to the development of homotopy type theory and other type theories.

### Inductive types

https://en.wikipedia.org/wiki/Inductive_type

Inductive types allow the creation of complex, self-referential types. For example, a linked list of natural numbers is either an empty list or a pair of a natural number and another linked list.

Inductive types can be used to define unbounded mathematical structures like trees, graphs, etc. In fact, the natural numbers type may be defined as an inductive type, either being 0, or the successor of another natural number.

Inductive types define new constants, such as zero, `0 : ℕ`, and the successor function `S : ℕ -> ℕ`. Since `S` doesn't have a definition and cannot be evaluated using substitution, terms like `S 0` and `S (S (S 0))` become the canonical terms of the natural numbers.

Proofs on inductive types are made possible by induction. Each new inductive type comes with its own inductive rule. To prove a predicate `P` for every natural number, you use the following rule:

$$
\displaystyle \Large
{\operatorname {{\mathbb {N} }-elim} } \, 
{\mathbin {:}} P(0) \, \to
\left (\prod _{n{\mathbin {:}}{\mathbb {N} }}
P(n) \to P(S(n)) \right)
\to \prod _{n{\mathbin {:}}{\mathbb {N} }} P(n)
$$

Inductive types in ITT are defined in terms of *W-types*, the type of well-founded trees. Later work in type theory generated *coinductive types*, *induction-recursion*, and *induction-induction* for working on types with more obscure kinds of self-referentiality. Higher inductive types allow equality to be defined between terms.

https://en.wikipedia.org/wiki/Homotopy_type_theory#Higher_inductive_types

### Universe types

The universe types allow proofs to be written about all the types created with the other type constructors. Every term in the universe type `𝒰₀` can be mapped to a type created with any combination of `0, 1, 2, Σ, Π, =` and the inductive type constructor. However, to avoid paradoxes, there is no term in `𝒰₀` that maps to `𝒰₀`.

To write proofs about all "the small types" and `𝒰₀`, you must use `𝒰₁`, which does contain a term for `𝒰₀`, but not for itself `𝒰₁`. Similarly, for `𝒰₂`.

There is a *predicative hierarchy of universes*, so to quantify a proof over any fixed constant `k` universes, you can use `𝒰ₖ﹢₁`

Universe types are a tricky feature of type theories. Martin-Löf's original type theory had to be changed to account for Girard's paradox. Later research covered topics such as *super universes*, *Mahlo universes* and *impredicative universes*.

https://en.wikipedia.org/wiki/Impredicativity


## About judgements

The formal definition of ITT is written using judgements. For example, in the statement "if `A` is a type and `B` is a type then [pi-type-def] is a type", there are several judgements: "is a type", "and", "if…then…". The expression [pi-type-def] is not a judgement - it is the type being defined.

This second level of the type theory can be confusing, particularly where it comes to equality. There are 3 levels of equality:
- term equality
- type equality
- English-language level of equality

There is a judgement of **term equality** such as `4=2+2`. It is a statement that two *terms reduce to the same canonical term*.

There is also a judgement of **type equality**, such as `A=B`, which means every element of `A` is an element of the type `B` and vice versa. At the type level, there is a type `4=2+2` and it contains terms, if there is a proof that `4` and `2+2` reduce to the same value. The terms of this type are generated using the *term-equality judgement*.

Lastly, there is an **English-language level of equality**, because we use the word "four" and symbol "4" to refer to the canonical term `S (S (S (S 0)))`.

Synonyms like these are called *definitionally equal* by Martin-Löf.

## Judgements in ITT

The formal theory works with types and objects.
- type declaration: `A : Type`, or just `A Type`
- an object exists and it is in a type if `a : A`
- objects can be equal, `a = b`
- types can be equal, `A = B`
- a type that depends on an object from another type is declared by `(x:A)B`
- and removed by substitution `B[x/a]`
- which replaces the variable `x` with the object `a` in `B`

An object that depends on an object from another type can be done two ways. 

If the object is "abstracted", then it is written `[x]b`
and removed by substitution `b[x/a]` replacing the variable `x` with the object `a` in `b`.

The *object-depending-on-object* can also be declared as a constant as part of a recursive type, such as `0 : ℕ`, `S : ℕ -> ℕ`.

```hs
data ℕ where
  Z :: ℕ
  S :: ℕ -> ℕ
```

Here, `S` is a *constant object-depending-on-object*; it's not associated with an abstraction.

Constants like `S` can be removed by defining equality. Here, the relationship with addition is defined using equality and using pattern matching to handle the recursive aspect of `S`:

```hs
add :: (ℕ, ℕ) -> ℕ
add (Z,   n) = n
add (S m, n) = S (add m n)
```

`S` is manipulated as an *opaque constant*; it has no internal structure for substitution.


So, objects and types and the previously described relations are used to express formulae in the theory. The following styles of judgements are used to create new objects, types and relations from existing ones:

1. `Γ |- σ : 𝚃𝚢𝚙𝚎`
2. `Γ |- t : σ`
3. `Γ |- σ ≡ τ`
4. `Γ |- t ≡ u : σ`
5. `Γ 𝙲𝚘𝚗𝚝𝚎𝚡𝚝`

mean:
1. `σ` is a well-formed type in the context `Γ`
2. `t` is a well-formed term of type `σ` in context `Γ`
3. `σ` and `τ` are equal types in context `Γ`
4. `t` and `u` are judgmentally equal terms of type `σ` in context `Γ`
5. `Γ` is a well-formed context of typing assumptions


By convention, there is a type that represents all other types, `𝒰` or `𝚂𝚎𝚝`. Since `𝒰` is a type, its members are objects.

There is a dependent type `El` that maps each object to its corresponding type. In most texts `El` is never written. From the context of the statement, a reader can almost always tell whether `A` refers to a type, or whether it refers to the object in `𝒰` that corresponds to the type.

This is the complete foundation of the theory - everything else is derived.

To implement logic, each proposition is given its own type. The objects in those types represent the different possible ways to prove the proposition. Obviously, if there is no proof for the proposition, then the type has no objects in it. Operators like "and" and "or" that work on propositions introduce new types and new objects.

So, `A ⨯ B` is a type that depends on the type `A` and the type `B`. The objects in that dependent type are defined to exist for every pair of objects in `A` and `B`. Obviously, if `A` or `B` has no proof and is an empty type, then the new type representing `A ⨯ B` is also empty.

This can be extended to other types (booleans, natural numbers, etc.) and their operators.


## Categorical models of type theory

(⋯)

## Extensional versus intensional

One of the fundamental distinctions between type theories is *extensional* vs *intensional* type theory.

In extensional type theory *definitional equality* (computational equality), is not distinguished from *propositional equality*, which requires proof.

As a consequence, *type checking is undecidable* because programs might not terminate. Such a theory allows typing the Y-combinator (example of this can be found in Nordstöm and Petersson's `Programming in Martin-Löf's Type Theory`).

However, this doesn't prevent extensional type theory from being a basis for a practical tool, for example, NuPRL is based on extensional type theory.


In contrast, in intensional type theory *type checking is decidable*, but the representation of standard mathematical concepts is somewhat more cumbersome, since intensional reasoning requires using *setoids* or similar constructions.

There are many common mathematical objects, which are hard to work with or that cannot be represented without setoids, such as integers, rationals, reals (in fact, integers and rationals can be represented without setoids, but this representation isn't easy to work with). Cauchy real numbers also cannot be represented without setoids.

*Homotopy type theory* works on resolving this problem. 
It allows defining *higher inductive types*, 
which not only define 
*first order constructors* (values or points), but 
*higher order constructors*, such as 
equalities between elements (paths), 
equalities between equalities (homotopies), 
and so on.


## Implementations

Different forms of type theory have been implemented as the formal systems underlying of a number of proof assistants. While many are based on Martin-Löf's ideas, many have added features, more axioms, or different philosophical background.

For instance, the `NuPRL` system is based on *computational type theory*, and `Coq` is based on the *calculus of (co)inductive constructions*. PLs that also double as proof assistants, like `Agda`, `Idris`, `Cayenne`, `Epigram`, `ATS` also use dependent types.


## MLTT versions

- MLTT71
- MLTT72
- MLTT73
- MLTT79

Per Martin-Löf constructed several type theories that were published at various times, some of them much later than when the preprints with their description became accessible to the specialists (among others Jean-Yves Girard and Giovanni Sambin).

This list attempts to index all the theories that have been described in a printed form and to sketch the key features that distinguished them from each other.

All of these theories had *dependent products*, *dependent sums*, *disjoint unions*, *finite types* and *natural numbers*. All the theories had the same reduction rules that did not include η-reduction either for dependent products or for dependent sums, except for MLTT79 where the η-reduction for dependent products is added.

**MLTT71** from 1971, was the first of type theories created by Per Martin-Löf. It had 1 universe but this universe had a name in itself, `𝒰 : 𝒰`, i.e. it was a `Type in Type` theory. Jean-Yves Girard has shown that this system was inconsistent and the preprint was never published.

**MLTT72** was presented in a 1972 preprint that has now been published. That theory had one universe `V` and no identity types. The universe was "predicative" in the sense that the dependent product of a family of objects from `V` over an object that was not in `V` such as e.g. `V` itself, was not assumed to be in `V`. The universe was *ala Russell*, i.e., one would write directly `T ∈ V` and `t ∈ T` (Martin-Löf uses `∈` instead of the modern `:`) without the additional constructor such as `El`.

**MLTT73** was the first definition of a type theory that Per Martin-Löf presented in 1973, but published in 1975. There are identity types which he calls "propositions" but since no real distinction between propositions and the rest of the types is introduced the meaning of this is unclear. There is what later became known as the *J-eliminator*. This theory has an infinite sequence of universes, `V₀, …, Vₙ, …` . The universes are predicative, *ala Russell* and *non-cumulative*. In fact, it stated that if `A ∈ Vₘ` and `B ∈ Vₙ`, are such that `A` and `B` are convertible, then `m  =  n`. This means, for example, that it would be difficult to formulate *univalence* in this theory; there are *contractible types* in each of the `Vᵢ`, but it's unclear how to declare them equal as there are no identity types connecting `Vᵢ` and `Vⱼ` (for `i ≠ j`).

**MLTT79** was presented in 1979, but published in 1982. In this paper, Martin-Löf introduced the 4 basic types of judgement for the dependent type theory that has since become fundamental in the study of the meta-theory of such systems. He also introduced contexts as a separate concept. There are *identity types* with the *J-eliminator* (which did appear in MLTT73 as a nameless operator), but also with the rule that makes the theory *extensional*. *W-types* were also present. There is an *infinite sequence of predicative universes* that are cumulative.
