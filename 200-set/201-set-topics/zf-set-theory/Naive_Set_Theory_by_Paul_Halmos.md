# Set theory :: "Naive Set Theory" by Paul R. Halmos

The book "Naive Set Theory" by Paul R. Halmos, originally published 1960

## Summary: Axioms of Naive Set Theory by Paul R. Halmos

1. *Axiom of extension*. Two sets are equal iff they have the same elements.
2. *Axiom of specification*. To every set A and to every condition S(x) there corresponds a set B whose elements are exactly those elements x of A for which S(x) holds.
3. *Axiom of pairing*. For any two sets there is a set they both belong to.
4. *Axiom of union*. For every collection of sets there is a set that contains all the elements that belong to at least one set in the given collection.
5. *Axiom of powers*. For each set there exists a collection of sets that contains among its elements all the subsets of the given set.
6. *Axiom of infinity*. There exists a set containing ∅ and the successor of each of its elements, n ⋃ {n}.
7. *Axiom of substitution*. If S(a,b) is a sentence such that for each `a` in A the set {b:S(a,b)} can be formed, then there exists a function F with domain A such that F(a) = {b:S(a,b)} for each a in A; i.e. anything sensible one can do to the elements of a set yields a set.
8. *Axiom of choice*. The Cartesian product of a non-empty family of non-empty sets is non-empty.

## Preface

Note: The book provides an introduction to set theory, and due to its popularity, the theory presented is often referred to as a concrete set theory, called *Halmos set theory*, even though its aim is only to explain *ZFC set theory* and its axioms.

Note: Even though the title suggest that the set theory presented is a naive approach to set theory (with unrestricted comprehension), this is not so. Namely, the presented set theory is axiomatic, and Halmos has used the adjective "naive" to mean that he doesn't discuss axiomatic minutiae and advanced set-theoretic topics such as large cardinals, instead preferring to expose it using informal language. However, he does give rigorous definitions of basic objects and *introduces all ZFC axioms except the Axiom of Foundation*.

The Axiom of Foundation (aka Axiom of Regularity) is about whether or not a set can contain itself and Halmos repeatedly dances around this issue, avoiding to take a define stance on the subject.

## Axioms of Halmos set theory

*Halmos set theory* includes these axioms:
1. Axiom of extension
2. Axiom of union
3. Axiom of specification
4. Axiom of pairing
5. Axiom of power
6. Axiom of infinity
7. Axiom of substitution
8. Axiom of choice

Axioms of Halmos set theory - deatils:
1. *Axiom of extension*: 
  two sets are equal iff they have the same elements
2. *Axiom of unions*: 
  for every collection of sets there exists a set that contains all the elements that belong to at least one of them
3. *Axiom of specification*: 
  to every set `S` and to every condition `P(a)`, there corresponds a set `A` whose elements are exactly those elements `a ∈ S` for which `P(a)` holds.
4. *Axiom of pairing*: 
  for any two sets there is a set whom they both belong to
5. *Axiom of powers*: 
  for each set there is a collection of sets that contains, as elements, all the subsets of the given set
6. *Axiom of infinity*: 
  there is a set containing 0 and the successor of each of its elements
7. *Axiom of substitution*: 
  if `P(a,b)` is a predicate (relation) such that, 
  for each `a` in set `A`, 
  the set `{ b | P(a,b) }` can be formed, 
  then there exists a function `f` with domain `A` 
  such that `∀a ∈ A. f(a) = {b | P(a,b)}` 
  (i.e. anything reasonable we can do to set elements yields a set).
8. *Axiom of choice*: 
  Cartesian product of a non-empty family of non-empty sets is non-empty


## Ordinal numbers in Halmos set theory

* from Wikipedia article:
https://en.wikipedia.org/wiki/Naive_Set_Theory_(book)

Halmos defines an *ordinal number* `α` as a *well-ordered set* `α` such that 
`suc(x) = x` for all `x` in `α`.

