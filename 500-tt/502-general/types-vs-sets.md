# Types vs sets

Q: What exactly is the semantic difference between set and type?
https://cs.stackexchange.com/questions/91330/what-exactly-is-the-semantic-difference-between-set-and-type/91345#91345

A: by Andrej Bouer

To understand the difference between sets and types, ones has to go back to pre-mathematical ideas of "collection" and "construction", and see how sets and types mathematize these.

There is a spectrum of possibilities on what mathematics is about. Two of these possibilities are the views of
- mathematical objects as constructions
- mathematical objects as collections

* We think of mathematics as an activity in which *mathematical objects are constructed* according to some rules (think of geometry as the activity of constructing points, lines and circles with a ruler and a compass). Thus, mathematical objects are organized according to how they are constructed, and there are *different types of construction*. A mathematical object is always constructed in some unique way, which determines its unique type.

* We think of mathematics as a vast universe full of pre-existing mathematical objects (think of the geometric plane as given). We discover, analyze and think about these objects (we observe that there are points, lines and circles in the plane). We *collect them into set*. Usually we collect elements that have something in common (for instance, all lines passing through a given point), but in principle a set may hold together an arbitrary selection of objects. A *set is extensional* - it is specified by its elements, and only by its elements. A mathematical object may belong to many sets.

This does not mean that these two are the only possibilities or that any one of them completely describes what mathematics is. Nevertheless, each view can serve as a useful starting point for a general mathematical theory that usefully describes a wide range of mathematical activities.

It is natural to take a type `T` and imagine the collection of all things that we can build using the construction rules of `T`. We'd get the *extension* of `T` this way, which is not `T` itself.

For instance, here are two types that have different rules of construction, but they have the same extension:
- The type of pairs `(n, p)` where `n` is constructed as a natural number, and `p` is constructed as a proof demonstrating that `n` is an even prime number larger then 3.
- The type of pairs `(m, q)` where `m` is constructed as a natural number, and `q` is constructed as a proof demonstrating that `m` is an odd prime smaller than 2.

This is a trivial example, but the point stands: both types have nothing in their extension, but they have different rules of construction.

In contrast, the sets
- `{ n ∈ ℕ | n > 3 is Even Prime }`
- `{ m ∈ ℕ | m < 2 is Odd Prime }`

are equal because they have the same elements (both are empty).

Type theory is not about syntax, but **mathematical theory of constructions**, just like set theory is a **mathematical theory of collections**.

It just so happens that the usual presentations of type theory emphasize syntax, and consequently people end up thinking type theory is syntax.

To confuse a mathematical object (construction) with a syntactic expression that represents it (a term former) is a basic category mistake that has puzzled logicians for a long time, but not anymore.

---

(The extension of a type is a very useful concept, and since it is a kind of collection, we can say "element of the extension of a type", which often gets abbreviated to "element of a type".)

11

In practice, claiming that x being of type T usually is used to describe syntax, while claiming that x is in set S is usually used to indicate a semantic property. I will give some examples to clarify this difference in usage of types and sets.

An example
To clarify this distinction, I will use the example given in Herman Geuvers' lecture notes. First, we look at an example of inhabiting a type:

`3 + (7 * 8)⁵ : Nat`

and an example of being member of a set:

`3 ∈ { n ∈ ℕ | ∀ x y z ∈ ℕᐩ . xⁿ + yⁿ ≠ zⁿ }`

The main difference here is that to test whether the first expression is a natural number, we don't have to compute some semantic meaning, we merely have to 'read off' the fact that all literals are of type Nat and that all operators are closed on the type Nat.

However, for the second example of the set, we have to determine the semantic meaning of the 3 in the context of the set. For this particular set, this is quite hard: the membership of 3 for this set is equivalent to proving Fermat's last theorem! Do note that, as stated in the notes, the distinction between syntax and semantics cannot always be drawn that clearly.

## Algorithms vs Proofs

To summarize, types are often used for 'simple' claims on the syntax of some expression, such that membership of a type can be checked by an algorithm, while to test membership of a set, we would in usually require a proof.

To see why this distinction is useful, consider a compiler of a typed programming language. If this compiler has to create a formal proof to 'check types', the compiler is asked to do an almost impossible task (automated theorem proving is, in general, hard). If on the other hand the compiler can simply run an (efficient) algorithm to check the types, then it can realistically perform the task.

## A motivation for a strict(er) interpretation

There are multiple interpretations of the semantic meaning of sets and types. While under the distinction made here extensional types and types with undecidable type-checking (such as those used in NuPRL, as mentioned in the comments) would not be 'types', others are of course free to call them as such (just as free as they are as to call them something else, as long as their definitions fit).

However, we (Herman Geuvers and I), prefer to not throw this interpretation out of the window, for which I (not Herman, although he might agree) have the following motivation:

First of all, the intention of this interpretation isn't that far from that of Andrej Bauer. The intention of a syntax is usually to describe how to construct something and having an algorithm to actually construct it is generally useful. Furthermore, the features of a set are usually only needed when we want a semantic description, for which undecidability is allowed.

So, the advantage of our more stricter description is to keep the separation simpler, to get a distinction more directly related to common practical usage. This works well, as long as you don't need or want to loosen your usage, as you would for, e.g. NuPRL.

...


From a propositions-as-types perspective, what types are classifying are the valid proofs of the proposition to which the type corresponds.


---

## Refs

https://cs.stackexchange.com/questions/91330/what-exactly-is-the-semantic-difference-between-set-and-type/91345#91345

https://math.stackexchange.com/questions/2758521/math-logic-in-calculus/2759267#2759267
