# Propositions as types

https://ncatlab.org/nlab/show/propositions+as+types

In type theory, the paradigm of propositions as types says that propositions and types are essentially the same.

A *proposition* is identified with the type (collection) of all its proofs, and a *type* is identified with the proposition that it has a term (so that each of its terms is in turn a proof of the corresponding proposition).

https://ncatlab.org/nlab/show/propositions+as+types

## Contents

- General idea
- Propositions as some types
- In homotopy type theory
- Related concepts
- References
- General
- History


## General idea

In type theory, the paradigm of propositions as types says that **propositions and types are essentially the same**.

A *proposition* is identified with a type (collection) of all its proofs. A *type* is identified with the proposition that the type is inhabited, so that each of its terms is in turn a proof of the corresponding proposition.

In type theory, to show that a proposition is true 
corresponds to exhibiting a term of the type 
corresponding to that proposition. 
We regard the terms of the type 
as evidence (witnesses or proofs) 
that the proposition is true.

Not all type theories follow this paradigm; among those that do, Martin-Löf type theories are the most famous. In its variant as homotopy type theory the paradigm is also central, but receives some refinements and it is called "Propositions as some types".

Even when the paradigm is not adopted, however, there is still a close relationship between logical and type-theoretic operations, called the Curry-Howard isomorphism or (if it is not clear in which category this isomorphism is supposed to exist) the Curry-Howard correspondence. Or the Brouwer-Heyting-Kolmogorov interpretation. This correspondence is the most precise and well-developed for intuitionistic logic.

Accordingly, logical operations on propositions have immediate analogs on types. For instance, logical AND corresponds to forming the product type `A×B` (a proof of `A` and a proof of `B`), the universal quantifier corresponds to dependent product, the existential quantifier to dependent sum.

## Propositions as some types

A related paradigm may be called propositions as some types, in which propositions are identified with particular types, but not all types are regarded as propositions. Generally, the propositions are the "types with at most one term".

This is the paradigm usually used in the internal logic of categories such as toposes, as well as in homotopy type theory. In this case, the type-theoretic operations on types either restrict to the propositions to give logical operations (for conjunction, implication, and the universal quantifier), or have to be "reflected" therein (for disjunction and the existential quantifier). The reflector operation is called a [bracket type](https://ncatlab.org/nlab/show/bracket+type).

## In homotopy type theory

...


## Propositions

Classically, a proposition is nothing but a truth value, that is, it is an element of the set of truth values, whose two elements are the true and the false [isn't it said that a propostion *has* a truth value, not that it *is* a truth value per se?!]

Because of the difficulties of justifying the rules for forming propositions by means of quantification over infinite domains, when a proposition is understood as a truth value, this explanation is rejected by the intuitionists and replaced by saying that:
* a proposition is defined by stating what counts as its proof
* a proposition is true if it has a proof, i.e. if a proof of it can be given

Thus, *intuitionistically, truth is identified with provability*, though of course not (because of Godel's incompleteness theorem) with derivability within any particular formal system.

The explanations of the meanings of the logical operations, which fit together with the intuitionistic conception of what a proposition is, are given by the standard table:

prop proof| consists of
----------|----------------------------------------------------------------
⟘         | nothing counts as a proof of ⟘
A ⋀ B     | a proof of A and a proof of B
A ⋁ B     | a proof of A or a proof of B
A → B     | a method which takes any proof of A into a proof of B
(∀x)B(x)  | a method which takes an arbitrary individual a into a proof of B(a)
(∃x)B(x)  | an individual a and a proof of B(a)

This table can be made more explicit by:

prop proof| has the form
----------|----------------------------------------------------------------
⟘         | nothing counts as a proof of ⟘
A ⋀ B     | `(a,b)`, where `a` is a proof of `A`, and `b` is a proof of `B`
A ⋁ B     | `i(a)` where a is a proof of A, or `j(b)` where b is a proof of B
A → B     | `(λx) b(x)`, where b(a) is a proof of B provided a is a proof of A
(∀x)B(x)  | `(λx) b(x)` where b(a) is a proof of B(a) provided a is individual
(∃x)B(x)  | `(a,b)` where a is an individual and b is a proof of B(a)


As it stands, this table is not strictly correct, since it shows proofs of *canonical form only*. An arbitrary proof, in analogy with an arbitrary element of a set, is a method of producing a proof of canonical form.

If we take seriously the idea that 
*a proposition is defined by stating how its canonical proofs are formed* 
(as in the second table), and if we accept that 
*a set is defined by prescribing how its canonical elements are formed*, 
then it is clear that it would only lead to unnecessary duplication 
to keep the notions of proposition and set apart 
(and the associated notions of proof of a proposition and element of a set).

Instead, we simply identify them, that is, 
we treat them as one and the same notion. 
This is called the **formulae-as-types** 
or **propositions-as-sets** interpretation 
on which intuitionistic type theory is based.





## Related concepts

* proof relevance
https://ncatlab.org/nlab/show/proof+relevance

* computational trinitarianism
https://ncatlab.org/nlab/show/computational+trinitarianism

* theory
https://ncatlab.org/nlab/show/theory

* proposition/type (propositions as types)
https://ncatlab.org/nlab/show/proposition
https://ncatlab.org/nlab/show/type

* definition/proof/program (proofs as programs)
https://ncatlab.org/nlab/show/definition
https://ncatlab.org/nlab/show/proof
https://ncatlab.org/nlab/show/program
https://ncatlab.org/nlab/show/proofs+as+programs

* theorem, axiom
https://ncatlab.org/nlab/show/theorem
https://ncatlab.org/nlab/show/axiom

* propositions as projections
https://ncatlab.org/nlab/show/propositions+as+projections
https://ncatlab.org/nlab/show/intuitionistic+type+theory
https://ncatlab.org/nlab/show/Per+Martin-L%C3%B6f

* Extensionality, Intensionality, and Brouwer's Dictum
https://existentialtype.wordpress.com/2012/08/11/extensionality-intensionality-and-brouwers-dictum/