>An ordinal number α is a well-ordered set α: `∀x ∈ α. S(x) = x`

The definition of **well-ordering**: if `x` and `y` are elements of an ordinal number `α`, then `x < y` means `x ∈ y`. By choosing to use the strict relation `<` (GT) instead of `≤` (GE), Halmos implies that well-ordering is strict.

This definition of well-ordering relation in terms of `<` makes it impossible to have `x ∈ x`, where `x` is an element of an ordinal number. That's because `x ∈ x` means `x < x`, which implies `x ≠ x` (due to `<` being strict, unlike `≤`), which is impossible.

This definition of an ordinal number also makes it impossible to have `α ∈ α`, where `α` is an ordinal number. That's because `α ∈ α` implies `α = suc(α)`, which gives `α ∈ α = suc(α) = {y ∈ α | y < α}`, which implies `α < α`, which implies `α ≠ α` (due to `<` being strict, unlike `≤`), which is impossible.

## Contents

- 1. Axiom of extension
- 2. Axiom of specification
- 3. Unordered Pairs
- 4. Unions And Intersections
- 5. Complements And Powers
- 6. Ordered Pairs
- 7. Relations
- 8. Functions
- 9. Families
- 10. Inverses And Composites
- 11. Numbers
- 12. The Peano Axioms
- 13. Arithmetic
- 14. Order
- 15. The Axiom Of Choice
- 16. Zorn's Lemma
- 17. Well Ordering
- 18. Transfinite Recursion
- 19. Ordinal Numbers
- 20. Sets Of Ordinal Numbers
- 21. Ordinal Arithmetic
- 22. The Schroder-bernstein Theorem
- 23. Countable Sets
- 24. Cardinal Arithmetic
- 25. Cardinal Numbers


## 1. Axiom of extension

The purpose of this book is to develop the basic properties of sets.

One thing that the development will not include is a definition of sets.

The semi-axiomatic point of view adopted here assumes that the reader has the ordinary, human, intuitive (and frequently erroneous) understanding of what sets are; the purpose of the exposition is to delineate some of the many things that one can correctly do with them.

What may be surprising is not so much that sets may occur as elements, but that for mathematical purposes no other elements need ever be considered.

The principal concept of set theory, the one that in completely axiomatic studies is the principal primitive (i.e. undefined) concept, is that of *membership or belonging*. If `x` belongs to `A` (x is an element of A, x is contained in A), we write `x ∈ A`.

A possible relation between sets, more elementary than belonging, is *equality*. The equality of two sets A and B is universally denoted by the familiar symbol `A = B`.

The most basic property of belonging is its relation to equality, which can
be formulated as follows:

**Axiom of extension**. Two sets are *equal* iff they have the same elements; that is, a set is determined by its *extension*.

`∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`

If A and B are sets and if every element of A is an element of B, we say that A is a **subset** of B (or B includes A) and write `A ⊆ B`.

`∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B`

- Set equality   `=` is   reflexive,     symmetric,     transitive
- Set inclusion  `⊆` is   reflexive, antisymmetric,     transitive
- proper subset  `⊂` is irreflexive, antisymmetric,     transitive
- Set membership `∈` is irreflexive,    asymmetric, antitransitive (in general)

## 2. Axiom of specification

All the basic principles of set theory, except only the axiom of extension, are designed to make new sets out of old ones.

The first and most important of these basic principles of set manufacture says, roughly speaking, that anything intelligent one can assert about the elements of a set specifies a subset, namely, the subset of those elements about which the assertion is true.

There are *two basic types of sentences*, namely, assertions of belonging, `x ∈ A`, and assertions of equality, `A = B`. All other sentences are obtained from such *atomic sentences* by repeated applications of the usual logical operators, subject only to the minimal courtesies of grammar and unambiguity.

**Axiom of specification**. To every set A and to every condition φ(x) there corresponds a set B whose elements are exactly those elements x of A for which φ(x) holds.

