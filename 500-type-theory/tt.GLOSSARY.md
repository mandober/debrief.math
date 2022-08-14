# Type Theory :: GLOSSARY

<!-- TOC -->

- [Abstract data type](#abstract-data-type)
- [A-normal form](#a-normal-form)
- [Bivalence](#bivalence)
- [Computational equality](#computational-equality)
- [Constructive mathematics](#constructive-mathematics)
- [Constructive type theory](#constructive-type-theory)
- [Definitional equality](#definitional-equality)
- [Empty type](#empty-type)
- [Equality](#equality)
- [Extensional type theory](#extensional-type-theory)
- [First order logic](#first-order-logic)
- [Function extensionality](#function-extensionality)
- [Injectivity](#injectivity)
- [Intensional type theory](#intensional-type-theory)
- [Interactive Theorem Prover](#interactive-theorem-prover)
- [Interactive Proof Assistant](#interactive-proof-assistant)
- [Intuitionistic Type Theory](#intuitionistic-type-theory)
- [Identity type](#identity-type)
- [Judgemental equality](#judgemental-equality)
- [Law of Excluded Middle](#law-of-excluded-middle)
- [Law of non-contradiction](#law-of-non-contradiction)
- [Martin-Löf type theory](#martin-löf-type-theory)
- [Mutation](#mutation)
- [Negative recursion](#negative-recursion)
- [Notational equality](#notational-equality)
- [Observational type theory](#observational-type-theory)
- [Overloading](#overloading)
- [Predicativity](#predicativity)
- [Polymorphism](#polymorphism)
- [Presupposition](#presupposition)
- [Propositional equality](#propositional-equality)
- [Proof assistant](#proof-assistant)
- [Recursive types](#recursive-types)
- [Scoping](#scoping)
- [Subtyping](#subtyping)
- [Totality](#totality)
- [Typability problem](#typability-problem)
- [Typecase](#typecase)
- [Uniqueness of identity proofs](#uniqueness-of-identity-proofs)
- [Unit type](#unit-type)
- [Variance](#variance)

<!-- /TOC -->

## Abstract data type
An abstract data type (ADT) is a type whose implementation details are hidden. The type may in fact be implemented directly as another type, but this fact is not exposed. What is exposed, is an interface, i.e. a set of vetted operations made available to the users to create and manipulate the values of the type.

## A-normal form
A-normal form (ANF) is an intermediate representation, mainly associated with FP compilers. A-normal form is a representation of a program that restricts function args to be trivial, that is, the args may be either constants or literals - most importantly, evaluating any arg must halt immediately. A-normal form is an alternative to CSP representation - compared to CSP, ANF makes the code easier to reason about.

## Bivalence
Bivalence is a property of logics, that is, the principle of bivalence states that truth values are two-valued (i.e. true and false). Many logics are based on this principle and are thus called two-valued logics. Admitting only two truth values, classical math also relies on bivalence, meaning that a proposition is always considered either true or false, not neither, nor both. This also implies the LEM, `P ∨ ¬P`, and LNC, `¬(P ∧ ¬P)`, principles, enabling the proof methods like the proof by contradiction.

## Computational equality
If two terms reduce (compute) to the same term, they are computationally equal.

## Constructive mathematics
Constructive mathematics is a school of math that considers constructibility of proofs as the essentil property of proof methods. It demands that a proof is only correct and complete if it is supported by the evidence, that is, if the proof can produce a witness element that has the property in question.

## Constructive type theory
In constructive mathematics the proofs come with algorithms of how to produce what is claimed, and in that way it has a computational content which is inherited by the type theories based on it.

If we make certain assumptions about logic and programming, then we can define a system which is simultaneously a logic and a programming language, and in which propositions and types are identical. Such system is a Constructive Type Theory, based primarily on the work of Per Martin-Lof, and thus also called Martin-Löf Type Theory.

## Definitional equality
A definitional, or judgemental, equality holds by definition. For example, a term is definitionally equal to the equation (usually, one in a set of equations) used to define it; that is, it is definitionally equal to the left-hand side of that equation. During the course of a proof, such equality is justified by citing that equation. However, such two terms may take the form of various expressions that are not obviously equal, at least not until they are both reduced into their canonical forms.

For example, defining the naturals numbers by induction on the first argument, yields two definitionally equal terms: 1) `0 + m ≡ m`, 2) `S n + m ≡ S (n + m)`. So, confirming that they are indeed equal may involve some amount of computation (reduction), and thus this kind of equality is also called comutational equality [I_guess].


However, defining the naturals by induction on the second argument produces a different set of judgementaly equal terms: `n + 0 ≡ n` and `n + suc m ≡ suc (n + m)`.

## Empty type
An empty type is an uninhabited type - it has no values. Even so, such a type is still useful, e.g. to model the return type of diverging functions, or a list element that is always empty. In type theory, we usually speak of empty types (as opposed to the empty type); even though all empty types, like empty sets, are essentially the same, in nominal type theories, their unique names may makle them unique, at least in that aspect. However, the canonical empty type is `⊥` (bottom) and it is useful when disproving things and negating propositions; e.g. in ITT, the definition of negation is `¬P := P → ⊥`.

## Equality
Determining whether two types are equal is a surprisingly tricky business, especially in a language with advanced type system features, like dependent types.


The notion of equality has shown itself to be a very difficult issue in type theory

In type theory, a bunch of terms is related to the notion of equality
- definitional equality
- judgemental equality
- computational equality
- notational equality
- abbreviational equality
- propositional equality
- identity type
- equality type

Synonyms: 1 and 2, 3 and 4 (moreover, the term #4 is made up). The terms #7 and #8 should be the same (but I'm not sure). All in all, the biggest tention is between the propositional and judgemental equality.

- *Computational equality*: when two terms reduce (compute) to the same term.


## Extensional type theory
Extensional type theory demandes the identity types are propositions. In ETT, types are determined by their extension, e.g. two functions are equal if their input and output values match. (hmm, sets are also, in fact always, determined by thier extension - e.g. there is only one empty set; but, there is not only one empty type).

## First order logic
First order logic is a modern iteration of Frege's logic. Frege was first to devise a system of logic with existential and universal quantifier. However, his two-dimensional notation was too ackward for print.

## Function extensionality
Function extensionality means that the equality of functions is determined extensionality: two functions are equal by their extensions, meaning, set-theoretically, that they agree in all of their (input,output) pairs; or, in more generally, meaning they produce the same output given the same input. In e.g. Agda, function extensionality cannot be introduced in no other way but as a postulate.

## Injectivity
A parameterised type like `List a` is said to be injective if `List a = List b` implies `a = b`. All, some or none of a language's parameterised types may have this property.

## Intensional type theory
Intensional type theory (ITT, but not to be confused with Intentional or Intuitionistic type theory) does not require that the identity types are propositions.

In particular, Homotopy Type Theory (HoTT) is intensional because identity types represent path objects.

Martin-Löf's original definition of identity types, and their equivalent formulation as inductive types, are by default intensional; one has to impose extra axioms in order to get extensional type theory (in which identity types are propositions).

## Interactive Theorem Prover
See Proof assistant

## Interactive Proof Assistant
See Proof assistant

## Intuitionistic Type Theory
See Martin-Löf type theory

## Identity type
See Propositional equality

## Judgemental equality
When two terms compute to the same term they are computationally or judgementally equal. 

For example, `x + (1 + 4)` and `x + (4 + 1)` are judgementally equal since they both compute to `x + 5`. 

Judgemental equality is synonymous with the definitional equality.

## Law of Excluded Middle
The law of the excluded middle (LEM), `P ∨ ¬P`, states that a proposition is either true or false. That is, is claims there is no other (middle) option. Intuitionistic (constructive) math does not recognize LEM.

## Law of non-contradiction
The law of non-contradiction (LNC) states that a proposition cannot be both true and not true at the same time, usually expressed as `¬(P ∧ ¬P)`, which is just a variation of LEM since `¬(P ∧ ¬P) ≡ P ∨ ¬P`.

## Martin-Löf type theory
Intuitionistic type theory (ITT) or Martin-Löf type theory (MLTT) is a type theory and an alternative foundation of mathematics, created by Per Martin-Löf, a Swedish mathematician and philosopher, who published it in 1972. He continued the improvement and investigations into the theory in his subsequent papers published in the following years.

Unlike classical, constructive math doesn't admit LEM and LNC laws, nor the law of double negation; the negtion is usually defined by `¬p = p → ⊥` (where the `⊥` is an uninhabited type). 

## Mutation
The presence of mutable values (reference cells, mutable arrays, etc.) in a language means that there are expressions which, when evaluated twice, yield different values both times (which can have consequences for the type system).

## Negative recursion
Recursive types are defined such that they contain a data ctor that takes the type being defined as one of its type arguments. However, if a recursively defined type has a data ctor that contains (is) a type function in which the type being defined has an overall negative occurrence score (if it appears an odd number of times on the left of an arrow), then such a definition is called nagative recursion and it is prohibited in total languages.

For example, this Haskell's definition, `newtype T = T { unT :: T -> Int }`, would be banned in e.g. Agda because the type being defined is mentioned in a (one) negative position (to the left of an arrow). Agda performs positivity checks to exclude such cases.

## Notational equality
Notational equality is equality by abbreviation, e.g. `1 : nat ::= suc 0`, that has no mathematical meaning but makes the exposition more readable.

## Observational type theory
Observational Type Theory (OTT) combines beneficial aspects of Intensional and Extensional Type Theory. It separates definitional equality, decidable as in ITT, and a substitutive propositional equality, capturing extensional equality of functions, as in ETT.

## Overloading
An overloaded function has several different versions all with the same name, where the language picks the right one to call by examining the types of its arguments at each call site.

## Predicativity
A type system is predicative if definitions cannot be referenced, not even indirectly, before they are defined. In particular, polymorphic types `∀α. …` are predicative only if `α` ranges over types excluding the polymorphic type being defined. Predicative systems usually have restricted polymorphism; in a polymorphic type `∀α. …`, the type variable `α` may range only over types that don't themselves use `∀`, or if the type system supports stratified levels of `∀` use. A hallmark of impredicative systems is unrestricted `∀` use (e.g. in *System F*).

## Polymorphism
Polymorphism may refer to several things, but in this book it stands for *parametric polymorphism*, sometimes called generics types like `∀α. α → α`, allowing the same value to be used at many possible types, parameterised by a type variable. Other meanings include subtype polymorphism, ad-hoc polymorphism.

## Presupposition
A thing tacitly assumed beforehand at the beginning of an argument.

## Propositional equality
If `a b : A`, then `a =ᴀ= b` denotes propositional equality, while `a ≡ b` denotes judgmental equality.

## Proof assistant
A proof assistant or interactive theorem prover is a software tool to assist with the development of formal proofs by human-machine collaboration. This involves some sort of interactive proof editor, or other interface, with which a human can guide the search for proofs, the details of which are stored in, and some steps provided by, a computer.

## Recursive types
Recursive types are types whose definition refers to themselves, either by using their own name during their definition, or by using explicit fixpoint operators like `μ` types.

Recursive types are defined such that they contain a data ctor that takes the type being defined as one of its type arguments. For example, in this Haskell's definition of infinite lists, `data InfList a = Prepend a (InfList a)`, we are defning a recursive type `InfList`, by declaring the type ctor on the lhs as `InfList a` (it takes any type as arg as indicated by the type var `a`), while we "define it" on the rhs by giving its data ctors; in this case, there's only one data ctor, called `Prepend` which takes 2 type arguments: any type (indicated by the type var `a`) as its first arg, while its second arg is the type we're defining, i.e. the type `InfList a` itself.

Recursive types are not problematic unless their data ctors contain type functions that mention the type being defined in the negative position (if it appears an odd number of times on the left of an arrow). However, sometimes banning the negative resursion caused by this isn't enough, and the stricter form, i.e. no recursive occurrences on the left sie of arrows at all, is banned as well.

## Scoping
When things are defined local to a scope (module, function), the compiler must check so that they don't accidentally leak out of their scope.

## Subtyping
Subtyping allows a value of a more specific type to be given where a value of a more general type is expected, without the two types having to be exactly equal.

## Totality
In a total language all programs are guaranteed to terminate. The ways to accomplish this include restricting loops to only for-loops (i.e. loops that are bounded from above), and recursion to well-defined, structural, recursion. Enforcing this property places a significant burden on the type checker.

## Typability problem
In type theory, but also its practical aspects like in type system and compiler design, the typability problem focuses on the question: "Given an object (expression, term, even another type), does it have a type?".

## Typecase
Typecase refers to any runtime test that checks types. Several other names for this feature exist: `instanceof`, downcasting, matching on types.

## Uniqueness of identity proofs
Uniqueness of identity proofs (UIP): any two proofs of the same propositional equality are themselves propositionally equal.

## Unit type
Empty types must not be confused with unit types (Haskell's `()`, C's `void`): empty types are uninhabited (no values), but unit types (or singleton types) have a single inhabitant (a single value).

## Variance
Types (type ctors) that take type parameters (like `List a`) may have a subtyping relationships that depend on the subtyping relationships of their parameters: for instance, `List a` is a subtype of `List b` only if `a` is a subtype of `b`. The manner in which the parameter's subtyping affects the whole type's subtyping is called variance.
