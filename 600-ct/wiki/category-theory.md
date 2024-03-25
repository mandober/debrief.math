# Category theory

https://en.wikipedia.org/wiki/Category_theory

Category theory is a general theory of mathematical structures and their relations that was introduced by Samuel Eilenberg and Saunders Mac Lane in the middle of the 20th century in their foundational work on algebraic topology.

Category theory is used in almost all areas of mathematics. In particular, many constructions of new mathematical objects from previous ones that appear similarly in several contexts are conveniently expressed and unified in terms of categories. Examples include quotient spaces, direct products, completion, and duality.

Many areas of computer science also rely on category theory, such as functional programming and semantics.

A *category* is formed by two sorts of objects: the *objects* of the category, and the *morphisms*, which relate two objects called the source and the target of the morphism. One often says that a morphism is an arrow that maps its source to its target. Morphisms can be composed if the target of the first morphism equals the source of the second one, and morphism composition has similar properties as function composition (associativity and existence of identity morphisms). Morphisms are often some sort of function, but this is not always the case. For example, a monoid may be viewed as a category with a single object, whose morphisms are the elements of the monoid.

The second fundamental concept of category theory is the concept of a *functor*, which plays the role of a morphism between two categories C and D: it maps objects of C to objects of D and morphisms of C to morphisms of D in such a way that sources are mapped to sources, and targets are mapped to targets (or, in the case of a contravariant functor, sources are mapped to targets and vice-versa).

A third fundamental concept is a *natural transformation* that may be viewed as a morphism of functors.

## Contents

- 1. Categories, objects, and morphisms
  - 1.1. Categories
  - 1.2. Morphisms
- 2. Functors
- 3. Natural transformations
- 4. Other concepts
  - 4.1. Universal constructions, limits, and colimits
  - 4.2. Equivalent categories
  - 4.3. Further concepts and results
  - 4.4. Higher-dimensional categories

## 1. Categories, objects, and morphisms

Main articles: Category (mathematics) and Morphism
- https://en.wikipedia.org/wiki/Category_(mathematics)
- https://en.wikipedia.org/wiki/Morphism

### Categories

A category C consists of the following 3 mathematical entities:

1. A class ob(C), whose elements are called objects

2. A class hom(C), whose elements are called morphisms or maps or arrows

3. Each morphism f has a source object a and target object b

The expression f : a → b, would be verbally stated as "f is a morphism from a to b".

The expression hom(a, b) - alternatively expressed as homC(a, b), mor(a, b), or C(a, b) - denotes the hom-class of all morphisms from a to b.

A binary operation ∘, called composition of morphisms, such that
for any three objects a, b, and c, we have
∘ : hom(b, c) × hom(a, b) → hom(a, c).

The composition of f : a → b and g : b → c is written as g ∘ f or gf,[a] governed by two axioms:
1. Associativity: If f : a → b, g : b → c, and h : c → d then
h ∘ (g ∘ f) = (h ∘ g) ∘ f

2. Identity: For every object x, there exists a morphism 1x : x → x (also denoted as idx) called the identity morphism for x,
such that
for every morphism f : a → b, we have
1b ∘ f = f = f ∘ 1a

From the axioms, it can be proved that there is exactly one identity morphism for every object.
