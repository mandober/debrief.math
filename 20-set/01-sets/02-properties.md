# Set properties

- unordered collection
- uniqueness of elements
- set comprehension
- well-definedness


A set is an **unordered** collection of **distinct** elements.

A set is uniquely determined by its elements, which is known as the **uniqueness of elements**, meaning that the only thing that defines or identifies a set are its elements.

Once defined a set is a standalone mathematical object.

The two most fundamental properties of sets is that they don't recognize order or repetition of elements[^1].

The order in which the elements of a set are listed is immaterial, and so are the repetitions of elements. Therefore, these are equal:

$$\{1,2,3\} = \{3,1,2\} = \{3,1,3,2,1,2\} = \{1,2,2,3,3\}$$


The axiom of **comprehension** states that given any property, there is a set that contains all objects with that property. This position allows anything and everything to constitute a set.

Sets are allowed to contain anything, but by introducing the axiom of **well-definedness**, a set becomes a well-defined collection of objects that share a common property. Well-definedness states that there must be no ambiguity as to which elements belong to the set. However, this restriction alone cannot guarantee the consistency and clarity of what objects are exactly allowed to constitute a set.



[^1]: A/N: the restriction that the elements of a set are unordered is clear, but the restriction on uniqueness of elements, not so much. It seems it doesn't prohibit specifing a set with some elements duplicated, it just states that all the extra copies of an element are disregarded, as if they've collapsed into one. But does that imply that we can make duplicates of an element as we see fit? Since a tuple respects both order and repetition of elements, can we generate an infinite tuple using only a singleton set as the source, by reusing that single element over and over? Are these equal: $$\{a\} = (a,a,a,a,a,...)$$?
