# Turing completeness

https://en.wikipedia.org/wiki/Turing_completeness
https://esolangs.org/wiki/Turing-complete


## Requirements

Some of the requirements for achieving Turing completeness:
- conditional branching, conditional jump
- infinite loop
- recursion

This list is approximate only, some of these requirements overlap or are redundant in the presence of others.

## Introduction

In computability theory, a system of data-manipulation rules is said to be **Turing-complete** (or computationally universal) if it can be used to simulate any Turing machine.

This means that such system is able to recognize or decide other data-manipulation rule sets. Turing completeness is used as a way to express the power of such a data-manipulation rule set.

A *system of data-manipulation rules* can be a model of computation or a system like computer's instruction set, a programming language, or a cellular automaton.

A related concept is that of **Turing equivalence** - two computers P and Q are called equivalent if P can simulate Q and Q can simulate P.

*Church-Turing thesis* conjectures that any function, whose values can be computed by an algorithm, can be computed by Turing machine, and therefore, that if any real-world computer can simulate Turing machine, it is Turing equivalent to Turing machine.

A *universal Turing machine* (UTM) can be used to simulate any Turing machine, and by extension, the computational aspects of any possible real-world computer. (A UTM cannot simulate non-computational aspects such as I/O).

To show that something is Turing-complete, it is sufficient to show that it can be used to simulate some Turing-complete system. No physical system can have infinite memory, but *if the limitation of finite memory is ignored*, most programming languages are otherwise Turing-complete.

## Contents

- Non-mathematical usage
- Formal definitions
  - Turing completeness
  - Turing equivalence
  - Computational universality
- History
- Computability theory
- Turing oracles
- Digital physics
- List of Turing-complete systems
- Language features needed for Turing-completeness
- Unintentional Turing completeness
- Non-Turing-complete languages

## Non-mathematical usage

In colloquial usage, the terms "Turing-complete" and "Turing-equivalent" are used to mean that any real-world general-purpose computer or computer language can approximately simulate the computational aspects of any other real-world general-purpose computer or computer language. This has given rise to some practical concepts, such as *virtualization* and *emulation*.

Physical computers constructed so far can be functionally analyzed like a single-tape Turing machine (where the infinite tape corresponds to finite memory). Thus, the associated math around TMs applies by sufficiently abstracting their operations.

However, since real computers have limited physical resources, they are only *linear-bounded automaton complete*.

In contrast, a *universal computer* is defined as a device with a Turing-complete instruction set, infinite memory, and infinite available time.

## Formal definitions

In computability theory, several closely related terms are used to describe the computational power of a computational system (such as an abstract machine or programming language):
- Turing completeness
- Turing equivalence
- Computational universality

### Turing completeness

A computational system that can compute every *Turing-computable function* is called Turing-complete (or Turing-powerful).

Alternatively, a Turing-complete system is one that can simulate a universal Turing machine.

### Turing equivalence

A Turing-complete system is called Turing-equivalent if every function it can compute is also Turing-computable; i.e. it computes precisely the same class of functions as do Turing machines.

Alternatively, a Turing-equivalent system is one that can simulate, and be simulated by, a universal Turing machine.

All known physically-implementable Turing-complete systems are Turing-equivalent, which adds support to the Church-Turing thesis.

### Computational universality

A system is called *universal with respect to a class of systems* if it can compute every function computable by systems in that class (or can simulate each of those systems).

Typically, the term *(computational) universality* is tacitly used with respect to a Turing-complete class of systems.

The term *weakly universal* is sometimes used to distinguish a system (e.g. a cellular automaton) whose universality is achieved only by modifying the standard definition of Turing machine to include input streams with infinitely many 1s.

## History

Turing completeness is significant in that every real-world design for a computing device can be simulated by a *universal Turing machine*.

*Church-Turing thesis* states that this is a law of mathematics - that a UTM can, in principle, perform any calculation that any other programmable computer can. This says nothing about the effort needed to write the program, or the time it may take for the machine to perform the calculation, or any abilities the machine may possess that have nothing to do with computation.

