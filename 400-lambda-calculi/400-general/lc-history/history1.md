# Lambda calculus :: History


## History II: Computability!

In 1937, the Entscheidungsproblem was solved in the negative, independently by Alonzo Church, in the April of 1936, and Alan Turing in 1937.

In the April of 1936, Church published `"An Unsolvable Problem of Elementary Number Theory"`, while Turing published his `"On Computable Numbers, with an Application to the Entscheidungsproblem"` 8 months later, in the January of 1937.

Church and Turing have accomplished this by each inventing his own model of computation in an attempt to offer an intuitive explanation of what "decidable", or, equivalently "computable", means.

Church invented *lambda calculus*, a system intended to formalize the notion of mathematical functions, in which he defined the notion of computable functions.

Turing invented an abstract machine, later known as the *Turing machine*, and defined the notion of computable function within it.

In 1937, Turing, who graduated under Church, proved that these two models of computation are equivalent in the sense that they both define the same class of *computable functions*. This has became known as the *Church-Turing thesis*: every effectively calculable function is a computable function.

>Church-Turing thesis: every effectively calculable function is a computable function.

However, it remains a thesis because no proof could be constructed as it relied on the intuitive notion of computability. Namely, at the time, a computer was a person that performed calculations, and the concept of *effective computability* was described as successfully performing a task of calculation, by an average computer (person), in a finite number of steps, that only had to follow the steps of an algorithm, using just a pen and paper (inexhaustible amounts of paper, and pens). The concept of TM is similar to this: there is an infinite amount of tape and a finite set of instructions.

## History III

Modern day computers based on the Von Neumann architecture are modelled after Turing Machine with random-access registers.

>Turing Machine executes the instructions as a sequence of statements, one stetement at a time, with frequent state mutations, thus the intended outcome crucially depends on the ordering of statements.

Not only is the underlying hardware modelled after TM, but the most efficient programming languages, of the imperative provenience, are executed in the same way a TM processes its instructions: as a sequence of statements, with one stetement executed at a time, with frequent state mutations; the intended program execution crucially depends on the order of statements.

On the other hand, functional programming languages have taken Church's lambda calculus as their model of computation. Almost every FPL is based on lambda calculus - the puret the language the deeper this connection is.

>Lambda calculus, as a model of computation, is based on reduction, which means rewriting of equal terms for equal terms - a purely syntactic transformation without side-effects.



An early example of an unpure FPL was John McCarthy's *LISP* language. It maintained core connection to LC but nevertheless allowed side-effects. A robost example of a modern FPL is *Haskell*, although it was created long ago, in 1990. Haskell is an example of a completely pure FPL that is based on a typed LC, namely on the System F with many extensions (but no dependent types yet, as of 2022). Haskell uses monads to manage side-effects, which allow it to remain pure and thus referentially transparate, while the I/O is handled by a separate runtime system (RTS) written in `C--` (stripped down and rigorously verified version of the C language). Agda and Idris are the further developments of pure FPL (both written in Haskell) that implement dependent types. Both can be used as theorem provers, besides their usual deployment as programming languages. In fact, the two uses can (and should) be employed at the same time, so people can author programs that are automatically mathematical theorems - meaning you can stop getting creative writing your testing cases and reinvest that effort into proving theorems. It is remotely similar but way more satisfying - when you get it right, you immediately collect the 100% coverage bonus (you may as well ditch the test cases, the test harness, and the test suite altogether).

This has less to do with these languages being functional, pure, lazy, but it has more to do with their type system that supports dependent types, thereby practically erasing the boundary between the types and terms. Of course, they got their own issues, efficiancy probbly being number one, but new development is always underway (e.g. managing type erasure would speed things up).



Reduction machines are specifically designed for the execution of FPLs. Later development in PLT has introduced truly pure FPL that have entirely abstained from imperative side-effects (that is, the language itself remains pure since the side-effects are executed by the runtime system). Development of pure FPLs has culminated in Haskell that kept its academic origins, while also putting its foot in the mainstream. Haskell is a PL with righ surface syntax, all of which still boils down to a sugared variant of lambda calculus at its core.