`∀z ∃y ∀x(x ∈ y ⇔ (x ∈ z ⋀ φ(x)))`

A condition here is just a sentence. The symbolism is intended to indicate that the letter x is free in the sentence φ(x); that means that x occurs in φ(x) at least once without being introduced by ∀ or ∃.

It is an immediate consequence of the Axiom Of Extension that the Axiom Of Specification determines the set B *uniquely*.

To indicate the way B is obtained from A and from φ(x) it is customary to write `B = { x ∈ A | φ(x) }` (set-builder notation).


Consider in the role of `φ(x)`, the sentence `x ∉ x`. It follows that, whatever the set `A` may be, if `B = {x ∈ A | x ∉ x}`, then

`∀y(y ∈ B ⇔ (y ∈ A ∧ y ∉ y))`  (1)

Can it be that `B ∈ A`? We proceed to prove that the answer is no.
- if `B ∈ A`, then either `B ∈ B` or `B ∉ B`
- if `B ∈ B`, then by (1), assumption `B ∈ A` yields `B ∉ B` a contradiction
- if `B ∉ B`, then by (1), assumption `B ∈ A` yields `B ∈ B` a contradiction

This completes the proof that `B ∉ A` is impossible - it must be that `B ∉ A`.

The most interesting part of this conclusion is that there exists something (namely B) that does not belong to A. The set A in this argument was quite arbitrary. We have proved, in other words, that nothing contains everything, i.e. there is no set that contains all sets, i.e. *there is no universe*.

"Universe" here is used in the sense of *universe of discourse*, i.e. *domain of discourse* (DOD), meaning, in any particular discussion, a set that contains all the objects under study.

In older (pre-axiomatic or naive) approaches to set theory, the existence of a universe was taken for granted, and the previous argument was known as the *Russell paradox*. The moral is that (especially in mathematics) it is *impossible to get something for nothing*. To specify a set, it is not enough to conjure up a predicate, but it is also *necessary to have a pre-constructed set which the predicate selects elements from*.

## 3. Unordered Pairs

For all that has been said so far, we might have been operating in a vacuum. To give the discussion some substance, let us now officially assume that *there exists a set*. Later on we formulate a deeper and more useful existential assumption, so this assumption plays only a temporary role for now.

One consequence of this assumption is that there exists a set without any elements at all. Indeed, if A is a set, apply the Axiom Of Specification to A with the sentence `x ≠ x` (or any other universally false sentence). The result is the set `{x ∈ A | x ≠ x}`, which is element-less. The Axiom Of Extension implies that there is only one such set - *the empty set*, `∅`.

`∀A(∅ ⊆ A)`

For any set `A`, `∅ ⊆ A`, iff all the elements of `∅` are also elements of `A`, `∀x(x ∈ ∅ ⇒ x ∈ A)`. Since the implication `x ∈ ∅ ⇒ x ∈ A` has a false antecedent, the implication is vacuously true.

To prove that something is true of the empty set, prove that it cannot be false. For instance, how might it be false that ∅ ⊆ A? It could be false only if ∅ had an element that did not belong to A. Since ∅ has no elements at all, this is absurd. Conclusion: ∅ ⊆ A is not false, and therefore ∅ ⊆ A for every A.

### Axiom of pairing

The set theory developed so far is still a pretty poor thing; for all we know there is only one set, and even that one is empty.
- Are there enough sets to ensure that every set is an element of some set?
- Is it true that for any 2 sets there is a third one they both belong to?
- What about 3 sets, or 4, or any number of sets...

We need a new principle of set construction to resolve such questions, and the next axiom is a good beginning:

**Axiom of pairing**: For any two sets, there is a set they both belong to.

`∀A ∀B ∃P ∀x(x ∈ P ⇔ x=A ⋁ x=B)`

`∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`

The axiom of pairing says that if A and B are sets, then there exists a set P such that A ∈ P and B ∈ P.

