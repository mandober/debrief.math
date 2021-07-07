# Morphism

A category consists of a set of objects and a set of arrows (along with the axioms). Morphisms or arrows connect objects, they are mappings between the objects in a category, connecting them in a directional way. Morphisms are the primary focus of category theory because they relate objects and from these relations we can infer many things about a category.

Morphisms
- the set of arrows in a category `𝒞` is denoted by `Arr(𝒞)`
- an arrow `f` going from object `A` to `B` is denoted by `f : A → B`
- an arrow `f : A → B` can also be denoted by `f : Arr(A,B)`
- that arrow `f` belongs to a category `𝒞` is denoted by `f ∈ Arr(𝒞)`
- identity arrow on object `A` is denoted by `1ᴀ : A → B` or `idᴀ : Arr(A,A)`

Arrow symbols
- monomorphism (injective homomorphism) `↪`, $$\hookrightarrow$$, `↣`
- epimorphism (surjective homomorphism) `↠`, $$\twoheadrightarrow$$
- isomorphism (bijective homomorphism) `≅` or `⥲`, `⤐`



## Non-identity morphism

In a category `𝒞`, if there is an arrow `f : a → b`, then we say that `a` is the *source or domain* object, and `b` is the *target or destination or codomain* object of the arrow `f`. This can be denoted by `src (f) = dom(f) = a`, `tgt(f) = dest(f) = cod(f) = b`.

In many categories arrows are functions, but not always. In `𝗥𝗲𝗹` category, objects are sets and arrows are relations between sets; e.g. `<=` is a morphism in a preorder category. In `𝗩𝗲𝗰𝘁`, objects are vector spaces and arrows are linear transformations. In `𝗚𝗿𝗽`, objects are groups, while the arrows are group homomorphisms.

Arrows themselves are also mappable - functors are a kind of higher-order arrows that map between morphisms.


## Identity morphism

Each object `A` in a category `𝒞` must have an **identity morphism** that maps an object back to itself, `idᴀ : A -> A`. When understood as operations or processes, then an identity arrow signifies a "do nothing" process.

Identity arrows are denoted by `id` or `1` and may be subscripted with the object whose identity they represent, e.g. `idꜰₐ`, `1ᴀ` and similar.

An identity arrow, on an object `A`, `idᴀ : A → A`, is not the same morphism as possible other arrows `A ⟼ A`. There could be many morphisms `A ⟼ A`, but only one of them is the identity of `A`. Just because two arrows have the same source and target object, doesn't mean they are the same. For example, there are a lot of arrows `ℕ ⟼ ℕ` (succ, factorial, square, etc.), but they are all distints from each other and from the identity arrow of `ℕ`.

[FAQ] However, in general, i.e. without a view into an object's internals, how are we to distinguish the `id : A -> A` from other arrows `A ⟼ A`?
