# Category theory fundamentals :: Category

A category is a set of objects together with arrows connecting these objects.

A category consists of objects and morphisms between them.

However, categories are primarily about arrows that relate one object to another, as well the ways arrows are composed. Arrows define the relationships between objects, they indicate how an object is related to other objects in a category.

Therefore, category theory emphasizes the arrow-based view into categories, as opposed to object-based view. Objects are more of abstract things required to carry the arrows, but objects themselves provide barely any information about a category compared to arrows. It is the connections obtained by the arrows that let us infer informations about objects. In this way, an object is determined by the relations it maintains (similarly to the proverb that you is the company you keep).

We can look at a category from a set-theoretical point and consider its objects as elements in a set and its arrows as functions that connect and relate sets.
- elements (nodes) are called objects: a, b, c, …
- arrows between objects are called morphisms: f :: a -> b, …

A category `𝒞` consists of 3 components:
- a set of objects `Obj(𝒞)`
- a set of arrows  `Arr(𝒞)`
- a set of axioms

Categories are directed multigraphs with a composition and identity structure.