One consequence (in fact an equivalent formulation) of the axiom of pairing is that for any two sets there exists a set that contains both of them and nothing else.

Indeed, if A and B are sets, and if P is a set such that `A,B ∈ P`, then we can apply the Axiom Of Specification to P with the sentence `x = A ∨ x = B` to obtain the set `P = { x ∈ A | x = A ∧ x = B }`, which contains just A and B.

This set is called the *unordered pair* formed by A and B, and denoted `{A,B}`. The Axiom Of Extension implies that there is only one set with this property.


If we refer to the sentence `x = a ∨ x = b` as `S(x)`, we may express the Axiom Of Pairing by saying that there exists a set `B` such that

`x ∈ B ⇔ S(x)`              (1)

The axiom of specification, applied to a set `A`, asserts the existence of a set `B` such that

`x ∈ B ⇔ (x ∈ A ∧ S(x))`    (2)

The relation between (1) and (2) typifies something that occurs frequently. All the remaining principles of set construction are special cases of the Axiom Of Specification in the sense in which (1) is a special case of (2).

They all assert the existence of a set specified by a certain condition; if it were known in advance that there exists a set containing all the specified elements, then the existence of a set containing just them would indeed follow as a special case of the Axiom Of Specification.

If `a` is a set, we may form the unordered pair `{a, a}`, which is just `{a}` and it is called the **singleton** of `a`. It is uniquely characterized by the statement that it has `a` as its only element. 

To say that a ∈ A is equivalent to saying that {a} ∈ A.
`a ∈ A ⇔ {a} ⊆ A`

The axiom of pairing ensures that every set is an element of some set, and that any two sets are elements of some one and the same set.
- x    -->> {x}
- x, y -->> {x, y}

From the axioms we have postulated so far we can infer the existence of many sets, e.g. `∅`, `{∅}`, `{{∅}}`, `{{{∅}}}`, etc. Then consider the possible pairs we can make from them, such as `{∅, {∅}}`. Then consider the pairs formed by any two such pairs, or the mixed pairs formed by any singleton and any pair. And so on, ad infinitum.

## 4. Unions and Intersections

If A and B are sets, it is sometimes natural to wish to unite their elements into one comprehensive set. One way of describing such a comprehensive set is to require it to contain all the elements that belong to at least one of the two members of the pair {A, B}. This formulation suggests a sweeping generalization of itself; surely a similar construction should apply to arbitrary collections of sets and not just to pairs of them. What is wanted, in other words, is the following principle of set construction.

**Axiom of unions**. For every collection of sets there exists a set that contains all elements that belong to at least one set in the given collection.

Here it is again: for every collection 𝓕 there exists a set M, such that if x ∈ X for some X ∈ 𝓕, then x ∈ M.

`∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃X(x ∈ X ∧ X ∈ 𝓕))`

e.g. 𝓕 = { {0,1}, {1,2,3}, {0,2} }, 
then M = ⋃𝓕 = {0,1,2,3}

The comprehensive set `M` described above may be too comprehensive: it may contain elements that belong to none of the sets X in the collection 𝓕. This is easy to remedy - just apply the Axiom Of Specification to form the set 
`{ x ∈ M | x ∈ X for some X in 𝓕 }`.

It follows that, for every `x`, a necessary and sufficient condition that `x` belongs to this set is that `x` belongs to `X`, for some `X` in `𝓕`. If we change notation and call the new set `M` again, then

`M = { x | x ∈ X for some X in 𝓕 }`
or
`M = { x | ∃X(x ∈ X ∧ X ∈ 𝓕) }`

This set `M` is called *the union of the collection `𝓕` of sets* (or, union over a family of sets). Note that the Axiom Of Extension guarantees the uniqueness of `M`.

The union set `M` may be denoted `⋃𝓕` or `⋃{X : X ∈ 𝓕}` or `⋃{X ∈ 𝓕}X`.

