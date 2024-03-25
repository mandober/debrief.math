# Category Theory :: Fundamentals

Contents
- Introduction to Category Theory
- Fundamentals of Category Theory
- Interpretations of Category Theory
- Category, `𝒞`
  1. Objects, `x ∈ 𝒞` or `x ∈ Ob(𝒞)`
  2. Morphisms or Arrows, `f ∈ Ar(𝒞)`
  3. Identity arrows
     each object `a` in `𝒞` has an identity arrow, `∀a ∈ 𝒞. 1ₐ : a -> a`
  4. Composition of arrows, `∘`:
     if  `f : a -> b` in `𝒞`
     and `g : b -> c` in `𝒞`
     then there *must be* an arrow that is their composition
     `g ∘ f : a -> c` in `𝒞`
     i.e. a categoty is *closed under transitivity of composition*.
    - Considering an arrow `f : a -> b` in `𝒞`, 
      `a` is a source object and `b` is a target object.
      Two arrows compose if the target object of one 
      is the source object of another.
  5. Associativity law of composition: `h ∘ (g ∘ f) = (h ∘ g) ∘ f`
  6. Identity law of composition:
    `f : x -> y` in `𝒞`, there are id arrows `1ˣ : x -> x` and `1ʸ : y -> y`
    such that `1ʸ ∘ f = f = 1ˣ ∘ f`, that is, 
    *the identity arrows are the left and right units of composition*.
