# MLTT :: 4 main judgments

The four main judgement in Martin-Löf type theory are:
1. `Γ ⊢ A Type`      Type formation
2. `Γ ⊢ A ≡ B type`  Type equality
3. `Γ ⊢ a : A`       Term formation
4. `Γ ⊢ a ≡ b : A`   Term equality

All 4 judgements presuppose that `Γ` is a well-formed context, `Γ context`.

(2) also presupposes that `A` and `B` are well-formed types in `Γ`:
- `Γ ⊢ A Type`
- `Γ ⊢ B Type`

(3) also presuppose that `A` is a well-formed type in `Γ`:
- `Γ ⊢ A Type`

(4) also presuppose that `A` is a well-formed type in `Γ`:
- `Γ ⊢ A Type`
- `Γ ⊢ a : A`
- `Γ ⊢ b : A`



In Agda, these judgements usually appear in the signatures. For example, here's the definition of propositional equality defined as an inductive data type:

```agda hs
data _≡_ : {𝓁 : Level} {A : Set 𝓁} (x : A) : A → Set 𝓁 where
  refl : x ≡ x
```

Agda uses the term `Set`, instead of `Type`, to denote type universes. `Set₀` is the base universe where most term live. So the type of those term is usually `Set` (which is the same as `Set₀`). The type `Set₀` itself has the type `Set₁`. Generally, if a function or a data type definition mentions the universe `Set i` anywhere but in the return type, than the return type is usually in universe `Set (i + 1)`. Also, if a definition combines two things that live in different universes `i` and `j` than the return type is usually in the bigger of the two universes, which may be calculated by `i ⊔ j` which computes `max i j`, and so the return type is `Set (i ⊔ j)`.
