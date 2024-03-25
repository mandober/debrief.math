# Allegory

## Refs

* Ch.4 of the book `Algebra of Programming` by Richard Bird, Oege de Moor, 1997

## Relations and allegories

There are a number of reasons for generalising from functions to relations. First, like the move from real numbers to complex ones, the move to relations increases our powers of expression. Relations, unlike functions, are essentially nondeterministic and one can employ them to specify nondeterministic problems. For instance, an optimisation problem can be specified in terms of finding an optimal solution among a set of candidates without also having to specify precisely which one should be chosen. Every relation has a well-defined converse, so one can specify problems in terms of converses of other problem.

A second reason concerns the structure of certain proofs. There are deterministically specified programming problems with deterministic solutions where, nevertheless, it is helpful to consider nondeterministic expressions in passing from the former to the latter. The proofs become easier, more structure is revealed, and directions for useful generalisation are clearly signposted. So it is with problems about functions of real variables that are solved more easily in the complex plane.

On the other hand, in the hundred years or so of its existence, the *calculus of relations* has gained a good deal of notoriety for the apparently enormous number of operators and laws that one has to memorise in order to do proofs effectively.

In this chapter we aim to cope with this problem by presenting the calculus in five successive stages, each of which is motivated by categorical considerations and is sufficiently small to be studied as a unit. We will see how these parts interact, and how they can be put to use in developing a concise and effective style of reasoning.

## Allegories

Allegories are to the *algebra of relations* as 
categories are to the *algebra of functions*.

An allegory `A` is a category endowed with 3 operators in addition to target, source, composition and identities. These extra operators are inspired by the category `Rel` of sets and relations.

We can
- compare relations with a partial order `⊆`
- take the intersection of two relations with `∩`
- take a converse of a relation with the unary operator `◌°` or `◌ᶜ`
The purpose of this section is to describe these operators axiomatically.

### Inclusion

The first assumption is that any two arrows with the same source and target can be compared with a partial order ⊆, and that *composition is monotonic wrt this order*: that is,

`(S₁ ⊆ S₂) ∧ (T₁ ⊆ T₂) ⇒ (S₁ ∘ T₁) ⊆ (S₁ ∘ T₂)`

In `Rel`, where a relation `R : A ← B` is interpreted as a subset `R ⊆ A×B`, inclusion of relations is the same as set-theoretic inclusion; thus

`R ⊆ S = (∀a,b | aRb ⇒ aSb)`

Monotonicity of composition is so fundamental that we often apply it tacitly in proofs. An expression of the form `S ⊆ T` is called *inequation*, and most of the laws in the relational calculus are inequations rather than equations.

A proof of `R = S` by two separate proofs, one of R ⊆ S and one of S ⊆ R, is sometimes called a *ping-pong argument*. Use of ping-pong arguments can often be avoided either by direct equational reasoning, or by an indirect proof in which the following equivalence is exploited:

`∀X. R = S ⇔ (X ⊆ R ⇔ X ⊆ S)`

Thus, an indirect proof is equational reasoning with `⇔`.

The fact that a diagram illustrates an inequation rather than an equation is signalled by inserting the inclusion sign (`⊆`) in the same place where the sign that it commutes (`↺`) is inserted (usually the center of a diagram). In such cases, we say that a diagram *semi-commutes*. For instance, the diagram below depicts the inequation `S₁ ∘ T₁ ⊆ S₂ ∘ T₂`.

```
A <----------- B
│      T₁      │
│              │
│S₁    ⊆     T₂│
│              │
↓      S₂      ↓
C <----------- D

    T₁ : A ← B          T₁ ⊆ B×A
S₁ : C ← A                S₁ ⊆ A×C

    T₂ : D ← B          T₂ ⊆ B×D
S₂ : C ← D                S₂ ⊆ D×C
```

### Meet

The second assumption is that for all arrows `R,S : A ← B` there exists an arrow `R ∩ S : A ← B`, called the **meet of `R` and `S`**, 

`∀(R,S : A ← B)`. `∃(R ∩ S : A ← B)`

and characterised by the *universal property*

`∀X : A ← B`. `X ⊆ (R ∩ S)` ⇔ `(X ⊆ R) ∧ (X ⊆ S)`           (4.1)

that is, `R ∩ S` is the *greatest lower bound* (GLB) of R and S.

Using this universal property of meet we can establish that meet is commutative, associative and idempotent:
-       R ∩ S = S ∩ R
- R ∩ (S ∩ T) = (R ∩ S) ∩ T
-       R ∩ R = R

Using meet, we can restate the *axiom of monotonicity* as two inclusions:
- `R ∘ (S ∩ T)` ⊆ `(R ∘ S) ∩ (R ∘ T)`
- `(R ∩ S) ∘ T` ⊆ `(R ∘ T) ∩ (S ∘ T)`

Given `∩` as an associative, commutative, and idempotent operation, we need not postulate inclusion of arrows as a primitive concept, for `R ⊆ S` can be defined as an abbreviation for `R ∩ S = R`.

`R ⊆ S` := `R ∩ S = R`
