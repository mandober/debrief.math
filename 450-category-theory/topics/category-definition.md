# Category :: Definition

A category `𝒞` consists of 3 components:
- a set of objects `Obj(𝒞)`
- a set of arrows  `Arr(𝒞)`
- a set of axioms

Axioms (structural conditions):

1. Identity
All objects must have an identity arrow.

each object A in category C must have an identity arrow, 1ᴀ 

for all objects `A` 
there exists an identity morphism `1ᴀ` such that for all morphisms `f : A → B` we have `f ◦ 1ᴀ = f = 1ʙ ◦ f`

∀X. X ∈ Obj(𝒞). f ◦ 1ᴀ = f = 1ʙ ◦ f

* Morphisms are closed under composition: if there is a morphism `f : A → B` and a morphism `g : B → C`, then there must be a morphism obtained by the composition, `g ◦ f : A → C`.

* Composition is associative: `f ◦ (g ◦ h) = (f ◦ g) ◦ h`



Common notation
- generic category    : 𝒞 𝒟
- concrete category   : 𝗦𝗲𝘁 𝗚𝗿𝗽 𝗛𝗮𝘀𝗸
- generic objects     : A B C
- generic arrows      : f g h
- generic functors    : F G
- an arrow from A to B: `Arr(A, B)`, `F : A -> B`
- identity arrow (object-subscripted): `idᴀ` `1ᴀ` `idꜰ₍ᵦ₎` `idꜰᴀ`
- all object in a category C: `∀X. X ∈ Obj(C)`
- all arrows in a category C: `∀f. f ∈ Arr(C)`
- Functor `F`, `𝓕`, `G`
- `f ◦ 1ᴀ = f`
- `f ◦ 1ᴀ = f = 1ʙ ◦ f`
- ◦ = 






## Definition 2

A category `C` is given by 
- a collection `C₀` of objects
- a collection `C₁` of arrows
which have the following structure:
- each arrow has an object as source and target, `f: A -> B`
- identity: each object has identity arrow, `1ₐ` or `Iₐ`
- transitivity axiom: if there is an arrow `a -> b` and an arrow `b -> c` then there must be an arrow `a -> c`


## Definition 3

A category C is an algebraic structure consisting of a class of objects (denoted by A, B, C, etc.), and a class of arrows (denoted by f, g, h, etc.), together with three total and one partial operation.

The first two total operations are called *target* and *source*; both assign an object to an arrow. We write `f : A <- B` (pronounced "f has type A from B") to indicate that the target of the arrow `f` is `A` and the source is `B`.

The third total operation takes an object `A` to an arrow `idᴀ : A <- A`, called the *identity* arrow on `A`.

The partial operation is called *composition* and takes two arrows to another one. The composition `f ∘ g` (read "f after g") is defined iff `f : A <- B` and `g : B <- C` for some objects A, B, C, in which case `f ∘ g : A <- C`. In other words, if the source of `f` is the target of `g`, then `f ∘ g` is an arrow whose target is the target of `f` and whose source is the source of `g`.

Composition is required to be associative and to have identity arrows as units:

∀fgh. (f: A <- B) ∧ (g: B <- C) ∧ (h: C <- D) .    
f ∘ (g ∘ h) = (f ∘ g) ∘ h = f ∘ g ∘ h

∀f. f: A <- B .     
idᴀ ∘ f = f = f ∘ idʙ


## Definition 4

A category `𝒞` consists of:
- objects, ∀A ∈ `Obj(𝒞)`
- arrows,  ∀f ∈ `Arr(𝒞)`

An arrow `f` from an object `A` to `B` is denoted `f : A -> B` and
- the source object (domain)  : `dom(f) = A`
- the target object (codomain): `cod(f) = B`



* For each object 𝑎, an identity arrow id𝑎 ∶ 𝑎 → 𝑎
* For each pair of arrows 𝑓 ∶ 𝑎 → 𝑏 and 𝑔 ∶ 𝑏 → 𝑐, a composite arrow 𝑔 ∘ 𝑓 ∶ 𝑎 → 𝑐. That is, for each pair of arrows 𝑓 and 𝑔 with cod(𝑓) = dom(𝑔), a composite arrow 𝑔 ∘ 𝑓 ∶ dom(𝑓) → cod(𝑔)
