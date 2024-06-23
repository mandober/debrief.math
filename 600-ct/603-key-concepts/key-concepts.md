# CT :: Key concepts

## Arrows

>Between any two objects in a category, there may be any number of arrows.

In fact, the proposition "in between" probably includes the arrows in both directions (from `a` to `b` and from `b` to `a`), so it is better to be more precise and designate one object, say `a`, as the source of arrows, and the other, `b`, as the target. So there may be many arrows from `a` to `b`. And there may be many arrows from `b` to `a`.

When the collection of all arrows from `a` to `b`, for any two objects `a` and `b`, forms a set, the category is called small. Then, this collection of arrows is called a hom-set. That is, the collection of arrows from `a` to `b` is a hom-set denoted `Hom(a, b)`, or `C(a, b)` if the category is denoted by C.

The hom-set of arrows `Hom(a, b)` is a set, so it is an object in the category `Set` - the category with sets as objects and functions on sets as arrows. An element of the homset `Hom(a, b)` is an arrow like `f : a -> b`. It may or may not exists depending on which two objects we pick for `a` and `b`.

Each object, `a`, in a category has its own homset of arrows, `Hom(a, a)`, consisting of all the arrows that go from that object back to it. This time, however, there must be at least one arrow in `Hom(a, a)`, called the identity arrow, and denoted `1ₐ`, with `1ₐ : a -> a`. Other such arrows, if they exist, are called *endomorphisms* - they are all elements of `Hom(a, a)`. So, given any `Hom(a, a)`, there is exactly one, unique arrow `1ₐ : a -> a` belonging to it, `1ₐ ∈ Hom(a, a)`.

`∀a ∈ Ob(C). ∃!1ₐ : a -> a ∈ Hom(a, a)`

i.e. every object in a category C has its own, unique identity arrow. It could be said that each object is identified by its identity arrow.

One crucial property of categories is that any two arrows that could be composed, are (already) composed. Two arrows that are compatible (composition- wise), `f : a -> b` and `g : b -> c`, for any three objects `a,b,c ∈ C`, *have already been composed* into `g ∘ f : a -> c`. That is, if there are arrows `f` and `g`, but no arrow `g ∘ f`, then **that structure is not a category**.

>In other words, categories are closed under the transitivity of composition.

We can take a random graph and turn it into a category by making sure
- each vertex has an identity arrow
- each pair of arrows that could be composed, is actually composed. By filling in the missing identity and composite arrows, we'd get a category.

An arrow `f : a -> b` (obviously) belongs to the homset `Hom(a, b)`. Sometimes `f` is just an arbitrary representative of arrows in `Hom(a, b)`, but sometimes it is a particular arrow in `Hom(a, b)`. In `Set`, this means that sometimes `f` is an arbitrary function from set `a` to set `b`, and sometimes it is a particular function from set `a` to set `b`.





## Commutative diagrams
https://blog.juliosong.com/linguistics/mathematics/category-theory-notes-5/

A diagram where all parallel composite arrows are equivalent is said to *commute*. Commutative diagrams are another vital part of category theory, and they are closely related to arrow composition.

How can we tell whether two paths are equivalent or not?

Path equivalence is essentially an algebraic property and must be proven algebraically. When two paths can't be proven equivalent, then they simply aren't, and the diagram doesn't commute.

To say a given diagram commutes is just a vivid way of saying that certain identities hold between composites - it is the identities that matter. And note too that merely drawing a diagram with different routes from e.g. A to D in the relevant category doesn't always mean that we have a commutative diagram - the identity of the composites along the paths in each case has to be argued.   
-- Smith's 2018 draft textbook "Category Theory: A Gentle Introduction"

The set-theoretic criterion of arrow equivalence is *function extensionality*. This principle states that two functions are equal iff their values are equal at every argument.

* We cannot declare a diagram commutative on a whim but can only verify (or falsify) commutativity via a proof.
* Commutativity doesn't come for free but must be proved, by showing that the two sides of a hypothetical path equation are really equal.
* In categories where arrows are functions, commutativity can be checked via function extensionality.

