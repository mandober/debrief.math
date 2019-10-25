# Introduction to sets

<!-- TOC -->

- [Russell's paradox](#russells-paradox)

<!-- /TOC -->

Sets are ubiquitous in mathematics, they occur in many math branches and they are extensively used in logic and, by extension, in CS. In fact, sets are designated as the foundation of all mathematics; concretely, **Zermelo-Fraenkel set theory** (ZF) is accepted by majority of mathematicians as the axiomatization system best fitted to serve as the math foundation. This means that the entirety of mathematics can be derived from ZF set theory.


Sets were introduced by the German mathematician Georg Cantor (1845-1918). His work in 1874-1884 marks the origin of the set theory. Cantor introduced the concept of set with:

> A set is a gathering together into a whole of definite distinct objects of our perception or thought, called the elements[^1].


Initially, a naive (non-axiomatic) set theory was developed that treated sets as collections of any objects, posing no restriction as to what can constitute a set. This liberal position allowed anything and everything to form a set. And once formed a set was considered a separate mathematical object in its own right.







**The axiom of comprehension** states that given any property, there is a set of all the objects with that property. This position allows anything and everything to constitute a set.

Introducing **the axiom of well-definedness**, a set becomes a well-defined collection of objects that share a common property. Being well-defined means that there is no ambiguity as to which elements belong to the set, however, this term alone cannot guarantee the consistency and clarity of what objects are exactly allowed to constitute a set.

Whether sets are considered in an axiomatic or naive system, they are introduced without a proof, which means either as a mathematical primitive or an explicit axiom. And since sets are so ubiquitous and unavoidable, with many mathematical objects resembling a set of some kind, we must accept them intuitively, holding back the rigorous scrutiny.

Having no restriction as to what can constitute a set has quickly created problems, the most famous of which was the Russell's paradox. It affects the set theories that allow set membership to any object that satisfies a given predicate.


## Russell's paradox

> **Russell's paradox**: Let $$R$$ be the set of all sets that are not members of themselves. If $$R$$ is not a member of itself, then by definition it must contain itself. But if it does contain itself, then it contradicts its own definition.

The set $$R$$ contains objects that do not contain themselves. Since these objects are bound to be sets (because only sets can contain stuff), we can say that the set $$R$$ contains sets that are not members of itself.

Normally, a set does not contain itselves (that would lead to infinite recursion), so almost all sets are classified as belonging to $$R$$.

Now, we just need to determine where does the $$R$$ itself belongs:
- if $$R$$ is not a member of $$R$$, then his definition dictates that it must contain itself (because it has the required property).
- if $$R$$ is a member of $$R$$, then it contradicts its own definition (because it doesn't have the required property).

This paradox, like many others, emerges in connection with self-reference; "whenever there's a self-reference, a paradox lurks near by".

This paradox have been a forking point that spawned many set theories with different strategies on how to avoid it. A consistent system must impose restrictions on the set inclusion rules. The restriction of regulations about what can constitute a set, made way for the *axiomatic set theory* i.e. *class theory*.


[^1]: "Unter einer *Menge* verstehen wir jede Zusammenfassung `M` von bestimmten wohlunterschiedenen Objekten `m` unserer Anschauung oder unseres Denkens (welche die *Elemente* von `M` genannt werden) zu einem Ganzen."  
"By a set we mean any collection `M` of certain well-differentiated objects `m` of our intuition or our thinking (which are named the elements of `M`) into a whole."
