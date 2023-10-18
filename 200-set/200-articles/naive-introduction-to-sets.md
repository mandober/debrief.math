# Introduction to sets




Sets are ubiquitous in mathematics, they occur in many math branches and they are extensively used in logic and, by extension, in CS. In fact, sets are considered as the foundation of all mathematics. Concretely, *Zermelo-Fraenkel set theory* (ZF) is accepted by majority of mathematicians as the axiomatization system best fitted to serve as the foundation of mathematics. This means that the entirety of mathematics can be derived from ZF set theory.

Sets were introduced by the German mathematician Georg Cantor (1845-1918). His work in 1874-1884 marks the origin of the set theory. Cantor introduced the concept of a set saying:

>"A set is a gathering together into a whole of definite distinct objects of our perception or thought, called the elements of the set".

Today, we say that a set is a collection of objects, called its members. In math, these objects will, naturally, be mathematical objects, primarily numbers, and sets will be "almost homogeneous", i.e. containing the same base type of objects. On the nose, a heterogeneous set would contain any type of objects at all (like a cow, a tringle and a red shoe), but less dramatically, even a set like `{2, {3}, 4, {{5,6}}}` is heterogeneous, since it contains 3 types of objects - numbers, sets of numbers, sets of sets of numbers. However, we could informally say that its base type of objects are integers. This goes to show that once constructed, a set becomes a mathematical object in its own right, distinct from other mathematical objects. Most importantly, an object is distinct from a set containing that object as its only element, `1 ≠ {1}`; however, it feels strangle writing `0 ≠ {}` since in pretty much any encoding of natural numbers as sets, zero is indeed represented by an empty set.

# Notion of a set

Actually a description. The notion of a sets is too elusive to be captured in a definition, so sets are championed by an éminence grise who immediately plays the "The power of intuition compels you! The power of intuition compels you! …" card, threatening to flip any objection against the objector and his poor intuition.

A set is either a collection of elements or nothing at all; just an arbitrary demarcation in Maybe spacetime that cannot be identified. So you never know if it's there or you've been pointing at the void filled with emptiness while rambling about the empty set (oh fish, oh fish, oh fish. 'twas such an elusive fish).

But where have all the elements gone? Well, nowhere; they're still there if you decide so.

# Set Definition

Initially, a naive (non-axiomatic) set theory was developed that treated sets as collections of any objects, posing no restriction as to what can constitute a set.

We also start here by taking the concept of a set for granted, as a *mathematical primitive*, allowing anything and everything to form a set and permitting any operation on sets. Later, we'll examine why this approach yields inconsistency. Set is usually introduced as a description similar to this one:

> A set S is a collection of distinct objects, each of which is called an element (or member) of S.

**The axiom of comprehension** states that given any property, there is a set of all objects with that property. This axioms is what allows anything to constitute a set.

The axiom of comprehension may be curbed by introducing **the axiom of well-definedness** that states that a set is a *well-defined* collection of objects that share a common property. Being **well-defined** means that there is no ambiguity as to which elements belong to the set, however, this term alone cannot guarantee the consistency and clarity of what objects are exactly allowed to constitute a set.

Whether sets are considered in an axiomatic or naive system, they lack precise definition and must be introduced without a proof, either as a *mathematical primitive* or with an explicit *axiom*.

However, since sets are so ubiquitous and unavoidable, with many mathematical objects resembling a set of some kind, we must accept them based on intuition alone and take them for granted as a primitive object.

Once defined, a set is considered a mathematical object in its own right, different from any other object and distinct from any of its members. A set containing a single element is not the same as that element (even if that element is also a set): `x ≠ {x}`.

The elements of a set can be any objects, even other sets. There is no restriction on their size, and the order in which the elements are listed is inconsequential. Repetition of the same object as a set element is ignored - all elements are unique (diistinct).
