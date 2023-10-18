# Set

https://en.wikipedia.org/wiki/Set_(mathematics)

This article is about what mathematicians call "intuitive" or "naive" set theory. For a more detailed account, see [Naive set theory](https://en.wikipedia.org/wiki/Naive_set_theory). For a rigorous modern axiomatic treatment of sets, see [Set theory](https://en.wikipedia.org/wiki/Set_theory).

A **set** is a mathematical model for a collection of different things. A set contains elements or members, which can be mathematical objects of any kind.

The set with no element is the empty set; a set with a single element is a singleton. A set may have a finite number of elements or be an infinite set. Two sets are equal if they have precisely the same elements.

Sets are ubiquitous in modern mathematics. Indeed, set theory, more specifically Zermelo-Fraenkel set theory, has been the standard way to provide rigorous foundations for all branches of mathematics since the first half of the 20th century.

## Contents

- Set definition and notation
  - Set notation
    - roster notation
    - semantic definition
    - set-builder notation
  - Set definition
    - types of definitions
      - intensional definition
      - extensional definition
      - ostensive definition
  - Set identity
  - Set equality
    - intensional equality
    - extensional equality
- Set concepts
  - membership
  - the empty set
  - singleton sets
  - subsets, superset

  - Euler and Venn diagrams
  - Special sets of numbers in mathematics
  - Functions an relations
  - Cardinality
    - Infinite sets and infinite cardinality
    - The continuum hypothesis
- Set constructions
  - ordered pair
  - power set
  - Cartesian product
  - Partitioning
- Set operations
  - Basic set operations
    - union
    - intersection
    - difference
    - complement
- Applications
- Principle of inclusion and exclusion
- History
  - Naive set theory
  - Axiomatic set theory


## Set definition and notation

In general, the notion of set, particularly in naive set theory, is undefined. Set is a mathematical primitive and the appeal to the reader's intuition in necessary for understanding it. Informally, a set is an unordered collection of mathematical objects. A set is sometimes called a *family*, especially when its elements are themselves sets (which they often are).

With sets, all that matters - and sometimes all that can be determined - is whether a particular element is a member of a set or not. If the membership of an element in a set can only be determined by asking yes/no question (e.g. is x is set A?), then there is no notion of order. This also implies that there is no notion of multiplicity of elements either.

Set notation
- roster notation, enumeration
- semantic definition, semantic description
- set-builder notation, set comprehension

*Roster* or *enumeration* notation defines a set by listing its elements between curly brackets, separated by commas. This notation was introduced by Zermelo in 1908.

*Semantic definition* is a way to define a set by using a rule that specifies the elements of a set. For example, "the set of the first four positive integers". Such a definition is called a *semantic description*.

*Set-builder notation* specifies a set as a selection from a larger set, determined by a predicate (condition) on the elements. Those elements that satisfy the predicate are in the set. General notation is `S = {x | Px}`, where `P` is a predicate (e.g. "is a set", "is greater than 5", "does not contain itself as a member"). For example, `S = {n | n ∈ ℤ ⋀ 0 ≤ n ≤ 4}` specifies the set `S` by admiting only those integers that satisfy both conditions (i.e. "is an integer" and "is between 0 and 4 inclusive").

<!-- #region -->

<details><summary>Aside</summary>

Q: Using the set-builder notation, set $S$ is defined as $S = {n | ∀n(n ∈ ℤ ⋀ 0≤n≤4)}$, i.e. $n$ is in the set if $n$ is an integer and it is between 0 and 4 inclusive. Can we specify this same set using the existential quantifier instead? As in $S = {n | ∃n(n ∈ ℤ ⋀ 0≤n≤4)}$?

Q: What about a more general notation $S = {n | ∀n(P(n) ⋀ Q(n))}$ where $P$ means that $n$ "is an integer" and $P$ means that $n$ "is between 0 and 4 inclusive"? In fact, since the universal quantifier is used should it be $S = {n | ∀n(P(n) → Q(n))}$ instead? Or, if we this context does not require the use of quantifiers, how should we express a compound predicate (condition) like $P(n) → Q(n)$?

A: *The variable in the set-builder notation implicitly ranges over all possible values that it can take on*. The condition determines which of these values actually end up in the set. So, it's understood that we're considering all possible values of `n`. The quantifiers are more useful when you're writing a statement that needs to be true for all values (universal quantifier) or at least one value (existential quantifier) of a variable.

</details>

<!-- #endregion -->

Specific terms are used in philosophy to classify the type of a definition.

The types (methods) of definition
- intensional definition
- extensional definition
- ostensive definition

- *intensional definition* uses a rule to determine membership; semantic definitions and definitions using set-builder notation are like this.
- *extensional definition* describes a set by listing all its elements. Such a definition is also called enumerative. A set is equal to its extensions, i.e. a set is identified only by its elements.
- *ostensive definition* is one that describes a set by giving examples.

A set is equal to its extensions, i.e. its elements. Sets have *extensional equality*: a set is identified precisely by the elements it contains. Sets also have *intensional equality*: a set is identified by the rule used to build it.

>Sets have extensional equality: a set is completely determined by its elements.

## Set concepts

*Membership*: If B is a set and x is an element of B, this is denoted by x ∈ B, and read like "x is an element of B" or similar.

*The empty set* or *the null set*, denoted by `∅`, is the unique set that has no members. Being unique means there is only one empty set, i.e. any two empty sets are actually the same set. This is because set have extensiona equality - they are completely determined by their elements.

A *singleton set* or *unit set* is a set with exactly one element. Such a set can be denoted `{x}`, where `x` is the element. Note that `x ≠ {x}`.

*Subset*: if every element of set A is also in B, then A is a subset of B, denoted as `A ⊆ B`. The relation established by `⊆` is called the *inclusion or containment relation*. Two sets are equal if they contain each other: if A ⊆ B and B ⊆ A, then A = B. If A ⊆ B, but A ≠ B, then A is a *proper subset* of B, denoted as `A ⊂ B`. The empty set is a subset of every set, `∅ ⊆ A`. Every set is a subset of itself, `A ⊆ A`.

*Euler diagram* is a graphical representation of sets, where each set is depicted as a planar region enclosed by a loop, with its elements inside. If A is a subset of B, then the region representing A is completely inside the region representing B. If two sets have no elements in common, the regions do not overlap. Unlike Venn diagrams, which show all possible relations between different sets, the Euler diagram shows only relevant relationships.
https://en.wikipedia.org/wiki/Euler_diagram

*Venn diagram*, in contrast, is a graphical representation of `n` sets in which the `n` loops divide the plane into `2ⁿ` zones such that for each way of selecting some of the `n` sets (possibly all or none), there is a zone for the elements that belong to all the selected sets and none of the others.
https://en.wikipedia.org/wiki/Venn_diagram
