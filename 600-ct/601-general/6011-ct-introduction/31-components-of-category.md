# Category theory :: Components of a category

A category is comprised of objects and arrows between them, but the focus is on arrows rather than objects. While objects are traditionally viewed as items of import, this is not so in category theory, where the objects are demoted into anchors just so that the arrows have somewhere to hang off of. Arrows are the prestiguous members of a categories.

Objects are seemingly inert, passive members of a category, while arrows "do all the work", connecting objects and, in doing so, encode their properties.

---

This simplistic view may be true initially, when we encounter the basic categories where sets play the role of objects, and all attention is on morphisms. But further abstractions abound. Very quickly the arrows slip into the role of objects, while functors step into their role. You're still making sense of the new situation (category), when a new abstraction kicks in, putting functors in the role of objects with NTs as morphisms. Then NTs are objects and arrows are God-knows-what. It goes on like that: categories, objects, functors, NTs all morphing in and out of themselves and each other, rushing toward ∞-categories, confusingly. It's fast, uncomfortable and depressing. It leaves a bad taste in your mouth, pulverizes your intuition, sends your self-esteem packing. Leaves you stripped to the bone. All static and desire, tired and naked, naval gazer. I'd sooner chew my leg off then be trapped in this...


---

Any property that an object may have had "before" (before it collapsed into a structureless categorical dot) remains hidden from direct inspection.

In a category, all we can tell about an object is what we can infer from the arrows that relate it to other objects in the category.

Each object is described in terms of the incoming and outgoing arrows from/to other objects, and often also by the relations it doesn't have.

By inspecting the arrows, we reveal an object's features.

Going further, we find functors which are mappings between categories. Similarly to how morphisms map (different or same) objects, functors map (different or same) categories. Functors are, again, composable mappings (that preserve structure). Beyond functors, there are natural transformation, which are mappings between functors.

Now it becomes evident that the true essence of categories are the composable mappings - they are the true elements of categories, and category theory is the study of such mappings.

All such mappings are composable and the composition has the unit elements. 
Some mappings entirely preserve structure, others collapse it entirely.



>The truly essential elements are then the composable mappings between (and on) various categorical entities.

>Composition is the essence of categories.

>Composable mappings are the essence of categories.

Morphisms are mappings between objects. 
An identity morphisms maps an object back to itself. 

Functors are mappings between categories. 
An identity functor (endofunctor) maps a category to itself. 

Natural transformation are mappings between functors. 




1. **Category**

A category is formed by two sorts of components: objects and morphisms that connect objects.

The objects of a category are structureless points that only serve as anchors for the arrows to have somewhere to hang off of. Arrows are the true elements of a category.

Since category theory sits at a very high level of abstraction, generalizing many different mathematical theories (like set theory) and their constructions, the objects of a category, that are here reduced to points, may be imagined to regain their full structure again if the persepective is changed to one of the lower-level theory. In set theory, one has the insight into their structure, able to see each element within a set. But as one changes perspective, and keeps on going up, the categoriacal view will render sets only as tiny points withno apparent structure.

Morphisms relate two objects called the *source* and the *target* of the morphism. One often says that a morphism is an arrow that maps its source to its target. Morphisms are composable if the target of the first morphism equals the source of the second one. In fact, in this case, there must exists an arrow that is their composition. Composition of morphisms has similar properties as function composition, that is associativity and identity. In many categories, morphisms are often some sort of function, but this is not the case in every category. For example, a monoid may be viewed as a category with a single object, whose morphisms are the elements of the monoid.


2. **Functor**

The second fundamental concept of category is the concept of a **functor**. Similarly to how arrows map objects, functors map categories. Like there are identity arrows, so there are identity morphisms (endomorphisms). A functor `F : C -> D` maps objects of category `C` to objects of category `D`, and morphisms of `C` to morphisms of `D`, in such a way that source objects in `C` are mapped to sources in `D`, and target objects are mapped to targets.

That is, if `f : a -> b` is an arrow in `C`, so `a,b,f ∈ C`, 
a functior `F : C -> D` will map: 
- each source object `a` in `C` to a source object `F a` in `D`    
  `a` ⟼ `F a`
- each target object `b` in `C` to a target object `F b` in `D`    
  `b` ⟼ `F b`
- each arrow `f` in `C` to an arrow `F f : F a -> F b` in `D`      
  `f` ⟼ `F f`


3. **Natural transformation**

The third fundamental concept is a natural transformation that may be viewed as a morphism of functors.

A natural transformation is a relation between two functors. Functors often describe *natural constructions* and natural transformations then describe *natural homomorphisms* between two such constructions. Sometimes two quite different constructions yield "the same" result; this is expressed by a *natural isomorphism* between the two functors.
