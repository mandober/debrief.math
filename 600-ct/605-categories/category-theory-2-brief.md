# Category theory in context by E. Riehl

## Intro

To give a rigorous proof that their particular family of group isomorphisms extended to inverse and direct limits, Eilenberg and Mac Lane sought to give a mathematically precise definition of the informal concept of *naturality*. To that end, they introduced the notion of a *natural transformation*, a parallel collection of homomorphisms between abelian groups. To characterize the source and target of a natural transformation, they introduced the notion of a *functor*. And to define the source and target of a functor in the greatest generality, they introduced the concept of a *category*.

While categories and functors were first conceived as auxiliary notions, needed to give a precise meaning to the concept of naturality, they have grown into interesting and important concepts in their own right. Categories suggest a particular perspective to be used in the study of mathematical objects that pays greater attention to the maps between them. Functors, which translate mathematical objects of one type into objects of another, have a more immediate utility. For instance, the Brouwer fixed point theorem translates a seemingly intractable problem in topology to a trivial one (0 ≠ 1) in algebra.

Categories are usually introduced in two guises: firstly as universes categorizing mathematical objects, and secondly as mathematical objects in their own right. The first perspective is used, for instance, to define a general notion of *isomorphism* that can be specialized to mathematical objects of every conceivable variety. The second perspective leads to the observation that the *axioms defining a category are self-dual*. Thus, for any proof of a theorem about all categories from these axioms, there is a dual proof of the dual theorem obtained by a syntactic process that is interpreted as "reversing all the arrows".

The category-theoretic notions of isomorphism, monomorphism, and epimorphism are invariant under certain classes of functors, including in particular the equivalences of categories. At a high level, an *equivalence of categories* provides a precise expression of the intuition that mathematical objects of one type are "the same as" objects of another variety.

In addition to providing a new language to describe emerging mathematical phenomena, category theory also introduced a new proof technique: that of *diagram chasing*. The introduction of an influential book presents commutative diagrams as one of the "new techniques of proof" appropriate for their axiomatic treatment of homology theory.

## Abstract and concrete categories

"It frames a possible template for any mathematical theory: 
the theory should have nouns and verbs, i.e., objects, and 
morphisms, and there should be an explicit notion of 
composition related to the morphisms; the theory should, 
in brief, be packaged by a category".    
-- Barry Mazur, "When is one thing equal to some other thing?"

A category consists of
- a collection of objects X, Y, Z
- a collection of morphisms f, g, h
such that
- Each morphism has specified domain and codomain objects; notation `f : X → Y` signifies that f is a morphism with domain X and codomain Y
- Each object has a designated identity morphism `1ˣ : X → X`
- For any pair of morphisms f, g with the codomain of f equal to the domain of g, there exists a specified composite morphism `g ∘ f` whose domain is equal to the domain of f and whose codomain is equal to the codomain of g.

This data is subject to the following 2 axioms:
1. For any f : X → Y, the composites `1ʸ ∘ f` and `f ∘ 1ˣ` are both equal to f.
2. For any composable triple of morphisms f, g, h, the composites `h ∘ (g ∘ f)` and `(h ∘ g) ∘ f` are equal and henceforth denoted by `h ∘ g ∘ f`.

>That is, the composition law is associative and unital with the identity morphisms serving as two-sided identities.

The objects of a category are in bĳective correspondence with the identity morphisms, which are uniquely determined by the property that they serve as two-sided identities for composition. Thus, one can define a category to be a collection of morphisms with a partially-defined composition operation that has certain special morphisms, which are used to recognize composable pairs and which serve as two-sided identities. But in practice it is not so hard to specify both the objects and the morphisms and this is what we shall do.

It is traditional to name a category after its objects; typically, the preferred choice of accompanying structure-preserving morphisms is clear. However, this practice is somewhat contrary to the basic philosophy of category theory: that mathematical objects should always be considered in tandem with the morphisms between them. The algebra of morphisms determines the category, so of the two, the objects and morphisms, the morphisms take primacy.

### Concrete categories

Many familiar varieties of mathematical objects assemble into a category:

- `Set` has sets as its objects and functions, with specified domain and codomain, as its morphisms. (This emphasizes the fact that a function is not sufficiently defined solely by its graph, domain, or at least codomain, sets must also be included in the definition - a perspective that was somewhat radical at the time).
- `Top` has topological spaces as its objects and continuous functions as its morphisms.
- `Set∗` and `Top∗` have sets or spaces with a specified basepoint6 as objects and base-point-preserving (continuous) functions as morphisms. (A basepoint is a chosen distinguished point in the set or space).
- `Group` has groups as objects and group homomorphisms as morphisms. This example lent the general term "morphisms" to the data of an abstract category. The categories `Ring` of associative and unital rings and ring homomorphisms and `Field` of fields and field homomorphisms are defined similarly.
- For a fixed unital but not necessarily commutative ring R, `Modʀ` is the category of left R-modules and R-module homomorphisms. This category is denoted by `Vecᵏ` when the ring happens to be a field `k` and abbreviated as `Ab` in the case of `Modℤ`, as a ℤ-module is precisely an abelian group.
- `Graph` has graphs as objects and graph morphisms (functions carrying vertices to vertices and edges to edges, preserving incidence relations) as morphisms. In the variant `DirGraph`, objects are directed graphs, whose edges are now depicted as arrows, and morphisms are directed graph morphisms, which must preserve sources and targets.
- `Man` has smooth (i.e. infinitely differentiable) manifolds as objects and smooth maps as morphisms.
- `Meas` has measurable spaces as objects and measurable functions as morphisms.
- `Poset` has partially-ordered sets as objects and order-preserving functions as morphisms.
- `ChR` has chain complexes of R-modules as objects and chain homomorphisms as
morphisms.
- For any signature `σ`, specifying constant, function, and relation symbols, and for any collection of well formed sentences `T` in the first-order language associated to σ, there is a category `ModelT` whose objects are σ-structures that model T, i.e. sets equipped with appropriate constants, relations, and functions satisfying the axioms T. Morphisms are functions that preserve the specified constants, relations, and functions, in the usual sense. (Special cases include 4,5,6,9,10 categories above). Model theory pays greater attention to other types of morphisms, for instance the *elementary embeddings*, which are (automatically injective) functions that preserve and reflect satisfaction of first-order formulae.

