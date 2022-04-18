# Axiom of infinity

The union of a set n with a set containing the set n is denoted by:
n ⋃ n = { n, {n} }

If we abbreviate this particular union operation using the prime symbol, we get the notation: n' = n ⋃ {n} = {n, {n}}

If n = ∅ then n' = ∅' = ∅ ⋃ {∅} = {∅, {∅}}


By applying the *axiom of pairing*, $$\forall x\forall y\ \exists z\ (x\in z\land y\in z)$$, we see that a set $$\{n\}$$ is a valid set, because the axiom of pairing states that if $$x$$ and $$y$$ are sets then there is a set, $$z$$, that contains them as its elements.

> then there exists a set X such that the empty set is a member of $$X$$ and, whenever a set $$y$$ is a member of $$X$$, then $$y' = y\cup \{y\}$$ is also a member of $$X$$.

∃X(∅ ∈ X ⋀ ∀y(y ∈ X -> y' ∈ X))

∃X∃e(∀z(z ∉ e) ⋀ (e ∈ X) ⋀ ∀y(y ∈ X -> (Sy ∈ X)))


Less formally, it states that there exists a set having infinitely many members.

It must be established, however, that these members are all different, because if two elements are the same, the sequence will loop around in a finite cycle of sets. The *axiom of regularity* prevents this from happening.

The minimal set X satisfying the axiom of infinity is the von Neumann ordinal ω, which can also be thought of as the set of natural numbers $$\mathbb{N}$$.


## Von Neumann ordinals

```
0 = { } = ∅
1 = { 0 } = {∅}
2 = { 0, 1 } = { ∅, {∅} }
3 = { 0, 1, 2 } = { ∅, {∅} , {∅, {∅)) }
4 = { 0, 1, 2, 3 } = { ∅, {∅}, {Ø, {Ø)), {Ø, {Ø}, {Ø, {Ø))} }
etc.
```
