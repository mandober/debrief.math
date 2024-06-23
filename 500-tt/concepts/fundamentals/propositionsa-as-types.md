# Propositions as Types

- propositions-as-types
- (types-as-proofs)
- programs-as-proofs



The *propositions-as-types* is the name for a profound connection between logic and computation (and type theory, and category theory).

The doctrine of *propositions-as-types* asserts that a certain kind of formal structure may be read in two ways:
- as a proposition in logic, or
- as a type in computing

Further, a related structure may be interpreted
- as the proof of the proposition, or
- as a program of the corresponding type

Further still, there is a correspondence between
- simplification of proofs
- evaluation of programs

Types, then, *also represent proofs* ("also" because not all types represent proofs - some types merely classify terms/values). ~~Hmm, aren't types propositions, and programs are proofs (as in programs-as-proofs)? I'm sure I've seen plenty of types-as-proofs as well.~~


*Provability* then corresponds to the question of *type inhabitance*. 
Types also represent *propositions*. 
A proposition is just a formulation, a conjecture, that describes some notion, and is then put up for discussion and needs some work done in order to be proved.

A proposition may be
- *proven*: proven true, shown that it holds, with a proof attached
- *disproven*: proven false, proven that it doesn't hold, with a proof attached
- neither proven nor disproven (its provability status is unknown)
- proven that it can be proven, but no concrete proof exists (?)
- proven that it cannot be proven, but no concrete proof exists (?)
- proven that it cannot be proven nor disproven, but no concrete proof exists

This suggests there are *"positive" or affirmative propositions* - propositions that claim the existence of something, that something is true or that something holds. The proofs of such propositions are then *"positive" or affirmative proofs* (proofs in the positive, proofs of affirmation), which are probably the most frequent kind of proofs. 
On the other hand, then, the "negative" propositions - that claim the negation of something - should also exist, along with their "negative" proofs (proofs in the negative).

A type that represents a certain (positive) proposition is then *inhabited* if the proposition has a proof (can be proven). Such proposition can be represented by the unit type, `𝟙`, in which case it merely communicates the fact that the proof exists. A more elaborate type is required to hold a particular, concrete proof. There is also the quastion of *uniqueness of proofs* and the technic to truncate a complicated type that bears multiple proofs, down to a simple type that merely shows that a proof exists. This is because once it becomes known that a proof (or multiple proofs) exist, it is more practicle, and more efficient even, not to carry around all those proofs embodied in a single type, especially if a simple proof-indeed-exists-bearing type would suffice.

Proof and provability combos:
- a proposition that has no proof corresponds to an empty type (𝟘). No. A proposition proven to be false is represented by the empty type.
- a proposition for which a proof exists corresponds to the unit type (𝟙). This just means that it is known that a proof exists, and the unit type, which embodies existence without giving further details, represents this.
- a proposition proven to be unprovable
- a proposition proven to be neither provable nor disprovable (?!)
- more combos…
