application# Function theory :: Debrief :: Functions

## FOM

Set theory is (still) considered by the majority of mathematicians as the foundational theory of mathematics. This means that the entirety of mathematics must be derivable from sets - all mathematical objects need to be defined in terms of sets (or, less desirably, introduced as primitives). More precisely, the ZFC is the set theory at the FOM. ZFC is an axiomatic set theory comprised of 10 axioms: ZF axioms + The axiom of choice (AC). The AC, being controversal, is specified separately and the theory with it is the ZFC, while the theory without it is ZF. Actually, the AC has numerous replacement that have emerged over the years, so there are many theories equivalent to ZFC without the AC.

## Controversy

Mathematicians are unwilling to contemplate the foundation of mathematics (FOM), being content that a suitable foundational theory exists. Majority agrees that a set theory should be the FOM, and majority thinks that the ZF(C) is that set theory. But majority of mathematicians seem to be completely disinterested in the foundations, now as before - in fact, before they were happy to leave the foundational issues of their own science for other scientists to deal with, primarily phylosophers and logicians. The encounter of logicians with mathematics has even been immortalized in the term "logicism". The attempts to put math on a stable foundation, which Hilbert expressed as the mater of utmost urgency, eventually failed until the invention of ZF set theory which was accepted, swiftly proclaiming the problems with the FOM solved.

Even today, mathematicians are unwilling to touch upon this subject, considering this debate closed, content by the fact that the FOM theory exists, it is what it is, leaving them free to pursue other things of interest. While pursuing the matters that is of interest to them, a mathematician must come up with the theory to describe it, as the rigor demands. And it is very likely that sets will be mentioned, with the need to define something in terms of sets. The concensus seems to be that mathematicians like sets, but dislike dealing with the FOM, especially having to justify sets as the FOM. To that end, many authors will lay out a theory using a naive-set-theory approach, disregarding even the Russell's paradox, knowing that, should they be forced to, they damn well can express it all with rigorous formality.




## Everything's a set

- sets
- ordered pairs
- relations
- functions

Functions are relations, and like relations, functions are sets. However, functions, the same as relations, are not just any kind of sets allowed to contain any type of objects, but they are both restricted to only contain ordered pairs as elements. Of course, ordered pairs are just another type of (restricted) sets because, in set theory, everything is (a set, that is).

## Ordered pair

And although an ordered pair, `(a,b)` is intended to represents a pair of objects `a` and `b`, it must be defined in terms of sets because, is a set, but with some restrictions. 

The common definition of an ordered pair

## Functions

The most essential property of functions is that a domain element must be associated with exactly one codomain element.

The other important property, that the whole domain must be covered, pertains only to total functions - partial functions may disregard that constraint.

Thus, partial functions are free to relieve some elements of the domain from having to associate. But, exactly how many of them? If no domain elements participate, that surely cannot be a function but only a relation, and an empty one at that - actually, *the empty relation*, since relations are sets, and set equality is extensional (determined by their elements). An empty set being equal to any other empty set means there is only one empty set - the empty set (thereby justifying the define article "the"). So an empty function cannot exists - it would be the same as an empty relation, the same as any empty set - it would be the empty set.

Therefore, partial functions must admit an additional property to ensure that at least one domain element is participates in the relation (function).

## Total functions

A function is total if all domain elements 1) are associated, 2) with each being associated to exactly one codomain element.

>Total function
- each domain element associated to exactly 1 codomain element
- complete coverage of the domain

```
f : A -> B
f a = b
f = { (a,b) | ∀ a ∈ A. ∃ b ∈ b. f a = b }

∀ a a' ∈ A.
  ∃ b ∈ b.
    (f a = b) ∧ (f a' = b) -> a = a'
    or
    f a = f a'-> a = a'
```

*Total function*: The universal quantification ensure that the whole domain is covered, and the formula asserts that exactly one codomain element is assoc to each domain element.

Since the codomain doesn't share the coverage condition, it may not be entirely covered. When it is, such (total) function is *surjective*.

*Inverse of a total function*: in general, the inverse is not a function, it is demoted to a relation.


## Total surjective functions

>Total surjective function
- each domain element associated to exactly 1 codomain element
- complete coverage of the domain
- complete coverage of the codomain

Derived properties
- range and codomain are equal sets (the same set), `ran = cod`
  - therefore, `|ran| = |cod|`
- domain's cardinality is strictly greater than cod/ran, `|dom| > |ran = cod|`
  - `|dom| > |ran = cod|` or it wouldn't be a surjection


- |dom| ? |ran| ? |cod| function
- |dom| ? |ran| ? |cod| total function
- |dom| ? |ran| ? |cod| 

- `|dom| =  |ran| = |cod|`  total bijection
- `|dom| > (|ran| = |cod|)` total surjection
- total injection: dom < cod, dom < ran, ran < cod; `|dom| < |ran| < |cod|`


*Inverse of a total surjective function*: the inverse is definitely not a function, but only a relation.

In fact, the surjection property ensures that the inverse cannot possibly be a function. This characteristic property of surjective functions is very important as it embodies the loss of information. Surjection collapses objects, so the information needed to reverse it is forever lost - demoting inverses into relations.

*The composition of surjections* only augments the loss of information. The resulting surjection looses even more information as even more objects are collapsed into one.



A function is partial if not all domain elements are associated to exactly one codomain element. That is, each domain element must be associated to either 0 or 1 codomain element.
