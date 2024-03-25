# The Axiom of Extensionality

https://en.wikipedia.org/wiki/Axiom_of_extensionality

## The Axiom

**The Axiom of Extensionality**, or the Axiom of Extension, one of the axioms of Zermelo-Fraenkel set theory, *states that two sets that have the same elements are the same set*. In other words, a set is uniquely determined (identified, identifiable) by its elements.

Formally, this can be denoted by the following formula (in which it is not essential that `x` is a set, but everything is a set in ZF):

`∀A ∀B (∀x (x ∈ A ⇔ x ∈ B) ⇔ A = B)`


## Analysys of the formula

The formula is derived from the definition of a subset:
∀A ∀B (∀x (x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B)

And if two sets are each other's subsets, then they are the same:
∀A ∀B ((A ⊆ B ⋀ B ⊆ A) ⇔ A = B)

If the main connective was the implication instead of the bijection:
                         ↓
∀A ∀B (∀x (x ∈ A ⇔ x ∈ B) ⇔ A = B)
`∀A ∀B (∀x (x ∈ A ⇔ x ∈ B) ⇒ A = B)`

…the converse would follow anyway from the *substitution property of equality*:
`∀A ∀B (A = B ⇒ ∀x (x ∈ A ⇔ x ∈ B))`

(RECALL) The substitution property of equality: For any `a` and `b`, and any predicate `P`, if `a = b`, then `P(a) = P(b)`.

The clause, `∀x (x ∈ A ⇔ x ∈ B)`, states that sets `A` and `B` have precisely the same elements, the implication of which is that they are the same set, so `A = B`. Thus the axiom is stating that two sets are equal iff they have precisely the same elements,
`∀A ∀B (A = B ⇒ ∀x (x ∈ A ⇔ x ∈ B))`

From that, it follows that
>A set is uniquely determined by its elements.



The axiom of extensionality can be used with any statement of the form 
`∃A ∀x (x ∈ A ⇒ P(x))`

where `P` is a unary predicate (that doesn't mention `A`), to define a *unique set* `A` whose members are precisely the objects (sets) satisfying the predicate `P`.

After the set A is defined, we can introduce a new symbol for it, `A` (it is in this way that definitions in ordinary mathematics ultimately work when their statements are reduced to purely set-theoretic terms).


Q: So, the formula, `∃A ∀x (x ∈ A ⇒ P(x))`, defines a new set `A` by stating that all its elements satisfy some predicate `P`?
A: No. It defines some other set, say `S`, derived from the set `A`, such that only those elements of `A` that satisfy the predicate `P` are included in it.

Q: So, isn't that the same as the set builder notation, `A = { x | P(x) }`, which is the prime example of an unrestricted set comprehension?
A: Again, no. This formula is, in fact, equivalent to the set-builder notation `S = { x | Q(x) ⋀ P(x) }`, where `Q` is the predicate meaning `x ∈ A`, i.e. that all elements `x` are in the set `A`. Then only those elements of `A` which also satisfy the predicate `P` are selected as members of the set `S`. 
The important thing that makes all the difference from the unrestricted set comprehension is that the elements for the new set are picked from an existing, verified-as-correct, set, so the paradoxes cannot sneak in.


## Modifications of the axiom of extension

The axiom of extensionality is uncontroversial in set-theoretical foundations of mathematics and it appears, with some modifications, in all alternative axiomatisations of set theory.


Predicate logic with equality is more frequently used then the **predicate logic without equality**, but in the latter case, the axiom can be modified so as to define $$x=y$$ as an abbreviation:

$$
\forall z[z\in x\Leftrightarrow z\in y]
\land 
\forall w[x\in w\Leftrightarrow y\in w]
$$

Then the axiom of extensionality can be reformulated as: 
$$
\forall x\,\forall y 
[
  \forall z(z\in x\Leftrightarrow z\in y)
  \Rightarrow 
  \forall w(x\in w\Leftrightarrow y\in w)
]
$$

which states that, if $$x$$ and $$y$$ have the same elements, then they belong to the same sets.


In the Zermelo–Fraenkel axioms, there are no **ur-elements** (ur-element is a member of a set that is not itself a set), but they are included in some alternative axiomatisations of set theory.

So, in **set theory with ur-elements**, ur-elements can be treated as a different logical type from sets. In this case, $$B\in A$$ makes no sense if $$A$$ is an ur-element, so the axiom of extensionality simply applies only to sets.

Alternatively, in untyped logic, we can require $$B\in A$$ to be false whenever $$A$$ is an ur-element. In this case, the usual axiom of extensionality would then imply that every ur-element is equal to the empty set. To avoid this consequence, we can modify the axiom of extensionality to apply only to nonempty sets, so that it reads:

$$
\forall A\,\forall B\,
(
  \exists X\,(X\in A)
  \Rightarrow 
  [\forall Y\,(Y\in A\iff Y\in B)\Rightarrow A=B]
)
$$

Given any set $$A$$ and any set $$B$$, 
if $$A$$ is a nonempty set (i.e. if there exists an element $$X$$ in the set $$A$$), 
then, if $$A$$ and $$B$$ have precisely the same members, then 
they are equal.

Still another alternative in untyped logic is to define $$A$$ itself to be the only element of $$A$$ whenever $$A$$ is an ur-element. While this approach can serve to preserve the axiom of extensionality, the axiom of regularity will need an adjustment instead.


---

**The axiom of extension** states that two sets are equal if they have the same elements, i.e. they are equal in "extension" (scope, content), as opposed to equality in "intension" (meaning, concept). The axiom of extension means that the set theory only deals with the content of sets, not with the concepts used to form them.

For example, the set of black US presidents is currently equal in extension to the set containing Barack Obama as a single element, but they are different in intension.

Two sets are equal if and only if they contain the same elements:
∀x:(x∈A⟺x∈B)⟺A=B

In logic, **extensionality**, or extensional equality, refers to principles that judge objects to be equal if they have the same external properties. It stands in contrast to the concept of **intensionality**, which is concerned with whether the internal definitions of objects are the same.
