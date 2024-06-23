# Category Theory :: GLOSSARY

https://en.wikipedia.org/wiki/Glossary_of_category_theory
https://en.wikipedia.org/wiki/Outline_of_category_theory

<!-- TOC -->

- [Adjunction](#adjunction)
- [Arrow](#arrow)
- [Automorphism](#automorphism)
- [Bifunctor](#bifunctor)
- [Bimorphism](#bimorphism)
- [Comonad](#comonad)
- [Cartesian closed category](#cartesian-closed-category)
- [Categorification](#categorification)
- [Category](#category)
- [Category of categories](#category-of-categories)
- [Commutative diagram](#commutative-diagram)
- [Composition functor](#composition-functor)
- [Concrete category](#concrete-category)
- [Contravariant functor](#contravariant-functor)
- [Constant functor](#constant-functor)
- [Coterminal object](#coterminal-object)
- [Discrete category](#discrete-category)
- [Empty category](#empty-category)
- [Endomorphism](#endomorphism)
- [Endofunctor](#endofunctor)
- [Epimorphism](#epimorphism)
- [Faithful functor](#faithful-functor)
- [Finite category](#finite-category)
- [Fully faithful functor](#fully-faithful-functor)
- [Full functor](#full-functor)
- [Final object](#final-object)
- [Functoriality](#functoriality)
- [Groupoid](#groupoid)
- [Homology](#homology)
- [Hom-set](#hom-set)
- [Identity functor](#identity-functor)
- [Identity morphism](#identity-morphism)
- [Initial object](#initial-object)
- [Isomorphism](#isomorphism)
- [Invertible morphism](#invertible-morphism)
- [Large category](#large-category)
- [Locally small category](#locally-small-category)
- [Metagraph](#metagraph)
- [Monomorphism](#monomorphism)
- [Morphism](#morphism)
- [Natural isomorphism](#natural-isomorphism)
- [Null object](#null-object)
- [Object](#object)
- [Opposite category](#opposite-category)
- [Parallel functors](#parallel-functors)
- [Representable functor](#representable-functor)
- [Small category](#small-category)
- [Strict initial object](#strict-initial-object)
- [Strict terminal object](#strict-terminal-object)
- [Structure-preserving mapping](#structure-preserving-mapping)
- [Subcategory](#subcategory)
- [Thin category](#thin-category)
- [Terminal object](#terminal-object)
- [Up to an isomorphism](#up-to-an-isomorphism)
- [Up to a unique isomorphism](#up-to-a-unique-isomorphism)
- [Universal object](#universal-object)
- [Zero object](#zero-object)

<!-- /TOC -->

## Adjunction
An adjunction (also called an adjoint pair) is a pair of functors `F : C → D`, `G : D → C` such that there is a "natural" bijection `homᵈ(F X,Y) ⋍ homᶜ(X,G Y)`. `F` is said to be left adjoint to `G` and `G` to right adjoint to `F`. Here, "natural" means there is a natural isomorphism `homᵈ(F -, -) ⋍ homᶜ(-, G -)` of bifunctors.

## Arrow
see [morphism](#morphism).

## Automorphism
An endomorphism that is also an isomorphism. The identity morphism is sometimes called the trivial automorphism; other automorphisms are called nontrivial automorphisms.

## Bifunctor
A bifunctor from a pair of categories C and D to a category E is a functor `C × D → E`. For example, for any category C, `hom(-,-)` is a bifunctor from `C` and `Cᴼᴾ` to `Set`.

## Bimorphism
A bimorphism is a morphism that is both an epimorphism and a monomorphism.

## Comonad
A comonad in a category `X` is a comonoid in the monoidal category of endofunctors of `X`.

## Cartesian closed category
A category is a Cartesian Closed Category (CCC) if it has a terminal object, and it has a product and exponential between any pair of objects. Terminal object also acts as an element-selector, selecting elements from set-objects.

## Categorification
Categorification is a process of replacing sets and set-theoretic concepts with categories and category-theoretic concepts in some nontrivial way to capture categoric flavors. While in set theory, we can directly inspect the structure (elements) of sets, in CT we do so only by probing set-objects with morphisms that let us infer information about them. Amazingly, all properties that can be directly inspected can be inferred via arrows. Decategorification is the reverse of categorification.

## Category
Broadly, a category is a collection of abstract objects and relations between them, such that relations can be composed and identified. More precisely, a category consists of objects and arrows between objects, such that each object has an identity arrow, and arrows are composable. We may consider the set of arrows as the carrier set and composition as the attached binary operation; identity arrows are then units of composition, and composition is associative, transitive, and closed over the carrier set. However ,objects and arrows are more of the names of roles that different entities play. In Set, obejcts are sets seen as featureless blobls and arrows are functions. One level up, functors become objects and NTS become arrows, and so on.

## Category of categories
The category of (small) categories, denoted by `Cat`, is a category where the objects are all the categories which are small with respect to some fixed universe and the morphisms are all the functors.

## Commutative diagram
A diagram is said to commute if all directed paths in the diagram - having the same start and endpoint - are the same, i.e. if they lead to the same vertex either by themselves or when composed.

## Composition functor
Given a functor `G : B → C` and a functor `F : A → B`, there is a composition functor `G ◦ F : A → C`.

## Concrete category
1. A concrete category is one whose objects are sets.
2. A category `𝓒` is a concrete category if there is a *faithful functor* from `𝓒` to `Set`. For example, `Vec`, `Grp` and `Top` are concrete categories.

## Contravariant functor
A contravariant functor `F` from a category `C` to a category `D` is a (covariant) functor from `Cᴼᴾ` to `D`.

## Constant functor
A functor is constant if it maps all objects in category `C` to the same object `d` in category `D`, and every morphism to the identity arrow `1ᵈ`. Since it is completely determined by the object `d`, it is denoted `Δᵈ`.

## Coterminal object
see [initial object](#initial-object).

## Discrete category
A category with only objects and their identity arrows, but no other arrows. There is `𝟘` category that is completely empty, `𝟙` category that has a signle object and its identity arrow, `𝟚` category that has two objects and their identity arrows, and so on.

## Empty category
The empty category is a category without objects. It is the same thing as the empty set when the empty set is viewed as a discrete category. It may be denoted by `𝟘`.

## Endomorphism
An endomorphism is a morphism on the same object. Each object has at least one endomorphism - its identity morphism. In general, "endo" is a Greek prefix indicating adjectives like "homogeneous", "within the same (entity)".

## Endofunctor
An endofunctor is a functor a category to itself. Identity functor is a unique endofunctor.

## Epimorphism
An epimorphism is a morphism that generalizes surjective functions. It is the dual to monomorphism that generalizes injective functions. Formally, a morphism `e` is epi if `g ∘ e = h ∘ e ==> g = h`.

## Faithful functor
A functor is faithful if it is injective when restricted to each hom-set. Being faithful is the concept of injectivity related to functors.

Let `F : A → B` be a functor.
1. `F` is a **faithful functor** if for any objects `x,y ∈ Ob(A)` the map `F : Arᵃ(x, y) → Arᵇ(F x, F y)` is *injective*.
2. If these maps are all bijective then `F` is called **fully faithful**.
3. The functor `F` is called **essentially surjective** if for any object `y ∈ Ob(B)` there exists an object `x ∈ Ob(A)` such that `F(x)` is isomorphic to `y` in `B`.

## Finite category
A category is finite if it has finitely many morphisms. A category with two objects `a` and `b` and two arrows, `f : a -> b` and `g : b -> a`, may be interpreted as an infinite category with an infinite number of arrows composed as `g∘f`, `g∘f∘g∘f`, `g∘f∘g∘f∘g∘f`, etc. However, if we stipulate the equality `g ∘ f = 1ᵃ`, then it is a finite category.

## Fully faithful functor
A functor that is both faithful and full. Being fully faithful is the concept of bijection related to functors.

## Full functor
A functor is full if it is surjective when restricted to each hom-set. Being full is the concept of surjectivity related to functors.

## Final object
see [terminal object](#terminal-object).

## Functoriality
Functoriality is the essentail property of functors, which are mappings that preserve structure. A functor maps two categories by mapping objects to objects and arrows to arrows. It preserves the structure of the source category by preserving the identity arrows and composition of arrows under the mapping. From there, functoriality is also used as a property of mappings to imply that a mapping preserves structure (although such mappings are inevitably functors). Functoriality also implies that something is a functor. Challenging the functoriality of some construction means whether or not it can be upgraded to a functor.

## Groupoid
A groupoid is a category where every morphism is an isomorphism.

A group `G` gives rise to a groupoid with a single object `x` and morphisms `Mor(x,x) = G`, with the composition rule given by the group law in `G`. Every groupoid with a single object is of this form.

A set `C` gives rise to a groupoid `C` defined as follows: As objects we take `Ob(C) := C`, and for morphisms we take `Mor(x,y)` empty if `x ̸= y`, and equal to `idˣ` if `x = y`.

## Homology
Homology is a general way of associating (a sequence of) algebraic objects (such as Abelian groups or modules) to other mathematical objects (such as topological spaces).

## Hom-set
A hom-set is the totality of arrows from a source to a target object in a category. If `a` and `b` are objects in a category `C`, then all arrows from `a` to `b` make a set which is denoted by `hom(a,b)`, which is different from `hom(b,a)`. This hom-set may also be denoted by `C(a, b)`, `Hom(a, b)`, `Homᶜ(a, b)`. The fact that this collection of arrows forms a set means such a hom-set is an object in Set, and thus called an *internal hom-set* if the category is actually Set, or *external hom-set* if it is any other category.

## Identity functor
Every category 𝓒 has an identity functor, `Iᶜ : 𝓒 -> 𝓒`.

## Identity morphism
Identity morphism is a map from an object to itself. It is necessary for every object to have an identity arrow for the structure to be considered a category. For each object, its identity morphism is a unique endomorphism. Identity morphisms serve as unit of composition.

## Initial object
An initial (coterminal, universal) object in a category is an object with special property: there is exactly one single arrow outgoing from it to any other object in a category. Initial and terminal objects are duals.

## Isomorphism
The concept of isomorphisms arises as a possible answer to the problem of equality of mathematical objects. It is a looser notion than equality and sometimes of equivalence, but in category theory it indicates the equality that is "good enough" because no further granularity can be obtain. For example, two objects in a category may look identical from the perspective of another object (or even all other objects) because they share the corresponding arrows; in such case we say that the two objects are isomorphic. It means that it is impossible to discern them from the aspect of some third object. It is the kind of equality expressed in terms of isomorphic arrows (isomorphisms). For all intents, purposes and uses of category theory, isomorphisms are adequate notions of equality between objects, arrows, categories, and the other emerging entities therein. Namely, and taking two objects as an example, even though the two objects may be truly different, from the persepective of some third object or an arrow (noting that their perspective is entirely formed by the arrows that connect these objects), the two objects may appear indistinguishable; they are "sufficiently" equal. Isomorphisms generalize bijective functions.

## Invertible morphism
A morphism `f : x → y` is an isomorphism of the category C if there exists a morphism `g : y → x` such that `f ◦ g = idʸ` and `g ◦ f = idˣ`. An isomorphism `f` is also sometimes called an invertible morphism, and the morphism `g` of the definition is called the inverse and denoted `f⁻¹`. It is unique if it exists. Given an object `x` of a category `A` the set of invertible elements `Autᴀ(x)` of `Morᴀ(x,x)` forms a group under composition. This group is called the *automorphism group* of `x` in `A`.

## Large category
A large category is a category in which the class of all morphisms is a proper class (and not a set); otherwise it is a small category.

## Locally small category
A category is locally small if the morphisms between every pair of objects form a set.

## Metagraph
A metagraph `G` consists of objects (X, Y, Z, …) and morphisms (f, g, h, …) between the objects, and the two axioms:
1. (Domains): every morphism `f` has an assoc. object `dom f`, domain   of `f`
2. (Codomains): every  arrow `f` has an assoc. object `cod f`, codomain of `f`

A metagraph is purely axiomatic, and does not use set theory; for example, the objects are not "elements of the set of objects", because these 2 axioms are (without further interpretation) unfounded in set theory.
- The objects   of a metagraph are also called *vertices*
- The morphisms of a metagraph are also called *edges*
- The domain    of a morphism is also called its *source*
- The codomain  of a morphism is also called its *target*

A graph is an interpretation of a metagraph within set theory. 

## Monomorphism
A monomorphism is a morphism that generalizes injective functions. It is the dual to epimorphism that generalizes surjective functions. Formally, a morphism `m` is mono if `m ∘ g = m ∘ h ==> g = h`.

## Morphism
Morphisms, or arrows, are the bona-fide elements of categories, with objects (appearing as structureless blobs) serving only as something for the arrows to hang off of. Seen as relations, arrows qualify objects: an object is completely determined by the totality of relations with other objects in a category. Morphisms are generalization of functions, or better yet, relations. Both morphisms and objects are relative roles: as the abstraction level increases, arrows become objects and arrows between arrows become morphisms; even higher up, categories become objects and functors become morphisms, and so one.

## Natural isomorphism
"Natural" refers to something coming from a natural transformation between two functors. In particular, a natural transformation is a natural isomorphism when each of its components are isomorphisms.

## Null object
see [zero object](#zero-object)

## Object
Objects are abstract entity that, along with morphisms, are primary members of a category. In set theory, we can investigate the structure of a set, but in CT, we see sets as fetureless blobs. In CT, the only way we gather information about objects is through their relations (via arrows) with other objects.

## Opposite category
The opposite category `Cᴼᴾ` of a category `C` is obtained by reversing the arrows. For example, if a partially ordered set is viewed as a category, taking its opposite amounts to reversing the ordering.

## Parallel functors
Two functors are parallel if they share the same source and target category, e.g. `F,G : C → D`.

## Representable functor
Any functor that is naturally isomorphic to the hom-functor, for some choice of `a`, is called representable. Such functor must necessarily be Set-valued (its codomain is Set), since `C(a, -)` is.

## Small category
A small category is a category in which the class of all morphisms is a set (i.e. not a proper class); otherwise it is a large category.

## Strict initial object
A strict initial object is an initial object whose every inbound morphism is an isomorphism.

## Strict terminal object
A strict terminal object is a terminal object whose every outbound morphism is an isomorphism.

## Structure-preserving mapping
A map that preserves structure means it preserves identity by mapping identity to identity arrows, and preserves the composition by mapping the source objects to source objects and target objects to target objects. A functor is a structure-preserving mapping between categories.

## Subcategory
A category `C` is a subcategory of a category `D` if there is an inclusion functor from `C` to `D`.

## Thin category
A category is called thin where there is at most one morphism between any pair of objects. It is a category in which all hom-sets are either singletons or empty.

## Terminal object
A terminal object in a category is an object with special property: there is a unique arrow coming into it from any other object in the category. The dual notion of the terminal object is that of the initial object. Terminal objects (e.g. singleton set in Set) also acts as a selector, being able to identify elements from set-objects, and especially in this role it denoted by `𝟙`, but also called unit.

## Up to an isomorphism
Two objects are abstractly equivalent if they are isomorphic to each other. Since all we can infer about an object is through the arrows it has with other objects in a category, sometimes two objects have the same properties as seen from all the other objects in a category, which makes them virtually indistiguishable for all intents and purposes, i.e. isomorphic. For example, in Set, all singleton sets are isomorphic to each other, so we use the define article in "the terminal object" (which singleton sets are).

## Up to a unique isomorphism
Two objects are abstractly equivalent if there is a unique isomorphism between them.

## Universal object
see [Initial object](#initial-object)

## Zero object
A zero object (or null object) is an object that is both initial and terminal.
