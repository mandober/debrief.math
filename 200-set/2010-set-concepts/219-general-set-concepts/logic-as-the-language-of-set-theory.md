# Set theory :: Logic as the language of set theory

Before we can discuss set theory, we need to familiarize ourselves with logic, particularly with predicate logic such as first-order logic (FOL) since it is the most commonly used one.

>Logic is the internal language of set theory.

Logic is used as the language that enables us to talk about sets. We cannot specify sets without it. We use the language of logic (most often FOL) to build a formula that specifies a set. We use logic to decribe relations between sets, for set specifications, to describe interactions between sets, set properties and operations on sets, etc. We need logic for just about anything we want to say about sets.

>Set theory is a branch of mathematical logic.

Set theory is actually just one branch of mathematical logic. Mathematical logic includes set theory, proof theory, computability (recursion) theory and type theory.


>Axiomatic set theory, particularly ZF, fundamentally has two layers.

First, there is a deductive system of first-order logic with propositions (statements with a truth value) as the main objects, and then there are the ZF axioms, formulated within the system of logic, that establish the notion of sets.

This means that set theory needs another, external structure (superstructure), such as FOL, to provide a deductive system within which it can be formulated (as opposed to type theory which is its own, self-contained deductive system).

Second, this means that a set theory has two basic notions - not just that of *sets* but also of *propositions*, which are necessary in order to formulate sets (as opposed to type theory which has only one basic notion - that of types).

Most set theories do not classify their objects: there are objects which may be contained in sets, becoming elements of a set, and there objects that are contain other objects, but usually there is no difference between a set that is a container and a set that is an element (of another set).

The intuitive realization that a set cannot be contained in its element must be explicitly establishes, along with any similarly bizzare situation, in order to prevent them.


>Differences between set theory and type theory

If we compare objects (set elements) of set theory with terms of type theory, and set themselves with types, one of the biggest diferences between the two theories is that an element can belong to many sets, but a term always belongs to exactly one type. In type theory, unlike in set theory, objects are classified using the primitive notion of type (which is similar to data types found in PLs).



FOL as a deductive system of set theory has only one kind of judgment - that a given proposition has a proof. That is, each proposition `A` gives rise to a judgment "`A` has a proof", and all judgments are of this form.

A FOL rule like "from A and B infer A ∧ B" is actually a rule of "proof construction" which says that given the judgments "A has a proof" and "B has a proof", we may deduce that "A ∧ B has a proof". Note that the judgment "A has a proof" exists at a different level from the proposition `A` itself, which is an internal statement of the theory.


When working internally in type theory, 
we cannot make statements such as 
"if `a : A`, then it is not the case that `b : B`",
like we can in set theory, 
`a ∈ A -> ¬(b ∈ B)` aka `a ∈ A -> b ∉ B` 
nor can we "disprove" the judgement `a : A`, 
like we can in set theory.

A way to think about it, 
is that in set theory, 
the membership is a relation 
which may or may not hold 
between two objects `a` and `A`, 
while in type theory, we cannot talk about 
an element `a` in isolation: every element, 
by its very nature, is an element of some type, 
and, generally speaking, that type is uniquely determined.


Thus, when we say informally "let `x` be a natural number", in set theory, this is a shorthand for "let `x` be a thing (`∀x`) and let's assume that `x ∈ ℕ`", that is, `∀x(x ∈ ℕ)`. On the other hand, in type theory, "let `x : ℕ`" is an atomic statement; we cannot introduce a variable without specifying its type.

Actually, in set theory, in practice, whenever we need a proposition `x ∈ A`, there is usually some limiting set `U` of which `x` is an element, and `N` is a subset of `U`, so we express it as `∀x(x ∈ U -> x ∈ N)`.


>Propositional equality - equality is a proposition

Another difference between set theory and type theory is the treatment of equality. In mathematics, the notion of equality is a proposition (so we can disprove an equality or assume an equality as a hypothesis).


In set theory, the only rules are the rules of FOL (such as the rule allowing us to deduce "A ∧ B has a proof" from "A has a proof" and "B has a proof"): all the information about the behavior of sets is contained in the axioms.
