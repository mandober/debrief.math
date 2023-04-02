# Category Theory :: General :: Interpretations of Category Theory

* Category theory is may be seen as a generalization of functions.

Functions relate objects and they compose similarly to arrows, with the identity arrows acting as units of composition. Functions like these are mostly studied in set theory, where they relate elements of objects, but unlike with categories, the closure under transitivity of composition is not required. Moreover, in set theory, functions are restricted relations, so they relate individual elements of sets. But a definition (declaration) of a function has two compoenents to it: a function's signature, `f : A -> B`, and a function's implementation (definition), generically presented as `f(a) = b`. While in category theory, arrows are like functions with only their signature left, as that is all that remains when sets collapse into structureless points called objects in the categorical context.

* Category theory may be seen as a generalization of labeled directed graph of graph theory.

The objects in a graph are exactly the same as the objects in a category - they are the structureless points that only serve as anchors for the arrows to have somewhere to hang off of. Arrows are the true elements of a category, but of graphs as well. That is, both of graph and category theory are focused on describing objects, not in terms of themselves and their structure, but in terms of the relations they keep.

One of the bigger differences is that a graph does not have to be closed under transitivity relation, while a category must be. Also, graph vertices may or may not have identity arrow, but they are required in a category. However, the biggest difference is that graphs model relations, while categories model functions - that is, morphisms behave more closely to functions than to relations.


* Category theory may be seen as a generalization of abstract algebra.

After all, category theory really is a general theory of mathematical structures and their relations. An algebraic structure is a set endowed with a set of binary operations, and a set of axioms that must be upheld. 

Somewhat similarly, a category is, well not a set, but a collection of objects and morphisms that connect these objects; however, there is a notion of a binary operation, called composition, and a set of 3 axioms to follow: closure, identity, and associativity of composition. In this sense, a category is similar to a *monoid* - it has a single closed, associative, binary operation with both left and right units. Although additionally, a category must also be *closed under the transitivity of composition* - this means that, given two compatible arrows, there must be the third arrow that is their composition; it means less that composition of arrows produces an arrow that is also an element in the same category - although the closure in this sense also holds.

The objects, at this very high level of abstraction that category theory occupies, are seen as only the structureless points no matter what structure they may have at the lower levels.
