# Univalence axiom

https://ncatlab.org/nlab/show/univalence+axiom

In intensional type theory, identity types behave like *path space objects*; this viewpoint is called *homotopy type theory*. This further induces the notion of *homotopy fibers*, hence of *homotopy equivalences* between types.

On the other hand, if type theory contains a universe `Type`, so that types can be considered as points of `Type`, then between two types we also have an identity type `PathsType(X,Y)`. The **univalence axiom** says that these two notions of "sameness" for types are the same.

*Extensionality principles* like *function extensionality*, *propositional extensionality*, and *univalence* ("typal extensionality") are naturally regarded as a stronger form of *identity of indiscernibles*. 

In particular, the *consistency of univalence* means that in Martin-Löf type theory without univalence, one cannot define any predicate that provably distinguishes isomorphic types; thus isomorphic types are "externally indiscernible", and univalence incarnates that principle internally by making them identical.

The name *univalence* (due to Voevodsky) comes from the following reasoning. A fibration or bundle `p : E → B` of some sort is commonly said to be universal if every other bundle of the same sort is a *pullback* of `p` in a unique way (up to homotopy). Less commonly, a bundle is said to be versal if every other bundle is a pullback of it in some way, not necessarily unique. By contrast, a bundle is said to be univalent if every other bundle is a pullback of it in at most one way (up to homotopy). In the language of _(∞,1)-category theory_, a univalent bundle is an object classifier.

The univalence axiom does not literally say that anything is univalent in this sense. However, it is equivalent to saying that the canonical fibration over `Type` is univalent: every fibration with small fibers is an essentially unique pullback of this one (while those with large fibers are not, they are pullbacks of the next higher `Type1`).

For a description of this equivalence, see section 4.8 of the HoTT Book (syntactically) and Gepner-Kock (semantically).
