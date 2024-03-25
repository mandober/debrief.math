# Category Theory :: Notation

- an arbitrary object in a category: `∀c ∈ Ob(C)`
  - class of objects in category: `Ob(C)`
  - ∀ a b c ∈ Ob(C)

- class of arrows in category:` Ar(C)`
  - an arrow in ℂ, f : a -> b ∈ Ar(C)
  - ∀ f : a -> b ∈ Ar(C)
  - ∀ f : a -> b ∈ hom(a,b)
  - ∀ f ∈ Ar(C)
  - `hom(a,b)` a set of all morphisms between objects a and b in a category
  - homset in ℂ, `hom(a,b)` or `homᶜ(a,b)`
  - homset of arrows between two objects: `hom(a,b)`
  - `homᶜ(a,b)`   Set of morphisms between a and b in category C
  - `hom(a,b)`    Set of morphisms between a and b
  - identity arrow
    - `1ᵃ` or `1ₐ` or `idₐ`
    - ∀ a. (∃ 1ᵃ : a → a) ∈ hom(a,a)
  - morphism composition, `f ◦ g`
  - monomorphism (hook arrow), `f : a ↪ b`
  - epimorphism, `f : a ->> b`
  - isomorphism (≅), `a ≅ b`
    - natural isomorphism (≃), `a ≃ b`
    - there exists an isomorphism `f` between `a` and `b`, `a ≃ᶠ b` or a ≃f b
    - there exists an isomorphism between `a` and `b`, `a ≃ b` or a ∼= b

- generic categories
  - an arbitrary category: C, `ℂ`, 𝒞, D, 𝔻, 𝒟, E, 𝔼
  - a category opposite to category ℂ: `ℂᴼᴾ`
  - Kleisli category, `ℂᴹ` in relation to a cat `ℂ`
    - Kleisli category,    𝒞ᴹ, 𝒞 ᴍ, 𝒞ᴹ, 𝕂
    - Co-Kleisli category, 𝒞 ᴍᴼᴾ, 𝕂ᴼᴾ
  - Functor category, `[C; D]`

- disrete categories
  - 0-object category, `𝟘`, no obj, no arr
  - 1-object category, `𝟙`, 1 obj, 1 id arr
  - 2-object category, `𝟚`, 2 objs, 2 id arrows

- named categories
  - `Set` category of sets: sets as obj, functions sa arrows
    - `Setᴼᴾ` category of sets but with all arrows reversed
  - `Rel` category of relations: sets as obj, relations as arrows
  - `Cat` category of categories (2-category): cats as obj, functors as arrows
    - `Catᴼᴾ` category of categories (2-category): reversed arrows
  - `Hask` category of Haskell types: types as obj, functions as arrows
  - `Proof`category of proofs: propositions as obj, entailments as arrows

- functors: F, G, T
  - functor, `F : C -> D` or double arrow `F : C => D`
  - identity functor, `I`, on cat C: `Iᴄ`, `Iᴄ : C → C`
  - endofunctor, F : C -> C
  - functor composition (circle dot), `F ◦ G`
  - constant functor, `Δ`, identified by the obj `a`, `Δₐ`
  - hom-functors
    - Covariant hom-functor, `Homᶜ(a,−)`
    - Contravariant hom-functor, `Homᶜ(−,a)`
  - Functor category, `[C; D]`

- natural transformation: α, β, ϵ, η, δ, μ
  - NT (arrow with a dot above) `α : F ⇨̇ G` or `α : F ⇴ G` or `α : F => G`
  - component of a NT `α` at object `a`: `αₐ`
  - Vertical composition of NTs (circle), `α ◦ β`, β ∘ α
  - Horizontal composition of NTs (star), `α ★ β`
  - Identity NT, `1 : F ⟼ F`

- constructions
  - Sum, `a ⊕ b`
  - Product, `a × b`
  - Exponential, `bᵃ`
  - Currying, `curry(f)`
  - initial object, `0`
  - terminal object `1`, in Set is a singleton
    - global element, x : 1 -> x
    - fn application as composition: f: a → b, x: 1 → x (x ∈ a), f ∘ x = fx

- codomain, `cod f`
- domain, `dom f`
- cardinality of a Set A, `|A|`
- Image of the function f, `Im f`

- adjunction, `L ⊣ R`
  The functor `L` is called the *left adjoint* to the functor `R`, while the functor `R` is the *right adjoint* to `L`.


- monad, `(M, µ, η)`
- equalizer, `eq (f, g)`

- Right whiskering, `Hα`
- Left whiskering, `αH`
- finite dimensional Hilbert space, `Hn`

- Cone, `cone(c, fᶜ)`
- Cocone, `cocone(c, fᶜ)`
- Category of co-cones from F, `F # ∆`
- Category of cones to F, `∆ # F`