Charles Babbage's analytical engine (1830s) would have been the first Turing-complete machine if it had been built at the time it was designed. Babbage appreciated that the machine was capable of great feats of calculation, including primitive logical reasoning, *but he did not appreciate that no other machine could do better*. From the 1830s until the 1940s, mechanical calculating machines such as adders and multipliers were built and improved, but they could not perform a *conditional branch* and therefore were not Turing-complete.

In the late 19th century, Leopold Kronecker formulated notions of computability, defining *primitive recursive functions*. These functions can be calculated by rote computation, but they are not enough to make a universal computer, because the instructions that compute them do not allow for an *infinite loop*.

In the early 20th century, David Hilbert led a program to axiomatize all of mathematics with precise axioms and precise logical rules of deduction that could be performed by a machine. Soon it became clear that a small set of deduction rules are enough to produce the consequences of any set of axioms. These rules were proved by Kurt Gödel in 1930 to be enough to produce every theorem.

The actual notion of computation was isolated soon after, starting with *Gödel's incompleteness theorem*. This theorem showed that axiom systems were limited when reasoning about the computation that deduces their theorems.

Church and Turing independently demonstrated that *Hilbert's decision problem* (Entscheidungsproblem) was unsolvable, thus identifying the computational core of the incompleteness theorem.

This work, along with Gödel's work on *general recursive functions*, established that there are sets of simple instructions, which, when put together, are able to *produce any computation*. The work of Gödel showed that the notion of computation is essentially unique.

In 1941 Konrad Zuse completed the `Z3` computer. Zuse was not familiar with Turing's work on computability at the time. In particular, the Z3 lacked dedicated facilities for a *conditional jump*, thereby precluding it from being Turing complete. However, in 1998, it was shown by Rojas that Z3 was capable of simulating conditional jumps, and therefore Turing completeness. To do this, its tape program would have to be long enough to execute every possible path through both sides of every branch.

The first computer capable of conditional branching in practice, and therefore *the first Turing-complete computer*, was the `ENIAC`, built in 1946. Zuse's `Z4` computer was operational in 1945, but it didn't support conditional branching until 1950.

## Computability theory

**Computability theory** uses models of computation to analyze problems and determine whether they are computable and under what circumstances.

The first result of computability theory is that there exist problems for which it is impossible to predict what a system that is Turing-complete will do (halt or not) over an arbitrarily long time.

The classic problem is **the halting problem** which questions the existence of an algorithm (a higher-order program) that takes as input a program (in some Turing-complete language), as well as its arguments, and determines whether that program, operating on those input args, eventually stops or runs forever.

While it is possible to create an algorithm that can do this for some cases, it is impossible to create a general algorithm, i.e. one that can always do it. Given any characteristic of the program's eventual output, it is impossible to determine whether that characteristic will hold or not.

This impossibility poses problems for the analysys of computer programs. For one, there cannot be a tool that always protects programmers from infinite loops, or prevents users from supplying input that would cause an infinite loop. Instead, only concrete cases can be helped, by e.g. limiting the time allowed for a program to run, or limiting the power of flow-control language constructs, i.e. disallowing unbounded loops.

>However, another theorem shows that there are problems that can only be solved by Turing-complete languages. 
Languages with finite looping abilities that guarantee that every program eventually halts, cannot solve such problems in general. They cannot compute the computable function produced by the Cantor's diagonal argument on all computable functions in that language, and are thus non-Turing-complete.

There is a lot of reaserach in this areas, and there are total languages that can achive many things, but they need the programmer to prove that, e.g. the value a function recuses over always gets 'smaller', so that the recursion eventually stops. Infinite loops are not possible in a total language, but they are not king and an impressive number of things can still be pulled off.

## Turing oracles

A computer with access to an *infinite tape of data* may be more powerful than a Turing machine; e.g. the tape might contain the solution to the halting problem. Such an infinite tape of data is called a **Turing oracle**.

Even a Turing oracle with random data is not computable (with probability 1), since there are only countably many computations but uncountably many oracles.

>So a computer with a random Turing oracle can compute things that a Turing machine cannot.

## Digital physics

