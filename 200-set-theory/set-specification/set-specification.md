# Specification of sets

- descriptively, by a characterizing property
- explicitly specofying the elements between braces
- set-builder notation

We may describe a set either by giving a characterizing property of the elements, such as "the set of all prime numbers" or by explicitly listing the set elements between the braces.

If a set is described by a characterizing property `P(x)` of its elements `x`, the set-builder notation is used `{ x | P(x) }`, which is read: "the set of all `x` such that the property `P(x)` holds (is satisfied)".

`{2,4,6,8}` = `{x | x is even whole positive number <= 8}` = `{2x|x=1,2,3,4}`


## Intensional and extensional set specification

- semantically
  - intensional specification
    - denoted descriptively (natural language statement between the braces)
    - denoted using the set-builder notation
  - extensional specification (explicit enumeration)
    - the roster notation, {a,b,c}
      - ellipsis allowed for infinite and finite sets
        - terminal set member is the last element (before ellipses)


The choice of convention for denoting a set often comes down to whether we want to emphases its properties, elements, or some other aspect. Extensional and intensional specification are two key ways in which an object is specified.

A set may be declared *semantically* using **intensional specification**, e.g. "a set containing odd natural numbers". This may be denoted descriptively, with a natural language statement between the braces: `{ x | x is an odd integer }`, or using the set-builder notation as:

`{ x | x ∈ ℕ, 2x }` = `{ x ∈ ℕ | 2x }` = `{ 2x | x ∈ ℕ }`


**Extensional specification** defines an object by explicitly enumerating every element for which the defining property holds.

Defining a set extensionally means listing its elements one-by-one between the braces, which is also called *the roster notation*, e.g. `{a,b,c}`.

Since it's inconvenient (or impossible) to define large sets this way, it is allowed to abbreviate the list using *ellipsis*, in case of both infinite and finite sets, e.g. `{0,1,2,…}` and `{0,1,2,…,99}`. When a finite but large set is denoted extensionally using ellipses, the last element is called a *terminal set member*.