Some facts about unions:
- ⋃{X : X ∈ ∅} = ∅     or  ⋃(∅) = ∅
- ⋃{X : X ∈ {A}} = A   or  ⋃({A}) = A

The special notation is used for the union of pairs of sets:
- ⋃{X : X ∈ {A,B}} = `A ∪ B`

The general definition of unions implies in the special case that `x ∈ A ∪ B`, if and only if `x` belongs to either `A` or `B`, or both; it follows that 
`A ∪ B = { x : x ∈ A ∨ x ∈ B }`.

Some facts about the unions of pairs (proofs are based on the corresponding properties of the logical operators `∨ ~ ∪` and `∧ ~ ∩`):
- A ∪ B = B ∪ A               (commutativity)
- A ∪ (B ∪ C) = (A ∪ B) ∪ C   (associativity)
- A ∪ ∅ = A                   (identity)
- A ∪ A = A                   (idempotence)
- A ⊆ B ⇔ A ∪ B = B            (subset)
  A ⊆ B ⇔ A ∩ B = A
- A ∪ (A ∩ B) = A             (cancellativity)
  A ∩ (A ∪ B) = A
- A ∪ 𝒰 = 𝒰                   (dominance)


An equally simple but quite suggestive fact is that `{a} ⋃ {b} = {a, b}`. This suggests a way to generalize pairs; specifically, `{a,b,c} = {a} ⋃ {b} ⋃ {c}`.

Since it is easy to prove that `{a,b,c} = {x | x=a ∨ x=b ∨ x=c}`, we know now that for every three sets there exists a set that contains them and nothing else; it is natural to call that uniquely determined set the unordered triple formed by them. The extension of this notation gets us quadruples, etc.

The formation of unions has many similarities with *intersection*: if A and B are sets, the intersection of A and B is the set `A ∩ B` defined by: 
`A ∩ B = { x ∈ A : x ∈ B }`

The definition is symmetric in A and B even if it looks otherwise; we have
`A ∩ B = { x ∈ B : x ∈ A }`

and, in fact, since `x ∈ A ∩ B` if and only if `x` belongs to both `A` and `B`, it follows that `A ∩ B = { x | x ∈ A ∧ x ∈ B }`.

The basic facts about intersections:
- A ∩ B = B ∩ A               (commutativity)
- A ∩ (B ∩ C) = (A ∩ B) ∩ C   (associativity)
- A ∩ ∅ = ∅                   (dominance)
- A ∩ 𝒰 = A                   (identity)
- A ∩ A = A                   (idempotence)
- A ∩ (A ∪ B) = A             (cancellativity)
  A ∪ (A ∩ B) = A
- A ⊆ B ⇔ A ∩ B = A             (subset)
  A ⊆ B ⇔ A ∪ B = B

If A ∩ B = ∅, the sets A and B are called *disjoint*, otherwise *overlapping*.

A collection of sets is *pairwise disjoint* if any two sets in the collection are disjoint.

Distributive laws
- A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C)
- A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C)

The formation of the intersection of two sets A and B, or, we might as well say, the formation of the intersection of a pair {A, B} of sets, is a special case of a much more general operation (this is another respect in which the theory of intersections imitates that of unions).

The existence of the general operation of intersection depends on the fact that for each non-empty collection of sets there exists a set that contains exactly those elements that belong to every set of the given collection.

Difference between union and intersection (`∃X` vs `∀X`)
- `∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃X(x ∈ X ∧ X ∈ 𝓕))`  union
- `∀𝓕 ∃M ∀x(x ∈ M ⇔ ∀X(x ∈ X ⇒ X ∈ 𝓕))` intersection
- `M = { x | ∃X(x ∈ X ∧ X ∈ 𝓕) }`         union
- `M = { x | ∀X(x ∈ X ⇒ X ∈ 𝓕) }`         intersection
- `M = { x | x ∈ X, ∃X(X ∈ 𝓕) }`          union
- `M = { x | x ∈ X, ∀X(X ∈ 𝓕) }`          intersection

