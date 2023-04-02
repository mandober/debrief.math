# Category Theory :: GLOSSARY

https://en.wikipedia.org/wiki/Glossary_of_category_theory
https://en.wikipedia.org/wiki/Outline_of_category_theory

<!-- TOC -->

- [Adjunction](#adjunction)
- [Arrow](#arrow)
- [Bifunctor](#bifunctor)
- [Bimorphism](#bimorphism)
- [Comonad](#comonad)
- [Cartesian Closed Category](#cartesian-closed-category)
- [Categorification](#categorification)
- [Category](#category)
- [Category of categories](#category-of-categories)
- [Class](#class)
- [Commutative diagram](#commutative-diagram)
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
- [Homology](#homology)
- [Homset](#homset)
- [Initial object](#initial-object)
- [Isomorphism](#isomorphism)
- [Large category](#large-category)
- [Locally small category](#locally-small-category)
- [Metagraph](#metagraph)
- [Monomorphism](#monomorphism)
- [Morphism](#morphism)
- [Null object](#null-object)
- [Opposite category](#opposite-category)
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

## Bifunctor
A bifunctor from a pair of categories C and D to a category E is a functor `C × D → E`. For example, for any category C, `hom(-,-)` is a bifunctor from `C` and `Cᴼᴾ` to `Set`.

## Bimorphism
A bimorphism is a morphism that is both an epimorphism and a monomorphism.

## Comonad
A comonad in a category `X` is a comonoid in the monoidal category of endofunctors of `X`.

## Cartesian Closed Category
A category is a Cartesian Closed Category (CCC) if it has a terminal object and there is a product and exponential between any pair of objects.

## Categorification
Categorification is a process of replacing sets and set-theoretic concepts with categories and category-theoretic concepts in some nontrivial way to capture categoric flavors. *Decategorification* is the reverse of categorification.

## Category
Broadly, a category is a collection of abstract objects and relations between them, such that relations can be composed and identified. More precisely, a category consists of objects and arrows between objects, such that each object has an identity arrow, and arrows are composable (if compatible). We may consider the set of arrows as the carrier set and composition as the attached binary operation; identity arrows are then units of composition, and composition is associative, transitive, and closed over the carrier set.

## Category of categories
The category of (small) categories, denoted by `Cat`, is a category where the objects are all the categories which are small with respect to some fixed universe and the morphisms are all the functors.

## Class
A class is a set-like collection that cannot be contained in a set. A class can contain sets and other classes, but a class cannot be a member of a set - there is no set of classes. A proper class can only contain sets. Like sets, classes may also be defined by specifying a predicate (property). The concept of class was introduced to avoid the Russell's paradox which arises if set comprehensions are unrestricted, i.e. if any predicate is allowed to define a set. But the core reason is the self-reference of set containment: a set contains objects - atomic objects (urelements), but sets as well (since sets are also mathematical objects in their own right). At this point we consider the collection of all sets - i.e. the universal set, `𝒰`, defined by the property that an object belongs to `𝒰` if that object is a set. But then `𝒰` should also contain itself since it is also a set. The concept of a set containing itself is already troublesome. However, the proper paradox arises when we consider the property that defines the set `R` as the set of all sets that do not contain themselves, `R = {x | x ∉ x}`. Most sets don't contain themselves, so they belong to `R`. The set `𝒰`, just mentioned, does contain itself so it is a member of `R`. The punchline comes when we consider the status of the set `R` itself - this spawns a contradiction forcing us to conclude that a set of all sets cannot exist - but a class of all sets can!

## Commutative diagram
A diagram is said to commute if all directed paths in the diagram - having the same start and endpoint - are the same, i.e. if they lead to the same vertex either by themselves or when composed.

## Concrete category
A category `C` is a concrete category if there is a faithful functor from `C` to `Set`. For example, `Vec`, `Grp` and `Top` are concrete categories.

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
An endofunctor is a functor between the same category. Identity functor is an endofunctor.

## Epimorphism
A morphism `f` is an epimorphism if `g = h` whenever `g ∘ f = h ∘ f`. It generalizes surjections. Epimorphism is a dual concept of monomorphism.

## Faithful functor
A functor is faithful if it is injective when restricted to each hom-set. Being faithful is the concept of injectivity related to functors.

## Finite category
A category is finite if it has only finitely many morphisms. A category with two objects `a` and `b` and two arrows, `f : a -> b` and `g : b -> a`, may be interpreted as an infinite category with an infinite number of arrows, composing as `g∘f`, `g∘f∘g∘f`, `g∘f∘g∘f∘g∘f`, … But if we stipulate the equality `g∘f = 1ᵃ`, then it is a finite category.

## Fully faithful functor
A functor that is both faithful and full. Being fully faithful is the concept of bijection related to functors.

## Full functor
A functor is full if it is surjective when restricted to each hom-set. Being full is the concept of surjectivity related to functors.

## Final object
see [terminal object](#terminal-object).

## Functoriality
Functoriality is the essentail property of functors, which are mappings that preserve structure. A functor maps two categories by mapping objects to objects and arrows to arrows. It preserves the structure of the source category by preserving the identity arrows and composition of arrows under the mapping. From there, functoriality is also used as a property of mappings to imply that a mapping preserves structure (although such mappings are inevitably functors). Functoriality also implies that something is a functor. Challenging the functoriality of some construction means whether or not it can be upgraded to a functor.

## Homology
Homology is a general way of associating (a sequence of) algebraic objects (such as Abelian groups or modules) to other mathematical objects (such as topological spaces).

## Homset
A homeset is the totality of arrows from a source to a target object in a category. If `a` and `b` are objects in a category `C`, then all arrows from `a` to `b` make a set denoted by `hom(a,b)`, which is different from `hom(b,a)`.

## Initial object
An initial (coterminal, universal) object in a category is an object with special property: there is exactly one single arrow outgoing from it to any other object in a category. Initial and terminal objects are duals.

## Isomorphism
The concept of isomorphisms arises as a possible answer to the problem of equality of mathematical objects. It is a looser notion than equality and sometimes of equivalence, but in category theory it indicates the equality that is "good enough" because no further granularity can be obtain. For example, two objects in a category may look identical from the perspective of another object (or even all other objects) because they share the corresponding arrows; in such case we say that the two objects are isomorphic. It means that it is impossible to discern them from the aspect of some third object. It is the kind of equality expressed in terms of isomorphic arrows (isomorphisms). For all intents, purposes and uses of category theory, isomorphisms are adequate notions of equality between objects, arrows, categories, and the other emerging entities therein. Namely, and taking two objects as an example, even though the two objects may be truly different, from the persepective of some third object or an arrow (noting that their perspective is entirely formed by the arrows that connect these objects), the two objects may appear indistinguishable; they are "sufficiently" equal. Isomorphisms generalize bijective functions.

## Large category
A large category is a category in which the class of all morphisms is a proper class (and not a set); otherwise it is a small category.

## Locally small category
A category is locally small if the morphisms between every pair of objects form a set.

## Metagraph
A metagraph `G` consists of objects (X, Y, Z, …) and morphisms (f, g, h, …) between the objects, and the two axioms:
1. (Domains): every morphism `f` has an assoc object `dom f`, domain   of `f`
2. (Codomains): every  arrow `f` has an assoc object `cod f`, codomain of `f`
A metagraph is purely axiomatic, and does not use set theory; for example, the objects are not "elements of the set of objects", because these 2 axioms are (without further interpretation) unfounded in set theory. 
The objects   of a metagraph are also called vertices. 
The morphisms of a metagraph are also called edges. 
The domain    of a morphism is also called its source. 
The codomain  of a morphism is also called its target. 
A graph is an interpretation of a metagraph within set theory. 

## Monomorphism
A morphism `f` is a monomorphism if `g = h` whenever `f ∘ g = f ∘ h`. It generalizes injections. Monomorphism is a dual concept of epimorphism.

## Morphism
Morphisms, or arrows, are the bona-fide elements of categories, with objects (which are structureless) serving only as something for the arrows to hang off of. Seen as relations, arrows qualify objects: an object is completely determined by the totality of relations with other objects in a category. Morphisms are generalization of functions, or better yet, relations. Both morphisms and objects are relative roles: as the abstraction level increases, arrows are objects and arrows between arrows are morphisms; even higher up, categories are objects and functors are morphisms, and so one.

## Null object
see [zero object](#zero-object)

## Opposite category
The opposite category `Cᴼᴾ` of a category `C` is obtained by reversing the arrows. For example, if a partially ordered set is viewed as a category, taking its opposite amounts to reversing the ordering.

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
A category is thin where there is at most one morphism between any pair of objects. That is, a category in which all hom-sets are either singletons or empty.

## Terminal object
An terminal object in a category is an object with special property: there is exactly one single arrow coming into it from any other object in a category. The dual notion of the terminal object is that of the initial object.

## Up to an isomorphism
Two objects are abstractly the same if they are isomorphic.

## Up to a unique isomorphism
Two objects are abstractly the same if there is a unique isomorphism between them.

## Universal object
see [Initial object](#initial-object)

## Zero object
A zero object (or null object) is an object that is both initial and terminal.
