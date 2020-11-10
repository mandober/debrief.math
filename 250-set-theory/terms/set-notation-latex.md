# Set Notation in latex


- The empty set:
  - $$\exists A\ [\ \forall x\ ( x \not\in A) \ ]$$
- Non-empty set:
  - $$\forall A\ [\ \exists x\ ( x \in A) \ ]$$
- Subset:
  - $$\forall a\ [\ a \in A \to a \in B \iff A \subseteq B \ ]$$
- Proper Subset:
  - $$\forall a\ [ \ a \in A \to \ [ \ a \in B \land \ (\exists b\ . \ b\in B \land b \not\in A) \ ] \ \iff A \subset B \ ]$$
- Equality
  - $$A \subseteq B \land B \subseteq A \iff A=B$$
- Axiom of regularity (foundation) states that every non-empty set $$x$$ contains a member $$y$$ such that $$x$$ and $$y$$ are disjoint sets.

$$
\forall x[
  \exists a(a\in x) \to 
  \exists y(y\in x  \land 
  \lnot \exists z (z \in y \land z \in x)
  )
]
$$

$$
\forall x \exists y \ [ \
  y\in x \to \lnot \exists z (z \in y \land z \in x)
\ ]
$$

$$
\forall x \exists y \ [ \
  y\in x \to \lnot \exists z (z \in y \cap x)
\ ]
$$
