# Introduction
(Type Theory and Functional Programming, Simon Thompson, 1999)

Types come from PLs and propositions from logic, and although they seem to have no relation to each other, we'll see that if we make certain assumptions about both logic and programming, then we can define a system which is simultaneously a logic and a PL, and in which propositions and types are identical.

This is the system of *constructive type theory*, based primarily on the work of the Swedish logician and philosopher, Per Martin-Lof.

In this introduction we examine the background of logic and computing before investigating constructive type theory and its applications.

## Correct Programming

The problem of correctness is ever-present in computing: a program is written with a particular specification in mind and run on the assumption that it meets that specification, which is often not the case. Testing cannot ensure the absence of errors - only a *formal proof of correctness* can guarantee that a program meets its specification.

In the naive approach, the program is first developed and only then, post hoc, the proof that it meets the intended specification is given. Done like that, it's possibile that the program doesn't perform as it should. Instead, we should develop programs with guaratees that they behave as specified.

The analogy with types is useful: in a typed language, we are prevented by the rules of the syntax from writing an ill-formed expression. We could prove that a similar program in an untyped language shares this property, but we would have to do this for each program developed, whilst in the typed language it is guaranteed in every case.

Our aim, then, is *to design a language in which correctness is guaranteed*. We look in particular for a FPL with this property, as semantically the properties of these languages are the most straightforward, with a program simply being a value of a particular explicit type, *rather than a state transformer*.

How will the new language differ from the languages with which we are familiar?

* The type system will have to be more powerful. This is because we will express the specification by means of a statement of the form `p : P` which denotes that the value `p` has type `P`. The language of types in current PLs can express the domain and range of a function but cannot express type dependency type (e.g. the constraint that for every input value, the result is the positive square root of the value).

* If the language allows general recursion, then every type contains at least one value, defined by the equation `x = x`. This mirrors the observation that a non-terminating program meets every specification if we are only concerned with *partial correctness*. If we require *total correctness* we need to design a PL which only permits the definition of total functions and fully-defined objects. At the same time, we must make sure that the language is expressive enough to be usable practically.


To summarise, from the programming side, we are interested in developing a language in which correctness is guaranteed just like the type-correctness is guaranteed in most contemporary languages. In particular, we are looking for a system of types within which we can express logical specifications.


## Constructive Logic

Classical logic is accepted as the standard foundation of mathematics. At its basis is the *truth-functional semantics* which asserts that every proposition is either true or false, making valid assertions like `A ∨ ¬A`, `¬¬A ⇒ A`.

`¬∀x.¬P(x) ⇒ ∃x.P(x)` is understood to mean that, if it is contradictory for no object `x` to have the property `P(x)`, then there is an object `x` with the property `P(x)`.

This is a principle of indirect proof, but the problem with this principle is that it asserts the existence of an object without giving any indication of what the object is - it is a non-constructive method of proof.

However a constructive rendering of mathematics can be given, based on the work of Brouwer, Heyting, Bishop et al., in which every statement has *computational content*. It is necessary to reject classical logic and adapt a mode of reasoning which permits only constructive derivations.

To explain exactly what can be derived constructively, we take a different foundational perspective. Instead of giving a classical, truth-functional, explanation of what is valid, we explain what it means for a particular object `p` to be a proof of the proposition `P` using a logic that is *proof-functional*.

The crucial explanation is for the existential quantifier.

