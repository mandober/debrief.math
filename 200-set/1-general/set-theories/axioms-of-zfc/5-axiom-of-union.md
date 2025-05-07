# Set Theory :: ZFC Axioms :: Axiom of Union

https://en.wikipedia.org/wiki/Axiom_of_union

In axiomatic set theory, the axiom of union is one of the axioms of Zermelo-Fraenkel set theory. This axiom was introduced by Ernst Zermelo.

The axiom states that for each set x there is a set y whose elements are precisely the elements of the elements of x.

## Contents
- Formal statement
- Relation to Pairing
- Relation to Replacement
- Relation to Separation
- Relation to Intersection
- References

## Preliminary version

Preliminary version of the union axiom works only for two sets: 

`∀x ∀y ∃u ∀z(z ∈ u ⇔ (z ∈ x ⋁ z ∈ y))`

In set-builder notation, this can be expressed by

`A ⋃ B = { x | x ∈ A ⋁ x ∈ B }`

That is, the union of sets A and B is a set whose members are either elements of A or elements of B. Note the similarity between `⋃` and `⋁`.

## Formal statement

In the formal language of ZF, the axiom of union states:

`∀A ∃B ∀c(c ∈ B ⇔ ∃D(c ∈ D ∧ D ∈ A))`

Given any set `A` (family), there is a set `B` (union) such that, for any element `c`, `c` is a member of `B` iff there is a set `D` such that `c` is a member of `D` and `D` is a member of `A`.

To put it more simply: For any family of sets `A`, there is a set `B = ⋃A` which consists of just the elements of the elements of the set `A`.

## My analysys

`A` is a family of sets, the members of which are sets existentially quantified using the variable `a`. The variable `x` represents the elements of the union `B`. So `x` is in union `B` iff there is a set `a` such that `a` is in the family `A` and `x` is in `a`. So `a`'s are sets - members of the family `A`; the elements of `a`'s will end up in the union `B`.

```hs
A₀ = {1,2}                -- member of the family of sets
A₁ = {1,3}                -- the var 'a' takes on these members
A₂ = {3,5}
A = {A₀,A₁,A₂}            -- family of sets
A = {{1,2},{1,3},{3,5}}
B = ⋃A                    -- B is the union over a family
B = ⋃{A₀,A₁,A₂}
B = ⋃{{1,2},{1,3},{3,5}}
B = {1,2} ⋃ {1,3} ⋃ {3,5}
B = {1,2,3,5}
```

The union over a family of sets, `B = ⋃A`, consists of elements which are themselves elements of the sets comprising the family `A`.

Note that the union axiom uses the existential quantifier, `∃B`, which means it asserts that the union set exists. Also, the existential quantifier is used in a subformula, `∃a`, which means that the family of sets `A` has at least one member.

__Q__: How does this then allows for `⋃∅ = ∅`? …since there must be at least one set-member of the family?


The definition of the *intersection* uses almost identical formula except the variable `a` is quantified universally, `∀a`; this, in turn, requires the use of implication instead of conjunction in the subformula: 
`∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a)`

__Q__: Does intersection set exists?
__A__: While the union set is asserted to exists by the use of ∃, the intersection set is not immediately implied to exist since it uses ∀. However, with the help of the axiom of replacement (substitution) we can prove that it does.

The use of the universal quantifier allows for `⋂∅ = ∅`.

```hs
-- FOL fomulas
∀A ∃B ∀x(x ∈ B ⇔ ∃a(x ∈ a ⋀ a ∈ A) -- union
∀A ∃B ∀x(x ∈ B ⇔ ∃a(a ∈ A ⋀ x ∈ a) -- union (flipped conjuncts)
∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a) -- intersection

-- set-builder notation
A ⋃ B ≝ { x | x ∈ A ⋁ x ∈ B}        -- union
A ⋂ B ≝ { x | x ∈ A ⋀ x ∈ B}        -- intersection
```


## Relation to Pairing

The axiom of union allows us to unpack a set of sets (family) creating a flattened set. Together with the axiom of pairing, this implies that for any two sets, there is a set (called their union) that contains exactly the elements of the two sets.

```hs
A = {1,2}
B = {1,3}
M = ⋃{A, B} = ⋃{{1,2},{1,3}} = {1,2,3}
M = A ⋃ B = {1,2} ⋃ {1,3} = {1,2,3}
```

## Relation to the Axiom Schema Of Replacement

The Axiom Of Replacement allows one to form many unions, such as the union of two sets.