## Categories

In category theory there are 3 conventional sizes of categories. A category is
- *small* if both its object collection and its arrow collection are sets.
- *large* if both its object collection and its arrow collection are proper classes.
- *locally small* if, even though its object collection is a proper class, the arrows between any two objects in it form a set.

Locally small categories are a subclass of large categories. So, if a category is locally small, it's automatically large, but not vice versa.

To illustrate, many of the categories standardly studied in mathematics, such as `Set`, `Grp`, and `Pos`, are *locally small*. By comparison, most categories of interest outside mathematics, such as the category `Hask` for Haskell types and functions, are *small*. Some specially designed "toy categories" in mathematics are also small, such as monoid categories, poset categories, and ordinal number categories (1,2,3,…).

Properly large categories are much rarer: the category `Cat` of all small categories is in fact *locally small*; the category `Cat∗` of all locally small categories seems to be *properly large*; and the category `CAT` of all categories (large and small) is *very large*.

## Up to (unique) isomorphism

Related expressions:
- "up to isomorphism"
- "up to unique isomorphism"

These two phrases mean "as far as isomorphism allows" or "by way of isomorphism". It is usually used to modify propositions of the pattern, like: "X and Y are the same up to isomorphism", which means that X and Y are not exactly the same, but can be considered the same within the (category) theory because they are isomorphic. In other words, "up to isomorphism" is an adverbial specifying a condition under which the proposition is true. So, the above pattern can be paraphrased as: "X and Y, being isomorphic, are the same if we treat isomorphic constructs as the same".

In category theory two constructs that are isomorphic behave identically in whatever way that matters to the theory.

We say two groups (or any other algebraic structures) are the same "up to isomorphism" if they are isomorphic. In other words, they share the exact same structure and therefore they are essentially indistinguishable. Hence we consider them to be one and the same.

Sometimes the phrase is also used in the pattern: "X is unique up to isomorphism", which means "X is unique if we view isomorphic constructs as one and the same." Goldblatt has an illuminating explanation in "Topoi": Within any mathematical theory, isomorphic objects are indistinguishable in terms of that theory. An object will be said to be "unique up to isomorphism" in possession of a particular attribute if the only other objects possessing that attribute are isomorphic to it. A concept will be "defined up to isomorphism" if its description specifies a particular entity, not uniquely, but only uniquely up to isomorphism.

In sum, the idiom up to isomorphism essentially reflects the externally oriented approach pursued in category theory, whereby a construct can be completely defined and identified by how it interacts with other constructs, without reference to its internal makeup (which in turn can be ignored when comparing constructs).

The meaning of "up to unique isomorphism" is that the isomorphism in question is unique; namely, there's only one isomorphism.

The phrase "up to unique isomorphism" is usually used in propositions related to *universal properties* and *universal constructions*.

For example, a *terminal object* in any category, if it exists, is unique up to unique isomorphism. A terminal object, by definition, is an object with an incoming arrow from any other object (including itself, as its identity arrow) in the same category. This means that if there are two terminal objects in the category, they are isomorphic. The two terminal objects are indistinguishable from a category-theoretic perspective, and for the category in question, the terminal object is unique up to unique isomorphism (and even if there is more than one, the definte article is used - since they are all isomorphic).

## Having all products, coproducts, exponentials

Another CT idiom is: "the category C has all products, and the category D has all exponentials".

For example, Awodey (2010) defines a Cartesian Closed Category (CCC) as: A category is called cartesian closed, if it has all finite products and exponentials.

Similarly, Goldblatt defines an *elementary topos* as a category `C` such that
- C is finitely complete (has all finite products)
- C is finitely co-complete (has all finite coproducts)
- C has exponentiation
- C has a *subobject classifier* (has a terminal object)

The phrase "have (all) X" means that X exists for all objects or suitable object combinations in a category.

