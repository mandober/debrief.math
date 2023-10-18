# Index of set axioms

Set Theory Axioms from `Naive Set Theory` by Paul R. Halmos 1960

1. **Axiom of Extension**    
   Two sets are equal iff they have the same elements.   
   `∀x(x ∈ A <=> x ∈ B) <=> A = B`

2. **Axiom of Union**    
   For every collection of sets there exists a set that contains all 
   elements that belong to at least one set in the given collection.
   A B
   C
   ∀x. x ∈ C -> x ∈ A ⋁ x ∈ C -> x ∈ B

3. Axiom of Specification 
  To every set `A` and to every predicate `P`, there corresponds a set `B` whose elements are exactly those elements `x` in `A` for which `P(x)` holds.

4. Axiom of pairing. For any two sets there exists a set that they both belong to.
5. Axiom of powers. For each set there exists a collection of sets that contains among
its elements all the subsets of the given set.
6. Axiom of infinity. There exists a set containing 0 and the successor of each of its
elements.
7. Axiom of substitution. If S(a,b) is a sentence such that for each a in set A the set
{b: S(a,b)} can be formed, then there exists a function F with domain A such that
F(a) = {b:S(a,b)} for each a in A. (Anything intelligent that one can do to the elements
of a set yields a set.)
8. Axiom of choice. The Cartesian product of a non-empty family of non-empty sets is
non-empty.
