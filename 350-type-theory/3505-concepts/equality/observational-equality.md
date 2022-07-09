# Observational equality

`Observational equality, Now!`
- http://lambda-the-ultimate.org/node/3547

`Observational Equality: Now For Good`
- https://hal.inria.fr/hal-03367052

- https://zenodo.org/record/5668357
- https://www.youtube.com/watch?v=L3LYKWi2fT8
- https://www.youtube.com/watch?v=CD46Qw9y42o
- https://github.com/CoqHott/logrel-mltt
- https://htmlpreview.github.io/?https://github.com/CoqHott/logrel-mltt/blob/setoid-universes-hierarchy/html/README.html

OTT is an intensional type theory with all the key computational properties we expect of such systems, but with *a notion of propositional equality that identifies values up to observation, rather than by construction*. It is just as powerful for reasoning as the extensional theories.


Observational equality, Now!
Thorsten Altenkirch, Conor McBride, Wouter Swierstra
2007

http://www.cs.nott.ac.uk/~psztxa/publ/obseqnow.pdf

Abstract
This paper has something new and positive to say about *propositional equality* in programming and proof systems based on the Curry-Howard correspondence between propositions and types.

We have found a way to present a **propositional equality type**
- which is *substitutive*, 
  allowing us to reason by replacing equal for equal in propositions
- which reflects the observable behaviour of values
  rather than their construction; in particular, we have *extensionality*;
  functions are equal if they take equal inputs to equal outputs
- which retains strong normalisation, decidable typechecking and *canonicity*,
  that is, the property that closed normal forms inhabiting datatypes 
  have canonical constructors
- which allows inductive data structures to be expressed in terms of 
  a standard characterisation of well-founded trees
- which is presented syntactically, you can implement it directly, 
  and we are doing so - this approach stands at the core of `Epigram 2`
- which you can play with now: we have simulated our system by 
  a shallow embedding in `Agda 2`, shipping as part of 
  the standard examples package for that system.

Until now, it has always been necessary to sacrifice some of these aspects. The closest attempt in the literature is Altenkirch's construction of a setoid-model for a system with canonicity and extensionality on top of an intensional type theory with proof-irrelevant propositions. Our new proposal simplifies Altenkirch's construction by adopting McBride's *heterogeneous approach to equality*.


Keywords
- Type Theory
- Curry-Howard correspondence
- Equality
- propositional equality
- propositional equality type
- observational equality
- substitutive
- extensionality
- strong normalisation
- decidable typechecking
- canonicity
- closed normal forms
- canonical constructors
- inductive data structures
- well-founded trees
- shallow embedding
- intensional type theory
- proof-irrelevant propositions
- heterogeneous equality
- heterogeneous approach to equality



**Extensional type theories** (ETTs, as implemented in NuPRL) identify the *definitional equality* (as used in typechecking) with the *propositional equality* (expressed as a type and used for reasoning), resulting in powerful systems with undecidable typechecking.

**Intensional type theories** (ITTs, as implemented in Coq, Agda and Epigram) separate these notions, keeping the definitional equality (and hence typechecking) decidable, but at some cost to the power of the propositional equality (until now).

In this paper, we examine an approach which delivers a new candidate, **Observational Type Theory** (OTT), with all the good properties of both. OTT is an intensional type theory with all the key computational properties we expect of such systems, but with the notion of propositional equality that identifies values up to observation, rather than by construction. It is just as powerful for reasoning as the extensional theories.
