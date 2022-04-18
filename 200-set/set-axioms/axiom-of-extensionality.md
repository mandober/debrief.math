# The Axiom of Extensionality

https://en.wikipedia.org/wiki/Axiom_of_extensionality

In axiomatic set theory, the axiom of extensionality (the axiom of extension) is one of the axioms of Zermelo-Fraenkel set theory.


`∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`


The axiom states that two sets that have the same elements are equal, in fact, they are the same set.

It is not essential that `x` here is a set, but in ZF everything is.

If we express this as an implication instead of bijection:    
∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) -> (a = b))

the converse would follow anyway from the substitution property of equality:   
∀a ∀b ((a = b) -> ∀x (x ∈ a ⟺ x ∈ b))

The clause in parentheses states that `A` and `B` have precisely the same elements, thus the axiom is stating that two sets are equal iff they have precisely the same members. From that it follows *that a set is uniquely determined by its elements*.


The axiom of extensionality can be used with any statement of the form `\exists A\,\forall X\,(X\in A\Rightarrow P(X)\,)`, where `P` is any unary predicate that does not mention `A`, to define a unique set `A` whose members are precisely the sets satisfying the predicate `P`. We can then introduce a new symbol for `A`; it's in this way that definitions in ordinary mathematics ultimately work when their statements are reduced to purely set-theoretic terms.


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
