# Lambda Calculus: Introduction

Lambda calculus is a formal system[^1] in mathematical logic for expressing computation based on *function abstraction and application* using *variable binding and substitution*.

It is a *universal model of computation* that can be used to simulate any Turing machine (TM). It was first introduced by mathematician Alonzo Church[^2] in the 1930s as part of his research of the *foundations of mathematics*.

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







[^1]: **Formal system** is a mathematical framework consisting of symbols (that make an alphabet), a set of axioms (the first principles) and a set of inference rules. Any theory is based on a small (the smallest the more elegant) set of axioms that are statements that don't require proof. If the axioms were to require proof, then there would be statements in the proof itself that would require proof, and the situation would quickly diverge into infinite regression (and eventually the question of the prime mover). In order to cut this "vicious circle" we are allowed to state a set axioms that are taken for granted within that formal system. Then, using the inference rules, we can derive (useful) theorems that pertain to that formal system. This is like saying that despite the fact there we cannot define some concepts, we're not gonna give up; instead, we'll try to describe them appealing to intuition. If you should accept them, then you can rest assured that the derived theorems are solid (within that specific system). If you should not accept them, you're free to fork the effort into an alternative theory based on another set of axioms. It's like having a lot of contingency plans in the face of the unknown. For example, classical logic has the principle of excluded middle: something is either true or false and there is no other (middle) option. Intuitionistic logic does not agree, so it develops its theorems without that axiom.

[^2]: **Alonzo Church** (1903-1995) was an American logician and mathematician who made major contributions to mathematical logic and the foundations of theoretical computer science. He is best known for *Lambda Calculus*, *Frege–Church ontology*, *Church–Rosser theorem*, and *proving the undecidability of the Entscheidungsproblem* in 1936, when he and Alan Turing independently showed that a general solution to the *Entscheidungsproblem* is impossible, assuming that the intuitive notion of "effectively calculable" is captured by the functions computable by a Turing machine, or equivalently, by those expressible in the lambda calculus. This assumption is now known as the *Church–Turing thesis*.
