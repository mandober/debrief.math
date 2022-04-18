# Definition of a relation

def of rel
- domain set
- codomain set
- graph (set of ordered pairs)

The definition of a relation must include a relation's domain and codomain sets along with the set of ordered pairs that model the associations that the elements of the domain have with the elements of the codomain.

Relations are most commonly denoted with a capital letter `R`, but also very commonly, `R` is used to denote the graph of a relation and not the "relation proper". A relation and its graph are too often used interchangibly even though that it incorrect (the same problem is inherited by functions).
 


A *binary relation* `R` associates elements of a set `A`, called the *domain* of the relation, with elements of a set `B`, called the *codomain* of the relation.



Each binary relation `R` is *subset of the product* of the domain and codomain sets, `R ⊆ C⨯D`, or, equivalently, a *member in the powerset* of their product, `R ∈ 𝓟(C⨯D)`.

If the domain and the codomain are actually the same set, `C = D`, then the relation is called *homogeneous* and its graph `G ⊆ C⨯C` or `G ⊆ C²`. Otherwise, if `C ≠ D`, the relation is called *heterogeneous*.

More precisely, what is usually called a relation is actually *the graph of a relation* `G`, i.e. the set of the ordered pairs that are members of `G`.

Too often, the graph `G` of a relation `R` is itself called a relation. This may create ambiguity if the domain (and codomain) are not separately specified as well - this disctinction is particularly important when determining the properties a relation satisfies, since some properties cannot be inferred from the graph (which, in these situations, is called a relation) alone. However, many properties can be inferred from the graph alone, and in such situations, a relation's graph is typically referred to as a "relation".

*The full specification of a relation* needs to also include both domain and codomain sets in a triple `R = (D,G,C) = ({dᵢ ∈ D}, {(dᵢ,cᵢ) ∈ G}, {c ∈ Cᵢ})`.




---


Completely specifying a relation

ication is necesary for a thorough analysis of a relation, especially all the properties that it may have.

To determine all the different properties a heterogeneous relation may satisfy, it is necessary to know all the 3 components: the domain, the graph, and the codomain.

To determine all the different properties a homogeneous relation may satisfy, it is necessary to know all the 3 components: the domain, the graph, and the codomain.

knowing a relation's graph is absolutely paramount.
divided into dependency classes:
- properties that are inferrable from the graph alone
- properties that require the specification of the domain



  between the 

with regards to the dependency 

the properties that depe

domain-dependent

determining the properties of relations that don't depend only on a relation's graph, `G`, but also on the domain set, `D`, and sometimes also on the codomain set, `C`.

The Carthesian product of the domain and codomain sets is a set of all the ordered pairs: `C⨯D = { (d,c) | ∀d ∈ D, ∀c ∈ C }`; that is, every element in `D` is associated with every element in `C`. Since any relation is `R ⊆ C⨯D`, then the product is also a relation called the *universal relation*.

Knowing that a relation is a universal allows us to derive both the domain and codomain sets from the relation's graph alone. However, this is not the case with *the empty relation*. The null or empty relation implies that its graph, `G`, is the empty set, so there's no way to determine the domain and codomain from the graph. Both the domain and codomain need to be explicitly specified in the triple `(D,G,C)` that defines the relation.

The universal relation includes all possible ordered pairs in `C⨯D`, and the empty relation includes none. Somewhere in the middle is *the identity relation*, but it applies only to homogeneous relations: the identity relation on a set `C` is `Iᴄ = { (c,c) | ∀c ∈ C }`, i.e. it is the set of the ordered pairs of the form `(c,c)` for all elements in `C`. The identity relation is another case of the property that cannot be determined from the graph `G` alone, but requires the specification of the domain.



is the set of associations realized as the set of ordered pairs `{ (d,c) | d ∈ D, c ∈ C }`.

̅
- First component of an ordered pair,  `fst(d,c) = d`
- Second component of an ordered pair, `snd(d,c) = c`


An image under a relation `R`



Let `R = (D, G, C)` and `G ⊆ C⨯D`
- Domain of a relation is the set `D`.
- Codomain of a relation is the set `C`.
- First component of an ordered pair,  `fst(d,c) = d`
- Second component of an ordered pair, `snd(d,c) = c`
- Graph `G` is the set of ordered pairs, `G = { (d,c) | d ∈ D, c ∈ C }`
- Image of a relation `R` is the set `Im = { c | (d,c) ∈ G, d ∈ D, c ∈ C }`
- Preimage of a relation `R` is the set `Pre = { d | (d,c) ∈ G, d ∈ D, c ∈ C }`


- fst(d,c) = d
- snd(d,c) = c
