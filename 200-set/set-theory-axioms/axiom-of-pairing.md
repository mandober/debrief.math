# Axiom of pairing

$$
X=\{a,b\} \\
Y=\{c,d\} \\
C=\{X,Y\} = \{ \{a,b\}, \{c,d\} \} \\
$$

$$\forall X\ \forall Y\ \exists C\ . (X \in C \land X \subseteq C) \lor (Y\in C \land Y \subseteq C)$$

For all sets X and Y, there is a set C which contains them as its elements. Since X and Y are sets, it means that, besides each being a member of C, each one is also a subset of C.


# Axiom of pairing in ZFC

If X and Y are sets, then there exists a set which contains the sets X and Y as elements:

$$\forall X\ \forall Y\ \exists C\ . \forall c\ (c\in C) \to (c=X \lor c=Y)$$


## The Axiom of pairing in Z and ZF

**The axiom of pairing** is an axiom of Zermelo–Fraenkel set theory that states that two sets are equal (they are the same set) if they contain the same elements, formally:

The axiom of pairing states that:

$$\forall x\forall y\ \exists z\ (x\in z\land y\in z)$$

The *axiom schema of specification* must be used to reduce this to a set with exactly these two elements.

The axiom of pairing is part of Zermelo Set Theory.

The axiom of pairing is redundant in Zermelo–Fraenkel Set Theory because it follows from the *axiom schema of replacement*, if we are given a set with at least two elements. The existence of a set with at least two elements is assured by either:
- the *axiom of infinity*
- the *axiom schema of specification* and the *axiom of the power set* applied twice to any set.
