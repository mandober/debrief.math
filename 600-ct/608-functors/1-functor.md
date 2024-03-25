# CT :: Functor

## Mapping between categories

The central concepts of CT are that of a category, functor and NT.

A functor is a mapping between two categories. Given two categories C and D, a functor `F : C -> D` maps the source category C into the target category D in a way that "preserves structure".

A functor is a *structure-preserving map between categories*. A category is two-sorted structure consisting of objects and arrows betwen them, so a functor must map both objects and arrows in the source category C to objects and arrows in the target category D. Such functor is denoted in a function-like form, `F ∶ C -> D`. In fact, functors exhibit many function-like behaviors.

## Fidelity of mapping

When it comes to structure preservation of sets, how a function maps one set into another - the fidelity of mapping - will determine the class it belong to. Fidelity-wise, there are three classes: surjections, injections and bijections.

## Full functors

Surjective functions are lo-fi, doing an awful job of representing one set in another. They lose information by collapsing many of the domain elements into a single codomain element. The one thing that's going for them is that they cover the entire codomain - all codomain elements are matched. Surjection corresponds to *full functors*, which, judging by their name, emphasize their coverage quality. So a full functor may collapse objects of the source category, but at least, it will associate each target category's object.


## Structure-preserving mapping

How does a functor preserve structure? What the preservation of structure means?

A category is 2-sorted structure consisting of objects and arrows betwen objects, so a functor must map both objects and arrows in the source category to objects and arrows in the target category. But the structure of a category is actually preserved by preserving the composition of arrows and identity arrows of the source category in the target category. Namely, a functor maps the source category into a target category, which means it embeds the source in the target, with more or less fidelity.

This is very similar to what a function does on sets. A bijective function will reflect the domain in the codomain set with high fidelity. An injective function is actually an embedding - it embeds the domain in the codomain. 

A surjective function does the worst job because it looses information by collapsing some of the domain elements - it maps multiple domain elements into a single codomain element.

Functors also display such "jective" behavior - the correspondences are:
- surjectivity and *ful functor*
- injectivity and *faithful functor*
- bijectivity and *fully faithful functor*



However, categorically, the preservation of structure is more about preserving the composition and identity morphism than the issues of surjectivity. First of all, a functor maps *all objects of the source category* - each and every object of the source category must have an image in the target category, which is exactly what a (total) function does.
