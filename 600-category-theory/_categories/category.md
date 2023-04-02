# Category

A category consists of objects and arrows, however objects are not important per se, they have to be there so the arrows have something to anchor themselves to. At least, objects are not as important as arrows, because category theory is about relations and relations are embodied in arrows. Objects are defined solely in terms of relations they maintain.




(definition) Category
...




We can also view the set of arrows in a category as a carrier set, endowed with a binary operation of composition. Then the identity arrows serve as units of composition (identity, reflexivity). Composition is associative (associativity property), transitive (transitivity property), and closed over the carrier set (closure property). This qualifies it as these algebraic structures:
- magma:          closure
- semigroup:      closure + assoc
- monoid:         closure + assoc + id
+ group:          closure + assoc + id + inverse
+ Abelian group:  closure + assoc + id + inverse + commutativity

- reflexivity:
  - obj:        a = a
  - arr: (a -> b) = (a -> b)
- transitivity:
  - arr: (a -> b) ∧ (b -> c) => (a -> c)
- antisymmetry
  - obj (arrows as relation): (a -> b) ∧ (b -> a) => a = b
