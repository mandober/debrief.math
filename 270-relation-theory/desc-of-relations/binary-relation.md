# Binary Relation

https://en.wikipedia.org/wiki/Binary_relation

- For a binary relation over a single set see § *Homogeneous relation*.
- For a more general notion of relation, see *finitary relation*.
- For other uses, see *Relation* (disambiguation).

https://en.wikipedia.org/wiki/Relation
https://en.wikipedia.org/wiki/Finitary_relation
https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/Reflexive_relation
https://en.wikipedia.org/wiki/New_Foundations


## Binary Relations

A binary relation relates the elements of two sets; the unambiguous phrase is that it's a *relation between two sets*. In case they are the same set, the correct phrasing is that it's a *relation on a set*. In any case, whether it is between two sets or on a single set, we can always discuss it as a relation between two sets A and B, and resolve the eventual equality later.

A binary relation is directional, it goes from the source set, A, to the destination set, B. Using the correct terminology, A is the *domain set*, and B is the *codomain set*.

The operations on sets like union, intersection, difference, complement and similar, are not relations - they all produce a single resulting set, where the structure of elements is maintained. If the elements of the set were objects like numbers, the resulting set will contain the same type of objects.

For example, if A = { 1,2,3 } and B = { 3,4 } then their union is performed by "replacing" the right brace of the A set, the union operator, and the left brace of the B set, with a comma (as a set element separator); then potentially collapsing the duplicated members into one.

```js
// in math

A : {∀a ∈ A. a : ℕ}
A = { 1,2,3 }

B : {∀b ∈ B. b : ℕ}
B = { 3,4 }

A U B = { 1,2,3 } U { 3,4 }
A U B = { 1,2,3   ,   3,4 }
A U B = { 1,2,3,4 }
```

```hs
-- in pseudo-ish Haskell
a :: (Eq a) => [a]
a = [1,2,3]

b :: (Eq a) => [a]
b = [1,2,3]


A U B = { 1,2,3 } U { 3,4 }

-- We abuse Haskell lists as sets. In order to collapse multiple occurances
-- of the same element, we need to declare that the type of set elements, `a`,
-- may be any type as long as it supports the equality comparison (hence the
-- (Eq a) constraint.
```
