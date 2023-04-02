# Theory of Computation

https://en.wikipedia.org/wiki/Theory_of_computation

Theoretical computer science emerged primarily from the work of Alan Turing and Alonzo Church in 1936, although many others, such as Russell, Hilbert, Boole, were important precursors. Turing and Church introduced formal computational models (the Turing machine and lambda calculus), showed that some well-stated computational problems have no solution, and demonstrated the existence of universal computing machines, machines capable of simulating every other machine of their type.


## Introduction

**Theory of computation** (TOC) tries to find out what computing problems can be solved using a particular model of computation and a particular algorithm. For the solved subset of computing problems, TOC measures the efficiency of solution in terms of time and space complexity. For a subset of problems with only approximate solutions, TOC analyzes the degree of solution's precision.

> TOC's central question is about the fundamental limits of computing.

TOC studies decidability and tractability of computing problems, within different models of computation; it analyses and classifies solutions into numerous complexity classes, according to the algorithmic efficiency manifested through the time and space consumption.

Although established in mathematics in the early XX century, long before the invention of computers, today the TOC is split between mathematics and theoretical computer science.

TOC is divided into 3 major branches:
- automata theory and formal languages
- computability theory, recursion theory
- computational complexity theory

The study of computation is performed using a mathematical abstraction of computers, called a *model of computation*, which ensures more rigorous and uniform setting for analysis. This year's scoreboard that orders models of computation by popularity, is the 6th year in a row headed by lambda calculus, while the cumbersome Turing machine is still calculating its way down, making us all wait at least another year before finally finding out if it will halt once it bottoms out.


Computer scientists study the Turing machine because it is simple to formulate, can be analyzed and used to prove results, and because it represents what many consider the most powerful possible "reasonable" model of computation (see Church-Turing thesis). It might seem that the potentially infinite memory capacity is an unrealizable attribute, but any decidable problem solved by a Turing machine will always require only a finite amount of memory. So in principle, any problem that can be solved (decided) by a Turing machine can be solved by a computer that has a finite amount of memory.



The goal of ToC is the development of 
formal mathematical models of computation 
that reflect real-world computing.

## Models of computation

In order to perform a rigorous study of computation, computer scientists work with a mathematical abstraction of computers called a *model of computation*.

There are several models in use, but the most commonly examined is the *Turing machine*. Computer scientists study the Turing machine because it is simple to formulate, can be analyzed and used to prove results, and because it represents what many consider the most powerful possible "reasonable" model of computation (*Church-Turing thesis*). It might seem that the potentially infinite memory capacity is an unrealizable attribute, but any decidable problem solved by a Turing machine will always require only a finite amount of memory. So in principle, any problem that can be solved (decided) by a Turing machine can be solved by a computer that has a finite amount of memory.

## TOC Major branches

ToC is divided into these major branches:

* *Automata Theory*
  https://en.wikipedia.org/wiki/Automata_theory

* *Formal Languages*
  https://en.wikipedia.org/wiki/Formal_language

* *Computability Theory* (Recursion theory)
  https://en.wikipedia.org/wiki/Computability_Theory

* *Complexity Theory* (Computational complexity theory)
  https://en.wikipedia.org/wiki/Computational_complexity_theory


## TOC History

The theory of computation can be considered the creation of models of all kinds in the field of CS. Therefore, mathematics and logic are used. In the last century it became an independent academic discipline and was separated from math.

Some pioneers of the theory of computation were Ramon Llull, Alonzo Church, Kurt Gödel, Alan Turing, Stephen Kleene, Rózsa Péter, John von Neumann and Claude Shannon.
