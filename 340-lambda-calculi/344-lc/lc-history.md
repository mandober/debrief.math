# Lambda Calculus: History I

Leibniz had the ideal of creating a "universal language" in which all possible logic problems can be stated, along with finding a decision method to solve all the problems stated in the universal language.

If we restrict ourselves to mathematical problems, the first point of Leibniz' ideal is fulfilled by taking some form of set theory formulated in the language of first order predicate logic. This was the situation after Frege and Russell, or Zermelo.

The second point of Leibniz' ideal became an important philosophical question: "Can we solve all problems formulated in the universal language?". It seems that we cannot, but it's not clear how to prove that. This question became known as the decision problem, aka the *Entscheidungsproblem*.

In 1936, the Entscheidungsproblem was solved in the negative, independently by Alonzo Church and Alan Turing. In order to do so, both man have formalized, each in his own way, the intuitive notion of what "decidable", or equivalently, what "computable" means.

Church and Turing did this by each introducing a particular model of computation.

In 1935, Church invented *lambda calculus*, a formal system intended to formalize the notion of mathematical functions, in which he defined the notion of *computable functions*.

Still in 1936, Turing invented a class of abstract machines, later known as *Turing machines*, and defined the notion of computable function within his system.

Also in 1936, Turing, who graduated under Church, proved that these two models of computation are equivalent in the sense that they both define the same class of computable functions.

Modern day Von Neumann computers are based on the concept of Turing machines with random access registers. Imperative PLs are executed in the same way a Turing machine processes its instructions, as a sequence of statements, one stetement at the time, frequently mutating its state, and the correct program execution crucially depends on the order of the statements.

On the other hand, FPLs took Church's lambda calculus as the model of computation that is based on reduction and rewriting of equal terms for equal terms. An early, although hybrid, example of FPL is Lisp. *Reduction machines* are specifically designed for the execution of FPLs. Later development in PLT has introduced truly pure FPL that have entirely abstained from imperative side-effects (that is, the language itself remains pure since the side-effects are executed by the runtime system). Development of pure FPLs has culminated in Haskell that kept its academic origins, while also putting its foot in the mainstream. Haskell is a PL with righ surface syntax, all of which still boils down to a sugared variant of lambda calculus at its core.
