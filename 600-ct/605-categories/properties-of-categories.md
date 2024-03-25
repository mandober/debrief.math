# Properties of categories

Properties of categories
- object
- arrow
- initial object (coterminal, universal)
- terminal object (final)
- zero (null) object (initial = terminal) (pointed category has zero object)
- strict initial object (for which every morphism into it is an isomorphism)
- product construction
- coproduct construction
- subcategory of
- supercategory of
- dual of
- opposite category
- hom-functors
- endofunctors


`Set` (category of topological sets)
- objects: sets
- arrows: total functions on sets
- initial: ∅
- terminal: singleton set, {∙}
- product: given by Cartesian product
- coproduct: given by disjoint union
- epimorphisms: surjective maps
- monomorphisms: injective maps
- isomorphisms: bijective maps
- Set is complete and co-complete.
- product: Cartesian product of sets
- coproduct: disjoint union
- prototype of: a concrete category; other categories are concrete if they are "built on" Set in some well-defined way.
- Every two-element set serves as a subobject classifier in Set.
- the power object of set A is given by its power set
- the exponential object of sets A and B is given by the set of all functions from A to B
- Set is a *topos*, and *cartesian closed* and *exact* (in the sense of Barr)
- Set is not abelian, additive nor preadditive
- Every non-empty set is an *injective object* in Set
- Every set is a *projective object* in Set (assuming the axiom of choice)
- The *finitely presentable objects* in Set are the finite sets
- Since every set is a direct limit of its finite subsets, the category Set is a *locally finitely presentable category*
- contravariant functors, `F: C -> Set`. If `A ∈ Ob(C)`, then functor `F` maps `X` ⟼ `HomC(X,A)` (set of arr in C from X to A) is an example of such functor.
- If C is a small category (objects forms a set not a class), contravariant functors `C -> Set`, together with NTs as morphisms, form a new category, a *functor category* known as the *category of presheaves* on C.


`Rel`
- objects: sets
- arrows: binary relations
- initial: ∅
- terminal: ∅
- zero: ∅
- product: given by disjoint union
- coproduct: given by disjoint union
- (wide) subcategory of: Set
- arrows in `Relᵒᵖ`: converse binary relations
- Rel contains its opposite so it is self-dual
- involution represented by taking the converse relation provides the *dagger* to make Rel a *dagger category*
- Rel has 2 functors into itself given by the *hom-functor*: a binary relation `R ⊆ A×B` and its transpose `Rᵀ ⊆ B×A` may be composed as `R Rᵀ` or `Rᵀ R`. The first composition results in homogeneous relation on A and second on B. Since images of these hom-functors are in Rel itself, in this case `hom` is an internal hom functor. With its internal hom functor, Rel is a *closed category*, and furthermore a *dagger compact category*.
- `Rel` can be obtained from `Set` as the Kleisli category for the monad whose functor corresponds to power set, interpreted as a covariant functor.
- `Rel` is a *monoidal category* if one defines the monoidal product by the disjoint union of sets.
- `Rel` was the prototype for the algebraic structure called an *allegory*. Starting with a regular category and a functor `F: A → B`, properties of the induced functor `Rel(A,B) → Rel(FA, FB)` include preservation of composition, conversion, and intersection. Such properties are then used to provide axioms for an allegory.
- Rydeheard and Burstall consider a cat `Setᵣₑₗ` with *homogeneous binary relations as objects*. For example, `A` is a set and `R ⊆ A×A` is a binary relation on `A`. *Morphisms* of this category are *functions between sets that preserve relations*: if `S ⊆ B×B` is another relation, and `f: A → B` is a function such that `xRy ⟹ (f x)S(f y)`, then `f` is a morphism in this category. The same idea is advanced by Adamek, Herrlich and Strecker, where they designate the objects in `Rel` as `(A, R)` and `(B, S)`, i.e. a set and relation.

`Grp`
- objects: groups
- arrows: group homomorphisms


`Top`
- objects: topological spaces
- arrows: continuous maps
- initial: the empty space is the unique initial object in Top
- terminal: every one-point space

category
- objects: 
- arrows: 
- initial: 
- terminal: 
- zero:
- strict: 
