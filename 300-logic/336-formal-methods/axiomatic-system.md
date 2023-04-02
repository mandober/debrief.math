# Axiomatic system

https://en.wikipedia.org/wiki/Axiomatic_system

- axiom
- axiomatic system
- theory
- theorem
- derived theorems
- consistent theory
- formal system
- formal theory
- formal proof
- closed formal system under logical implication
- mathematical proof
- consistency
- consistent axiomatic system
- contradiction
- independence
- independent axiom
- independent system
- axiomatic system
  - completely described axiomatic system
  - is a special type of a formal system
  - consistent axiomatic system
  - inconsistent axiomatic system
  - complete axiomatic system
  - incomplete axiomatic system
  - closed (under logical implication) axiomatic system
  - decidable axiomatic system
- Properties
  - consistency vs inconsistency
  - independence vs dependence
  - completeness vs incompleteness
  - closed vs open
  - decidability vs indecidability



In mathematics and logic, 
an **axiomatic system** 
is any set of axioms 
from which some or all axioms 
can be used in conjunction 
to logically derive theorems.

A **completely described axiomatic system** 
is a special kind of a *formal system*.

A **theory** is a *consistent*, 
relatively-self-contained, 
body of knowledge 
which usually contains 
an *axiomatic system* 
and all its *derived theorems*.

A **theory** or **formal theory** 
is a set of sentences in a formal language. 
It is an *axiomatic system* 
(usually formulated within model theory) 
that describes a set of sentences 
and it is *closed under logical implication*.

> A **theory** is a set of sentences closed under logical implication.

A theory is a set of sentences (`T`) closed under logical implication (`→`). 
Let T contain `n` elements (sentences), `T = {t₀, t₁, t₂, …, tₙ}`. 
Given any subset `Γ ⊆ T`, 
if `Γ` entails a sentence `r` 
then the sentence `r` must also be in the theory. 
`(Γ ⊆ T ⋀ Γ |- r) -> r ∈ T`


A **formal proof** is a complete rendition of 
a *mathematical proof* within a formal system.

A **contradiction** 
is a possibility within an axiomatic system 
to derive both a statement and its negation. 
`P ∧ ¬P`, 
from the system's axioms, 

A **consistent axiomatic system** 
is an axiomatic system 
free of contradiction. 
The system makes it impossible 
to derive both a statement 
and the negation of that statement 
from the system's axioms.

An **inconsistent axiomatic system** 
allows for the possibility 
to derive both a statement 
and the negation of that statement 
from the system's axioms.

**Consistency** 
is a key requirement 
of axiomatic systems, 
as the presence of contradiction 
would allow any statement to be proven, 
`⟘ -> a` ,
a situation called 
**the principle of explosion** 
(ex falso quodlibet).


In an axiomatic system, 
an **independent axiom** 
is one that cannot be derived from other axioms in the system 
(that cannot be proven or disproven from other axioms). 

An **independent system** 
is one in which all 
axioms are independent.

Unlike consistency, 
*independence* 
is not a necessary requirement 
for a functioning axiomatic system. 
However, it is a highly desirable property 
since it allows minimizing 
the number of axioms in a system.

>Independence allows minimizing the number of axioms in a system.

An axiomatic system is **complete** 
if for every statement, 
either it or its negation 
is derivable from the system's axioms. 
In a **complete axiomatic system** 
every statement is *decidable*, 
meaning that it can be proved 
that the statement is 
either true or false, `P ∨ ¬P`.
