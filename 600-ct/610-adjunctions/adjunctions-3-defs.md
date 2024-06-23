# Adjunctions

```
╭──→ ● ══════════ R ═══════❯❯❯ ● ←──╮
Iᴄ   C                         D    Iᴅ
╰─── ● ❮❮❮═══════ L ══════════ ● ───╯


╭──→ ● ┈┈┈┈┈┈┈┈┈┈ R ┈┈┈┈┈┈┈┈┈→ ● ←──╮
Iᴄ   C                         D    Iᴅ
╰─── ● ←┈┈┈┈┈┈┈┈┈ L ┈┈┈┈┈┈┈┈┈┈ ● ───╯
```


## Lifting isomorphism from morphisms to functors

Two categories `C` and `D` are equal if there exists a functor `R : C -> D`, which has an inverse functor `L : D -> C`, such that
- `R ∘ L = Iᴅ` and
- `L ∘ R = Iᴄ`

This extends the isomorphism between objects to an isomorphism between categories, except here a pair of functors play the role of a pair of morphisms that are each other's inverses, `L = R⁻¹` and `R = L⁻¹`. Both functors are then necessarily *full and faithful*.

```
             R
     ╌╌╌╌╌╌╌╌╌╌╌╌╌╌→
 ℂ ◉                ◉ 𝔻
Iᴄ ↻ ←┈┈┈┈┈┈┈┈┈┈┈┈┈ ↺ Iᴅ
             L
```

Just like with morphisms (and functions), *inverses are unique*: the inverse of a functor `F` is a unique functor `F⁻¹`. And, if `F : C -> D`, then 
- `F ∘ F⁻¹ = Iᴅ`
- `F⁻¹ ∘ F = Iᴄ`




### Sameness

- `F ∘ G = Iᴅ` and `G ∘ F = Iᴄ` isomorphism (equalities)
- `F ∘ G ≅ Iᴅ` and `G ∘ F ≅ Iᴄ` equivalence (natural isomorphisms)
- `F ∘ G → Iᴅ` and `G ∘ F ← Iᴄ` adjunctions (natural transformations)


## Adjunction

An **adjunction** is a pair of functors `F : C → D` and `G : D → C` such that there is a *natural isomorphism* (natural bijection)

`Homᴅ(F c, d) ≅ Homᴄ(c, G d)`

`F` is said to be *left adjoint* to `G`, and 
`G` to said to be *right adjoint* to `F`.

Natural bijecion means there is a natural isomorphism of bifunctors:

`Homᴅ(F -, -) ≅ Homᴄ(-, G -)`



```
↺ ↻ ↷ ↶ ○ ●








     L ∘ η                 ε ∘ L
L ──────────→ L ∘ R ∘ L ──────────→ L
│                                   │
╰───────────────────────────────────╯


     η ∘ R                 R ∘ ε
R ──────────→ R ∘ L ∘ R ──────────→ R
│                                   │
╰───────────────────────────────────╯
```


- - - - - - F - - - - ->

c   . ---------------> . F c
    |                  |
    |                  |
    ↓                  ↓
G d . <--------------- . d


<- - - - - - G - - - - -



# adjunctions

Adjunction is a relationship that two functors may have, intuitively corresponding to a weak form of equivalence between two related categories. Two functors that stand in adjunction are known as adjoint functors, one being the left adjoint to the second, and the other the right adjoint to the first.

By definition, an *adjunction* between categories `C` and `D` is a pair of functors:   
`F : C → D` and `G : D → C`   
such that   
for all objects `X` in `C` and `Y` in `D`,    
a bijection between the respective sets of morphisms:   
`homᴄ(FY, X) ≅ homᴅ(Y, GX)`   
such that this family of bijections is *natural* in `X` and `Y`.

*Naturality* here means that there are *natural isomorphisms* 
between the pair of functors   
`C(F-, X) : D -> Set` and   
`D(-, GX) : D -> Set`    
for a fixed X in C, 
and also the pair of functors 
`C(FY, -) : C -> Set` and   
`D(Y, G-) : C -> Set`    
for a fixed Y in D.

The functor `F` is called a **left adjoint functor** to `G`, 
while `G` is called a **right adjoint functor** to `F`.
