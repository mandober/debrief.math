# Transitivity

https://en.wikipedia.org/wiki/Transitive_relation



## Preferences are not transitive

Preferences are not transitive: even if you prefer A to B, and B to C, you might still prefer C to A.

However, real-life examples of this are hard to find, and textbooks often have to resort to obviously clunky, made-up examples. But this one is real! Textbook authors everywhere will be eternally grateful to the British public for this.

Britain has basically 3 options when it comes to Brexit:
1. Remain: cancel the whole thing and stay in the EU.
2. May Deal: go ahead with Brexit on the terms negotiated by Theresa May.
3. No Deal: exit the EU with no deal at all in place.

A recent poll asked the British public which option they preferred the most and which the second.
- "Remain" is preferred to the "May Deal"
- the "May Deal" is preferred to "No Deal"
- but "No Deal" is preferred to "Remain"

Intransitivity!


## Transitive set

**Transitive set**: a set in which the element relation (∈) is a transitive relation; equivalently, a set for which each element is also a subset.

Is it possible?
1. `x ∈ y ⋀ y ∈ z -> x ∈ z`
2. `x ⊆ y ⋀ y ⊆ z -> x ⊆ z`
3. `∀a(a ∈ S -> a ⊆ S)`


```
S = {a, x}
a = {x} = {∅}
x = ∅
S = {∅, {∅}}

x ∈ a ⋀ x ⊆ a
a ∈ S ⋀ a ⊆ S
----- → -----
x ∈ S ⋀ x ⊆ S
```

## See more

* Transitivity in Action
http://www.cut-the-knot.org/triangle/remarkable.shtml

* Transitivity
https://encyclopediaofmath.org/wiki/Transitive_relation
https://encyclopediaofmath.org/wiki/Transitive_group
https://encyclopediaofmath.org/wiki/Transitive_set


## Examples

A relation "is next to" is *nontransitive*: `xRy ⋀ yRz -> (xRz ⋁ ¬xRz)`, 
if x is next to y and y is next to z, x may or may not be next to z.

A relation "is the mother of" is *intransitive*: `xRy ⋀ yRz -> ¬xRz`, 
if x is the mother of y, and y is the mother of z, x is not the mother of z.
