# CT :: Fundamentals :: Category theory

- A category is about structure, it defines what a structure means.
- The essence of category theory is composition of various entities.
- Composable mappings are the essence of categories.
- Category theory is one of the most (if not the most) abstract branches of mathematics, affectionately called abstract nonsense.
- Categories are just another algebraic structure, generalising both monoids and partial orders.

>The essence of category theory are composable mappings between various categorical entities.


Category theory is founded upon the abstraction of the arrow, `f : a → b`. 
Here `a` and `b` are called objects and `f` is an arrow whose source is object `a` and target is object `b`. Such directional structures occur widely in set theory, algebra, topology and logic.

Examples:
- `f` is a partial function from set `a` to set `b`
- `a` and `b` are sets and `f` a total function from `a` to `b`
- `a` and `b` are algebras of the same type and `f` a homomorphism between them
- `a` and `b` are topological spaces and `f` a continuous map
- `a` and `b` are propositions and `f` a proof of `a |- b`.

Category theory achieves its wide applicability by describing structures in terms of arrows, which represent relations between the objects in a structure.

in terms of
the existence of arrows, 
and properties of arrows.


Math usually gives descriptions by referring to the internal structure of objects, which makes the applicability of such descriptions limited to objects that have such structure. Categorical descriptions make no assumption about the internal structure of objects; they are given purely in terms of transformation and relations maintained by arrows. They are data-independent descriptions: the same description may apply to sets, graphs, algebras or anything else that can be considered a category.

Particularly amenable to description in terms of arrows are *canonical constructions*, which are common throughout mathematics.
For example, canonical constructions 
- in graph theory are the *transitive closure* of a graph and the *strongly-connected components* of a graph
-in algebra, *free and generated algebras* are common
- in group theory, *abelianization* of a group
- in topology, *compactification of spaces*

An arrow-theoretic description of such constructions captures all the ingredients, including the sense in which the construction is considered to be canonical.

This generality of descriptions in term of arrows is countered by the absence of practical application, and so a considerable effort is put to unravelling categorical descriptions in a particular setting.
