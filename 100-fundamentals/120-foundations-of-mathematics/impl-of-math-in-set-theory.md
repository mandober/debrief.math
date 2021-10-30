# Implementation of mathematics in set theory

https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory

The *Zermelo-Frankel set theory* is considered by most contemporary mathematicians to be the foundational theory of modern mathematics. 

Implementation of mathematical concepts in set theory: the implementation of a number of basic mathematical concepts is carried out in parallel in ZFC (the dominant set theory) and in NFU, the version of Quine's New Foundations shown to be consistent by R. B. Jensen in 1969 (here understood to include at least axioms of Infinity and Choice).

What is said here applies also to two families of set theories: on the one hand, a range of theories including Zermelo set theory near the lower end of the scale and going up to ZFC extended with large cardinal hypotheses such as "there is a measurable cardinal"; and on the other hand a hierarchy of extensions of NFU which is surveyed in the New Foundations article. These correspond to different general views of what the set-theoretical universe is like, and it is the approaches to implementation of mathematical concepts under these two general views that are being compared and contrasted.

It is not the primary aim of this article to say anything about the relative merits of these theories as foundations for mathematics. The reason for the use of two different set theories is to illustrate that multiple approaches to the implementation of mathematics are feasible. Precisely because of this approach, this article is not a source of "official" definitions for any mathematical concept.

## Preliminaries

> Mathematical theories prove theorems (and nothing else).

Saying that a theory allows the construction of a certain object means that it is a theorem of that theory that that object exists.

This is a statement about a definition of the form "the x such that ϕ exists", where ϕ is a formula of our language: the theory proves the existence of "the x such that ϕ" just in case it is a theorem that "there is one and only one x such that ϕ".

Loosely, the theory "defines" or "constructs" this object in this case. If the statement is not a theorem, the theory cannot show that the object exists; if the statement is provably false in the theory, it proves that the object cannot exist; loosely, the object cannot be constructed.

# Implementation of mathematics in set theory

https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory

A mathematical theory may comprise primitive mathematical notions, axioms, definitions, lemmas and theorems.

A mathematical theory merely proves its theorems and nothing more. Saying that, a theory allows the construction of a certain object, means that, it is a theorem of that theory that the object exists. This statement is about a definition of the form "the x such that ϕ exists", where ϕ is a formula of the language: the theory proves the existence of "the x such that ϕ" just in case it is a theorem that "there is one and only one x such that ϕ". Loosely, the theory "defines" or "constructs" this object in this case. If the statement is not a theorem, the theory cannot show that the object exists; if the statement is provably false in the theory, it proves that the object cannot exist (loosely, the object cannot be constructed).


ZFC and NFU share the language of set theory, so the same formal definitions "the x such that ϕ" can be contemplated in the two theories.

A specific form of definition in the language of set theory is set-builder notation:
- $$\{ x \mid \phi \}$$ 
means the set A such that for all x, 
$$\{ \forall x \mid x \in A \iff \phi \}$$ where A is not free in ϕ
- $$\{ x \in B \mid \phi \}$$ means $$\{ x \mid x \in B ∧ \phi \}$$
- $$\{ f(x_{1}, \ldots, x_{n}) \mid \phi \}$$ is defined as    
$$\{z\mid \exists x_{1},\ldots ,x_{n}\, (z=f(x_{1},\dots ,x_{n}) \wedge \phi )\}$$    
where $$f(x_{1},\ldots ,x_{n})$$ 
is an expression already defined.


## Empty set, singleton, unordered pairs and tuples

These constructions appear first because they are the simplest constructions in set theory, not because they are the first constructions that come to mind in mathematics (though the notion of finite set is certainly fundamental!) 


Even though NFU also allows the construction of set ur-elements yet to become members of a set, the empty set is the unique set with no members:





---

Primitives
- A set is a collection of any number of unique objects, called elements, without the notion of order.
- There exists the empty set, denoted by $$\varnothing = \{\}$$

The set theory doesn't require anything else apart from the empty set. Still, the existence of the empty set is enough to produce numerous distinct objects. This implies that set elements are themselves sets.

Axioms
The set operation of **union** defines how sets are merged together. The union of sets A and B is the set of elements which are in A, in B, or in both A and B: `A ∪ B = { x: x ∈ A ∨ x ∈ B }` (compare the symbols for logical disjunction, `∪`, and the set union, `∨`).

$$\displaystyle A \cup B = \{ x: x \in A \lor x \in B\}$$

$$
\displaystyle
A = \{ \{ \varnothing \} \}, \\
B = \{ \varnothing, \{ \varnothing \} \}, \\
A \cup B = \{ x: x \in A \lor x \in B\}
$$


## Set theoretic construction of the natural numbers

$$
\displaystyle
0 = \{ \}  = \varnothing  \\
0 \in \mathbb{N} \\
n \in \mathbb{N} \to S(n) \in \mathbb{N}  \\
\ \\
S(0) = 1 \\
S(n) = n \cup \{ n \} \\
\ \\
0 =\ \ \varnothing  = \{ \}           \\
1 = \{ \varnothing \}     \\
2 = \{ \varnothing,\ \ \{ \varnothing \} \}     \\
3 = \{ \varnothing,\ \ \{ \varnothing \},\ \ \{ \varnothing, \{ \varnothing \}  \}    \}     \\
S(n) = n \cup \{ n \} \\
$$




---




$$
\displaystyle
S(0) = \\
\begin{align}
    & 0 \              & \cup &     \{ &0       & \} &= \\
    & \{\      \}      & \cup &     \{ &\{ \}   & \} &= \\
    & \{\  \not\} \not & \cup &\not \{ &\{ \}   & \} &= \\
    & \{\              &      &     \{ &\}      & \} &= \\
\end{align} \\
\{ \{ \} \} = \{ \varnothing \} = 1
$$
