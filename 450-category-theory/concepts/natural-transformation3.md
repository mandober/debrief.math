# Natural Transformation

`µ = { µₐ : F a → G a | a ∈ 𝒞 }`

A natural transformation, `µ`, between two functors, `F, G : C → D`, is a *family of morphisms indexed by objects* in `𝒞`, such that for all morphisms in `f : a → b` the following diagram, called the **naturality square**, commutes

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

We write `µ : F ⇒ G`, and call `µₐ` the component of `µ` at `a`.


## Natural Transformation

NT maps objects (e.g. A) in C to arrows in D (e.g. αₐ : F A -> G A), i.e. the arrow is parameterized by the specific object; and arrows in C (e.g. f : A -> B) to communting diagrams in D (F A, G A, F B, G B).

The naturality condition of some particular arrow (e.g. f in C) is that the diagram in D commutes and that the naturality condition itself holds:
    αᵦ ∘ F f = G f ∘ αₐ


```
            a
           /|\
          / | \
       F /  |  \ G
        /   |f  \
       /    |    \
      ↙     |     ↘
  F a -------αₐ----→ G a
    |       ↓       |
    |     / b \     |
    |  F /     \ G  |
F f |   /       \   | G f
    |  /         \  |
    ↓ /           \ ↓
     ↙-------αᵦ----→↘
  F b              G b
```
