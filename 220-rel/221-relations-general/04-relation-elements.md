# The elements of a relation

- binary relations
- heterogeneous relations
- homogeneous relations
- relation as a triple
- domain of a relation
- codomain of a relation
- graph of a relation
- ordered pair
- first component of an ordered pair
- second component of an ordered pair
- set of ordered pairs aka relation's graph
- Image of a relation
- Preimage of a relation



A heterogeneous binary relation is a 3-tuple `R = (A,G,B)`
- Fully specified heterogeneous binary relation, `R`
- The domain of a relation, `A`
- The codomain of a relation, `B`
- The graph of a relation, `G`, for any relation, `G ⊆ A⨯B`

When dealing with homogeneous relations - when the domain and codomain are the same set - the definition of relations may be shortened to a tuple:

A homogeneous binary relation is a 2-tuple `R = (A,G)`
- Fully specified homogeneous binary relation, `R`
- The domain and codomain of a relation, `A`
- The graph of a relation, `G`, for any relation, `G ⊆ A⨯A` or `G ⊆ A²`

We can always use the more general specification of a relation and treat the shorter specification `R = (A,G)` as an abbreviation for `R = (A,G,A)`.

It is often said that a relation `R` between sets `A` and `B` is a subset of their Carthesian product, <del>`R ⊆ A⨯B`</del>. This is incorrect because a relation is fully specified as a triple `R = (A,G,B)`, and only its graph `G` can be a subset of the product, `G ⊆ A⨯B`. And the graph `G` cannot represent the overall relation by itself (at least not in all situations).

The graph `G` of a relation `R` between sets `A` and `B` is the subset of `G ⊆ A⨯B`. A relation's graph `G` is the set of all the ordered pairs that are members of the set `G`. Each ordered pair has the form `(a,b)`, where `a ∈ A` and `b ∈ B`.

For heterogeneous binary relations, `R = (A,G,B)`:    
`G = { (a,b) | a ∈ A, b ∈ B }`

For heterogeneous binary relations, `R = (A,G) = (A,G,A)`   
`G = { (a,b) | a ∈ A, b ∈ A }`.

An ordered pair `(a,b)`, where `a ∈ A` and `b ∈ B`, that belongs to (the graph `G` of) a relation `R` between sets `A` and `B` is denoted by:

`aRb` ⟺ `(a,b) ∈ R` and `¬aRb` ⟺ `(a,b) ∉ R`


> NOTE: a relation is a tuple `R = (A,G,B)`, where `G` is the graph of the relation `R`; nevertheless since the notation `aRb` or `(a,b) ∈ R` is so proliferant, it should mean the same thing as `aGb` or `(a,b) ∈ G`. After all, an ordered pair is supposed to belong (or not) to the set `G` of ordered pairs, not to the tuple `R`.


`R` represents a relation whose graph is denoted by `G`, nevertheless, since a notation like `aRb` or `(a,b) ∈ R` are so proliferant, they are to means the same thing as `aGb` or `(a,b) ∈ G`, where `G` is a graph of rel `R = (A,G,B)`.



s used here although the letter `G` for its graph is more approapriate since `R` is a tuple of sets and `G` is a set of ordered pairs.


`a ~ b` ⋁ 



Although `G` is used obeve

- `aRb` is so frequent that it is acceptable although it means the same as


is so frequent that it is acceptable although 

where `R` is used represents a relation's graph



(although this is often stated as: an ordered pair that belongs to the relation `R`) is denoted
- correct denotation: `(a,b) ∈ G`
- widespread but incorrect: `(a,b) ∈ R`


`(a,b) ∈ G`


a ~ b = aGb

aGb ⟺ (a,b) ∈ G











## Example

Let R = (A,G)
Let A = {0,1,2}

Let G₀ = {}

Let Gᵤ =
  { (0,0), (0,1), (0,2)
  , (1,0), (1,1), (1,2)
  , (2,0), (2,1), (2,2)
  }

Let G =
  { (0,0), (0,1), (0,2)
  ,        (1,1), (1,2)
  ,               (2,2)
  }

Let G﹤ =
  {        (0,1), (0,2)
  ,               (1,2)
  }


﹥
