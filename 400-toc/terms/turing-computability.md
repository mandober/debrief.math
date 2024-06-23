# Turing Computability

A function is *effectively computable* if there are definite, explicit rules by following which one could in principle compute its value for any given arguments.

*Turing-computable functions* are effectively computable.

**Turing's thesis** is the converse - that every effectively computable function is Turing computable.

This is a non-trivial thesis that cannot be rigorously proved - since the notion of effective computability is intuitive and not a rigorously defined concept - but an enormous amount of evidence has been accumulated so far.

We first introduce the notion of Turing machine, and then define what it means for a function to be computable by a Turing machine, or Turing computable.

Given an argument `n`, we need the value `f n`; if it is possible to produce the value whenever needed, then that is almost as good as having the whole table of values (tabulazing a function) written out in advance.

A function on naturals `f : ℕ → ℕ` is called *effectively computable* if a list of instructions can be given that in principle make it possible to determine the value `f n` for any argument `n`. This notion extends in an obvious way to polyadic functions.

The instructions must be definite, completely defined and explicit. They should tell you at each step what to do, and not tell you to go ask someone else or figure it out on your own; the instructions should require no external sources of information, and should require no ingenuity to perform, so that one might hope to mechanize this process.

There remains the fact that for all but some finite set of values it will be practically infeasible for any human or machine to actually carry out the computation. However, we'll ignore all limitations and focus on an idealized notion of computability that goes beyond what people or machines can do. Our eventual goal is to prove that certain functions are not computable even with limiteless resources. The essential requirement for this purpose is that our notion of computability is not too narrow.