* An existential statement `∃z.P(z)` can only be deduced if we can produce an `a` with the property `P(a)`. A proof of `∃z.P(z)` will therefore be a *pair*, `(a, p)`, consisting of the object `a` and the proof `p` that `a` does in fact have the property `P`.
* A universal statement `∀z.Q(z)` can be deduced only if there is a *function* taking any object `a` to a proof of `Q(a)`, i.e. `a ⟼ Q(a)`.
* Put together, a constructive proof of the statement `∀x.∃y.R(x,y)` requires a function `f` that takes an `a` to a value such that `R(a, f a)` holds (it's a functional relation: `∀x ∈ DOM. ∃y ∈ COD. 𝓡(x,y)`).

Here we see that a constructive proof has computational content in the shape of a function which gives an explicit *witness* value `f a`, for each `a`.

The other proof conditions:
- proof of conjunction `A ∧ B` is a pair of proofs `(p, q)` 
  with `p` being the proof of `A` and `q` of `B`.
- proof of implication `A ⇒ B` is a proof transformation: 
  given a proof of `A`, we produce a proof of `B` from it.
- proof of disjunction `A ∨ B` is either a proof of `A` or a proof of `B`,
  together with an indication which one is it.
- negation `¬A` is defined as the implication `A ⇒ ⊥` 
  where `⊥` is the absurd or false proposition which has no proof, 
  but from which we can infer anything. 
  A proof of `¬A` is thus a function taking a proof of `A` 
  to a proof of absurdity.

Given these explanations, we see that LEM is not valid, as for a general `A` we cannot say whether either `A` or `¬A` is provable. Similarly, LNC (the law of non-contradiction, the principle of indirect proof) is also invalid.

## Curry-Howard Isomorphism

We can view propositions and types as the same, aka the *propositions-as-types* notion.

In our constructive logic, validity is explained by describing the circumstances under which `p` is a proof of the proposition `P`.

To see `P` as a type, we think of `P` *as the type of its proofs*. It is then apparent that familiar constructs in logic and programming correspond to each other.

`p : P` means interchangeably
- `p` is of type `P`
- `p` is a proof of proposition `P`

The proofs of `A ∧ B` are pairs `(a, b)`, with `a ∈ A, b ∈ B`; conjunction forms the Cartesian product of propositions-as-types. The proofs of implication `A ⇒ B` are functions from `A` to `B`. The type `A ∨ B` is the disjoint union of `A` and `B`. The absurd proposition, `⊥`, which has no proofs, is the empty type.

The correspondence works in the other direction too, though it is slightly more artificial. We can see the type of natural numbers `ℕ` as expressing the proposition 'there are natural numbers' which has the (constructive) proofs `0, 1, 2, …`.

One elegant aspect of the system is in the characterisation of *inductive types* like the natural numbers and lists. Functional programmers will be familiar with the idea that *functions defined by recursion have their properties proved by induction*; in this system the principles of induction and recursion are identical.

The dual view of the system as a logic and a PL can enrich both aspects. As a logic, we can see that all the facilities of FPL are at our disposal in defining functions which witness certain properties and so forth.  As a PL, we gain various novel features, and in particular the quantified types give us dependent function and sum types.

**Dependent function space**, `(∀x:A).B(x)`, generalises the function space, since the type of the result `B(a)` depends on the value `a:A`.

**Dependent sum type**, `(∃x:A).B(x)`, can represent modules and abstract data types amongst other things.

More radically, we have the possibility of combining verification and programming, as types can be used to represent propositions. As an example consider the existential type again: we can think of elements of `(∃x:A).B(x)` 
as objects `a` of type `A` with the logical property `B(a)`, witnessed by the proof `b : B(a)`.

The 3rd interpretation of `p : P` in case `P` is an existential proposition, `(a, b) : (∃x : A) . B(x)`, can be read: `a` of type `A` meets the specs `B(x)` as proved by `b : B(a)`.

This gives us a system of types strong enough to express specifications. In our case the logic is an extension of many-sorted, first-order, predicate logic, which is certainly sufficient to express all practical requirements. The system integrates the process of program development and proof: to show that a program meets a specification we provide the program/proof pair.

The specification statement is an existential proposition, and objects of that type include an explicit witness to the object having the required property: in other words, we can only state that a program meets its specification when we have a proof of correctness for it.

One motivation for re-interpreting mathematics in a constructive form was to extract algorithms from proofs. A proof of a statement like `∀x.∃y.R(x,y)` contains a description of an algorithm taking any `x` into a `y` such that `R(x,y)` holds. The logic we described makes the proof terms explicit. 

On the other hand, it is instead possible to suppress explicit mention of the proof objects, and extract algorithms from more succinct derivations of logical theorems, taking us from proofs to programs. This idea has been used with much success in Nuprl and other projects.
