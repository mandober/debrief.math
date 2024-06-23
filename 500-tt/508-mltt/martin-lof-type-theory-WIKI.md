# Intuitionistic Type Theory

<!-- TOC -->

- [Preamble](#preamble)
- [Contents](#contents)
- [Design](#design)
- [Type theory](#type-theory)
  - [0 type](#0-type)
  - [1 type](#1-type)
  - [2 type](#2-type)
  - [Σ type](#σ-type)
  - [Π type](#π-type)
  - [Identity type](#identity-type)
- [Inductive types](#inductive-types)

<!-- /TOC -->

## Preamble

Martin-Löf Type Theory (MLTT), Constructive Type Theory (CTT), and Intuitionistic Type Theory (ITT) are synonymous terms.

There is not one concrete theory, or even a few, but many variants, differing in a set of supported features, but all related in the fact that they are constructive (i.e. intuitionistic) approaches to type theory.

Moreover, Martin-Lof himself has published many papers, some introducing new type theories, some correcting versions of the previously published ones, e.g. after Girard showed a paritcular version of MLTT (with type-in-type) inconsistent, Martin-Löf has published a revised and improved version.

So, MLTT, CTT and ITT are the names that refer to the same family of type theories that all agree on this foundational aspect (that is, constructivism), leaving other, more or less equally important, aspects underdefined.

# Martin Lof type theory

https://en.wikipedia.org/wiki/Martin-Lof_Type_Theory
https://en.wikipedia.org/wiki/Intuitionistic_type_theory

Intuitionistic type theory is a type theory and an alternative foundation of mathematics.

Intuitionistic type theory was created by Per Martin-Löf, a Swedish mathematician and philosopher, who first published it in 1972.

There are multiple versions of the MLTT - Martin-Löf proposed both its intensional and extensional variants. Early on, he considered impredicative versions, but switched to predicative versions when Girard proved them inconsistent (affected by the Girard's paradox). However, all versions of Martin-Löf type theories keep the basic core design, using constructive logic and dependent types.

## Contents

- Design
- Type theory
  - 0 type
  - 1 type
  - 2 type
  - Σ type
  - Π type
  - Identity type
  - Inductive types
  - Universe types
- Judgements
- Categorical models of type theory
- Extensional versus intensional
- Implementations of type theory
- Martin-Löf type theories

## Design

Martin-Löf designed the type theory on the principles of mathematical constructivism. Constructivism requires that proofs contain a witnessing element, or a term that serves as evidince or justification for the proven proposition.

Since propositions are treated as types, a proven proposition must be an inhabited type, so it contains at least one term (element, value) that can witness the proven fact (represent the proof, serve as evidence).

This, constructive, approach to math does not recognize proofs - especially existential proofs - that cannot produce a witness. For example, a proof of the proposition "there exists a prime greater than 1000" must identify a specific number that is both prime and greater than 1000.

In TT, sigma type may be used to convey such information, since the terms of a sigma type are pairs: a witness (as the first component) and the conditions that a witness must satisfy (in the second component), with the second depending on the value of the first component. In general, sigma type are used to represent existential propositions, while pi types are used to represent universal propositions.

ITT accomplished this design goal by internalizing the *BHK interpretation*. An interesting consequence is that proofs become mathematical objects that can be manipulated, examined, compared.

Type constructors in ITT were built to follow a one-to-one correspondence with logical connectives (e.g. implication, `A ⇒ B`, corresponds to the type of a function, `A → B`). This is known as the Curry-Howard isomorphism (CHI). Previous type theories had also followed this correspondence, but Martin-Löf's theories were the first to extend it to predicate logic, which he achieved by introducing dependent types. Sigma types can express existential, and pi types universal quantification.

## Type theory

ITT has 3 finite types, which are composed using 5 type ctors.

Unlike set theories, type theories are not built on top of a logic (like Frege's, i.e. predicate logic). Each feature of type theory doubles in duty as a feature of both math and logic.

Types contain terms (similarly to how sets contain elements), however, unlike in set theory, an element (term) can only belong to one type.

Some terms are judgementally equal - two terms of a particular type are compared as equal according to the definition of that type. However, not all terms of a type can be compared like this. For example, if a data type is defined by recursing on the first argument (as opposed to the second of two args), that definition may yield equality such as `0 + x = x`, but not its commutative version, `x + 0 = x`. In order to also get that equallity, we need to prove commutativity (in this case). There is also the notion of computational equality, where terms like `2 + 2` and `2 ⨯ 2` compute to the canonical forms `4`, and thus are deemed computationally equal.

There are 3 finite types:
- `𝟘` type contains no terms (it is uninhabited)
- `𝟙` type contains 1 canonical term
- `𝟚` type contains 2 canonical terms

### 0 type

Because the 0 type contains 0 terms, it is also called the empty type. It is used to represent anything that cannot exist. It may be denoted by `𝟘` or `⊥`. It is used to represent a proposition that has no proof (anything unprovable, a proof that cannot exist). Because of this, *propositional negation* is usually defined as a function from any type to the empty type, `¬A := A → ⊥`.

Unlike the usual logical negation that returns a Boolean value, propositional negation instead returns a type that corresponds to the Boolean value. Usually Boolean 'false' value is represnted by the empty type, while 'true' by the unit type (see below).

### 1 type

The 1-type is known as the unit type and denoted by `𝟙` or `⊤`, while its sole canonical element is usually called "star" and so denoted by `*` or `★`.

The 1-type represents the existence of a proof - its term means that a proof exists, but the proof is not specified (and cannot be specified using only the unit type). It just represents propositions that can be proven.

### 2 type

The 2-type contains 2 canonical terms, often denoted by `tt` and `ff`.

The 2-type represents a definite choice between two values. The 2-type is used for Boolean values but not propositions. Propositions are considered the 1-type, or, if shown to not be provabl, then they have 0-type. A proposition may not be proven either way since ITT does not recognize the law of excluded middle.

### Σ type

Σ-types generalize binary (Cartesian) products.

Σ-types can encode existential quantification.

As a special, non-dependent case, Σ-type can be used to express the Cartesian product, `A×B`, of two other types (logically, such a pair would hold a proof of A and a proof of B, so one may see such a type written as 'A ∧ B').

Σ-types contain dependent (ordered) pairs where the second component of the pair dependes on the *value* of the first component. 

For example, the first component of a dependent pair contains a natural number (representing length), while the second component contains a `Vec` type parameterized by the type of reals, `ℝ`, and indexed by `ℕ`:

`Σ (n : ℕ) Vec ℝ n` or perhaps `Σ (n : ℕ), (Vec ℝ n)`

The result in the second component of a dependent pair is a *vector whose length is equal to the value `n : ℕ`* from the first component.


Using set-theory terminology, this is similar to an *indexed disjoint union* of sets.

In the case of regular ordered pairs, the type of the second component does not depend on the value of the first. Thus the *type of Cartesian product* `ℕ×ℝ` degenarates a sigma type to:

`Σ (n : ℕ) ℝ`

By nesting Σ-types, we can also build *dependently-typed tuples*, not just pairs. An example of a dependently-typed triple is two integers and a proof that the first integer is smaller than the second integer, described by:

`Σ (m : ℕ), Σ (n : ℕ), ((m < n) == true)`

or (with diff definitions) as a single sigma:

`Σ ((m : ℕ) (n : ℕ)) (m < n)`


Dependent typing allows Σ-types to serve the role of existential quantifier. The statement "there exists an `n` of type `ℕ`, such that `P(n)` holds" becomes the type of ordered pairs where the first item is the value `n` of type `N` and the second item is a proof of `P(n)`. Type of the second item (proofs of `P n`) depends on the value in the first component, i.e. on `n`. Its type would be:

`Σ (n : ℕ) P n` or `Σ (n : ℕ) P(n)`

### Π type

`Π (n : ℕ) P n` or `Π (n : ℕ) P(n)`

Π-types contain functions, they generalize function types. Like regular function types, they consist of an input type and output type. However, pi-types are more powerful than functions as output (return) type can depend on input value.

Functions in type theory are different from set theory. In set theory, you look up an argument's value in a set of ordered pairs. In type theory, the argument is substituted into a term and then a reduction is applied to the term.

For example, the type of a function that, given a natural number `n`, returns a *vector containing `n` integers* is written:

`Π (n : ℕ) (Vec ℤ n)` or just `Π (n : ℕ) Vec ℤ n`


When the output type does not depend on the input value (just on the input type, as usual), the function type is often simply written

`ℕ ⟼ ℤ`

Such Π-types correspond to logical implication. The logical proposition, `A ⟹ B`, corresponds to the type `A → B`, containing functions that take proofs of `A` and return the proofs of `B`. This type could be written more consistently

`Π (a : A) B`

where `A` is any type and `B` is a type that does not depend on `a : A`.


Π-types are also used in logic for universal quantification. The statement "for every `n : ℕ`, `P(n)`, is proven" becomes a function from `n : ℕ` to proofs of `P(n)`. Thus, given the value for `n` the function generates a proof that `P` holds for that value. The type would be

`Π (n : ℕ) B(a)` or, in general `Π (a : A) B(a)`

### Identity type

Identity types are usually denoted by `≡` (rarely by `=`).

Identity types are created from two terms. Given two terms like `2 + 2` and `2 ⋅ 2`, you can create a new type `2 + 2 ≡ 2 ⋅ 2`.

The terms of that new type represent proofs that the pair reduce to the same canonical term.

Thus, since both `2 + 2` and `2 ⋅ 2` compute to the canonical term `4`; there will be a term of the type `2 + 2 ≡ 2 ⋅ 2`.

In ITT, *the single way to make terms of identity types* is by getting the data constructor `refl` (for reflexivity) out:

`refl : Π (a : A) (a ≡ a)`


In MLTT, it is possible to create an identity type like `1 ≡ 2` where the terms do not reduce to the same canonical term, but you will be unable to create terms of that type. In fact, if you were able to create a term of `1 ≡ 2`, you could create a term of `⊥`. 
Putting that into a function would generate a function of type `1 ≡ 2 → ⊥`. Since `¬A := A → ⊥` is how ITT defines negation, you would have `¬(1 ≡ 2)`, which actually amounts to `1 ≢ 2`.

*Equality of proofs* is an area of active research in proof theory and has led to the development of Homotopy Type Theory and Cubical Type Theory.

## Inductive types

https://en.wikipedia.org/wiki/Inductive_type

Inductive types allow the creation of complex, self-referential types.

For example, a linked list of natural numbers is either an empty list or a pair of a natural number and another linked list.

Inductive types can be used to define unbounded mathematical structures like trees, graphs.

In fact, the natural numbers type may be defined as an inductive type, either being `0` or the successor of another natural number.

Inductive types define new constants, such as zero `0 : ℕ` and the successor function `S : ℕ → ℕ`.

Since `S` does not have a definition and cannot be evaluated using substitution, terms like `S0` and `SSS0` become the canonical terms of the natural numbers.

Proofs on inductive types are made possible by induction. Each new inductive type comes with its own inductive rule. To prove a predicate `P` for every natural number, you use the following rule:


```agda hs
ℕ-elim : P 0 -> (Π (n : ℕ) (P n -> P (succ n))) -> Π (n : ℕ) P n

-- which is

ℕ-elim : P 0
       → (Π (n : ℕ) (P n -> P (succ n)))
       ---------------------------------
       → Π (n : ℕ) P n
```

In Agda, the recursor for the natural number type is defined as follows:

```agda hs
-- | natural number type definition
data ℕ : Set where
  zero : ℕ
  succ : ℕ → ℕ

-- | natural number type elimiation
ℕ-elim : {P : ℕ → Type}
       →            P 0
       → ((n : ℕ) → P n → P (succ n))
       ------------------------------
       → (n : ℕ)  → P n
ℕ-elim f g 0        = f
ℕ-elim f g (succ n) = g n (ℕ-elim f g n)
```

Inductive types in ITT are defined in terms of *W-types*, the type of well-founded trees.

Later work in type theory generated coinductive types, induction-recursion, and induction-induction for working on types with more obscure kinds of self-referentiality. Higher inductive types allow equality to be defined between terms.
