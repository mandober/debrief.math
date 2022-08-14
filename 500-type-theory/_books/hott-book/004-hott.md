# Homotopy type theory

(Introduction > Homotopy type theory/

Homotopy type theory (HoTT) interprets type theory from a homotopical perspective.

In homotopy type theory, we regard the types as *"spaces"* (as studied in homotopy theory), or as higher groupoids, and the logical constructions (such as the product `A×B`) as homotopy-invariant constructions on these spaces.

In this way, we are able to manipulate spaces directly without first having to develop point-set topology (or any combinatorial replacement for it, such as the theory of simplicial sets).

To briefly explain this perspective, consider first *the basic concept of type theory: the term `a` is of type `A`*, written `a : A`.

This expression is traditionally thought of as akin to: 
"`a` is an element of the set `A`".

However, in homotopy type theory we think of it instead as: 
"`a` is a point of the space `A`".

Similarly, every function `f : A → B` in type theory is regarded as a continuous map from the space `A` to the space `B`.

We should stress that these "spaces" are treated purely homotopically, not topologically. For instance, there is no notion of "open subset" of a type or of "convergence" of a sequence of elements of a type. We only have "homotopical" notions, such as *paths between points* and *homotopies between paths*, which also make sense in other models of homotopy theory (such as simplicial sets).

Thus, it would be more accurate to say that we treat types as *∞-groupoids*; this is a name for the "invariant objects" of homotopy theory which can be presented by topological spaces, simplicial sets, or any other model for homotopy theory.

However, it is convenient to sometimes use topological terms such as "space" and "path", as long as we remember that other topological concepts are not applicable.

It is also tempting to use the phrase "homotopy type" for these objects, suggesting the dual interpretation of "a type (as in type theory) viewed homotopically" and "a space considered from the point of view of homotopy theory". The latter is a bit different from the classical meaning of "homotopy type" as an equivalence class of spaces modulo homotopy equivalence, although it does preserve the meaning of phrases such as "these two spaces have the same homotopy type".

The idea of *interpreting types as structured objects, rather than sets*, has a long pedigree, and is known to clarify various mysterious aspects of type theory. For instance, interpreting types as *sheaves* helps explain the intuitionistic nature of type-theoretic logic, while interpreting them as *partial equivalence relations*, i.e. *domains*, helps explain its computational aspects.

It also implies that we can use type-theoretic reasoning to study the structured objects, leading to the rich field of categorical logic.

The homotopical interpretation fits this same pattern: it clarifies the nature of identity (or equality) in type theory, and allows us to use type-theoretic reasoning in the study of homotopy theory.

The key new idea of the homotopy interpretation 
is that the logical notion of **identity** `a = b` 
of two objects `a, b : A` of the same type `A` 
can be understood as the existence of 
a path `p : a ↝ b` 
from point `a` to point `b` 
in the space `A`.

This also means that 
two functions `f,g : A → B` 
can be identified if they are homotopic 
since a homotopy is just 
a (continuous) *family of paths* 
`pₓ : f (x) ↝ g(x)` in `B`, 
one for each `x : A`.

In type theory, 
for every type `A` 
there is a type `Idᴀ` 
of identifications of two objects of `A`; 
in homotopy type theory, 
this is just the path space `Aᶦ` 
of all continuous maps `I → A` 
from the unit interval. 
In this way, a term `p : Idᴀ(a,b)` 
represents a path `p : a ↝ b` in `A`.

The idea of homotopy type theory arose around 2006 in independent work by Awodey and Warren and Voevodsky, but it was inspired by Hofmann and Streicher's earlier groupoid interpretation.

Indeed, higher-dimensional category theory (particularly the theory of weak ∞-groupoids) is now known to be intimately connected to homotopy theory, as proposed by Grothendieck and now being studied intensely by mathematicians of both sorts.

The original semantic models of Awodey-Warren and Voevodsky use well-known notions and techniques from homotopy theory which are now also in use in higher category theory, such as Quillen model categories and Kan simplicial sets.

In particular, Voevodsky constructed an interpretation of type theory in Kan simplicial sets, and recognized that this interpretation satisfied a further crucial property which he dubbed *univalence*.

This had not previously been considered in type theory (although Church's principle of extensionality for propositions turns out to be a very special case of it, and Hofmann and Streicher had considered another special case under the name *universe extensionality*).

Adding univalence to type theory in the form of a new axiom has far-reaching consequences, many of which are natural, simplifying and compelling.

The univalence axiom also further strengthens the homotopical view of type theory, since it holds in the simplicial model and other related models, while failing under the view of types as sets.


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


## Higher inductive types


## Sets in univalent foundations


## Informal type theory


## Constructivity

One of the most striking differences between classical foundations and type theory is the idea of *proof relevance*, according to which mathematical statements, and even their proofs, become first-class mathematical objects. In type theory, we represent mathematical statements by types, which can be regarded simultaneously as both mathematical constructions and mathematical assertions, a conception also known as *propositions as types*.

Accordingly, we can regard a term `a : A` as both an element of the type `A` (or in homotopy type theory, a point of the space `A`), and at the same time, a proof of the proposition `A`.
