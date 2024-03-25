# Understanding Category Theory

At the initial phase of the study of category theory, it seems best to stay within the `Set` category, as its objects are sets and its arrows are functions. A useful practice until one gains some insight, is to examine the same configuration from both of these persepectives: from the aspect of set theory with the insight into each set's internals and the details of how different functions associate elements of sets. Then switching the perspective to the categorical view, where sets become structureless points (categorical objects), and each function collapses into its signatre (categorical morphisms).


Set theory            | Category theory
----------------------|---------------------
set                   | object
function              | morphism
injective functions   | monomorphisms
surjective functions  | epimorphisms
bijective functions   | isomorphisms
the empty set         | initial object
any singleton set     | terminal object
Cartesian product     | product
Disjoint union        | coproduct
Function type `A → B` | exponential object `Bᴬ`



The introduction to category theory may be summed up as an attempt to discover the ways (via diagrams) in which many fundamental concepts (terminal object, initial object, products, coproducts, exponential objects, etc.) can be presented without referring to elements of objects (since they are abstract, structureless, sets anyway) - implying this should be done in `Set` category as it is so rich in arrows. For example, one such task is defining the product (in Set) without mentioning the Cartesian product of sets (as a set of ordered pairs) - by relying on the available arrows alone. Or, defining the initial and terminal object in Set without inspecting the structure of objects (i.e. their elements); without being able to tell directly that an object is a singleton set, you need to find a way to nevertheless determine this property - all by following arrows in the category Set. An example of such solution is identifying an object as the terminal object in Set, by realizing that there is exactly one arrow coming into it from any other object; moreover, to realize that this fact implies that the object must be a singleton set. An early achievement of category theory was to give a precise definition (due to Mac Lane) for the notion of product, which was previously known in many special cases, but only understood vaguely as a general concept.