Thus, Awodey's definition of a CCC really says: a category is called cartesian closed if for any pair of objects, there exists a product object and an exponential object (based on them) in the category.

And the third condition in Goldblatt's definition of an elementary topos really says: for any pair of objects in C, there exists an exponential object based on them in C.

## Functors

Categories, functors and natural transformations are the big three notions of category theory.

Functors are an extension of arrows at the level of categories - they map one category into another. So are natural transformations, which map one functor into another. A NT may be used to compare functorial mappings.

A functor maps both sorts of categorical data at once - it maps objects of the source category to objects of the target category, and arrows of the source category to arrows of the target category.

Unlike at the category level, at the functor level, the internal structure of the source and target category are not opaque.

A functor creates an image of the source category inside the target category. It may distort or collapse the source category, but it may not break connectivity - the source and target object (of an arrow in the source category must) must be mapped to the source and target object (of the image of that arrow in the target category).

That is, a functor `F : C -> D` maps an object `a` in C to an object `F a` (the image of `a`) in D, and an object `b` in C to an object `F b` (the image of `b`) in D. If there is an arrow `f : a -> b` in C, the functor must map it to an arrow `F f` in D such that it goes from `F a` to `F b`, i.e. such that `F f : F a -> F b`. Meaning, the image of the arrow's source object is the source object of the mapped arrow (a ⟼ F a); and similarly for the target object and its image (b ⟼ F b).

In other words, the functor cannot map an arrow `f : a -> b` in C to an arrow `F f : F b -> F a` in D, by reversing the images of the arrow's source and target objects.

If the functor maps `a ⟼ x` and `b ⟼ y` (where `x` is the image of `a`, and `y` the image of `b` in category D), then the image of the arrow `a -> b` must be `x -> y`, not `y -> x` (or something else).

However, a *constant functor* is allowed to collapse structure (but not to break connectivity), so it can map `a ⟼ x` and `b ⟼ x` (mapping both, the source and target object of the arrow, to the same image object in D), in which case the maping must still respect the source and target, and the only way to do that is to map the arrow `a -> b` to the arrow `1ₓ : x -> x`, i.e. to the identity arrow of `x`.

>The object that is the source of an arrow in C must be mapped to an object that will be the source of the mapped arrow in D. And the object that is the target of that arrow in C must be mapped to an object that will be the target of the mapped arrow in D.

At least, this is what the *covariant functor* must do. Covariant functors are normally just called functors (without the qualifier), while their opposites, *contravariant functors*, must be qualified. A contravariant functor does the opposite of a covariant functor: it would still map `a ⟼ x` and `b ⟼ y`, but it would map the arrow `a -> b` in C into the arrow `y -> x` in D (reversing its direction).

The action of a functor `F` on an object `a` is denoted `F(a)`; i.e. it maps an object `a` in C to an object, that is usually labelled, `F a` in D.

-   `a ⟼ x` or   `a ⟼ F a`
- `F(a) = x` or `F(a) = F a`
- `F a  = x` or `F a  = F a`
in all cases `x = F a`, and both `x` and `F a` are just labels for an object in D that is the image of the object `a` (in C) under the functor `F`.

>`F a` = the image in D of an object `a` in C under the functor `F : C -> D`.


The action of a functor `F` on an object `a` is denoted `F a`. The result of this mapping - i.e. the object in D that is the image of `a` under `F` - is also denoted `F a`. However, this produces the tautology, `F a = F a`. In order to avoid confusion between the denotation of the functor's action, `F a` on the left side, and `F a` on the right side which just labels the mapped object, we may also write this as `F(a) = F a`, or as a map `a ⟼ F a`, or even indirectly as `F(a) = x`, establishing `x` as the image of `a` under the functor `F`.


A functor `T` consists of the two suitably related maps: the object map `T`, and the arrow map, also written `T`. Mathematicians habitually write the object and the arrow map with the same letter.