However, in its full generality, the Axiom Of Union is independent from the rest of the ZFC-axioms: the Axiom Schema Of Replacement does not prove the existence of the union of a set of sets if the result contains an unbounded number of cardinalities.

Together with the Axiom Schema Of Replacement, the Axiom Of Union implies that one can form the union of a family of sets indexed by a set.

## Relation to the Axiom Schema Of Separation

In the context of set theories which include the Axiom Of Separation, the Axiom Of Union is sometimes stated in a weaker form which only produces a superset of the union of a set. For example, Kunen states the axiom as 
`∀𝓕 ∃A ∀Y ∀x((x ∈ Y ∧ Y ∈ 𝓕) ⇒ x ∈ A)` 
which is equivalent to:

>Weaker form of the Axiom Of Union:
`∀𝓕 ∃A ∀x((∃Y(x ∈ Y ∧ Y ∈ 𝓕)) ⇒ x ∈ A)`

Compared to the axiom stated at the top of this section, i.e. 
`∀𝓕 ∃A ∀x(x ∈ A ⇔ ∃Y(x ∈ Y ∧ Y ∈ 𝓕))`, 
this variation asserts only one direction of the implication, rather than both directions.

```hs
∀𝓕 ∃A ∀x( x ∈ A ⇔ ∃Y(x ∈ Y ∧ Y ∈ 𝓕) )  -- the Axiom Of Union uses BIC
∀𝓕 ∃A ∀x( ∃Y(x ∈ Y ∧ Y ∈ 𝓕) ⇒ x ∈ A )  -- one direction
∀𝓕 ∃A ∀x( x ∈ A ⇒ ∃Y(x ∈ Y ∧ Y ∈ 𝓕) )  -- other direction

∀𝓕 ∃A ∀x( x ∈ A ⇔ ∃Y(x ∈ Y ∧ Y ∈ 𝓕) )  -- the Axiom Of Union (with BIC)
∀𝓕 ∃A ∀x( ∃Y(x ∈ Y ∧ Y ∈ 𝓕) ⇔ x ∈ A )  -- flipping the conditionals
∀𝓕 ∃A ∀x( ∃Y(x ∈ Y ∧ Y ∈ 𝓕) ⇒ x ∈ A )  -- uses only IMP instead of BIC
```


## Relation to Intersection

There is no corresponding axiom of intersection.

If `A` is a nonempty set containing `E`, then we can *define intersection* `⋂A` using the *Axiom Schema Of Specification*:

`⋂A = { x ∈ E | ∀Y(Y ∈ A ⇒ x ∈ Y) }`

so no separate axiom of intersection is necessary.

If `A` is the empty set, then trying to form the intersection of `A` as   
`{ x | ∀Y(Y ∈ A ⇒ x ∈ Y) }` usually expressed with conjunction instead:    
`{ x | Y ∈ A ⋀ x ∈ Y }`   
is not permitted by the axioms.

Moreover, if such a set existed, then it would contain every set in the "universe", but the notion of a universal set is antithetical to ZF.


```hs
-- FOL fomulas
∀A ∃B ∀x(x ∈ B ⇔ ∃a(x ∈ a ⋀ a ∈ A) -- union
∀A ∃B ∀x(x ∈ B ⇔ ∃a(a ∈ A ⋀ x ∈ a) -- union (flipped conjuncts)
∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a) -- intersection

-- set-builder notation
A ⋃ B = { x | x ∈ A ⋁ x ∈ B}        -- union of two sets
A ⋂ B = { x | x ∈ A ⋀ x ∈ B}        -- intersection of two sets

⋃A = { x ∈ E | ∃Y(Y ∈ A ⋀ x ∈ Y) }  -- n-ary union
⋂A = { x ∈ E | ∀Y(Y ∈ A ⇒ x ∈ Y) }  -- n-ary intersection
-- where A is a nonempty set containing E
```

## References

- 1908 Ernst Zermelo `"Untersuchungen über die Grundlagen der Mengenlehre I"`,
  Mathematische Annalen 65(2), pp. 261-281.
  [✔] English translation: `From Frege to Gödel: A Source Book in Mathematical Logic` by Jean van Heijenoort, 1967, pp. 199-215 ISBN 978-0-674-32449-7

- [✔] Kenneth Kunen 1980 `Set Theory: An Introduction to Independence Proofs`.
  Elsevier. ISBN 0-444-86839-9.

- [✔] `Naive set theory`. Paul Halmos, 1960.

- [✔] `Set Theory: The Third Millennium Edition, Revised and Expanded`. 
  Thomas Jech, 2003. Springer. ISBN 3-540-44085-2.