In other words, for each nonempty collection 𝓕, there exists a set V such that x ∈ V if and only if x ∈ X for every X in Q.

To prove this assertion, let A be any particular set in 𝓕 (this step is justified by the fact that ∅ ∉ 𝓕) and write V = {x ∈ A | x ∈ X forall X ∈ 𝓕}.

The condition means "for all X, if X ∈ 𝓕 then x ∈ X". The dependence of V on the arbitrary choice of A is illusory, in fact `V = {x: x ∈ X forall X in Q}`.

The set V is called *the intersection of the collection 𝓕 of sets*, denoted by `⋂𝓕`. The Axiom Of Extension guarantees its uniqueness.

A necessary and sufficient condition that `(A ∩ B) ∪ C = A ∩ (B ∪ C)` is `C⊆A` and the condition has nothing to do with the set B.

`[(A ∩ B) ∪ C = A ∩ (B ∪ C)] ⇔ C ⊆ A`

## 5. Complements and Powers

If A and B are sets, the *difference between A and B*, more often known as the *relative complement of B in A*, is the set `A ∖ B` defined by 
`A ∖ B = { x | x ∈ A ∧ x ∉ B }` or `A ∖ B = { x ∈ A : x ∉ B }`. 
Note that in this definition it is not necessary to assume that `B ⊆ A`.

In order to record the basic facts about complementation we temporarily assume that all sets to be mentioned here are subsets of some set 𝒰 and that all complements are formed relative to it.
- Aᶜ = 𝒰 ∖ A
- (Aᶜ)ᶜ = A
- ∅ᶜ = 𝒰
- 𝒰ᶜ = ∅
- A ∪ Aᶜ = 𝒰
- A ∩ Aᶜ = ∅
- A ⊆ B ⇔ Bᶜ ⊆ Aᶜ

De Morgan laws:
- (A ∪ B)ᶜ = Aᶜ ∩ Bᶜ
- (A ∩ B)ᶜ = Aᶜ ∪ Bᶜ

De Morgan laws hold for the unions and intersections of larger collections of sets than just pairs.

These facts about complementation imply that the theorems of set theory usually come in pairs. If in an inclusion or equation involving unions, intersections, and complements of subsets of 𝒰, we replace each set by its complement, swap unions and intersections, and reverse all inclusions, the result is also a theorem. This is called the *principle of duality* for sets.

- `A ∖ B` = `A ∩ Bᶜ`
- `A ⊆ B` ⇔ `A ∖ B = ∅`
- `A ∖ (A ∖ B)` = `A ∩ B`
- `A ∩ (B ∖ C)` = `(A ∩ B) ∖ (A ∩ C)`
- `A ∩ B` ⊆ `(A ∩ C) ∪ (B ∩ Cᶜ)`
- `(A ∪ C) ∩ (B ∪ Cᶜ)` ⊆ `A ∪ B`

If A and B are sets, the **symmetric difference** (or **Boolean sum**) of A and B is the set `A + B` or `A Δ B`, `A ⊖ B` defined by `A + B = (A - B) ∪ (B - A)`

Symmetric difference (`+`, `Δ`, `⊖`) is
- A ⊖ B = B ⊖ A                 (commutative)
- A ⊖ (B ⊖ C) = (A ⊖ B) ⊖ C    (associative)
- A ⊖ ∅ = A                      (identity element is ∅)
- A ⊖ A = ∅                      (cancellative? annihilative?)


### Intersection and the empty collection

