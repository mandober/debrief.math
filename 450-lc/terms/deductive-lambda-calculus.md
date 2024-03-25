# Deductive lambda calculus

https://en.wikipedia.org/wiki/Deductive_lambda_calculus

Deductive lambda calculus considers what happens when lambda terms are regarded as mathematical expressions.

One interpretation of the untyped lambda calculus is that of a PL where evaluation proceeds by performing reductions on an expression until it is in normal form. In this interpretation, if the expression never reduces to normal form then the program never terminates, and the value is undefined.

Considered as a mathematical deductive system, each reduction would not alter the value of the expression. The expression would equal the reduction of the expression.

## History

Alonzo Church invented the lambda calculus in the 1930s, originally to provide a new and simpler basis for mathematics. However, soon after inventing it, major logic problems were identified concerning the lambda abstraction; *the Kleene-Rosser paradox* is an implementation of *Richard's paradox* in the lambda calculus. Haskell Curry found that the key step in the Kleene-Rosser paradox could be used to implement the simpler *Curry's paradox*. The existence of these paradoxes meant that the lambda calculus could not be both consistent and complete as a deductive system. Combinatory logic is closely related to lambda calculus, and the same paradoxes exist in each. Later, LC resurrected as a possible foundation of FPLs.
