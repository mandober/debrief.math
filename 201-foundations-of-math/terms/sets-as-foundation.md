# Sets as the math foundation


## Primitives
- A set is a collection of any number of unique objects, called elements, without the notion of order.
- There exists the empty set, denoted by $$\varnothing = \{\}$$

The set theory doesn't require anything else apart from the empty set. Still, the existence of the empty set is enough to produce numerous distinct objects. This implies that set elements are themselves sets.

## Axioms
The set operation of **union** defines how sets are merged together. The union of sets A and B is the set of elements which are in A, in B, or in both A and B: `A ∪ B = { x: x ∈ A ∨ x ∈ B }` (compare the symbols for logical disjunction, `∪`, and the set union, `∨`).

$$\displaystyle A \cup B = \{ x: x \in A \lor x \in B\}$$

$$
\displaystyle
A = \{ \{ \varnothing \} \}, \\
B = \{ \varnothing, \{ \varnothing \} \}, \\
A \cup B = \{ x: x \in A \lor x \in B\}
$$


## Set theoretic construction of the natural numbers

$$
\displaystyle
0 = \{ \}  = \varnothing  \\
0 \in \mathbb{N} \\
n \in \mathbb{N} \to S(n) \in \mathbb{N}  \\
\ \\
S(0) = 1 \\
S(n) = n \cup \{ n \} \\
\ \\
0 =\ \ \varnothing  = \{ \}           \\
1 = \{ \varnothing \}     \\
2 = \{ \varnothing,\ \ \{ \varnothing \} \}     \\
3 = \{ \varnothing,\ \ \{ \varnothing \},\ \ \{ \varnothing, \{ \varnothing \}  \}    \}     \\
S(n) = n \cup \{ n \} \\
$$




---




$$
\displaystyle
S(0) = \\
\begin{align}
    & 0 \              & \cup &     \{ &0       & \} &= \\
    & \{\      \}      & \cup &     \{ &\{ \}   & \} &= \\
    & \{\  \not\} \not & \cup &\not \{ &\{ \}   & \} &= \\
    & \{\              &      &     \{ &\}      & \} &= \\
\end{align} \\
\{ \{ \} \} = \{ \varnothing \} = 1
$$
