# Function

Strictly, a function is fully defined by a triple `(A, B, f)`, where `A` is the domain, `B` is the codomain, and `f` is the functions itself, `f : A -> B`, specified as a set of ordered pairs `{ (a,b) | a ∈ A, b ∈ B }`.

In set theory, any two sets `A` and `B` may be associated (that is, their elements may be functionally related by a function `f`), denoted by `f : A -> B`.

The notation `f : A -> B` is a signature (but not really a type signature because mathematics is a type-loose, dynamic language obsesed with sets, aka "everything is a set" paradigm) that specifies the domain and codomain sets that the function `f` relates.

The actual definition (a signature is more of a function declaration) of the function `f` may be given in various ways, but it is generally represented as the equation `f(x) = y`, where `x ∈ A` and `y ∈ B` (i.e. `f(x) ∈ B`).

More verbosly, `x` is a variable that ranges over *all elements* of domain `A`, and `y` is a variable that ranges over *some elements* of codomain `B`.
Moreover, `x` represents an input value i.e. an argument to a function `f`, while `y` represents the corresponding output value of the function `f`.

Note: we only need one variable that ranges over the domain elements (e.g. `x`); the other var (here, `y`) is not required since we can just use the expression `f(x)` instead; in fact, we use `y` only to make the equation `f(x) = f(x)` look less weird, and we can use `f(x)` for everything else like ordered pairs `(x, f(x))`.

## Properties of functions

The two defing properties of functions:
1. codomain uniqueness
2. total domain coverage

Types of functional relations
- relations that uphold both properties are total functions
- relations with the first but not the second property are partial functions

It may also be noted that partial functions, having less restrictions, include both partial and total functions.


### Primary property of functions

The primary defining property of functions is the uniqueness.

Functions are relations restricted by certain properties. The essential property of functions is the fact that a domain element, `x`, is only ever related to a single codomain element, `y`.

In other words, if `f` is a function `f : A -> B` identified by the set of ordered pairs `{ (a,b) | a ∈ A, b ∈ B }`, then the essential functional property says that the first component across all the ordered pairs is unique; that is, there cannot be two ordered pairs `(a,b)` in this set that have the same first component, `a`. An example of violation would be a set of ordered pairs that contains both `(1,1)` and `(1,2)`.

Diagrammatically, `f : A -> B` with `a ∈ A`, and `x,y ∈ B`, cannot be a function (but it is a relation):

```
a ---------> x
a ---------> y
```

### Secondary property of functions

The secondary defining property of functions is the total domain coverage.

An additional, secondary, property that holds for **total functions** says that *all elements* of the domain must be uniquely associated with a particular codomain element. Briefly, the entire domain must be engaged.

A **partial function** upholds the primary but fails to uphold the secondary property.

Conventionally and loosely, apart from the well-known partial functions, by default, most mathematical functions are considered total, while functions found in PLs are considered partial, if not specified otherwise.

A relation is a total function if it is *left-unique* and *right-serial*.

In brief, you can tweak with all other but the primary property of a relation and still call it a function. The qualifier "function" is completely lost only when the primary property is broken.

### Auxiallary properties of functions

Totality properties (only definable if domain and codomain specified)

* serial (left-total)
  - `∀x ∈ X. ∃y ∈ Y. xRy`
  - the domain of definition of `R` is equal to `X`
  - This property is different from the definition of connected.
  - Such a binary relation is called a multivalued function. 
  - Examples
    - `>` is a serial relation over the integers. But it is not a serial relation over the positive integers, because there is no y in the positive integers such that 1 > y.
    - `<` is a serial relation over the positive integers, the rational numbers and the real numbers.
  - Every reflexive relation is serial: for a given `x`, choose `y = x`.


* Surjective (right-total or onto)
  - `∀y ∈ Y. ∃x ∈ X. xRy`
  - codomain of definition of `R` is equal to `Y`
  - Examples:
    - the green and blue binary relations in the diagram are surjective, but the red one is not (as it does not relate any real number to −1), nor the black one (as it does not relate any real number to 2).


## Uniqueness and totality properties

Uniqueness and totality properties are only definable if domain and codomain are specified.

*Function*
- a binary relation that is **functional and serial**.

*Injection*
- a function that is injective

*Surjection*
- a function that is surjective

*Bijection*
- a function that is injective and surjective



Besides the two defining properties, functions (usually total functions, although these notions may be stretched to also cover partial functions) may have these extra properties, aka "x-jections"
- injectivity
- surjectivity
- bijectivity

The x-jection properties, `P`, are orthogonal to the defining properties, `D`, meaning all the different functional variants are in the Carthesian set of `D⨯P`, including





## misc

fn        | relation | function | injection | surjection | bijection
----------|----------|----------|-----------|------------|----------
total     | may      | must 
partial   | may      | must

Relation
- null relation
- functional relation
- total relation === Carthesian product
- left-total relation

Functions
- partial function: left-unique
- total function: left-unique, right-serial (left-total, right-unique)
