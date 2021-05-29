# Aspects of the lambda calculus

[1] The Lambda Calculus - Its Syntax and Semantics. Hendrik Pieter Barendregt. 1984


There are 3 aspects of the λ-calculus:
- Foundations of mathematics
- Computations
- Pure lambda calculus

### Foundations of mathematics

The founders of the λ-calculus and the related theory of combinatory 
logic had two aims in mind:
1. to develop a general theory of functions, dealing with formula manipulations
2. to extend that theory with logical notions providing a foundation for logic and (parts of) mathematics

The first point was explicitly stressed by Schönfinkel and Curry wrt the combinatory logic, and it was also implicit in the work of Church founding the λ-calculus.

Unfortunately, all attempts to provide a foundation for mathematics failed. Church's original system of untyped λ-calculus from 1932/33 was inconsistent as shown by Kleene and Rosser in 1935. As was pointed out in Aczel in 1980, Frege's well known inconsistent theory (1893, 1903) essentially contains the λ-calculus; so that was another failure.

Curry had managed to provide a consistent theory in 1930 fulfilling the first point (pure combinatory logic), but the logical part of his theory is too weak to be adequate as a foundation.

After the discovery of the Kleene-Rosser paradox, Church was discouraged in his foundational program. Church gave a consistent (as shown by the Church-Rosser theorem) theory in 1941 called *λ I-calculus*, that was a subtheory of his original system dealing only with the functional part.

There are other foundational approaches related to the λ-calculus. Feferman develops systems based on a partial application function as a foundation for constructive mathematics. The underlying sets of partial functions are related to *Uniformly Reflexive Structures* of Wagner and Strong. It is an open question how these URSs relate to the λ-calculus models where application is always defined. Then, there are relations between the λ-calculus, proof theory and category theory. The λ-calculus used in this context is, however, the typed λ-calculus.

### Computations

Ont he other hand, the part of the λ-calculus dealing only with functions turned out to be quite successful.

Using this theory Church proposed a formalization of the notion "effectively computable" by the concept of λ-definability. Kleene showed in 1936 that λ-definability is equivalent to Gödel-Herbrand recursiveness and in the meantime Church formulated his thesis (stating that recursiveness is the proper formalization of effective computability).

In 1936-37, Turing gave an analysis of machine computability and showed that the resulting notion (Turing computable) is equivalent to λ-definability.

After the discovery of the paradoxes, Kleene translated results on λ-definability and obtained several fundamental recursion theoretic theorems. The *enumeration theorem for partial recursive functions*, the *s-m-n theorem* and *the recursion theorem* were all inspired by the λ-calculus.

λ-calculus is similar to PLs in several regards: bound variables in the λ-calculus correspond to formal parameters in a procedure; the type free aspect corresponds to the fact that for a machine a program and its data are the same, just a sequence of bits.

By the analysis of Turing, it follows that in spite of its very simple syntax, the λ-calculus is strong enough to describe all mechanically computable functions. Therefore the λ-calculus can be viewed as a paradigmatic programming language.

Since, in the λ-calculus, programming problems, specifically those concerning procedure calls, are in a pure form, a study of these can be fruitful for the design and analysis of PLs.


A Review of Three Techniques for Formally Representing Variable Binding
