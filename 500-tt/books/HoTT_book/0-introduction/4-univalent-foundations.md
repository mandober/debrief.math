# Univalent foundations

HoTT Book > Introduction > Univalent foundations

## Univalent foundations

The basic idea of the univalence axiom can be explained as follows.

In type theory, one can have a universe type, `𝓤`, the terms of which are themselves types, `A : 𝓤`, etc. Those types that are terms of 𝓤 are commonly called small types. Like any type, 𝓤 has an identity type `Id𝓤`, which expresses the identity relation `A = B` between small types.

Thinking of types as spaces, 𝓤 is a space, the points of which are spaces; to understand its identity type, we must ask, what is the path `p : A ↝ B` between spaces in `𝓤`? The univalence axiom says that such paths correspond to homotopy equivalences `A ≃ B`.

A bit more precisely, given any small types `A` and `B`, in addition to the primitive type `Id𝓤 (A,B)` of identifications of `A` with `B`, there is the defined type `Equiv(A,B)` of equivalences from `A` to `B`.

Since the identity map on any object is an equivalence, there is a canonical map, `Id𝓤(A,B) → Equiv(A,B)`.

The univalence axiom states that this map is itself an *equivalence*.

## Univalence axiom

`(A = B) ≃ (A ≃ B)`

>that is, identity is equivalent to equivalence.

In particular, one may say that "equivalent types are identical". However, this phrase is somewhat misleading, since it may sound like a sort of "skeletality" condition which collapses the notion of equivalence to coincide with identity, whereas, in fact, *univalence is about expanding the notion of identity so as to coincide with the notion of equivalence*.

From the homotopical point of view, **univalence implies that spaces of the same homotopy type are connected by a path in the universe** `𝓤`, in accord with the intuition of a classifying space for small spaces.

From the logical point of view, however, it is a radically new idea: it says that **isomorphic things can be identified**!

Of course, mathematicians are used to identifying isomorphic structures in practice, but they generally do so by "abuse of notation", or some other informal device, knowing that the objects involved are not "really" identical.

But in this new foundational scheme, such structures can be formally identified, in the logical sense that every property or construction involving one also applies to the other. Indeed, the identification is now made explicit, and properties and constructions can be systematically transported along it. Moreover, the different ways in which such identifications may be made themselves form a structure that one can take into account.

In summary, for points `A` and `B` of the universe `𝓤` (i.e. small types), 
the univalence axiom identifies the following 3 notions:
- (logical)     an identification `p : A = B` of A and B
- (topological) an path           `p : A ↝ B` from A to B in 𝓤
- (homotopical) an equivalence    `p : A ≃ B` between A and B
