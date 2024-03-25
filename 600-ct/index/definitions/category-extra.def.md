# Category theory :: Definitions :: Category (extras)

There are many equivalent definitions of a category - one follows after these short messages from our sponsor: To define a category, we first introduce a few loose, imprecise descriptions, upon which we build, diverging toward the more precise descriptions, eventually stumbling into the precise definition.

>A category is a collection of objects and arrows between them.

Besides the definiendum, the other terms mentioned are:
- collection
- object
- arrow

That a category is a collection of things is already problematic because of the cardinality issues. We'd like to identify such a collection as a set, but that may not always be possible. In fact, only a small enough collection may be a set, but a large one is a class instead (thus avoiding the Russell's paradox).


The concepts of small and large collections are not particularly precisely specified - what is specified, is the concept of a small and large category: 

A category is *locally small* if the collection of arrows between any pair of objects forms a set (i.e. if every homset in a category is a set).

A category is *locally large* if the collection of arrows any pair of objects forms a proper class (i.e. if every homset in a category is a class).


A *home set* is a collection of arrows between a pair of objects in a category `C` and it is denoted by `homᶜ(A,B)`, or by `hom(A,B)`, i.e. with the subscripted category left implicit, if this is unambiguous.

The collection of all arrows, between any pair of objects in a category `C`, is also called a *homeset* and denoted by `hom(C)`.


A category is formed by two sorts of objects, the objects of the category, and the morphisms, which relate two objects called the source and the target of the morphism. One often says that a morphism is an arrow that maps its source to its target. Morphisms can be composed if the target of the first morphism equals the source of the second one, and morphism composition has similar properties as function composition (associativity and existence of identity morphisms). Morphisms are often some sort of function, but this is not always the case.

A category is denoted by a styled capital letter, like `𝒞`, but in a hurry the plain capital `C` will do, provided it is unambiguous.


Objects of a category `C` are denoted by `Ob(C)`, arrows by `Ar(C)`. 


An object that belong to a category `C` are also denoted by a latin plain capital letter, like `A`, `B`, `C`, etc. and this membership relation by `A ∈ C` or `A ∈ Ob(C)`




 consists of
- a class ob(C) of objects,
- a class hom(C) of morphisms or arrows (maps between the objects)
- a domain, or source object class function,`dom : hom(C) -> ob(C)`
- a codomain, or target object class function, `cod : hom(C) -> ob(C)`



for every three objects a, b and c, a binary operation hom(a, b) × hom(b, c) → hom(a, c) called composition of morphisms; the composition of f : a → b and g : b → c is written as g ∘ f or gf. (Some authors use "diagrammatic order", writing f;g or fg).
Note: Here hom(a, b) denotes the subclass of morphisms f in hom(C) such that {\displaystyle {dom} (f)=a}{\displaystyle {dom} (f)=a} and {\displaystyle {cod} (f)=b}{\displaystyle {cod} (f)=b}. Such morphisms are often written as f : a → b.

such that the following axioms hold:

(associativity) if f : a → b, g : b → c and h : c → d then h ∘ (g ∘ f) = (h ∘ g) ∘ f, and
(identity) for every object x, there exists a morphism 1x : x → x (some authors write idx) called the identity morphism for x, such that every morphism f : a → x satisfies 1x ∘ f = f, and every morphism g : x → b satisfies g ∘ 1x = g.
We write f: a → b, and we say "f is a morphism from a to b". We write hom(a, b) (or homC(a, b) when there may be confusion about to which category hom(a, b) refers) to denote the hom-class of all morphisms from a to b.[2] From these axioms, one can prove that there is exactly one identity morphism for every object. Some authors use a slight variation of the definition in which each object is identified with the corresponding identity morphism.
