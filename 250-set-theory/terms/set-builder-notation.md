# Set-builder notation

https://en.wikipedia.org/wiki/Set-builder_notation

The set-builder notation is an intensional definition of a set which describes a set by its properties or by stating the conditions the set elements must satisfy. It stands opposed to the extensional definition which describes a set by explicitly listing its members.

Defining sets by properties is also known as *set comprehension*, set abstraction or as defining a set's intension.

> In logic, the **comprehension** of an object is the totality of intensions (attributes, characters, marks, properties, qualities) that the object possesses.


Set-builder notation can be used to describe sets that are defined by a predicate, rather than explicitly enumerated.

In this form, set-builder notation has 3 parts:
- a variable
- a colon or vertical bar acting as a separator
- a logical predicate

Thus, there is a variable on the left of the separator, and a rule on the right of it. These 3 parts are contained in braces.

Set-builder notation : `{ x | Φ(x) }`

Specifying a domain: `{ x ∈ ℕ | Φ(x) }`

This form above is a shorthand; what does it expand to depends on wheter the `x` is universally or existentially quantified.
- if x is universally   quantified: { `∀`x | x ∈ ℕ `->` Φ(x) }
- if x is existentially quantified: { `∃`x | x ∈ ℕ `∧`  Φ(x) }
