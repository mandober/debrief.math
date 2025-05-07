# Axioms

https://www.youtube.com/watch?v=AAJB9l-HAZs

E E P U R P I C F
- E E      basic existence axioms
- P U R P  set construction axioms
- I C      further existence/construction axioms
- F        non-existence axiom, axiom of foundation

## ∈-relation

ZF set theory is built on the postulate that there is a fundamental binary relation (a predicate of two variables), denoted `∈` and called the ∈-relation (element relation) or ∈-predicate (element predicate). The theory of sets has no definition of what `∈` is or what a set is. Instead, there are 9 axioms that describe interactions between `∈` and sets.

This also means that any set theory needs logic as an internal language - a system of predicate logic, like FOL, is used to describe these interactions and to build propositional formulae. The language of predicate logic has variables and predicates but it doesn't ascribe any meaning to them - the domain of discourse as well as the meaning of predicates is left open. Predicate logic, as any symbolic logic, is only instested in manipulations of symbols, i.e. in purely syntactic, and not semantic, manipulations.

We can introduce a binary relation (two-place predicate) and symbolize it with `∈`, but, at least initially, this symbol/predicate has no meaning. Even if we have variables and can write `x ∈ y`, we cannot talk about what this means until we postulate the axiom that explicitly states that `x ∈ y` is a proposition iff the variables range over sets.

The elementary proposition of set theory is `x ∈ y`, provided both `x` and `y` are sets, as postulated by the ∈-axiom. If this predicate holds, then `x ∈ y` evaluates to true, and if it doesn't hold then it evaluates to false. Negating it, we get the proposition `¬(x ∈ y)`, usually written `x ∉ y`, which then evalutes to true iff `x ∈ y` does not hold, and to false if it does.

If `x ∈ y` is a true proposition then `y ∈ x` will (normally) be a false proposition, while `y ∉ x` will also hold.

NOTE: That a set cannot be contained in its element may be intuitivelly obvious, but that doesn't imply it is mathematically so. To forbid a set to be contained in its element, we need postulate that as an axiom - that axiom is usually called the axiom of foundation as it prescribes which sets are well-formed. In fact, any similar weird eventuality should not be assumed to be present in a theory by default but needs to be excluded explicitly.

`∈`-relation
- positive, `x ∈ y` ≝ `∈(x, y)`
- negated,  `x ∉ y` ≝ `¬(∈(x, y))` ≡ `∉(x,y)` ≡ `¬(x ∈ y)`

From the `∈`-relation we can derive:
* **inclusion** (subset) relation, `⊆`: `x ⊆ y ≝ ∀z(z ∈ x -> z ∈ y)`
* **equality** relation, `=`: `x = y` ≝ `x ⊆ y ∧ y ⊆ x`, which is equivalent to the standalone formulation `x = y` ≝ `∀z(z ∈ x ⇔ z ∈ y)`.

Importantly, equality is defined in terms of the subset relation, and the subset relation is in turn defined in terms of the elemntary `∈`-relation.


## ZF axioms

### 1. Axiom of ∈-relation

`x ∈ y` is a proposition iff `x` and `y` are sets.

That is, given any two sets `x` and `y`, either `x ∈ y` or `x ∉ y` holds, i.e. `∀x∀y(x ∈ y ⊕ y ∈ x)`.

So `x ∈ x` and `x ∉ x` are perfectly reasonable propositions. The latter is part of the proposition that says that there is a set of all sets that do not contain themselves, `∃r(∀x(x ∈ r ⇔ x ∉ x))`. The problem arises when we ask whether `r ∈ r`? The set `r` is just another set so it must be considered: since it doesn't contain itself, `r ∉ r`, it should be included in `r` - which means it should be a member of itself, `r ∈ r`. But if `r` is a member of itself, then, by definion of `r`, it must be excluded from the set `r` since it does indeed contain itself. But then… ad nauseum. So, `r ∈ r ⇔ r ∉ r`, which is a paradox, named the Russell's paradox. However, since we get contradications, we must reconsider our basic assumption - which says that `∈` is a relation between sets - and thus we are forced to conclude that `r` is *not a set*.

