# Introduction to λ-calculus

Lambda calculus is a formal system in mathematical logic for expressing computation based on *function abstraction and application* using *variable binding and substitution*.

It is a *universal model of computation* that can be used to simulate any Turing machine (TM). It was first introduced by mathematician Alonzo Church in the 1930s as part of his research of the *foundations of mathematics*.

Lambda Calculus can also be seen as a prototype of a functional programming language. It is entirely based on manipulation of anonymous functions, yet it is able to express all the concepts from higher-level programming languages. We'll see that it's capable of expressing even a more complex constructs such as recursion.




---


It is based on function abstraction and function application and it uses just parameter binding and ordinary substitution of the terms (rewriting). It is a higher-order language as it provides a systematic syntax for functions whose input and output are functions.

Lambda Calculus offers alternative approach to the foundations of mathematics and the quest to build mathematics based on a few axioms, which is in today's maths founded on the theory of sets.

Natural numbers sit closely to the base of mathematics so they need to be defined early.

The prevalent way, in various set theories to define natural numbers in terms of sets, is to let a set's cardinality represent a number, so the number 2 would be the "twoness" property that all sets containing 2 elements share. Any set with cardinality of two may represent the number two.

Stratified set theories define numbers slightly differently, with number 2 being *the* set that contains all sets with two elements. The set "two" itself may have any cardinality as long as its member sets have cardinality of two.

In set theory, a set is the most primitive notion, it is used as a building block for constructing other concepts; in Lambda Calculus, a function plays that role.



In fact, only functions exist in Lambda Calculus. Everything else (boolean constants, numbers, data structures, etc.) has to be defined from scratch. This process begins by defining a function abstraction (i.e. a function definition) then, somewhat arbitrarily, assigning a meaning to it.


In mathematics, **function application**, $$f(x)$$ is the act of applying a function $$f$$ to an argument $$x$$ from its domain so as to obtain the corresponding value from its range, usually denoted by $$y$$ i.e. $$f(x)=y$$. It is a *left-associative* operation.
