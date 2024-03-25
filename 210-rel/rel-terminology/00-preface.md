# Preface

- relation
  - a relation _R_ between sets _A_ and _B_
  - _R_ is a subset of the Cartesian product of _A_ and _B_
  - A is a *source* set of the relation R
  - B is a *target* set of the relation R
  - R is a subset of the Cartesian product of A and B, _R ⊆ A×B_
  - R is an element in the powerset of the Cartesian product, _R ∈ 𝒫(A×B)_
- ordered pair _(a, b)_
  - first  component of an ordered pair, (_a_, b)
  - second component of an ordered pair, (a, _b_)
- set of ordered pairs, _{ (a, b) }_
  - all first  components of ordered pairs of set R, _{ a | (a, b) ∈ R }_
  - all second components of ordered pairs of set R, _{ b | (a, b) ∈ R }_
- participation in a relation
  - participants in a relation (elements that participate in a relation)
  - all participants in a rel R from source set, _∀a(a ∈ A ⇒ (a,b) ∈ R)_
  - all participants in a rel R from target set, _∀b(b ∈ B ⇒ (a,b) ∈ R)_
  - *domain of relation*: subset of the source set of participating elements
  - *codomain of relation*: subset of the target set of participating elements
  - *field of relation*: union of domain of relation and codomain of relation
  - relation, R ⊆ A×B
  - source of relation:   src(R) = A
  - target of relation:   tgt(R) = B
  - domain of relation:   dor(R) = D ⊆ A, D = { a | (a, b) ∈ R }
  - codomain of relation: cor(R) = C ⊆ B, C = { b | (a, b) ∈ R }
  - field of relation:    dor(R) ∪ cor(R) = F = D ∪ C



A relation between two sets `A` and `B` is a set of ordered pairs, where each element (ordered pair) of the set (relation set) has the form `(a,b)`, such that `a ∈ A` and `b ∈ B`.

In fact, any set of ordered pairs can be called a relation because it is usually known which set the components of ordered pairs come from. Actually, this is true if all the first components originate from one set, and all the second components from another set. Actually, this implies that any relation is a subset of the Cartesian product between two sets.

A relation `R` between sets `A` and `B` is a subset of the Cartesian product of `A` and `B`, `R ⊆ A×B`. In fact, this Cartesian product itself is also one possible relation between A and B - it is a unique relation called *total or universal relation* that is always possible beween any two sets.

Another unique relation that is always possible beween any two sets is the *empty or null relation*. The empty relation shows that the issue about the naming of associated sets - whether they are called *source and target vs domain and codomain* - can be confusing because the relation itself is a set of ordered pairs comprised of elements of these two sets, but a relation like the empty relation cannot be defined without mentioning the source and target set. And, as the empty relation shows, elements are not required to participate in the relation.

Thus, there are two issues with the notion of a (binary) relation:
- Is a relation a triple (A, R, B), or a set of ordered pairs?
- Which sets actually make the domain and codomain of a relation?

A relation is said to be between sets, e.g. a relation from set A to set B means the elements of A are associated with elements of B. The direction of the relation is from A to B. This *directionality* needs to be encoded in the (notation of) relation. In fact, the directionality is encoded through ordered pairs since each ordered pair (in the set of relation from A to B) has a particular form; namely, the *first component* of each ordered pair must be form the *source (domain) set* `A`, and the *second component* of each ordered pair must be form the *target (codomain) set* `B`. However, as we have already mentioned, there is no requirement that all elements of A or all elements of B participate in a relation (in fact, it may be the case that none are, as in the case of the null relation).

Thus the set of ordered pairs does not really make a relation proper - a relation is something more besides this set. Unambiguously, this set is called **the graph of the relation**. So, again, a relation from A to B is a triple, `(A, G, B)`, that includes both source set `A` and the target set, `B`, as well as the set of ordered pairs, `G`, that is often mistaken for the relation itself but is actually the graph of the relation.

>A binary relation is a *triple*, `(A, G, B)`, where `A` is the *source set of the relation*, `B` is the *target set of the relation*, and `G` is the set of ordered pairs called the *graph of the relation*.

It is impossible to understand the empty, or any "underspecified" relation, without also knowing both source and target sets. In general, just knowing the graph of the relation is not sufficient, as it does not completely define a relation.

The second point of confusion regarding relations is the use of the terms "domain" and "codomain". In a relation `R` from a set `A` to set `B`, the set `A` is called the **source set**, and `B` is called the **target set**.

For any non-left serial relation, the source set is not the same as the set called **defined domain of the relation**, which is a subset of `A` comprised only of those elements of `A` that actually participate in the relation.

Similarly, for any non-right serial relation, the target set is not the same as the set called **defined codomain of the relation**, which is a subset of `B` comprised only of those elements of `B` that actually participate in the relation.

Since not all elements of a set need participate in a relation, there are in fact two sets called the "domain" set:
- source set `A` is traditionally called the domain
- domain of the relation, a subset of the source set, is also called domain

And similarly with the term "codomain".

In general, only a subset `D` of `A`, `D ⊆ A`, may participate in a relation, and this subset is then called the *domain of the relation* (`dor`).

Given a relation `R` (as a graph of the relation), we have:
- `src(R)` is the source set, i.e. `A`
- `dor(R)` is the domain
- `dor(R) ⊆ src(R)`
- `tgt(R)` is the target set, i.e. `B`
- `cor(R)` is the codomain
- `cor(R) ⊆ tgt(R)`
- `dor(R) ∪ cor(R)` is the field of relation


In general, only a subset `C` of `B`, `C ⊆ B`, may participate in a relation, and this subset is then called the *codomain of the relation* (`cor`).


- ordered pair `(a, b)`
- first component, `a`
- second component, `b`
- set of ordered pair `{ (a, b) | a ∈ A, b ∈ B }`

So, the set `A` is the source set of the relation `R`, and it contains elements that participate in the relation `R`; these elements of `A` that participate in the relation `R` are always the first component of ordered pairs. Since not all elements of `A` need participate in a relation, those that do make a subset `S` of `A`, and this subset `S` is called the *domain of the relation*, or the *defined domain of the relation*.



- S ⊆ A

- set of ordered pair `{ (a, b) | a ∈ A, b ∈ B }` ⊆ A×B
