# TOC :: Theory of Computation :: General

https://en.wikipedia.org/wiki/Theory_of_computation

*Theoretical Computer Science* emerged primarily from the work of Alan Turing and Alonzo Church in 1936, although many others, such as Russell, Hilbert, Boole, were important precursors. Turing and Church introduced formal computational models (the Turing machine and lambda calculus), showed that some well-stated computational problems have no solution, and demonstrated the existence of universal computing machines, machines capable of simulating every other machine of their type.

## Introduction

>**Theory of computation** (TOC) tries to find out what computing problems can be solved using a particular model of computation and a particular algorithm.

For the solved subset of computing problems, TOC measures the efficiency of solution in terms of time and space complexity (complexity theory). For a subset of problems with only approximate solutions, TOC analyzes the degree of solution's precision.

>TOC's central question is about the fundamental limits of computing.

TOC studies *decidability* and *tractability* of computing problems, within different models of computation; it analyses and classifies solutions into numerous *complexity classes*, according to the *algorithmic efficiency* manifested through *time and space consumption*.

>The goal of ToC is the development of formal mathematical models of computation that reflect real-world computing.

Although established in mathematics in the early XX century, long before the invention of computers, today, the TOC is split between mathematics and theoretical computer science.

TOC is divided into 3 major branches:
- automata theory and formal languages
- computability theory (ex recursion theory)
- (computational) complexity theory

## Models of computation

The study of computation is performed using a mathematical abstraction of computers, called a *model of computation*, which ensures more rigorous and uniform setting for analysis.

Many models of computation exist, but the most famous and commonly examined is *Turing machine*. Turing machine is simple to formulate a problem in that then can be analyzed and used to prove results. TM is still what many consider the most powerful possible "reasonable" model of computation.

It might seem that the potentially infinite memory capacity is an unrealizable attribute of TMs, but any decidable problem solved by Turing machine will always require only a finite amount of memory. So, in principle, any problem that can be solved (is decidable) by a Turing machine can be solved by a computer that has a finite amount of memory.

This year's scoreboard that orders models of computation by popularity, is the 6th year in a row headed by lambda calculus, while the cumbersome Turing machine is still calculating its way down, making us all wait at least another year before finally finding out if it will halt once it bottoms out.

## TOC Major branches

ToC is divided into these major branches:

* *Automata Theory* and *Formal Languages*
  https://en.wikipedia.org/wiki/Automata_theory
  https://en.wikipedia.org/wiki/Formal_language
* *Computability Theory*
  https://en.wikipedia.org/wiki/Computability_Theory
* *Complexity Theory*
  https://en.wikipedia.org/wiki/Computational_complexity_theory
