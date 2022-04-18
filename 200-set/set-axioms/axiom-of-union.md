# Axiom of union

The union over the elements of a set exists.

**The axiom of union** states that for any set of sets `F`, there is a set `A` containing every element that is a member of some member of `F`:

∀𝓕 ∃A ∀Y ∀x (x ∈ Y ∧ Y ∈ 𝓕 -> x ∈ A)


$$
\forall
\mathcal{F} \,
\exists A \,
\forall Y \,
\forall x 
(x \in Y \land Y \in \mathcal{F}
\Rightarrow x\in A
)$$

Although this formula doesn't directly assert the existence of `F`, the set `F` `⋃ F` can be constructed from `A` (above) using the *axiom schema of specification*:

$$\cup \mathcal {F} := \{x \in A : \exists Y
(x \in Y \land Y \in \mathcal {F} \}$$
