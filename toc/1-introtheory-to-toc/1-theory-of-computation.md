# Theory of Computation

Theory of Computation (ToC) studies decidability and tractability of computing problems within different models of computation, it analyses the solutions to these problems, particularly taking interest in algorithms' efficiency andtheir space and time complexity.

The central question:    
_**What are the fundamental capabilities and limitations of computers?**_

Theory of Computation is a field of Mathematics and Theoretical CS, sub divided into 3 branches:
- Automata Theory
- Computability Theory
- Complexity Theory 


**Divisions**
* Automata Theory
  * Finite State Machines
    - Deterministic Finite Automata
    - Non-deterministic Finite Automata
    - Conversion of NFA to DFA and their equivalence
    - Mealy Machine
    - Moore Machine
  * Formal Language
    - Regular Expression
    - Context Free Languages
  * Turing Machine
* Computability Theory (Recursion theory)
  - Computation by abstract devices
  - Decidability
  - Tractability
* Complexity Theory
  - Analysis of algorithms
    - Numerical algorithms
    - Non-numerical algorithms
  - Complexity of algorithms
  - Tradeoffs between complexity measures


---


The goal of ToC is to develop formal mathematical models of computation that reflect real-world computers.



## Complexity theory

Concerns:
* Computationally *hard* and *easy* problems, P vs NP. Is P = NP?
* Classifying problems according to their complexity
* Rigorous proof that a NP problem is NP indeed


## Automata theory
The central questions of automata theory:
* Whether different models have the same power?
* Can a certain model solve more problems than the other?

Automata theory deals with definitions and properties of different types of
computation models including:
- **Finite Automata**: used in text processing, compilers, hardware design.
- **Context-Free Grammars**: used to define programming languages. Also in AI.
- **Turing Machines**: form a simple abstract model of a computer.


## Computability theory
The central questions of computability theory:
- Classifying problems as solvable or unsolvable.
- Whether an arbitrary mathematical statement is true or false.

In the 30's, it was discovered by Godel, Turing, Church that some of the fundamental problems in mathematics cannot be solved by a "computer" (even though computers crossed from theory into practice only in the 40's).

An example of such a problem is answering whether an arbitrary mathematical statement is true or false. To tackle such a problem, formal definitions of the notions of computer, algorithm and computation were needed. The theoretical models that were proposed in order to understand solvable and unsolvable problems led to the development of computers.


---

Theory of Computation

The theory of computation is a branch of computer science and mathematics combined that "deals with how efficiently problems can be solved on a model of computation, using an algorithm".

It studies the general properties of computation which in turn, helps us increase the efficiency at which computers solve problems. This is done when we estimate the validity of the solutions given by the computer through the 

theory of computation and then alternate the algorithms so that we can obtain a more reliable solution.

This is a fast-growing branch that has helped solving problems in many fields beside computer science such as Physics, Economy, Biology and many others.


Before introducing you to the basics of the theory of computation, I would like to talk about the Turing machine, as it plays a good role in explaining this theory:

It is theoretical abstract machine used as a model of computation . It uses an infinite memory tape where the information obtained are saved, and analyze these information to determine whether the operation is feasible or not.

This machine was the creation of Alan Turing in 1963 by, he used it to prove properties of computation in general and answer these questions : 

- "Does a machine exist that can determine whether any arbitrary machine on its tape is "circular""

- "Does a machine exist that can determine whether any arbitrary machine on its tape ever prints a given symbol"


Back to the computational theory,This theory is approached through three main fields:

1- Automata theory

2- Computability theory

3- Computational complexity theory


These three branches basically uses algorithms to exploit the powers of computers in solving problems.

Here is an illustration of these fields :



Automata theory:

This branch was established in the 20th century by mathematicians. The main aim in this branch is to analyze the behavior of machines and how they solve a problem.The most powerful model of automata is the Turing machine.


Computability theory:

It is when we are able to formulate the problem using the Turing machine easily, but we can never solve it.. In other words, It is when the computer is able to address the problem but unable to come up with the solution


Computational complexity theory:

The complexity theory discusses the efficiency at which a problem could be solved. This is done considering two major aspects: time complexity and space complexity, which are the measurees of the number of steps needed to 

analyze and solve the problem and thus determining the memory space needed to solve the problem.

In order to pre-determine the space and time that will be needed,computer scientists linked these two factors to the amount of input that was recieved, as the time and space needed increase linearly as the amount of input 

increases.


References:

https://en.wikipedia.org/wiki/Theory_of_computationtoc.csail.mit.edu/about

https://cs.stanford.edu/people/eroberts/courses/soco/projects/2004-05/automata-theory/basics.html

https://en.wikipedia.org/wiki/Turing_machine

https://en.wikipedia.org/wiki/Turing_machine


Questions:

-Is there anything that modern computer science can add to this theory to increase its efficiency?

-Will we be in need for this theory in the future with the rise of more complex methods of solving problem with the development of AI and the formation of other theories ?

- How much has this theory contributed to improving our lives in the modern time ?




Revised Essay:
The theory of computation is a branch of computer science and mathematics combined that "deals with how efficiently problems can be solved on a model of computation, using an algorithm".
It studies the general properties of computation which in turn, helps us increase the efficiency at which computers solve problems. This is done when we estimate the validity of the solutions given by the computer through the theory of computation and then alternate the algorithms so that we can obtain a more reliable solution.
This is a fast-growing branch of Computer Science that has helped solving problems in many fields beside computer science such as Physics, Economy, Biology and many others.

Before introducing you to the basics of the theory of computation, I would like to talk about the Turing machine, as it plays a good role in explaining this theory:
It is theoretical abstract machine used as a model of computation . It uses an infinite memory tape where the information obtained is saved, and then analyze to determine whether the operation is feasible or not.
This machine was the creation of Alan Turing in 1963, and he used it to prove properties of computation in general and answer these questions : 
- "Does a machine exist that can determine whether any arbitrary machine on its tape is "circular""?
- "Does a machine exist that can determine whether any arbitrary machine on its tape ever prints a given symbol"?

Back to the computational theory, this theory is approached through three main fields:
1- Automata theory
2- Computability theory
3- Computational complexity theory
These three branches basically uses algorithms to exploit the powers of computers in solving problems.
Here is an illustration of these fields :

Automata theory:
This branch was established in the 20th century by mathematicians. The main aim in this branch is to analyze the behavior of machines and how they solve a problem. The most powerful model of automata is the Turing machine.
Computability theory:
It is when we are able to formulate the problem using the Turing machine easily, but we can never solve it.. In other words, It is when the computer is able to address the problem but unable to come up with the solution
Computational complexity theory:
The complexity theory discusses the efficiency at which a problem could be solved. This is done considering two major aspects: time complexity and space complexity, which are the measure of the number of steps needed to 
analyze and solve the problem and thus determining the memory space needed to solve the problem.
In order to pre-determine the space and time that will be needed, computer scientists linked these two factors to the amount of input that was received, as the time and space needed increase linearly as the amount of input increases.
References:
https://en.wikipedia.org/wiki/Theory_of_computation toc.csail.mit.edu/about
https://cs.stanford.edu/people/eroberts/courses/soco/projects/2004-05/automata-theory/basics.html
https://en.wikipedia.org/wiki/Turing_machine

Questions:
-Is there anything that modern computer science can add to this theory to increase its efficiency?
-Will we be in need for this theory in the future with the rise of more complex methods of solving problem with the development of AI and the formation of other theories ?
- How much has this theory contributed to improving our lives in the modern time ?