### 2. Axiom of the empty set

There is a set without elements, `∃e(∀x(x ∉ e))`

Thm: there is only one empty set.

### 3. Axiom of pairing

If x and y are sets, there is a set that contains precisely x and y as its elements.

`∀x∀y(∃z(∀u(u ∈ w ⇔ u = x ⋁ u = y)))`

Place `x` and `y` into `{x,y} = z`.

The Axiom of pairing guarantees the existence of unordered pairs, {x,y}, as well as singletone sets, {x}.

### 4. Axiom of union

If `x` is a set, there is a set that contains precisely the elements of the elements of `x`.

`u = ⋃ x`

Let `a₁, …, aₙ` be sets; then recurively define for all `n >= 3`, that    
`{a₁, …, aₙ} := ⋃ {{a₁, …, aₙ˗₁}, {aₙ}}`.    
The base case of this is handled just by the axioms of pairing,   
`{a₁, a₂, a₃} := ⋃ {{a₁, a₂}, {a₃}}`,    
`{a₁, a₂} := ⋃ {{a₁}, {a₂}}`.    

The axiom of union prevents the Russell's paradox.

### 5. Axiom of replacement

Let `R` be a functional relation, and `m` a set. Then the image of `m` under `R` is again a set.

A relation `R` is function if `∀x∃!y(xRy)`. The image of `m` under `R` consists of all those `y` for which there is an `x ∈ m` such that `xRy`.

`Im(R) = { y | ∃x(x ∈ m ∧ xRy) }`

A weaker form of this axiom is the *Axiom of Restricted Comprehension* that allows us to form a new set from elements of set `m` that satisfy a predicate.

`{ y ∈ m | P(y) }`

The restriction is that we can only pick elements elements `y` from a previously established set `m`, so the new set cannot possibly be larger. This is contrasted with the axiom of universal comprehension, `{ y | P(y) }`, which allows any predicate to define a set.

The proof that the Axiom of Restricted Comprehension is implied by the axiom of replacement:
- case 1: `¬∃y ∈ m. P(y)` there is no `y` in `m` for which `P(y)` holds. In this case `{ y ∈ m | P(y) } = ∅`
- case 2: `¬∃y′ ∈ m. P(y′)` there is a `y′` in `m` for which `P(y′)` holds. Then we need to construct a functional relation `R`:

`R(x,y) := (P(x) ∧ x = y) ∨ (¬P(x) ∧ x = y′)`

So if `P(x)` holds, map `x` to `y`; if it doesn't, map `x` to `y′` (we know `P` holds for `y′`).

`Imʀ(m) = { y ∈ m | P(y) }`


### 6. Axiom of powerset

Historically, the Axiom of Universal Comprehension was thought to be needed in order to define a powerset `𝒫(m)` of any set `m`, `𝒫(m) := { x | x ⊆ m }`. This turned out to lead to contradiction and paradoxes, so instead we now need to postulate the existence of a powerset.

The axiom of existence of a powerset states that there is a powerset `𝒫(m)`, for any set `m`, whose elements are precisely the subsets of `m`.

### 7. Axiom of infinite set

The axiom of infinite set states that there exists a set that contains the empty set and all the elements of its elements.

e.g. `∅, {∅}, {{∅}}, {{{∅}}}, …`

Colorally: `ℕ` is a set.

The `ℝ` set can be understood as `𝒫(ℕ)`.

### 8. Axiom of choice

The axiom of choice states that, if `x` is a nonempty set whose elements are mutually disjoint, then there exists a set `y` which contains exactly one elements from each element of `x`.

That is, it is possible to pick one element from each element of set `x` and collect them into a set `y`.

AC is used in the proof that there exists a complete system of representatives of an equivalence relation.

This axioms was controversal so ZF is a set theory without it and ZFC with it.

### 9. Axiom of foundation

The axiom of foundation states that every nonempty set `x` contains an element `y` that has none of the elements in common with `x`.

An immediate consequence of this axiom is that there is no set that contains itself as a member.
