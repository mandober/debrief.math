# Extensional equality

https://en.wikipedia.org/wiki/Extensionality
https://en.wikipedia.org/wiki/Extensional_equality

In logic, **extensionality** or **extensional equality** refers to principles that judge objects to be equal if they have *the same external properties*.

In logic, **intensionality** or **intensional equality** refers to principles that judge objects to be equal if they have *the same internal definition*.

Extensionality is determined by the external properties, while intensionality is determined by the internal properties.



For example, consider these two functions `f` and `g` on natural numbers:
- `f(n) = (n + 5) * 2`
- `g(n) = n * 2 + 10`

These two functions are *extensionally equal*: they produce the same value given the same input. However, they are *intensionally distinct* since their definitions are different.

A natural language has many predicates (relations) that are intensionally different but extensionally identical. For example, suppose that a town has one person named Joe, who is also the oldest person in the town. Then, the two predicates "being called Joe", and "being the oldest person in this town" are intensionally distinct, but extensionally equal for the (current) population of this town.

Extensional definition of function equality is commonly used in mathematics.

Sometimes additional information is attached to a function, such as an explicit codomain, in which case two functions must not only agree on all values, but must also have the same codomain, in order to be equal. By contrast, the sloppy definition of a function in mathematics means that equal functions must have the same domain, besides having the same graph.

Extensional equality also affects relations: two relations are said to be equal if they have the same *extensions*.

In set theory, the *Axiom of Extensionality* states that two sets are equal iff they contain exactly the same elements.

In set-theoretical foundations of mathematics, it is common to identify relations (functions) with their extension, so that it is impossible for two relations (functions) with the same extension to be distinguished.

Other mathematical objects are also constructed in such a way that the intuitive notion of "equality" agrees with set-level extensional equality.

Therefore, equal ordered pairs have equal elements; elements of a set which are related by an equivalence relation belong to the same equivalence class.

Type-theoretical foundations of mathematics are generally not extensional in this sense, and setoids are commonly used to maintain a difference between intensional equality and a more general equivalence relation (which generally has poor constructibility or decidability properties).
