# When is one thing equal to some other thing

`When is one thing equal to some other thing`, by Barry Mazur, 2007

## 1. The awkwardness of equality

We cannot do mathematics for long before grappling, in some way or other, with the notion of equality. The notion of equality is vague because the way in which objects are presented hardly ever tells us (without further commentary) when they are to be considered equal. We even see this, for example, if we try to define real numbers as decimals, and then have to mention aliases (e.g. 1 = 0.999…).

The heart and soul of much mathematics consists of the fact that the "same" object can be presented in different ways. Consider, for example, congruence mod N. How should we think of natural numbers mod 691?
- as ciphers which are members of a new number system (that happens to have similar notation as integers)
- as equivalence classes of integers, where the equivalence relation is congruence mod 691
- as integers but subjected to that equivalence relation
The eventual answer is all three ways, thus having the flexibility to adjust our viewpoint to the needs of the moment, which is the key.

To define a mathematical object of study, we often first implicitly declare how we intend to present the object, thereby delineating a kind of *superobject*, i.e. a species of mathematical objects equipped with presentation modes. Only once this is done do we try to erase the scaffolding of the presentation, to say when two of these superobjects - possibly presented to us in wildly different ways - are to be considered equal. In this oblique way, the objects that we truly want enter the scene only defined as *equivalence classes* of explicitly presented objects. That is, as objects presented in a specific way, but with that specific presentation ignored (in the spirit of "ham and eggs, but hold the ham").

This issue has been with us forever - the general question of *abstraction*, as separating *what we want* from *what we are presented with*. It is neatly packaged in the Greek verb `ἀφαιρεῖν` [aphairein] (take from, take away, cut off, separate, remove, deprive, disarm, do away with) as interpreted by Aristotle to mean "separation". To think about whiteness, we must somehow separate it from "white horse", "white house", "white hose", and all the other white things that it invariably must come along with in order to even experience it.

Considering the congruence relation mod 691, the possibile interpretations of the instance `5 mod 691` are:
- as a symbol, i.e. `5 mod 691` as one symbol
- as a placeholder for any number that has remainder 5 when divided by 691
- as the equivalence class of all integers that are congruent to 5 mod 691
This issue proliferates almost all of mathematics.

Familiarity with a concept will permit finesse, like when we are happy to deal with a fraction `a/b` ambiguously, as an equivalence class of pairs of integers `(a,b)` (with b≠0, and the equivalence relation `(a,b) ∼ (aʹ,bʹ) ⇔ abʹ= aʹb`), or as a particular member of this class.

Few mathematical concepts enter our repertoire in a manner other than ambiguously as a single object and at the same time an equivalence class of objects. This is especially true for the concept of natural number.

*Category theory* offers its own formulation of *equivalence* as opposed to equality; the spirit of category theory allows us to be content to determine a mathematical object *up to canonical isomorphism*.

The categorical viewpoint is, however, more than merely "content" - with the inevitability that any particular mathematical object is given with the contingent scaffolding of the specific way in which it is presented - but has this inevitability built into its vocabulary, using it in elegant ways. CT allows itself the flexibility of viewing any mathematical object "as" a *representation* of the theory in which the object is contained to the proto-theory of modern mathematics that is *set theory*.

The aim of this article is to address a few points about *mathematical objects* and *equality of mathematical objects* following the categorial perspective. These "points" arise by the work of mathematicians as they go about their business, but I haven't found them specifically formulated anywhere. The faintest resamblence may be the Aristotle's discussion of Metaphysics which hits at the perplexity of whether the so-called *mathematicals* (with ostensive roles in the platonic theory of forms) occur uniquely for each mathematical concept, or multiply. It's not clear how questions about these issues can even be raised within the framework of vocabulary that people employ when they talk about the *foundations of mathematics*; for so much of the literature on *philosophy of mathematics* repeats the staples like formal systems, consistency, undecidability, provability, unprovability, and rigor in its various manifestations.
