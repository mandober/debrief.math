# Functonal formalization

* Alonzo Church came up with LC during his investigation into the foundations of mathematics. He created LC as a model of computation, to aid him in the attempt to make the definition of computation more precise.

* that turned out to be equivalent in computational power to the concept of computation imagined by a student of his.

* Lambda calculus may be considered as a formalization of the mathematical concept of function.

* It concerns itself with the minimal set of elements needed to study the essence of the mathematical notion of function, which includes the rules of how a function is defined and how a function is applied to its arguments.

* The fact that the functions are mathematical functions means the notion of a function is exactly how it is represented in mathematics, not how it is represented in programming languages. This means that, unlike in PLs, functions are honest, pure, free of side-effects.

* It is based on function abstraction and function application and it uses just parameter binding and ordinary substitution of the terms (rewriting). It is a higher-order language as it provides a systematic syntax for functions whose input and output are functions.

* Lambda Calculus offers alternative approach to the foundations of mathematics and the quest to build mathematics based on a few axioms, which is in today's maths founded on the theory of sets.

* Natural numbers sit closely to the base of mathematics so they need to be defined early.

* The prevalent way, in various set theories to define natural numbers in terms of sets, is to let a set's cardinality represent a number, so the number 2 would be the "twoness" property that all sets containing 2 elements share. Any set with cardinality of two may represent the number two.

* Stratified set theories define numbers slightly differently, with number 2 being *the* set that contains all sets with two elements. The set "two" itself may have any cardinality as long as its member sets have cardinality of two.

* In set theory, a set is the most primitive notion, it is used as a building block for constructing other concepts; in Lambda Calculus, a function plays that role.

* In fact, only functions exist in Lambda Calculus. Everything else (boolean constants, numbers, data structures, etc.) has to be defined from scratch. This process begins by defining a function abstraction (i.e. a function definition) then, somewhat arbitrarily, assigning a meaning to it.

* In mathematics, **function application**, $$f(x)$$ is the act of applying a function $$f$$ to an argument $$x$$ from its domain so as to obtain the corresponding value from its range, usually denoted by $$y$$ i.e. $$f(x)=y$$. It is a *left-associative* operation.
