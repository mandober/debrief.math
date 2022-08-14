# Types vs sets

What exactly is the semantic difference between set and type?
https://cs.stackexchange.com/questions/91330/what-exactly-is-the-semantic-difference-between-set-and-type/91345#91345

To understand the difference between sets and types, ones has to go back to pre-mathematical ideas of "collection" and "construction", and see how sets and types mathematize these.

There is a spectrum of possibilities on what mathematics is about. Two of these are:

We think of mathematics as an activity in which mathematical objects are constructed according to some rules (think of geometry as the activity of constructing points, lines and circles with a ruler and a compass). Thus mathematical objects are organized according to how they are constructed, and there are *different types of construction*. A mathematical object is always constructed in some unique way, which determines its unique type.

We think of mathematics as a vast universe full of pre-existing mathematical objects (think of the geometric plane as given). We discover, analyze and think about these objects (we observe that there are points, lines and circles in the plane). We *collect them into set*. Usually we collect elements that have something in common (for instance, all lines passing through a given point), but in principle a set may hold together an arbitrary selection of objects. A set is specified by its elements, and only by its elements. A mathematical object may belong to many sets.

We are not saying that the above possibilities are the only two, or that any one of them completely describes what mathematics is. Nevertheless, each view can serve as a useful starting point for a general mathematical theory that usefully describes a wide range of mathematical activities.

It is natural to take a type `T` and imagine the collection of all things that we can construct using the rules of `T`. This is the *extension* of `T`, and it is not `T` itself.

For instance, here are two types that have different rules of construction, but they have the same extension:
- The type of pairs `(n,p)` where `n` is constructed as a natural number, and `p` is constructed as a proof demonstrating that `n` is an even prime number larger than 3.
- The type of pairs `(m,q)` where `m` is constructed as a natural number, and `q` is constructed as a proof demonstrating that `m` is an odd prime smaller than 2.

Yes, these are silly trivial examples, but the point stands: both types have nothing in their extension, but they have different rules of construction.

In contrast, the sets
- `{ n ∈ ℕ | n is Even Prime > 3}`
- `{ m ∈ ℕ | m is Odd  Prime < 2}`

are equal because they have the same elements (i.e. none).

Note that type theory is not about syntax. It is a *mathematical theory of constructions*, just like set theory is a *mathematical theory of collections*.

It just so happens that the usual presentations of type theory emphasize syntax, and consequently people end up thinking type theory is syntax. This is not the case. To confuse a mathematical object (construction) with a syntactic expression that represents it (a term former) is a basic category mistake that has puzzled logicians for a long time, but not anymore.

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

Algorithms vs Proofs

To summarize, types are often used for 'simple' claims on the syntax of some expression, such that membership of a type can be checked by an algorithm, while to test membership of a set, we would in usually require a proof.

To see why this distinction is useful, consider a compiler of a typed programming language. If this compiler has to create a formal proof to 'check types', the compiler is asked to do an almost impossible task (automated theorem proving is, in general, hard). If on the other hand the compiler can simply run an (efficient) algorithm to check the types, then it can realistically perform the task.

A motivation for a strict(er) interpretation

There are multiple interpretations of the semantic meaning of sets and types. While under the distinction made here extensional types and types with undecidable type-checking (such as those used in NuPRL, as mentioned in the comments) would not be 'types', others are of course free to call them as such (just as free as they are as to call them something else, as long as their definitions fit).

However, we (Herman Geuvers and I), prefer to not throw this interpretation out of the window, for which I (not Herman, although he might agree) have the following motivation:

First of all, the intention of this interpretation isn't that far from that of Andrej Bauer. The intention of a syntax is usually to describe how to construct something and having an algorithm to actually construct it is generally useful. Furthermore, the features of a set are usually only needed when we want a semantic description, for which undecidability is allowed.

So, the advantage of our more stricter description is to keep the separation simpler, to get a distinction more directly related to common practical usage. This works well, as long as you don't need or want to loosen your usage, as you would for, e.g. NuPRL.

...


From a propositions-as-types perspective, what types are classifying are the valid proofs of the proposition to which the type corresponds.