By contrast, the two maps have separate notations in Haskell, where functors are implemented as a type class over unary type ctors `f`. The `Functor` type class declares the `fmap` function which corresponds to the mapping of arrows (which, in `Hask`, are function), while the type ctor `f` itself takes care of the mapping of objects (which, in `Hask`, are types).
- `a ⟼ f a` is the "template" for mapping of objects (Haskell types)
- `fmap :: Functor f => (a -> b) -> f a -> f b` maps arrows (Haskell functions)

For example, `Maybe` type is a functor as witnessed by its Functor instance. The `Maybe` type ctor itself maps types to types, acting as an object map: `Maybe` takes another type, like `Int`, producing `Maybe Int`. The `fmap` function acts as an arrow map: it "lifts" a function `a -> b` into a function `Maybe a -> Maybe b`.

As such, the Haskell's `Functor` class itself is merely half of a mathematical functor, while the other half is defined as a method of the class (`fmap`).

On the other hand, a big difference between mathematical and Haskell functors (and other categorical constructions like NT) is that Haskell has *parametric polymorphism*, which is a big restriction on the categorical constructions, meaning that some conditions, e.g. naturality conditions, that need to be shown in math, are automatically satisfied in Haskell.

However, in Haskell, all functors are endofunctors, since there is only one category, `Hask` (it may be possible to define other categories like the one with types as objects still, but with linear functions as arrows).

## Functor jectivity

https://blog.juliosong.com/linguistics/mathematics/category-theory-notes-8/

https://dkalemis.wordpress.com/2014/08/18/how-jectivity-corresponds-to-morphisms/

Since a functor consists of two functions, it can be given a jectivity class in two dimensions - one based on objects and the other based on arrows. Moreover, the arrow dimension further involves two subdimensions: that of the overall arrow collection of the category and that of the arrow collection between each pair of objects (i.e. hom-set).

Textbooks usually focus on the hom-set-based classification, which defines full, faithful, and fully faithful functors. However, since we will encounter classifications in other (sub)dimensions, it is better to learn the whole picture from the beginning. Awodey's textbook (p. 148) has the most complete introduction of the various jectivity classes for functors.

1. Jectivity of functors wrt homsets
- *full* if its hom-set mapping is surjective
- *faithful* if its hom-set mapping is injective
- *fully faithful* if its hom-set mapping is bijective

- https://ncatlab.org/nlab/show/full+functor
- https://ncatlab.org/nlab/show/faithful+functor
- https://ncatlab.org/nlab/show/full+and+faithful+functor

A *subcategory* is related to its "supercategory" via an *inclusion functor*, which is automatically faithful (because the subcategory is just part of the supercategory) and in addition may also be full (when the "part" keeps hom-sets intact); in the latter case we have a *full subcategory*.

- https://ncatlab.org/nlab/show/subcategory
- https://ncatlab.org/nlab/show/full+subcategory
- https://en.wikibooks.org/wiki/Category_Theory/Functors

2. Jectivity of functors wrt collection of objects
- *injective on objects* if its object function is injective
- *surjective on objects* if its object function is surjective
- *bijective on objects*, aka *bo*, if its object function is bijective

- https://proofwiki.org/wiki/Definition:Injective_on_Objects
- https://ncatlab.org/nlab/show/surjective+on+objects+functor
- https://ncatlab.org/nlab/show/identity-on-objects+functor
- https://ncatlab.org/nlab/show/bo+functor
- https://ncatlab.org/nlab/show/essentially+surjective+functor


Taking isomorphic objects into account, we can also define the following ("essentially") versions of the above terms - a functor is
- *essentially injective on objects* if its object function is injective up to isomorphism
- *essentially surjective on objects* if its object function is surjective up to isomorphism
- *essentially bijective on objects* if its object function is bijective up to isomorphism.


Two places these "essentially" versions of functors are encountered are the definition of *categorical embedding* (fully faithful + essentially injective on objects) and that of *categorical equivalence* (fully faithful + essentially surjective on objects).

