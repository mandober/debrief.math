# Category theory @SEP

https://plato.stanford.edu/entries/category-theory/

Category theory has come to occupy a central position in contemporary mathematics and theoretical computer science, and is also applied to mathematical physics.

>Category theory is a general mathematical theory of structures and of systems of structures.

Category theory is a powerful language, or conceptual framework, allowing us to see the universal components of a family of structures of a given kind, and how structures of different kinds are interrelated.

Category theory is both an interesting object of philosophical study, and a potentially powerful formal tool for philosophical investigations of concepts such as space, system, and even truth.

Category theory can be applied to the study of logical systems in which case category theory is called "categorical doctrines" at the syntactic, proof-theoretic, and semantic levels.

Category theory even leads to a different theoretical conception of set and, as such, to a possible alternative to the standard set theoretical foundation for mathematics. As such, it raises many issues about mathematical ontology and epistemology. Category theory thus affords philosophers and logicians much to use and reflect upon.

## TOC

- Definitions
- Examples
- Fundamental concepts
- Brief historical sketch
- Philosophical significance

## Definitions

Categories are algebraic structures with many complementary natures, e.g. geometric, logical, computational, combinatorial, just as groups are many-faceted algebraic structures.

Eilenberg and Mac Lane (1945) introduced categories in a purely auxiliary fashion, as preparation for what they called functors and natural transformations. Eilenberg and Mac Lane at first gave a purely abstract definition of a category, along the lines of the axiomatic definition of a group. Others, starting with Grothendieck (1957) and Freyd (1964), elected for reasons of practicality to define categories in set-theoretic terms.

An alternative approach, that of Lawvere (1963, 1966), begins by characterizing the category of categories, and then stipulates that a category is an object of that universe. This approach, still under active development, lead to what are now called *higher-dimensional categories*.

The very definition of a category is not without philosophical importance, since one of the objections to category theory as a foundational framework is the claim that since categories are defined as sets, category theory cannot provide a philosophically enlightening foundation for mathematics.

>Definition:
A mapping `e` will be called an *identity* iff the existence of any product `e ∘ α` implies that `e ∘ α = α = α ∘ ε`.

### The original definition of a category

>Definition:
Eilenberg and Mac Lane, 1945

A category `C` is an *aggregate* `Ob` of abstract elements, called the objects of `C`, and abstract elements `Ar`, called mappings of the category.

The mappings are subject to the following 5 axioms:

(C1) Given three mappings `α₁, α₂, α₃`, the triple product `α₃(α₂α₁)` is defined iff `(α₃α₂)α₁` is defined. When either is defined, the associative law, `α₃(α₂α₁) = (α₃α₂)α₁` holds. This triple product is then written `α₃α₂α₁`.

(C2) The triple product `α₃α₂α₁` is defined whenever both products `α₃α₂` and `α₂α₁` are defined.

(C3) For each mapping `α`, there is at least one identity `e₁` such that `αe₁` is defined, and at least one identity `e₂` such that `e₂α` is defined.

(C4) The mapping `eₓ` corresponding to each object `X` is an identity.

(C5) For each identity `e` there is a unique object `X ∈ C` such that `eₓ = e`.

