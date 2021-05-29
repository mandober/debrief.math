# Natural Transformation

`µ = { µₐ : F a → G a | a ∈ 𝒞 }`

A natural transformation, `µ`, between two functors, `F,G : C → D`, is a *family of morphisms indexed by objects* in `𝒞`, such that for all morphisms `f : a → b` the following diagram commutes:

```
      µₐ
Fa --------> Ga
|            |
|Ff          |Gf
|            |
↓            ↓
Fb --------> Gb
      µᵦ
```

This diagram is called the **naturality square**. We write `µ : F ⇒ G`, and
call `µₐ` the component of `µ` at `a`.
