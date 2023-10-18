# Set theory :: Index :: Set formulas

This page lists some of the common idioms for expressing various set related things, mostly in the first-order logic (FOL).

FOL only allows quantification over individuals in the domain of discourse, i.e. only over elements, not over the sets. Second-order logic (SOL) extends this to also allow quantification over sets. Third-order logic extends this to allow quantification over the sets of sets. Fourth-order logic extends this to allow quantification over the sets of sets of sets. And so on. Higher-order logic (HOL) is a name for any logic after FOL. These sets (and sets of sets, and so on) over which we can quantify in HOL can be thought of as predicates, since a predicate descibes a particular set. So in FOL, we can only quantify over individuals, meaning objects, set elements. And in SOL we get to also quantify over the properties of individuals. In TOL, we can quantify over the properties of sets. And so on.

In FOL, variables range over the domain of discoure (DOD); when we want to introduce a new variable `x`, we first need to quantify it - either universally, `∀x`, or existentially, `∃x`.

When we see `∀x`, that indicates that `x` ranges over everything in DOD. We can then leave `x` unrestricted to say something about everything (in DOD), or we can narrow down the range of `x` in order to say something about a particular subset (of the individuals in DOD).

## Formula for the empty set

`∃x(∀y(y ∉ x))`

This formula describes the empty set, which may be obvious when it's on its own like this, but this part will often be buried inside a bigger formula so it's important to recognize this idiom.

It may seem that the variable `x` ranges over sets, while `y` ranges over set elements, in which case we would need SOL to expres this. However, we can view everything as a set, i.e. we can regard both elements and sets as sets, and then we can stay within FOL.

## Formula for all elements of a set

To say something about all elements of some set, we use this idiom:

`∃x(∀y(y ∈ x -> P(y)))`

For example, to express that there is a set `x` and that it contains the elements of each of its element:

`∃x(∀y(y ∈ x -> ∀z(z ∈ y -> z ∈ x)))`

or equivalently, but shorter:

`∃x(∀y(y ∈ x -> y ⊆ x))`

This works because the only way for a set-element `y` to be an element of a set `x` while also being its subset is if `x` also contains each individual element of `y` (besides containing the set `y` itself).


## Equality of sets

Equality of sets in terms of subsets (antisymmetry):

`∀x ∀y(∀z(z ∈ x ⇔ z ∈ y) -> x = y)`

and the converse

`∀x ∀y(x = y -> ∀z(z ∈ x ⇔ z ∈ y))`

is

`∀x ∀y(∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y)`
