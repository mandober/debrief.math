# Types of functors

Types of functors
  * special functors
- endofunctor, a functor from a category to itself
- identity functor
- full functor
- faithful functor
- forgetful functor
- constant functor
- power-set functor
- dual-set functor
- monad: endofunctor with some additional structure
  * by variance
- contravariant (functor)
- covariant functor is the full name for any functor
- bifunctor
- profunctor


An **endofunctor** maps a category `𝒞` to itself, `F : 𝒞 → 𝒞`.

An **identity functor** is type of endofunctor: it maps a category 𝒞 to itself, `𝒞 ⟼ 𝒞`, by mapping each object in 𝒞 to itself and each arrow in 𝒞 to itself.    
`Iᴄ : 𝒞 → 𝒞` such that `∀a ∈ Obj(𝒞). a ⟼ a` ⋀ `∀f ∈ Arr(𝒞). f ⟼ f`



A **faithful functor** reflects epis and monos.


**Constant functor** `∆d : 𝒞 → 𝒟` for fixed `d ∈ 𝒟`, `∆d : a ⟼ d, f ⟼ idᴅ`

**Power-set functor** `𝒫 : 𝗦𝗲𝘁 → 𝗦𝗲𝘁` sends subsets to their image under maps. Let `A,B ∈ 𝗦𝗲𝘁`, `f : A → B` and `S ⊂ A`, then: `𝒫A = 𝒫(A)`, `𝒫f : 𝒫(A) → 𝒫(B), S ⟼ f(S)`

Many categories that represent algebras i.e. sets endowed with additional structure (e.g. groups, vector spaces, rings, topological spaces, etc.) there is a **forgetful functor** going back to 𝗦𝗲𝘁, where objects are sent to their carrier sets. There is also a forgetful functor `F : 𝗖𝗮𝘁 → Graph`, sending each category to the graph defined by its objects and arrows.

**Dual-set functor**

```
∗ : Vect → Vect
  : W ⟼ W∗
  : (f : V → W) ⟼ (f∗ : W∗ → V∗)
```

This is an example of a **contravariant functor**, a functor from `Vect` to `Vectᵒᵖ`, the category with reversed arrows and composition rules.