This may be the right time to straighten out a trivial but occasionally puzzling part of the theory of intersections. Recall, to begin with, that intersections were denned for non-empty collections only. The reason is that the same approach to the empty collection does not define a set. Which x's are specified by the sentence: `x ∈ X forall X ∈ 𝓕`? As usual for questions about ∅ the answer is easier to see for the corresponding negative question. Which x's do not satisfy the stated condition? If it is not true that x ∈ X for every X in ∅, then there must exist an X in ∅ such that x ∉ X; since, however, there do not exist any X's in ∅ at all, this is absurd. Conclusion: no x fails to satisfy the stated condition, or, equivalently, every x does satisfy it. In other words, the x's that the condition specifies exhaust the (nonexistent) universe. There is no profound problem here; it is merely a nuisance to be forced always to be making qualifications and exceptions just because some set somewhere along some construction might turn out to be empty. There is nothing to be done about this; it is just a fact of life.

If we restrict our attention to subsets of a particular set 𝒰, as we have temporarily agreed to do, then the unpleasantness described in the preceding paragraph appears to go away. The point is that in that case we can define the intersection of a collection 𝓕 (of subsets of 𝒰) to be the set: 
`{x ∈ 𝒰 : x ∈ X forall X ∈ 𝓕}`

This is nothing revolutionary: for each nonempty collection, the new definition agrees with the old one. The difference is in the way old and new definitions treat the empty collection. According to the new definition `⋂{X ∈ ∅}X` is equal to 𝒰 (since the condition is vacuously true; i.e. for which elements x of 𝒰 can it be false that x in X for every X in ∅?). The difference is just a matter of language. A little reflection reveals that the "new" definition offered for the intersection of a collection 𝓕 of subsets of 𝒰 is really the same as the old definition of the intersection of the collection `𝓕 ∪ {𝒰}`, and the latter is never empty.

### The Axiom of the powerset

We have been considering the subsets of a set 𝒰, but do those subsets themselves constitute a set? The postulate by the following axiom that they do.

**Axiom of powers**. For each given set, there exists a collection of sets that contains all the subsets of the given set.

`∀𝒰 ∃𝒫 ∀x(x ⊆ A ⇔ x ∈ 𝒫)`

In other words, if `𝒰` is a set, then there exists a set (collection) `𝒫` such that if `X ⊆ 𝒰`, then `X ∈ 𝒫`.

The set `𝒫` described above may be larger than wanted; it may contain elements other than the subsets of `𝒰`. This is easy to remedy; just apply the Axiom Of Specification to form the set `{X ∈ 𝒫 : X ⊆ 𝒰}`; recall that `X ⊆ 𝒰` says the same thing as `∀x(x ∈ X ⇒ x ∈ 𝒰)`.

Since, for every `X`, a necessary and sufficient condition that `X` belong to this set is that `X` be a subset of `𝒰`, it follows that if we change notation and call this set `𝒫` again, then `𝒫 = {X : X ⊆ 𝒰}`.

The set `𝒫` is called the power set of `𝒰`. 
The Axiom Of Extension guarantees its uniqueness. 
The dependence of `𝒫` on `𝒰` is denoted by `𝒫(𝒰)` instead of just `𝒫`.

Powerset distributes over ∩ and ∪:
- 𝒫(A ∩ B) = 𝒫(A) ∩ 𝒫(B)
- 𝒫(A ∪ B) = 𝒫(A) ∪ 𝒫(B)

This can be generalized to:
- ⋂{X ∈ 𝓕}(𝒫(X)) = 𝒫(⋂{X ∈ 𝓕}X)
- ⋂{X ∈ 𝓕}(𝒫(X)) ⊆ 𝒫(⋂{X ∈ 𝓕}X)










## 6. Ordered Pairs
## 7. Relations
## 8. Functions
## 9. Families
## 10. Inverses And Composites

## 11. Numbers
## 12. The Peano Axioms
## 13. Arithmetic
## 14. Order

## 15. The Axiom Of Choice
## 16. Zorn's Lemma
## 17. Well Ordering

## 18. Transfinite Recursion
## 19. Ordinal Numbers
## 20. Sets Of Ordinal Numbers
## 21. Ordinal Arithmetic
## 22. The Schroder-bernstein Theorem
## 23. Countable Sets
## 24. Cardinal Arithmetic
## 25. Cardinal Numbers