### Abstract categories

The preceding are all examples of concrete categories, those whose objects have underlying sets and whose morphisms are functions between these underlying sets, typically the "structure-preserving" morphisms.

However, "abstract" categories are also prevalent:

- A **group** `G` (or, more generally, a monoid) defines a category `Bɢ` with a single object. The group elements are its morphisms, each group element representing a distinct endomorphism of the single object, with composition given by multiplication. The identity element `ϵ ∈ G` acts as the identity morphism for the unique object in this category. A *monoid* is a set M equipped with an associative binary multiplication operation `M × M -> M` and an identity element `ϵ ∈ M` serving as a two-sided identity. In other words, a monoid is precisely a one-object category.

- A **poset** `(P, ≤)`, or more generally a preorder, may be regarded as a category. The elements of P are the objects of the category and there exists a unique morphism `x → y` iff `x ≤ y`. Transitivity of the relation "≤" implies that the required composite morphisms exist. Reflexivity implies that identity morphisms exist. A *preorder* is a set with a binary relation "≤" that is reflexive and transitive. In other words, a preorder is precisely a category in which there are no parallel pairs of distinct morphisms between any fixed pair of objects. A poset is antisymmetric (x ≤ y ∧ y ≤ x ⇒ x = y) preorder.

- Any ordinal `α = {β | β < α}` defines a category whose objects are the smaller ordinals. For example, `𝟘` is the category with no objects and no morphisms; `𝟙` is the category with a single object and only its identity morphism; `𝟚` is the category with two objects and a single non-identity morphism, conventionally depicted as `0 → 1`. `ω` is the category *freely generated* by the graph `0 → 1 → 2 → 3 → …` in the sense that every non-identity morphism can be uniquely factored as a composite of morphisms in the displayed graph.

- A set may be regarded as a category in which the elements of the set define the objects and the only morphisms are the required identities. A category is discrete if every morphism is an identity.

*Russell's paradox* implies that there is no set whose elements are all sets. This is the reason to use the vague word "collection" when descibing categories. Indeed, in each of the listed examples above, the collection of objects is not a set. Eilenberg and Mac Lane address this potential area of concern as follows:

  The whole concept of a category is essentially an auxiliary one; our basic concepts are essentially those of a functor and of a NT. The idea of a category is required only by the precept that every function should have a definite class as domain and a definite class as range, for the categories are provided as the domains and ranges of functors. Thus one could drop the category concept altogether and adopt an even more intuitive standpoint, in which a functor such as 'Hom' is not defined over the category of "all" groups, but for each particular pair of groups which may be given.

The set-theoretical issues that confront us while defining the notion of a category will compound as we develop category theory further. For that reason, common practice among category theorists is to work in an extension of the usual Zermelo-Fraenkel axioms of set theory, with new axioms allowing one to distinguish between "small" and "large" sets, or between sets and classes. The search for the most useful set-theoretical foundations for category theory is a fascinating topic that unfortunately would require too long of a digression to explore. Instead, we sweep these foundational issues under the rug, not because these issues are not serious or interesting, but because they distract from the task at hand.

If pressed, let us assume that there exists a countable sequence of *inaccessible cardinals*, meaning uncountable cardinals that are regular and strong limit. A cardinal `κ` is *regular* if every union of fewer than κ sets each of cardinality less than κ has cardinality less than κ, and *strong limit* if `l < κ` implies that `2ˡ < κ`. *Inaccessibility* means that sets of size less than κ are closed under power sets and κ-small unions. If κ is inaccessible, then the κ-stage of the von Neumann hierarchy, the set `Vκ` of sets of rank less than κ, is a model of Zermelo-Fraenkel set theory with choice (ZFC); the set `Vκ` is a *Grothendieck universe*. The assumption that there exists a countable sequence of inaccessible cardinals means that we can "do set theory" inside the universe `Vκ`, and then enlarge the universe if necessary as often as needed. If ZFC is consistent, these axioms cannot prove the existence of an inaccessible cardinal or the consistency of the assumption that one exists (by Gödel's second incompleteness theorem). Nonetheless, from the perspective of the hierarchy of large cardinal axioms, the existence of inaccessibles is a relatively mild hypothesis.

For the reasons just discussed, it is important to introduce adjectives that explicitly address the size of a category.

>A category is **small** if it has only a set's worth of arrows.

If C is a small category, then there are functions that send a morphism to its domain and its codomain and an object to its identity.

>A category is **locally small** if between any pair of objects there is only a set's worth of morphisms.

It is traditional to write `C(X, Y)` or `Hom(X, Y)` for the set of morphisms from X to Y in a locally small category C.

The set of arrows between a pair of fixed objects in a locally small category is typically called a **hom-set**.

A category provides a context in which to answer the question "When is one thing the same as another thing?". Almost universally in mathematics, one regards two objects of the same category to be "the same" when they are **isomorphic**, in a precise categorical sense that we now introduce:
