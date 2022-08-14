# Church-style type theory

(synonyms)
- Intrinsic type theory
- Church-style type theory
- Type theory à la Church

It stands opposed to a *type theory ala Curry* (extrinsic type theory), where the terms are not annotated with types, so the compiler performs *type-reconstruction* using type inference.

Coq and Agda are based on intrinsic type theory, while Cedille is an interactive theorem-prover and dependently typed programming language based on extrinsic type theory.

In Cedille, terms are nothing more than annotated versions of terms of pure untyped lambda calculus. In contrast, in Coq or Agda, the typing annotations are intrinsic parts of terms. The typing annotations can only be erased as an optimization under certain conditions, not by virtue of the definition of the type theory.

## Intrinsic and extrinsic views of typing

https://ncatlab.org/nlab/show/intrinsic+and+extrinsic+views+of+typing

The intrinsic and extrinsic views of typing correspond to different interpretations of types, also known as the contrast between "types à la Church" and "types à la Curry".

## According to Reynolds

There are two very different ways of giving denotational semantics to a programming language (or other formal language) with a nontrivial type system. In an *intrinsic semantics*, only phrases that satisfy typing judgements have meanings. Indeed, meanings are assigned to the *typing judgements*, rather than to the phrases themselves, so that a phrase that satisfies several judgements will have several meanings.

In contrast, in an *extrinsic semantics*, the meaning of each phrase is the same as it would be in a untyped language, regardless of its typing properties. In this view, a typing judgement is an assertion that the meaning of a phrase possesses some property.

The terms "intrinsic" and "extrinsic" are recent coinages by Reynolds, but the concepts are much older. The intrinsic view is associated with Alonzo Church, and has been called *ontological* by Leivant. The extrinsic view is associated with Haskell Curry, and has been called *semantical* by Leivant.

The concept of refinement in type theory is a way of reconciling the intrinsic and the extrinsic meanings of types. 


## According to Melliès and Zeilberger

One of the difficulties in giving a clear mathematical definition of the "topic" of type theory is that the word "type" is actually used with two very different intuitive meanings and technical purposes in mind:
1. Like the syntactician's parts of speech, as a way of defining the grammar of well-formed expressions
2. Like the semanticist's predicates, as a way of identifying subsets of expressions with certain desirable properties

These two different views of types are often associated respectively with Alonzo Church and Haskell Curry (hence "types à la Church" and "types à la Curry"), while the late John Reynolds referred to these as the intrinsic and the extrinsic interpretations of types.

In the *intrinsic view*, all expressions carry a type, and there is no need (or even sense) to consider the meaning of "untyped" expressions.

In the *extrinsic view*, every expression carries an independent meaning, and typing judgments serve to assert some property of that meaning.


## Refs

* *Theories of Programming Languages*, John Reynolds, 1998

* *Typing and computational properties of lambda expressions*, Daniel Leivant, 1986

* *The Meaning of Types: from Intrinsic to Extrinsic Semantics*, 
John Reynolds, 2000
http://www.cs.cmu.edu/afs/cs/user/jcr/ftp/typemeaning.pdf

* *Type refinement and monoidal closed bifibrations*, Paul-André Melliès, Noam Zeilberger, 2013

* *Church and Curry: Combining Intrinsic and Extrinsic Typing*, Frank Pfenning
https://www.cs.cmu.edu/~fp/papers/andrews08.pdf

* *Functors are Type Refinement Systems*, Paul-André Melliès, Noam Zeilberger,
http://noamz.org/papers/funts.pdf



## Links

* Propositions as types
https://ncatlab.org/nlab/show/propositions+as+types

* Church's Type Theory
https://plato.stanford.edu/entries/type-theory-church/

* Curry-Howard correspondence for type operators?
https://math.stackexchange.com/questions/2201972/
