# Category theory vs set theory

"Oh, my God! It's full of stars..."

Looking at he night sky with a naked eye, stars appear as points, and this is the categorical view of sets (the night sky is the category Set). However, using a telescope and focusing on a particular star revels structure - this is the set-theoretical view of sets; we can see inside a set, we see its membrane, its elements, the golgi aparatus. Switching between this two views is a good way to build intuition about category theory.

All flashing pulsar. I couldn't taste it. I'm tired and naked. I don't know what I'm hungry for. I don't know what I want anymore. I move across the room with a heart full of gloom.

Oh, my peer, your veneer
Is wearing thin and cracking
The surface informs the underneath
The underneath is lacking

All static and desire
You're blue in the face from navel gaze
You set yourself on fire
You strip down and lay yourself out

exhaustion and desperation

I'd sooner chew my leg off than be trapped in this.


# Category theory vs set theory

- https://ncatlab.org/nlab/show/generalized+the
- https://ncatlab.org/nlab/show/relative+point+of+view


One of the fundamental notions of category theory is the concept of morphism, abstracted from the concept of function, and the proposition that it may replace the set membership relation as the basic building block for developing mathematical constructions and expressing the properties of mathematical objects.

Rather then defining the properties of a mathematical structure by probing its internal structure and referencing the members indivudually, we instead consider it as a whole and infer things about it solely in terms of relations connecting it to other similar structures. These connections between structures may be realized by functions, relations, homomorphisms, and other flavors of links that arrows generalize and abstract, behaving similarly to functions under composition.

Initially, a category may be thought of as a universe in which a particular brand of math unfolds by identifying its objects and arrows. Then topology takes place in a universe (category) where topological spaces are objects and continuous functions are arrows. Linear algebra is placed in a category where the arrows are linear transformations between vector spaces that play the role of objects. Group theory is a category where groups are objects with group homomorphisms as arrows. Differential topology manifolds as objects related by smooth maps as the arrows. Programming language Haskell plays out in the category Hask where Haskell types are objects and Haskell functions are arrows. Logic is a category of propositions and entailment (implication). A very familiar category is then one where objects are sets and arrows are plain old functions on sets. Then its supercategory is the one in which arrows are relations. Being a universal mathematical language, CT has identified numerous such examples across many different math subjects, equipping them all with a common dialect. We may thus regard the whole of the mathematical spectrum as being partitioned into subject matter each fitted into a category.

It provides an elegant and powerpowerful means of expressing relationships across wide areas of mathematics, and a range of tools that seem to be becoming more and more a part of the mathematician's stock in trade. New light is shed on existing theories by recasting them into the categorical terms. Moreover, category theory has succeeded in identifying and explicating a number of extremely fundamental and powerful mathematical ideas (universal property, adjointness). And now, as one of the youngest math branches it stands a prospect for the foundations, uniting the mathematics under its framefork, finally replacing set theory.


## Topoi

The most general universe of current mathematical discourse is the category known at `Set`, whose objects are the sets and whose arrows are the set functions. Here the fundamental mathematical concepts (number, function, relation) are given formal descriptions, and the specification of axioms legislating about the properties of sets leads to a so called foundation of mathematics. The basic set-theoretic operations and attriattributes (empty set, intersection, product set, surjective function e.g.) can be described by reference to the arrows in Set, and these descriptions interpreted in any category. However the category axioms are "weak", in the sense that they hold in contexts that differ wildly from the initial examples cited above. In such contexts the interpretations of set-theoretic notions can behave quite differently to their counterparts in Set. So the question arises as to when this situation is avoided, i.e. when does a category look and behave like `Set`? A vague answer is - when it is (at least) a topos. This then gives the first indication of what a *topos* is - it is a category whose structure is sufficiently like `Set` that in it the interpretations of basic set-theoretical constructions behave much as they do in `Set` itself.
