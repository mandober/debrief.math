# Halting problem

https://en.wikipedia.org/wiki/Halting_problem
https://en.wikipedia.org/wiki/Machine_that_always_halts

In computability theory, the halting problem is about determining whether an arbitrary Turing machine halts on a given input.

In computability theory, the halting problem is the problem of determining, from a description of an arbitrary computer program and an input, whether the program will finish running, or continue to run forever.

In 1936, Alan Turing has proved that a general algorithm to solve the halting problem, for all possible program-input pairs, cannot exist.

> The halting problem is *undecidable*.

For any program `f` that might determine if programs halt or not, a deviously designed program `g`, invoked with some appropriate input, can pass its own source and its input to `f`, and then specifically do the opposite of what `f` predicts it will do. Therefore, there cannot exists a decider program `f` that can handle this case.



A key part of the proof was a mathematical definition of a computer and program, which became known as a Turing machine; *the halting problem is undecidable over Turing machines*.

Turing's proof is one of the first cases of *decision problems* to be closed. The theoretical conclusion that it is not solvable is significant to practical computing efforts, defining a class of applications which no programming invention can possibly perform perfectly.


http://www.cgl.uwaterloo.ca/csk/halt/