(Remark: what's this stuff about multiple identities?)


As Eilenberg and Mac Lane promptly remark, objects play a secondary role and could be entirely omitted from the definition. Doing so, however, would make the manipulation of the applications less convenient. It is practically suitable, and perhaps psychologically more simple to think in terms of mappings and objects. The term *aggregate* is used by Eilenberg and Mac Lane themselves, presumably so as to remain neutral with respect to the background set theory one wants to adopt.


Eilenberg and Mac Lane defined categories in 1945 for reasons of rigor. As they note:

It should be observed first that the whole concept of a category is essentially an auxiliary one; our basic concepts are essentially those of a *functor* and of *natural transformation* (…). The idea of a category is required only by the precept that every function should have a definite class as domain and a definite class as range, for the categories are provided as the domains and ranges of functors. Thus one could drop the category concept altogether and adopt an even more intuitive standpoint, in which a functor such as "Hom" is not defined over the category of "all" groups, but for each particular pair of groups which may be given. The standpoint would suffice for applications, inasmuch as none of our developments will involve elaborate constructions on the categories themselves. (1945, chap. 1, par. 6, p. 247)

### Modern definition of a category

Things changed in the following ten years, when categories started to be used in algebraic topology and homological algebra.

Mac Lane, Buchsbaum, Grothendieck and Heller were considering categories in which the collections of morphisms between two fixed objects have an additional structure. More specifically, given any two objects `X` and `Y` of a category `C`, the set `Hom(X,Y)` of morphisms from X to Y form an abelian group.

Furthermore, for reasons related to the ways homology and cohomology theories are linked, the definition of a category had to satisfy an additional formal property: *it had to be self-dual*.

These requirements lead to the following definition.

>Definition: 
A category C can be described as a set `Ob`, whose members are the objects of C, satisfying the following 3 conditions:
- Morphism 
- Identity
- Composition

**Morphism**: For every pair X,Y of objects, there is a set `Hom(X,Y)`, called the *homset*, which is a set of morphisms from X to Y in C. If f is a morphism from X to Y, we write `f : X → Y`.

**Identity**: For every object X, there exists a morphism `idₓ ∈ Hom(X,X)`, called the *identity on `X`*.

**Composition**: For every triple X,Y,Z of objects, there exists a *partial* binary operation from `Hom(X,Y) × Hom(Y,Z) -> Hom(X,Z)`, called composition of morphisms in C. If `f: X → Y` and `g: Y → Z`, the composition of `f` and `g` is denoted `g ∘ f : X → Z`.

Identity, morphisms, and composition satisfy 2 axioms:
1. Associativity: if `f:X→Y`, `g:Y→Z`, `h:Z→W`, then `h ∘ (g ∘ f) = (h ∘ g) ∘ f`
2. Identity: if `f:X→Y` then `idʸ ∘ f = f` and `f ∘ idˣ = f`


This is the definition one finds in most textbooks of category theory. As such it explicitly relies on a set theoretical background and language.

### Lawvere's definition of a category

An alternative, suggested by Lawvere in the early 60's, is to develop an adequate language and background framework for a category of categories. The basic idea is to define what are called *weak n-categories* (and weak *ω-categories*) and what had been called categories would then be called *weak 1-categories* (and sets would be weak *0-categories*). (See, for instance, Baez 1997, Makkai 1998, Leinster 2004, Baez and May 2010, Simpson 2011.)

### Lambek's definition of a category

Also in the 60's, Lambek proposed to look at categories as deductive systems.

This begins with the notion of a graph, consisting of two classes *Arrows* and *Objects*, and two mappings between them, `s : Ar → Ob` and `t : Ar → Ob`, namely the *source* and the *target* mappings. The arrows are usually called the "oriented edges" and the objects "nodes" or "vertices".

Following this, a deductive system is a graph with a specified arrow:

(R1) idˣ : X → X

and a binary operation on arrows:

(R2) Given f:X→Y and g:Y→Z, the composition of f and g is `g ∘ f : X → Z`.

Of course, the objects of a deductive system are normally thought of as formulas, the arrows are thought of as proofs or deductions, and operations on arrows are thought of as rules of inference.

A category is then defined thus:

>Definition (Lambek):
A category is a deductive system in which the following equations hold between proofs: for all f:X→Y, g:Y→Z and h:Z→W

(E1) f ∘ idˣ = f,   idʸ ∘ f = f,   h ∘ (g ∘ f) = (h ∘ g) ∘ f

Thus, by imposing an adequate equivalence relation upon proofs, any deductive system can be turned into a category.

It is therefore legitimate to think of a category as an algebraic encoding of a deductive system. This phenomenon is already well-known to logicians, but probably not to its fullest extent. 

An example of such an algebraic encoding is the *Lindenbaum-Tarski algebra*, a Boolean algebra corresponding to classical propositional logic. Since a Boolean algebra is a poset, it is also a category. Notice also that Boolean algebras with appropriate homomorphisms between them form another useful category in logic.

Thus far we have merely a change of vocabulary. Things become more interesting when first-order and higher-order logics are considered. The Lindenbaum-Tarski algebra for these systems, when properly carried out, yields categories, sometimes called "conceptual categories" or "syntactic categories" (Mac Lane and Moerdijk 1992, Makkai and Reyes 1977, Pitts 2000).


## Examples

Almost every known example of a mathematical structure with the appropriate structure-preserving map yields a category.

The category Set with objects sets and morphisms the usual functions. There are variants here: one can consider partial functions instead, or injective functions or again surjective functions. In each case, the category thus constructed is different.
The category Top with objects topological spaces and morphisms continuous functions. Again, one could restrict morphisms to open continuous functions and obtain a different category.
The category hoTop with objects topological spaces and morphisms equivalence classes of homotopic functions. This category is not only important in mathematical practice, it is at the core of algebraic topology, but it is also a fundamental example of a category in which morphisms are not structure preserving functions.
The category Vec with objects vector spaces and morphisms linear maps.
The category Diff with objects differential manifolds and morphisms smooth maps.
The categories Pord and PoSet with objects preorders and posets, respectively, and morphisms monotone functions.
The categories Lat and Bool with objects lattices and Boolean algebras, respectively, and morphisms structure preserving homomorphisms, i.e., 
(
⊤
,
⊥
,
∧
,
∨
)
 homomorphisms.
The category Heyt with objects Heyting algebras and 
(
⊤
,
⊥
,
∧
,
∨
,
→
)
 homomorphisms.
The category Mon with objects monoids and morphisms monoid homomorphisms.
The category AbGrp with objects abelian groups and morphisms group homomorphisms, i.e. 
(
1
,
×
,
(
−
)
−
1
)
 homomorphisms.
The category Grp with objects groups and morphisms group homomorphisms, i.e. 
(
1
,
×
,
(
−
)
−
1
)
 homomorphisms.
The category Rings with objects rings (with unit) and morphisms ring homomorphisms, i.e. 
(
0
,
1
,
+
,
×
)
 homomorphisms.
The category Fields with objects fields and morphisms fields homomorphisms, i.e. 
(
0
,
1
,
+
,
×
)
 homomorphisms.

Any deductive system `T` with objects formulae and morphisms proofs.


These examples nicely illustrates how category theory treats the notion of structure in a uniform manner.

>A category is characterized by its morphisms, not by its objects.

Thus the category of topological spaces with open maps differs from the category of topological spaces with continuous maps - or, more to the point, the categorical properties of the latter differ from those of the former.

We should underline again the fact that not all categories are made of structured sets with structure-preserving maps.

Thus any preordered set is a category. For given two elements `p,q` of a preordered set, there is a morphism `f:p→q` iff `p ≤ q`. Hence a preordered set is a category in which there is at most one morphism between any two objects.

Any monoid (and thus any group) can be seen as a category: in this case the category has only one object, and its morphisms are the elements of the monoid. Composition of morphisms corresponds to multiplication of monoid elements. That the monoid axioms correspond to the category axioms is easily verified.

Hence the notion of category generalizes those of preorder and monoid. We should also point out that a *groupoid* has a very simple definition in a categorical context: it is a category in which *every morphism is an isomorphism*, that is for any morphism `f:X→Y`, there is a morphism `g:Y→X` such that `f ∘ g = idˣ` and `g ∘ f = idʸ`.

## Fundamental concepts

Category theory unifies mathematical structures in two different ways.

First, as we have seen, almost every set-theoretically defined mathematical structure with the appropriate notion of homomorphism yields a category. This is a unification provided within a set-theoretical environment.

Second, and perhaps even more important, once a type of structure has been defined, it is imperative to determine how new structures can be constructed out of the given one. For instance, given two sets A and B, set theory allows us to construct their Cartesian product A×B.

It is also imperative to determine how given structures can be decomposed into more elementary substructures.

For example, given a finite Abelian group, how can it be decomposed into a product of certain of its subgroups? In both cases, it is necessary to know how structures of a certain kind may combine. The nature of these combinations might appear to be considerably different when looked at from a purely set-theoretical perspective.

Category theory reveals that many of these constructions are in fact certain objects in a category having a *universal property*.

Indeed, from a categorical point of view, a Cartesian product in set theory, a direct product of groups (Abelian or otherwise), a product of topological spaces, and a conjunction of propositions in a deductive system are all instances of a *categorical product* characterized by a universal property.

Formally, a *product* of two objects `X` and `Y` in a category C is an object `Z` of C together with 2 morphisms, called the *projections*, `p : Z → X` and `q : Z → Y`, such that - and this is the universal property - for all objects `W` with morphisms `f : W → X` and `g : W → Y`, there exists a unique morphism `∃!h : W → Z` such that `p ∘ h = f` and `q ∘ h = g`.

Note that we have defined *a* product for X and Y, and not *the* product for X and Y: products and other objects with a universal property are defined only *up to a (unique) isomorphism*.

Thus in category theory, the nature of the elements constituting a certain construction is irrelevant.

>What matters is the way an object is related to the other objects of the category, that is, the morphisms going in and the morphisms going out.

Put differently,
>what matters is how certain structures can be mapped into a given object, and how a given object can map its structure into other structures of the same kind.

Category theory reveals how different kinds of structures are related to one another.

For instance, in algebraic topology, topological spaces are related to groups (and modules, rings, etc.) in various ways (such as homology, cohomology, homotopy, K-theory). As noted above, groups with group homomorphisms constitute a category.

Eilenberg and Mac Lane invented category theory precisely in order to clarify and compare these connections.

>What matters are the morphisms between categories, given by functors.

Informally, **functors** are structure-preserving maps between categories. Given two categories C and D, a functor F from C to D sends objects of C to objects of D, and morphisms of C to morphisms of D, in such a way that composition of morphisms in C is preserved, i.e., `F(g∘f) = F(g) ∘ F(f)`, and identity morphisms are preserved, i.e. `F(idₓ) = idꜰₓ`.

>It immediately follows that a functor preserves commutativity of diagrams between categories.

Homology, cohomology, homotopy, K-theory are all example of functors.

A more direct example is provided by the *power set operation*, which yields two functors on the category of sets, depending on how one defines its action on functions.

Thus given a set `X`, `℘(X)` is the usual set of subsets of `X`, and given a function `f : X → Y`, the function `℘(f) : ℘(X) → ℘(Y)` takes a subset `A ⊆ X` and maps it to `B = f(A)`, the image of `f` restricted to `A` in `X`. It is easily verified that this defines a functor from the category of sets into itself.

In general, there are many functors between two given categories, and the question of how they are connected suggests itself. For instance, given a category C, there is always the identity functor from C to C which sends every object/morphism of C to itself. In particular, there is the *identity functor* over the category of sets.

---

cont.

https://plato.stanford.edu/entries/category-theory/
