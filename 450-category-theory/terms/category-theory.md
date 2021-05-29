# Category Theory

https://en.wikipedia.org/wiki/Category_theory
https://ncatlab.org/nlab/show/category+theory

Category theory
    1. Idea
    2. The central constructions
        Presheaves
        Universal constructions
    3. The central theorems
    4. Applications
        In pure mathematics
        Outside of mathematics
    5. Contrast to theories of other objects
        Category theory vs. set theory
        Category theory vs. order theory
    6. Theorems
    7. Related concepts
    8. References
        History
        Basic category theory
        Topos theory
        Higher category theory
        Foundations


## Category theory introduction

Category
- A generalisation of a graph (transitive closure)
- Nodes are called objects: a, b, c, …
- Arrows between objects are called morphisms: f :: a -> b

Arrows are composable:
- f :: a -> b,
- g :: b -> c,
- g ∘ f :: a -> c (exists if the previous two exist)

Identity arrows (always exist!):
- ida :: a -> a,
- id ○ f = f,
- g ○ id = g

𝗦𝗲𝘁 category is a category in which:
- Objects are sets
- Arrows are functions

* *Initial Object*: there is a unique arrow from initial object to any other object

Initial Object in Set
- Empty set ∅
- Unique function from `⌀ -> a`
- `absurd :: Void -> a`
- `Void` is the uninhabited type

* *Terminal Object*: there is a unique arrow from any object to terminal object

Terminal Object in Set
- Singleton set
- Unique function: for every element of set `a` return the single element of the singleton set
- Unit type `()` with one element `()`
- `unit :: a -> ()`
- `unit _ -> ()`

**Universal Construction** is used to "pick" objects in a category. Because we cannot examine the internals of objects, the only way we can derive info about them is exploring how they relate to each other via arrows.


* Product (Elimination)
  - `c` is a product of `a` and `b`
  - Two arrows `p` and `q` (projections)
    c :: (a, b)
    p (a, b) = a
    q (a, b) = b
  - In set theory, product is a cartesian product, i.e. a pair of elements
  - In logic: ∧ (conjunction elimination)
    a ∧ b           a ∧ b
    -----           -----
      a               b

Using universal construction, we fix the objects `a` and `b` in the attempt to find their product, an object `c`. In order for `c` to be a product of `a` and `b`, there must be two projection functions, `c -> a` and `c -> b`.


## Category Theory

Category theory formalizes *mathematical structure* and its concepts in terms of a *labeled directed graph* called a **category**, whose nodes are called **objects**, and whose labelled directed edges are called **arrows** or **morphisms**.

A category has two basic properties:
* the ability to compose the arrows associatively
* the existence of an identity arrow for each object
