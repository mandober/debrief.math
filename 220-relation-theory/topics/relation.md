# Relation

https://en.wikipedia.org/wiki/Relation_(mathematics)


## Notion of a relation

The concept of a relation models the associations between mathematical objects.

Relations are directional: the direction of a relation is significant and it should be presented explicitly. When an object `a` is related to an object `b`, in general, it is not the same as `b` being related to `a`.

To preserve this directionality, the most common way to denote a relation is using an ordered pair: `(a, b)` denotes that `a` is related to `b`, i.e. that the first component of the ordered pair is related to the second component.

Normally, these objects that develop relations belong to sets, so the notion of a relation is normally also lifted to sets. We usually consider a relation between sets, primarily, between two sets `A` and `B`.

> A relation `R` between sets `A` and `B` is defined as a subset of their Cartesian product, `A⨯B`, i.e. `R ⊆ A ⨯ B`.

A relation R between sets A and B is a subset of A⨯B, hence `R` is also a set of ordered pairs `{(a,b)}` where `a ∈ A` and `b ∈ B`. However, this set of ordered pairs may have any number of elements, including 0, in which case the relation is called a *null (empty) relation*, so `R = ∅`. In the opposite case, when it contains the same number of elements as `A⨯B`, i.e. when `R = A⨯B`, it is called a *universal (total) relation*. All other relations on these two sets are located in between these two extremes, `∅ ⊆ R ⊆ A⨯B` and `0 < |R| < |A⨯B|`.

However, a relation between two sets cannot be fully described just by specifying the "actual relation set" i.e. the set of ordered pairs. For example, there is an empty relation between any two sets, so saying that R = ∅, specifies nothing about the corresponding sets. In fact, unless a relation is universal, there is no way to tell for certain which two sets are involved.

> In a stricter sense, a relation `𝓡` between sets `A` and `B` is a triplet `(A,B,R)` where `A` is domain, `B` a codomain, and `R` is defined as before, i.e. as a subset of their Cartesian product, `R ⊆ A ⨯ B`.

Traditionally, the *relation triplet* (3-tuple) `𝓡` is conflated and confused with the actual *relation set* `R`, but that's all right mama.

So, to specify a relation completely, you have to specify all 3 sets:

```
𝓡 = (A, B, R)
𝓡 = ({a}, {b}, {(a,b)})

the empty relation: 𝓡₀ = (A, B, ∅)
any other relation: 𝓡ᵢ = ({a₀, a₁, … aₙ}, {b₀, b₁, …, bₘ}, {(aᵢ, bⱼ)})
universal relation: 𝓡ᵘ = (A, B, A⨯B)
```



## Binary relations

A binary relation is a general concept that defines an association between two sets, i.e. between some elements of the source set and some elements of the target set.

Relations are a generalization of functions, but with fewer constraints.   
Functions between these two sets are denoted by `f ⊆ A ⨯ B` 
and the  relations  between them are denoted by `R ⊆ A ⨯ B`.

A binary relation between sets `X` and `Y` is a set of ordered pairs `(x,y)` consisting of elements `x ∈ X` and `y ∈ Y`. It encodes the common concept of relation: an element `x` is related to an element `y`, iff the pair (`x`, y) belongs to the set of ordered pairs that defines the binary relation.

A binary relation is the most studied special case n = 2 of an n-ary relation over sets `X`1, ..., Xn, which is a subset of the Cartesian product X1 × ... × Xn.

+ each relation can be associated with a lattice [?]


[DEF_Augustus_de_Morgan] When mathematical objects are considered together under a particular association (correspondence, connexion) between them, that association is called a relation.

[DEF_loose] An n-ary relation `R` over sets `A₁`, …, `Aₙ` is a subset of the Cartesian product `A₁ × ⋯ × Aₙ`

[DEF_strict] An n-ary relation `R` over sets `A₁, …, Aₙ` is an 
`n+1`-tuple, `⟨A₁, …, Aₙ, G⟩`, where `G` is a subset of the Cartesian product `A₁ × ⋯ × Aₙ` called *the graph of R*.

Rⁿ(A₁, …, Aₙ) = ⟨A₁, …, Aₙ, G⟩ where G ⊆ A₁ × ⋯ × Aₙ

The second definition of relations makes use of an idiom that is common in mathematics, stipulating that "such and such is an n-tuple" in order to ensure that such and such mathematical object is determined by the specification of mathematical objects with `n` elements. In the case of a relation `R` over `n` sets, there are `n+1` things to specify, namely, the `n` sets *plus* a subset of their Cartesian product. In the idiom, this is expressed by saying that `R` is a `n+1`-tuple.

`G` specifies the elements that are actually related because not all elements are. If all elemnts of the set A were always related to all element of the set B, then every relation would be the product of the sets, A⨯B. However, only some subset of the product does actually make a relation.

Thus, to **fully specify a relation** between sets `A` and `B`, you need to specify the set `A`, the set `B`, along with `G` which denotes the actually related elements in the form of a subset of `A⨯B`.

Having just the actually related elements, i.e. set of ordered pairs `G`, you cannot derive which elements really constitute the set `A` or the set `B`. Taking all the first components of `G` gives you only a subset of `A`, which may not be the entire set `A`. Similarly for the set `B`.