All known laws of physics have consequences that are computable by a series of approximations on a computer. A hypothesis called *digital physics* states that this is no accident because the universe itself is computable on a universal Turing machine. This would imply that no computer more powerful than a universal Turing machine can be built physically.

## List of Turing-complete systems

The *computational systems* (algebras, calculi) that are discussed as Turing-complete systems are those intended for studying TCS. They are intended to be as simple as possible, so it would be easier to understand the limits of computation. These include:
- Automata theory
  - Cellular automata
    - Conway's Game of Life
    - Rule 110
- Formal grammar (language generators)
- Formal language (language recognizers)
- Lambda calculus
- Post-Turing machines
- Process calculus

Most *programming languages* (their abstract models; maybe with some particular construct that helps ignore the finiteness of memory), conventional and unconventional, are Turing-complete. These include:
- Functional languages (Haskell, its type system)
- Logic languages (Prolog)
- Procedural languages (C, C#, C++, Java, PHP)
- Multi-paradigm languages (JS, Python, Ruby, Lisp, R, ML, OCaml)
- General-purpose macro processors (m4)
- Declarative languages (XSLT)
- Hardware description languages (VHDL)
- Typesetting systems (TeX)

Basically, all general-purpose languages in wider use are Turing-complete. Many esoteric programming languages (where programmers try to implement basic programming constructs using strange choices), despite being extremely minimalistic, are Turing-complete.

Some *rewriting systems* are Turing-complete.

## Language features needed for Turing-completeness

Turing completeness is an *abstract statement of ability*, rather than a prescription of specific language features used to implement that ability.

The features used to achieve Turing completeness can be quite different. *Repetition* may be achieved using recursion, like in Haskell and Prolog (which lack looping statements); while Fortran may use imperative looping constructs or possibly even GOTO.

Most programming languages are intended for describing computation on the *von Neumann architecture* that has memory (RAM and registers) and a control unit. These two elements make this architecture Turing-complete. Procedural PLs map exactly to this architecture and they are also Turing-complete, but on the other hand, even pure functional languages (Haskell, Clean, Frege, PureScript) are Turing-complete.


[NB 2]

Turing completeness in declarative SQL is implemented through recursive common table expressions.

Unsurprisingly, procedural extensions to SQL (PLSQL, etc.) are also Turing-complete. This illustrates one reason why relatively powerful non-Turing-complete languages are rare: the more powerful the language is initially, the more complex are the tasks to which it is applied and the sooner its lack of completeness becomes perceived as a drawback, encouraging its extension until it is Turing-complete.

The untyped lambda calculus is Turing-complete, but many typed lambda calculi, including System F, are not. The value of typed systems is based in their ability to represent most typical computer programs while detecting more errors.

Rule 110 and Conway's Game of Life, both cellular automata, are Turing-complete.


## Unintentional Turing completeness

Some pieces of software have reached Turing-completeness by accident (i.e. not by design) at some point in the development:
- Microsoft Excel
- TypeScript's type system
- `printf` format string
- C++ templates

In biology, Chemical Reaction Networks and Enzyme-Based DNA Computers have been shown to be Turing-equivalent.


## Non-Turing-complete languages

Many computational languages exist that are non-Turing-complete.

For example, the set of *regular languages*, generated by regular expressions and recognized by finite automata. A more powerful but still not Turing complete are extensions of finite automata, *Push-Down Automata* and *Context-Free Grammars*.

Further examples include some of the early versions of the pixel shader languages embedded in Direct3D and OpenGL extensions. DHall is a configuration language that is powerful but non-TC.

In *total functional programming* all functions are total, meaning they must always terminate. The Charity language uses a type system and control constructs based on category theory, whereas the Epigram language uses dependent types to pull this off. The LOOP language is resricted to computation of primitive recursive functions only.

These languages can only compute the *proper subsets of the total computable functions*, since the full set of total computable functions is not computably enumerable. Moreover, since all functions in these languages must be total, algorithms for recursively enumerable sets cannot be stated in them.

*Simply-typed lambda calculus* is non-Turing-complete, but untyped lambda calculus is Turing-complete.
