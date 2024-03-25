# TOC :: Theory of Computation :: Branches

ToC is divided into 3 major branches:
* Automata Theory and Formal Language Theory
* Computability Theory
* Complexity Theory

## Automata Theory and Formal Language Theory

Automata Theory and Formal Language Theory are often cited as a single branch of ToC because they share the subject of their study. The theory of Formal Languages investigates languages and their properties, while the theory of Automata studies *abstract machines*, which are models of computation capable of recognizing those languages.

There are many correspondencies between these two theories. For one, the simplest class of automata, *finite-state machines* (FSM), which do not possess any kind of memory, can only recognize *regular languages*. In fact, the two are so deeply entranched that a regular language is actually defined as a language recognized by a FSM. *Regular expressions*, invented within the theory of Formal Languages, are another formalism that can only describe regular languages; at least in its original (and still the only mathematical) version, because, later, regexes have been augmented with various capabilities (PCRE) that went beyond their rigorous mathematical definition but enabled them to describe even some *non-regular languages*.

>Formal Language Theory studies languages that are recognized (described, enumarated) using abstract machines that Automata Theory studies.

Central questions of Automata Theory
- Can a certain automaton solve more problems than some another automaton?
- Do different automata (as models of computation) have the same power?

Formal Language Theory studies languages and their properties, including formal syntax with alphabets their strings are made of, and formal grammars that prescribe the rules how the well-formed strings are formed. It also classifies languages into classes according to those properties.

Abstract machines of Automata theory and Formal Language theory include State Machines (used in text processing, compilers, hardware design), Context-free Grammars (used to define programming languages and in AI research), Turing Machines (form a simple abstract model of modern computers).

## Computability theory

The central questions of computability theory:
- Classifying problems as solvable or unsolvable.
- The possiblity of determining whether some math statement is true or not.

The main term of Computability theory is *decidability*. If a problem is found to be decidable, then the concern transfers to the question of *tractability*, that is, whether a solution can be computed in a resonable amount of time using a resonable amount of space (memory).

- for many problems, it is unknown if they are decidable or undecidable
- some problems have been determined to be undecidable (e.g. halting problem)
- some problems have been determined to be decidable
- some decidable problems have untractible solution
- fortunatelly, many decidable problems have tractible solutions

Computability theory has arised from Recursion theory. Recursion theory has initiated the work in this field which was based on the *general recursive functions* (GRFs) studied by Gödel and Kleene. The class of *primitive recursive functions* (PRFs) was isolated which could compute many problems and had the property of always terminating. The class of PRFs consisted of 3 primitives (zero, successor and projections), along with two ways to make combinations: composition and primitive recursion. However, not all problems could be computed, unless the class off PRFs was augmented with an additional operation of *minimization*, thereby yielding the class of GRF.

## Complexity theory

Complexity theory is concerned with the time and space consumption of decidable problems. That is, even if a problem is determined decidable and even if it has a solution, it may happen that the solution is not tractible, in that it takes an enourmous amount of time or space to complete.

Complexity theory classifies all problems into computational classes, the most famous of which are the class NP and the class P. The class NP contains problems with non-polynomial time solution, while the class P contains problems with polynomial time solution (time turned out to be far greater restriction than space, generally). A polynomial time is an asympthotic measure of time where the amount of time taken can be expressed as a polynomial.

Central questions of Complexity theory
- Computationally hard and easy problems
- Classifying problems according to their time and space complexity
- Computational clases, P vs NP, is P = NP
- Rigorously proving that a NP problem is NP-hard indeed
