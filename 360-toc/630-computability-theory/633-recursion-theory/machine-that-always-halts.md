# Machine that always halts

https://en.wikipedia.org/wiki/Machine_that_always_halts
https://en.wikipedia.org/wiki/Halting_problem

In computability theory, a *machine that always halts*, also called a *decider* or a *total Turing machine*, is a Turing machine (TM) that eventually halts for every input.

Because it always halts, such a machine is able to decide whether a given string is a member of a formal language. The class of languages which can be decided by such machines is exactly the set of *recursive languages*. However, the halting problem, determining whether an arbitrary TM halts on a given input, is itself an undecidable problem.

In practice, many functions of interest are computable by machines that always halt. A machine uses only finite memory on any particular input, so it can be forced to halt, on every input, by restricting its *flow control* capabilities so that no input ever causes it to diverge. As a trivial example, a machine implementing a finitary decision tree will always halt.

It is not required that the machine is entirely rid of looping constructs to guarantee halting. If we enforce loops to be bounded, we can express all of the *primitive recursive functions*.

We can further define a programming language in which we can ensure that even more sophisticated functions always halt. For example, the Ackermann function, which is not primitive recursive but nevertheless is a *total computable function* computable by a term rewriting system with a reduction ordering on its arguments.

Despite these examples of programming languages that guarantee termination of the programs, there exists no programming language which captures exactly the recursive functions, i.e. the functions which can be computed by a TM that always halts. This is because existence of such a programming language would be a contradiction to the *non-semi-decidability* of the problem whether a TM halts on every input.

A general TM will compute a partial function. Two questions can be asked about the relationship between *partial TMs* and *total TMs*:
- Can every partial function computable by a partial TM be extended (that is, have its domain enlarged) to become a total computable function?
- Is it possible to change the definition of a TM so that a particular class of total TMs, computing all the total computable functions, can be found?

The answer to each of these questions is no.
