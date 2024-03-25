# Quantifiers

In FOL, in the context of set theory, the two quantifiers, ∀ and ∃, quantify variables which range over the domain of dicourse which consists of individuals which are sets.

The two quantifiers seem related in that ∀ is somehow opposite of ∃, and vice versa, but on the other hand, they are different in their claim to the existence of objects (in the DOD). Namely, the ∃ asserts the existence of some object - it asserts that at least one object (with some properties) exists. On the other hand, the ∀ does not assert existence of any objects. Even if the DOD is empty, ∀ can be used and in that case, whatever the condition placed on the variable quantified by it, may be, it is *vacuously satisfied*. In a way, using ∀ to bind a variable doesn't require much care since the domain over which that variable ranges may very well be empty. But the use of ∃ asserts, and therefore requires, that there is at least one item in the DOD - it cannot be empty!

Q: How does this requirement aligns with the use of the quantifiers just because its use is forced by the formula. That is, the subformula of the universally quantified variable requires the use of implication, while it instead requires conjunction for existential quantification: 
`∀x(P(x) ⇒ Q(x))` vs `∃x(P(x) ∧ Q(x))`? 
However, if we use ∃ then we are additionally asserting the existence of at least one object in the domain over which the variable `x` ranges...

A: Perhaps it is not a general answer, but some systems require, first and foremost, the assertion that the domain is nonnempty.
