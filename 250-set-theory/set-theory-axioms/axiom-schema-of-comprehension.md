# Axiom schema of comprehension
# Axiom schema of specification


https://en.wikipedia.org/wiki/Axiom_schema_of_specification

axiom-schema-of-specification


The **axiom of comprehension** states that for any given property, there is a corresponding set, i.e. a set that contains all objects for which that property holds. This allows anything and everything to constitute a set, leading to paradoxes.


If P is a property, then there exists a set $$A = \{x | P(x)\}$$

---

An object has no say in whether it wants to belong to a set - when its "number" is called, it has no choice but to belong (because it always have).

---

If P is a property, then there exists a set $$A = \{x | P(x)\}$$

This principle, however, is false:

Russell's Paradox

Consider the set S whose elements are all those (and only those) sets that are not members of themselves: S = {X : X / ∈ X}.

Question: Does S belong to S? If S belongs to S, then S is not a member of
itself, and so S / ∈ S. On the other hand, if S / ∈ S, then S belongs to S. In
either case, we have a contradiction. Thus we must conclude that

{X : X / ∈ X}

is not a set, and we must revise the intuitive notion of a set.


The safe way to eliminate paradoxes of this type is to abandon the *Schema of Comprehension* and keep its weak version, *the Schema of Separation*: 

if $$P$$ is a property, then for any set $$X$$ there exists a set $$Y$$:

$$Y = \{x \in X . P(x)\}$$

Once we give up the full Comprehension Schema, Russell’s Paradox is no longer a threat; moreover, it provides this useful information: the set of all sets does not exist (otherwise, apply the Separation Schema to the property x / ∈ x). In other words, it is the concept of the set of all sets that is paradoxical, not the idea of comprehension itself.

Replacing full Comprehension by Separation presents us with a new problem. The Separation Axioms are too weak to develop set theory with its usual operations and constructions.

Notably, these axioms are not sufficient to prove that, e.g., the union `X ∪ Y` of two sets exists, or to define the notion of a real number. Thus we have to add further construction principles that postulate the existence of sets obtained from other sets by means of certain operations.

The axioms of ZFC are generally accepted as a correct formalization of those principles that mathematicians apply when dealing with sets.
