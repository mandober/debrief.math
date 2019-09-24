# Sets

# Introduction to sets

Sets are considered the foundation of modern mathematics. Concretely, **ZFC Set theory** is currently accepted by majority of mathematicians as the axiomatization system that is best fit to serve as the foundation of mathematics (although there are other candidates, like category theory).

That would mean that everything in the entirety of mathematics is derivable from sets, which is still a question of debate, however, sets do get used in many branches of mathematics. They are very extensively used in logic and (by extension) in CS.

Sets were introduced by the German mathematician Georg Cantor, at the end of the XIX century:

> **"A set is a gathering together into a whole of definite and distinct objects of our perception or thought - called the set elements."**

Initially, a naive (non-axiomatic) set theory was developed that treated sets as collections of objects. There were no special requirements and all kinds of objects could be gather together to form a set.

Introducing the axiom of **well-definedness**, a set became a well-defined collection of objects that share a common property. Being well-defined means that there is no ambiguity as to which elements belong to the set, however, this term alone cannot guarantee the consistency and clarity of what objects are exactly allowed to constitute a set.

The axiom of **comprehension** states that given any property, there is a set of all the objects with that property. This position allows anything and everything to constitute a set.

In any case, whether sets are considered in an axiomatic or naive system, they must be introduced without a proof, which means either as a mathematical primitive or as an explicit axiom.

Sets reject any attempt of precise definition, but being so ubiquitous and unavoidable, with many mathematical objects resembling a set of some kind, we must accept them intuitively, holding back the rigorous scrutiny.

Unfortunately, the lack of rigor quickly created problems, the most famous of which was the Russell's paradox. It affects the set theories that allow set membership to any object that satisfies a given predicate.


## Russell's paradox

> **Russell's paradox**: Let $$R$$ be the set of all sets that are not members of themselves. If $$R$$ is not a member of itself, then by definition it must contain itself. But if it does contain itself, then it contradicts its own definition.

This paradox, like many others, emerges in connection with self-reference ("whenever there's a self-reference, a paradox lurks near by"). 

The predicate $$P$$ holds if a set contains itself (a set is its own member):   
$$P(a) \iff a \in a$$

The set $$X$$ is a set whose members are the (weird) sets that contain themselves:   
$$X = \{\forall x \in X.P(x) \iff x \in x \}$$

The set $$R$$ is a set whose members are the (normal) sets that don't contain themselves (they don't satisfy the predicate):    
$$R = \{\forall s \in R. ¬P(s) \iff s \not\in s\}$$

The set R is a set whose members are the objects that don't satisfy the predicate P, or equivalently, the objects that do not contain themselves; and these objects are bound to be sets, because only sets may contain stuff.

Normally, the sets don't contain themselves (this would lead to infinite recursion), so a great number of sets is classified as belonging to $$R$$. There's only one last object left to go - where does the $$R$$ belong? If $$R$$ is not a member of itself, then its definition dictates that it must contain itself (since it does posses the required property). But if it contains itself, then it contradicts its own definition (because it doesn't possess the required property).

This paradox have been a forking point that spawned many set theories with different strategies on how to avoid it. A consistent system must impose restrictions on the set inclusion rules. The restriction of regulations about what can constitute a set, made way for the *axiomatic set theory* i.e. *class theory*.

## Set Theories

A **naïve set theory** is an approach to set theory which takes the notion of a set for granted, considering it a primitive concept (hence no proof required). It assumes that sets exist, particularly the existence of a universal set, despite the fact that such a broad assumption is ridden with paradoxes. However, it is still regarded a useful tool for introduction of the general concepts about sets.

An **axiomatic set theory** is a formal system based on a set (!) of axioms. The notion of set is either taken as a primitive or it is explicitly introduced by an axiom. The axioms constrain the rules for set construction and prescribe acceptable behavior. Other set-related notions are also introduced via axioms in a similar manner, e.g., the existence of the empty set, infinite sets, the existence and rules for constructing ordered pairs, etc. Zermelo-Fraenkel set theory is an axiomatic system regarded as the best candidate for the foundation of entire mathematics.
