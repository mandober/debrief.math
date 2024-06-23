# Limits and Colimits

https://www.math3ma.com/blog/limits-and-colimits-part-1
https://www.math3ma.com/blog/limits-and-colimits-part-2
https://www.math3ma.com/blog/limits-and-colimits-part-3

https://www.math3ma.com/blog/a-diagram-is-a-functor


Limits and colimits are (in some sense the most efficient) a way to construct a new object from an existing collection of objects.

For example, suppose we were given a bunch of sets. Plain, old, vanilla sets. Can we use these to construct new sets? Definitely. We can isolate a single element and form a *one-point set*. We can isolate no elements and form the *empty set*. We can form a *quotient set*. We can take a few sets and form their *Cartesian product* or their *fibered product*, or we can form their *disjoint union*. We can also look at their *intersection* or their (not-necessarily disjoint) *union*. And if we have a function from one set to another, we can look at the *preimage* of an element in its range.

Each of the words in italics above is an example of either a limit or a colimit.

These constructions seem to come in 2 flavors:

- *taking sub-things*: A single element, an intersection, a preimage, a product. These are all formed by picking out a sub-collection of elements from given sets, contingent on some condition (think of the product as a subset of itself). These are examples of *limits*.

- *gluing things together*: A set with no elements, disjoint unions, not-necessarily-disjoint unions, and quotients are all formed by assembling or 'gluing' things together (think of forming the empty set by 'gluing' no things together). These are examples of *colimits*.

In practice, limits tend to have a "sub-thing" feel to them, whereas colimits tend to have a "glue-y" feel to them. That's terribly imprecise, but it's an intuitive feel for how mathematicians construct things.

More formally, the defining property of a limit is characterized by *maps whose domain is the limit*. On the other hand, the defining property of a colimit is characterized by *maps whose codomain is the colimit*. In this sense, limits and colimits are dual to each other. 

You'll notice I used the word "maps" instead of "functions." That's because set theorists aren't the only people who like to construct new things from existing things. As I mentioned in the opening paragraph, limits and colimits appear all across the mathematical landscape. A direct sum of abelian groups, the kernel of a group homomorphism, the direct product of vector spaces, the free product of groups, the least upper bound of a poset, and a CW complex are all examples of limits and colimits.

In every discussion of limits and colimits there is a heavy emphasis on maps - homomorphisms, functions, linear transformations, continuous functions, smooth functions, you name it. In fact, limits and colimits are defined in terms of a *universal property*. This emphasis on maps, or relationships, is a trademark of category theory and has roots in the *Yoneda perspective*, which is the categorical maxim that objects are completely determined by their relationships to other objects.

## Limits and Colimits, Part 2 (Definitions)

https://www.math3ma.com/blog/limits-and-colimits-part-2
