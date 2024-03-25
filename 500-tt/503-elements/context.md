# Context


- Context is a list of `term : Type` judgements, `x₁ : A₁, x₂ : A₂, …`
- Context is denoted by `Γ`, `Δ`
- Context may be considered as a list of assumptions the current judgement depends on. hmmm… although it does seem more of a decoration since it shouldn't hide anything that affects the current formula; if a dependence exists it must be made explicit, which is done by expanding the context to list that pair specificaly, e.g. if `Γ` represents a completely "contracted" context (all assumptions are implicit), then we can expand it just enough to show the pair (judgement) od interest: `Γ, x : A`.

```hs
-- the context starts empty:
Γ = {}
-- a judgement is added to the context:
Γ, x₁ : A₁
-- two more judgements are added to the context:
Γ, x₂ : A₂, x₃ : A₃
-- the context now contains 3 judgements:
Γ = x₁ : A₁, x₂ : A₂, x₃ : A₃
-- when the context is shown alone, the
-- 3 judgements it contains remain implicit
Γ
-- we can emphasize a certain judgement by
-- expanding the context partially to show it
Γ, x₁ : A₁

-- There is a (trivial) rule which says that,
-- if the judgement x₁ : A₁ is in the context Γ,
-- then we know that x₁ : A₁ holds in the context Γ
x₁ : A₁ ∈ Γ             Γ ∋ x₁ : A₁
-----------     or    -----------
Γ |- x₁ : A₁            Γ |- x₁ : A₁
```

some important pair `Γ, x : A`.


- `Γ ctx` means that `Γ` is a well-defined context
- Every inference happens in a context, so instead of a lone, "floating" judgment like `t : T`, we write `Γ |- t : T` to mean that the term `t` has the type `T` assuming the context `Γ` (or, in the context gamma).
