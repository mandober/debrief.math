# Endofunctor

A functor from a category to itself is called an endofunctor.

*Functors* are mappings between categories. A functor `F` maps a category `ℂ` to a category `𝔻`, `F : ℂ -> 𝔻`. A functor `F` acting on an object `a`, belonging to a category `ℂ`, maps `a` to `F a`, where `F a` is an object in `𝔻`.

```
cat ℂ
cat 𝔻
F : ℂ -> 𝔻

a ⟼ F a
b ⟼ F b
c ⟼ F c
a, b, c ∈ Ob(ℂ)
F a, F b, F c ∈ Ob(𝔻)

f ⟼ F f
g ⟼ F g
g ∘ f ⟼ F (g ∘ f) = F g ∘ F f
f : a -> b ∈ Ar(ℂ)
g : b -> c ∈ Ar(ℂ)
g ∘ f : a -> c ∈ Ar(ℂ)


F f : F a -> F b ∈ Ar(𝔻)
F g : F b -> F c ∈ Ar(𝔻)
F (g ∘ f) : F a -> F c ∈ Ar(𝔻)

1ₐ ⟼ F 1ₐ = 1ꜰₐ
g ∘ f ⟼ F (g ∘ f) = F g ∘ F f
```


*Endofunctors* are mappings between the same category. A functor `F` maps a category `ℂ` back to itself, `F : ℂ -> ℂ`. A functor `F` acting on an object `a`, belonging to  a category `ℂ`, maps `a` to `F a`, i.e. `a ⟼ F a`.
