# Induction-induction


## Inductive-inductive type

https://ncatlab.org/nlab/show/inductive-inductive+type

In type theory, 
**induction-induction** is a principle 
for mutually defining types of the form

`A : Type` and `B : A → Type`

where both `A` and `B` are defined inductively, 
such that the ctors for `A` 
can refer to `B` and vice versa. 
In addition, the ctor for `B` 
can refer to the ctor for `A`.

Such induction-induction occurs e.g. when
formalising dependent type theory in type theory.

Inductive-inductive types are related to inductive-recursive types.

*Inductive-inductive types* have an *initial algebra* semantics with respect to dialgebras.

In Forsberg's thesis, inductive-inductive types are reduced to indexed inductive types in the setting of extensional type theory. This reduction however only provides "simple" elimination rules. Indexed inductive types in turn can be reduced to `W-types` in extensional type theory (see inductive families).

The consistency of the framework used for the elimination (e.g. in Agda) is not so clear, as it allows the definition of a universe containing a code for itself. There is an axiomatisation of the new principle in such a way that the resulting type theory is consistent, as proved by constructing a set-theoretic model (see Forsberg-Setzer).

Hugunin provides a *reduction of an inductive-inductive type to an inductive type*. This construction is conjectured to generalize to all inductive-inductive types. The construction is done in Cubical Type Theory and hence is consistent with Homotopy Type Theory.

## Higher inductive-inductive types

Experiments with higher inductive-inductive types (HIIT) 
(elaborate versions of higher inductive types) 
are considered in the HoTT book, 
sections 11.3 "Cauchy reals" and 
section 11.6 "Conway surreals".

As they are at the set level, these are instances of 
*quotient inductive-inductive types* (see QIIT).

An experimental syntax for HIITs by Kaposi and Kovacs.

## Refs

* What is induction-induction? by Andrej Bauer
  https://cs.stackexchange.com/questions/64130/what-is-induction-induction/64139#64139

* Fredrik Nordvall Forsberg, Anton Setzer
  A finite axiomatisation of inductive-inductive definitions
  http://cs.swan.ac.uk/~csfnf/papers/indind_finite.pdf

* Fredrik Nordvall Forsberg, Anton Setzer, 2010
  Inductive-Inductive Definitions
  http://link.springer.com/chapter/10.1007%2F978-3-642-15205-4_35

* Fredrik Nordvall Forsberg, thesis, 2013
  Inductive-inductive definitions
  https://link.springer.com/chapter/10.1007/978-3-642-15205-4_35

* Thorsten Altenkirch, Peter Morris, Fredrik Nordvall Forsberg, Anton Setzer
  A Categorical Semantics for Inductive-Inductive Definitions, 2011
  https://link.springer.com/chapter/10.1007/978-3-642-22944-2_6

* Thorsten Altenkirch, Paolo Capriotti, G. Dijkstra, F. N. Forsberg
  Quotient inductive-inductive types, 2016

* Ambrus Kaposi and András Kovács, 2018
  A Syntax for Higher Inductive-Inductive Types
  https://drops.dagstuhl.de/opus/volltexte/2018/9190/

* Jasper Hugunin
  Constructing Inductive-Inductive Types in Cubical Type Theory


## Links

* Index and Glossary - Counterexamples in Type Systems
https://counterexamples.org/glossary.html

* meaning explanation in nLab
https://ncatlab.org/nlab/show/meaning+explanation

* inductive type in nLab
https://ncatlab.org/nlab/show/inductive+type

* inductive-inductive type in nLab
https://ncatlab.org/nlab/show/inductive-inductive+type

* type theory - What is induction-induction? - Computer Science Stack Exchange
https://cs.stackexchange.com/questions/64130/what-is-induction-induction/64139#64139

* random stuff: Insane descriptions
http://effectfully.blogspot.com/2016/10/insane-descriptions.html

* random stuff
http://effectfully.blogspot.com/

* [Agda] Associativity of vector concatenation
https://lists.chalmers.se/pipermail/agda/2016/009069.html

* inductive-recursive type in nLab
https://ncatlab.org/nlab/show/inductive-recursive+type

* W-type in nLab
https://ncatlab.org/nlab/show/W-type

* inductive family in nLab
https://ncatlab.org/nlab/show/inductive+family