3. Jectivity based on arrow collection
A functor may also be jective wrt arrow collection:
- injective on arrows if its arrow function is injective
  https://proofwiki.org/wiki/Definition:Injective_on_Morphisms
- surjective on arrows if its arrow function is surjective
  https://proofwiki.org/wiki/Definition:Surjective_on_Morphisms
- bijective on arrows if its arrow function is bijective

## Full and half inverses

https://blog.juliosong.com/linguistics/mathematics/category-theory-notes-9/

Let `f : X -> Y` be a function (whose domain is the set X, and whose image/range is the set Y). Then `f` is *invertible* if there exists a function `g : Y -> X` (with domain Y and image X), with the property `f x = y <=> g y = x`.

If `f` is invertible, the function `g` is unique, called the *inverse of `f`* and denoted `f⁻¹`.

- https://ncatlab.org/nlab/show/composition
- https://ncatlab.org/nlab/show/inverse
- https://en.wikipedia.org/wiki/Inverse_function

The category-theoretic definition of inverse is similar, as follows:

An inverse of a morphism `f : X → Y` in a category C 
is another morphism `f⁻¹ : Y → X` 
which is both a *left-inverse* or *retraction* 
as well as a *right-inverse* or *section*, 
of `f`, 
in that `f ∘ f⁻¹ : Y → Y` = `1ʸ` 
(equals the identity morphism on Y) 
and `f⁻¹ ∘ f : X → X` = `1ˣ` 
(equals the identity morphism on X).


>Two objects with an isomorphism (an arrow and its inverse) are *isomorphic*.

## Adjunction

https://blog.juliosong.com/linguistics/mathematics/category-theory-notes-12/

https://www.math3ma.com/blog/what-is-an-adjunction-part-1


Adjunction is a weak functorial connection.

An adjunction or adjoint situation describes a weak connection between two categories via functors. But since "weak" is a relative concept, let's first see what a strong connection is.

Given two categories, the strongest level of similarity they can enjoy is isomorphism. If two categories are isomorphic to each other, then they can be treated as the same one in all aspects that matter.

An isomorphism is defined as a two-sided or full inverse: given two categories C and D, they are isomorphic iff there are functors `F : C → D` and `G : D → C` such that `G ∘ F = Iᴄ` and `F ∘ G = Iᴅ`.

In other words, if two categories are isomorphic, then any object in either of them would return to itself following a functorial round trip. For example, if `c ∈ C` then `G(F(c)) = c`, and if `d ∈ D` then `F(G(d)) = d`. Moreover, any function in either of them would return to itself following a functorial round trip. If `f:c₁→c₂` ∈ Ar(C) then `G(F f) = f`. If `g:d₁→d₂` ∈ Ar(C) then `F(G g) = g`.

If the functorial round trips send arguments (aka objects) back to themselves, the two categories have the *strongest level of similarity*. But if the round trips do not send args back to themselves there are 3 further possibilities:
- If the arguments are sent back to somewhere isomorphic to themselves, the two categories have a second-best similarity, called *equivalence of categories*.
- If the arguments are not sent back to their isomorphic partner but merely to somewhere related to themselves in a particular way (i.e. that defining an adjunction), the two categories have a *weak similarity*.
- If the arguments are not even sent back to their adjoint round-trip partners, then the two categories have *no similarity*. In other words, they are just two randomly paired categories with two randomly picked functors.

More elaborately, Tsuchiya, Taguchi & Saigo propose 5 levels of similarity between categories, ordered from weak to strong:
- existence of functor (no similarity)
- existence of adjunction (weak similarity)
- categorically equivalent (equivalence of categories)
- categorically isomorphic (strongest level of similarity)
- identical (impractical)

"Identical" is rarely useful in category theory; or rather, category theory is rarely used for scenarios where things can be checked for identicality - set theory would be more useful in such scenarios.

>So, an adjunction is a special form of similarity between categories that is only stronger than the absence of similarity.

### From round trip to (co-)unit

https://en.wikipedia.org/wiki/Adjoint_functors#Formal_definitions
