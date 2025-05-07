# Axiom of Comprehension

- names:
  - Axiom of Comprehension
  - Axiom Schema of Comprehension
  - Unrestricted Comprehension Principle
- statement: ∃S∀x(x ∈ S ∧ P(x))
- set-builder notation: S = { x | P(x) }
- axiom schema: yes
- consequences:
  - the main trouble with this is that there is no pre-validated set from which we pick the elements to construct a new set, that is, elements (sets) are pick from the assumed universal set that contains all sets.
  - setting P(x) to x ∉ x, we can construct the set R = { x | x ∉ x }. This set R contains all sets that do not belong to themselves. Then the question, of whether R belongs to itself or not, blows up the naive approach because it bring about a contradiction, called Russell's paradox (and a theory cannot have a contradiction because then we'd be able to derive anything at all - ex falsum quidlibet).
  - axiomatization of set theory is basically an attempt to avoid the Russell's paradox, and treat the issue of a universe that contains all sets safely.


The Axiom of Comprehension is not an actual axiom, but rather a name for the principle of unrestricted comprehension, according to which we can specify a new set by some property that its members share. The shorthand notation is used for this `{x : φ(x)}`, where the `φ(x)` stands for the property that `x` must have in order to be counted among the members of the set. However, building a set like this, without imposing any additional constraints brings about the Russell's paradox.

**The Axiom of Comprehension** states that given any sufficiently well-defined property `P(x)`, there is a set of all and only the objects that have that property. Sometimes it is stated more generally by using a formula `φ(a)` instead of a predicate `P(x)`. Both the predicate and formula have a free variable `x`. In set-builder notation, this is stated as

`S = { x | P(x) }` or `S = { x | φ(x) }`

For example, let `P(x) := x ∈ ℕ ⋀ x % 2 = 0`. Then the following defines the set of even number natural numbers, `E`:

```hs
E = { x | P(x) }
E = { x | x ∈ ℕ ⋀ x % 2 = 0 }
```

## Russell's paradox

The trouble arises when we let `P(x)` be the set of all sets which are not members of themselves, i.e. `P(x) := x ∉ x`. We can specify a set using this predicate:

`R = { x | x ∉ x }`

The set `R` is called the Russell's set and it is a set that colelcts all set which are not members of themselves. Presumably, most sets are not members of themselves, not that it would be impossible for a set to belong to itself, at least not mathematically anyway.

We can assume that most sets are indeed members of `R` since it seems reasonable to assume that most sets have this property, i.e. that they do not belong to themselves. There is nothing weird about this: a set may or may not belong to itself; it may be hard to imagine a set that does belongs to itself, but it is not mathematically excuded.

The weirdness arises when we ask whether the set `R` belongs to this collection of sets hereby defined with a predicate `x ∉ x`. Since `R` is also a set, it is quite a sensible question. `R`, being a set, should also decide about the membership in this club.

This is not what's important - what is crucial is whether `R` belongs to itself or not? Because, once specified a set is a standalone mathematical object used in its own right. So there is nothing strange in asking whether a set just defined belongs to the collection of sets satisfying the definition. Thus, is R ∈ R or R ∉ R?

And this is when the Russell's paradox bites:
- if `R` *does not belong* to itself, `R ∉ R`, that is, if `R` is a NOT a member of this collection of sets that do not belonging to themseleves, then `R` should be a member of this collection, i.e. `R` should belong to itself.
- if `R` *does belong* to itself, `R ∈ R`, then `R` doesn't satisfy the defining property, `x ∉ x`, so it must not belong to this collection, meaning it must not belong to itself.

This is a contradiction that cannot be resolved, since `R` is a member of `R` if and only if `R` is not a member of `R`, `R ∈ R ⇔ R ∉ R`.

The big deal with having a contradiction in a theory is that it makes the entire effort futile. A contradiction makes it possible to derive any statement whatsoever in such theory. This follows from the principle of explosion (ex falsum quidlibet).

When during the derivation of a proof from an assumption, we arrive at a contradiction, we must conclude that the assumption is false.

```
 P        P   
 ⫶         ⫶   
 ↯       ¬P   
----    ----  
¬P       ↯    
        ----  
         A    
```
