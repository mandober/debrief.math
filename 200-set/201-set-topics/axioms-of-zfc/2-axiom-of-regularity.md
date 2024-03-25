# Set Theory :: ZFC Axioms :: Axiom of Regularity

The **Axiom of Regularity**, or the Axiom of Foundation, states that every non-empty set `x` contains an element `y` such that `x` and `y` are disjoint sets.

`∀x(∃a(a ∈ x) ⇒ ∃y(y ∈ x ⋀ ¬∃z(z ∈ y ⋀ z ∈ x)))`

or in modern notation:

`∀x(x ≠ ∅ ⇒ ∃y(y ∈ x ⋀ y ⋂ x = ∅))`


Along with the Axiom of Pairing, the Axiom of Regularity implies that
- no set is an element of itself
- that every set has an ordinal rank

## Analysis

The main motive for this axiom is the prevention of *infinite descending chains* of membership: `… d ∈ c ∈ b ∈ a`.

It states that every non-empty set has an element such that the set and this element are disjoint.

Naively speaking, a conforming nonempty set must have at least one element that is well-behaved - an simple element that "bottoms-out". An example of such an element is `∅`. On the other hand, there are "weird" sets that contain themselves or reference other sets in a mutually recursive way:

```
A = {A}
B = {C}
C = {B}
M = {A,B,C}
  = {{A},{C},{B}}
  = {{{A}},{{B}},{{C}}}
  = {{{{A}}},{{{C}}},{{{B}}}}
  = …
```

We can't reson about such sets, like `M` here, as it keeps expanding forever. Thus, *a set is regular* if it contains an element that almost acts a base case in recursion, while the other elements act like recursive cases. A prime example of regular sets are set-theoretic natural numbers. Being defined recursively as `0 := ∅` and `S(n) = n ⋃ {n}`, e.g. `{∅, {∅}, {∅,{∅}}}` represents the number 3.
