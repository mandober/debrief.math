# ZFC axioms by Paul Halmos in Naive Set Theory book

Axioms described in the book "Naive Set Theory" by Paul Halmos (1960) are the axioms of ZFC.

1. *Axiom of Extension*. Two sets are equal iff they contain the same elements, `∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`, aka if they are each other's subset.

2. *Axiom of Union*. C = ⋃{A,B}. For every collection of sets there exists a set that contains all elements that belong to at least one set in the given collection. `∀x(x ∈ C -> x ∈ A ⋁ x ∈ B)`

3. *Axiom Schema of Specification*. To every set `A` and to every predicate `P`, there corresponds a set `B` whose elements are exactly those elements `x` in `A` for which `P(x)` holds.

4. *Axiom of Pairing*. For any two sets, there exists a set they both belong to.

5. *Axiom of Powers* (aka the Axiom of Powerset). For each set `A`, there exists a collection of sets, `𝒫(A)` that has all the subsets of `A` as its elements. `∀A ∃P(∀x(x ∈ P ⇔ x ⊆ A))`.

6. *Axiom of Infinity*. There exists a set `I`, so `∅ ∈ I` and successors, `S(x) := x ⋃ {x}`, of each of its elements `x`, i.e. `∀x(x ⋃ {x}) ∈ I`.

`∃I(∅ ∈ I ⋀ ∀x(x ⋃ {x} ∈ I))`


7. *Axiom of Substitution* (Axiom of Replacement). If `P(a,b)` is a predicate such that for all `a ∈ A`, set `{ b | P(a,b) }` can be formed, then there exists a function `F` with domain `A` (and codomain B) such that forall `a∈A`, 
`F(a) = {b | S(a,b)}`. In other words, anything sensible one can do to elements of a set (like map them) will yield a set as well.

8. *Axiom of Choice* (AC) states that it is always possible to select an (one) element from each set from a collection of sets, even if the collection is infinite.

This means that AC allows us to list all the digits of an irrational number like `π` (how now brown cow exactly?). In its decimal form, an irrational number has an infinite number of digits after the decimal dot. Each digit (after the dot) is an element of the set `dᵢ = {0..9}` and we have an infinite collection of such sets. So we can invoke the AC and heve it help us come up with our very own, hopefully realistically looking, irrational number.

```js
 d₀=1     d₉=5               d₂₉=9
  ↑        ↑                   ↑
3.1415926535897932384626433832795…
x.⁰ ² ⁴ ⁶ ⁸ ⁰ ² ⁴ ⁶ ⁸ ⁰ ² ⁴ ⁶ ⁸ ⁰
```




What about the cardinality of its set-members? Are those sets also allowed to be infinite? Unclear, but that doesn't sound like a big issue anyway. Whether a set is infinite or not does not prevent the choice function to select an element even if it just considers a small bounded subset of the set (sort of an initial segment).


If yes, then the AC asserts that it is possible to select an element (in fact, infiniteness (infinitude? infinity?) doesn't seem to be a problem at this step)


More sensibly, there always exists a selection function that can pick a single element from a number of sets, even if the set is infinite. 

>Another consequence of the AC is that the Cartesian product of a non-empty family of non-empty sets is non-empty.

The Axiom of Choice asserts that a choice function always exists, but nothing else about it. We are left clueless about how it works and where the fuck is the set it was supposed to retrieve (but we can freely refer to it in proofs); No hints how it makes selections, nada. It's like a deus ex machina type of device.

However, we may not need the AC and its weird-ass function if we can construct a bona fide function ourselves that does the same thing. 

Sometimes, when the elements of each set are *distiguishable enough*, we can construct our own choice function via a rule like "pick the smallest element from each set", and in these cases we do not need AC. We need AC only when there's no way to specify the choice function (usually because all elements in a set are seemingly the same).


Q: How the fuck do those sets look like when we cannot come up with our own choice function?! All examples I've seen so far talk about sets containing stuff like sucking fhoes and focks - no examples of practical "undescribable" sets. I mean, one guy explains AC by showing a collection of piles, each representing a set and containing a bunch of M&M's of the *same bloody color!?* - and the choice function would still supposedly do its job, even though the candies in each set are *indistinguishable from each other*! But sets *collapse indistinguishable elements*, so each set would contain only a single candy before the choice function starts up! Collapse mate!

Q: If two objects look and feel exactly the same, taste the same, and, crictically, even have the same color (which was the only thing that could ever set them apart), then… aren't they really the same object by the indistinguishability of identicals, no seree Bob? Or are they two instances of the same "one true form", in which case no self-respecting set would have problem collapsing?

Q: If we cannot come up with our own choice function, it means indistinguishability of identicals is kicking in, so there are no multiple elements in sets in a collection - each set had its elements collase into a single element, and we surely have no trouble defining the choice function that selects the only item in a singleton set, yey!
