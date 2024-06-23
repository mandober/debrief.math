# Homotopy type theory

HoTT Book > Introduction > Homotopy type theory

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
