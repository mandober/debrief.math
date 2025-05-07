---
- debrief:
  - short: ma
  - name: math
  - slug: debrief.math
  - nick: math debrief
  - about: Mathematics
- desc: This is math debrief ("debrief" is the name for a collection of articles on the topics comprising a branch of science, like math, cs, phtsics, etc., or an amalgam of articles on a computer-related topics, like os, network, cryptography, security, programming languages, ui, ux, dx, apps, tooling, etc.)
---
# Math :: Introduction

## Terminology

- first-order logic (FOL)
- second-order logic
- higher-order logic
- formal language
- formal languages: FOL vs language of math equations
- mathematical notation
- mathematical statement
- mathematical equations
- mathematical formula
- mathematical object
- mathematical expression
- identity
- equality
- inequality
- algebraic equations


**Equation**: statement that the values of two *mathematical expressions* are *equal*. An equation is a *mathematical formula* that expresses the *equality* of two expressions by connecting them with the equals sign (=).



## FOL as the language of mathematics

Mathematics is about many things most of which are expressed using equations of diversing complexity. However, the language of mathematics, if there ever is one, is first-order logic (FOL). FOL is the predicate logic of first-order meaning we are only allowed to quanify over elements of domain, as opposed to set of such elements or over predicates in higher-order logics. Actually, FOL is sufficient to describe most of of math, but there are disciplines that either require using a higher logic or using it makes for more clearer formulas.

It could be said that mathematicians seek the simplest system of logic as the language of mathematics, and once FOL was identified as it, there were some efforts to express those parts of math that seemingly require higher logics in terms of FOL. Sometimes this can be achieved with "hacks", aka *axiom schema*, where an axiom is a formula not quantifed over a single entity but a family of formulas where, instead of quantifying over a predicate or function, each predicate is taken as a constant of sorts (thereby producing a family of axioms instead of a single one). This is done in order to remain within the confines of first-order logic, seemingly for its own sake.

The thought that using a second-order or higher-order logic would yield more complex formulas is not justifed as the forumlas would actually get simpler. The notation used is also practically the same. The difference is in which symbol is quantifed over; instead of `∀a(a ∈ A)…`, it may be something that is slightly more complicated, `∀F(F ∈ A → B)…` or `∀P∀Q(P(x) → Q(x))…`.

In any case, FOL is an excellent system of logic as it is concise and very precise but fairly simple. Many words can be spent describing a concept inadequately, which a FOL formula could express far more precisely in just a few characters. This is especially pronounced when talking about several object of the same kind, so tracking them and referring to each unambiguously becomes difficult. Sure, we can also label such objects in prose, but formulas achieve the same so much faster and cleaner, at least once you get used to them.

Formulas of FOL (or any logic) are not the same thing as mathematical equations. Formulas and their constituent expressions are a part of a formal language that is rigorously defined, although its inherent strictness is relaxted by allowing some common idioms. For example, swapping the order of variables (e.g. with different quantifiers) may change the meaning of the whole formula. Come to think of it, the same may also be said for mathematical equations - they are also very strict and formalized expressions that can be manupulated via a set of rules, although they don't make a formal language (I guess?). Well, at least it's safe to sat they make two different languages, each with a particular purpose. FOL is ideal for stating axioms, definitions and general descriptions, but expressing a mathematical equation in FOL, although possible, can be a daunting task (just ask Russell and Whitehead). If absolutely required, it should be possible to use FOL to express almost any math equation. It is now a famous bit of trivia that it took more then 300 pages of "Principia Mathematica" for Russell and Whitehead to prove that 1+1=2, but the accent is on "prove" - merely expressing this equation is a one-liner. But FOL was never intended for writing equations, it is only worth noting that it is possible to do so, if extremely uncomfortable. On the other hand, the "language of mathematical equations" was invented to write equations, but in this case, that is also the extent of its capabilities.


## Introduction to mathematics, take II

Mathematics is not only about getting familiar with the established mathematical facts, in form of the identities and laws, as much as it is about asking questions, including about the said established facts.

That's why it is hard to find a mathematical topic that just lays down the cold facts without raising additional questions surrounding the topic.

For example, algebraic structures seem to obey hierarchy of properties, with magma starting with the axiom of totality, then semigroup adding the associativity axiom, then monoid adding the identity axiom, then group adding the commutativity axiom, which might seem suitable for categorization. But then we see that it is not about progressive addition of axioms, but rather about examining every permutation of axioms and properties.
