# Deductive lambda calculus

https://en.wikipedia.org/wiki/Deductive_lambda_calculus

Deductive lambda calculus considers what happens when lambda terms are regarded as mathematical expressions.

One interpretation of the untyped lambda calculus is that of a PL where evaluation proceeds by performing reductions on an expression until it is in normal form. In this interpretation, if the expression never reduces to normal form then the program never terminates, and the value is undefined.

Considered as a mathematical deductive system, each reduction would not alter the value of the expression. The expression would equal the reduction of the expression.

## History

Alonzo Church invented the lambda calculus in the 1930s, originally to provide a new and simpler basis for mathematics. However, soon after inventing it, major logic problems were identified concerning the lambda abstraction; *the Kleene-Rosser paradox* is an implementation of *Richard's paradox* in the lambda calculus. Haskell Curry found that the key step in the Kleene-Rosser paradox could be used to implement the simpler *Curry's paradox*. The existence of these paradoxes meant that the lambda calculus could not be both consistent and complete as a deductive system. Combinatory logic is closely related to lambda calculus, and the same paradoxes exist in each. Later, LC resurrected as a possible foundation of FPLs.

* Lambda calculus, a formulation of the theory of reflexive functions that has deep connections to computational theory.

* Extensional equality describes equality of functions, where as intensional equality describes equality of function implementations.


## Calculi

* Rho calculus, introduced as a general means to uniformly integrate rewriting and lambda calculus
https://en.wikipedia.org/wiki/Rho_calculus

https://rho.loria.fr/
There are two different calculi that use the name rho-calculus. The first is a formalism intended to combine the higher-order facilities of lambda calculus with the pattern matching of term rewriting. The second is a reflective higher-order variant of the asynchronous polyadic pi calculus.


* Functional calculus, a way to apply various types of functions to operators
https://en.wikipedia.org/wiki/Functional_calculus


## Refs

ω-consistent theory
https://en.wikipedia.org/wiki/%CE%A9-consistent_theory


Formal Systems and Machines: An Isomorphism
http://legacy.earlham.edu/~peters/courses/logsys/machines.htm

What is a Formal System? Is a Human Language an Example?
https://legacy.cs.indiana.edu/~port/teach/641/formal.sys.haug.html

List_of_formal_systems
https://en.wikipedia.org/wiki/List_of_formal_systems
