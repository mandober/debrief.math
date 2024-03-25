# Category theory :: Definitions :: Functors

- A functor is mapping between categories.
- A functor is mapping between a source category to a target category.
- A functor is mapping between a source and targer category that preserves identity arrows and composition of arrows from the source category in the target category.
- A functor `F` maps a source category `C` to a target category `D`, `F: C -> D`

A functor `F : C -> D` maps:
- *all objects* in `C` to objects in `D`
- *all arrows* in `C` to arrows in `D`
in such a way that the identity arrows and composition of arrows in C is preserved in D.
- *all identity arrows* in `C` to identity arrows in `D`
- *preserves the composition of arrows* from `C` in `D`

However, a functor, similarly to a surjective function, may collapse things; a *constant functor* maps all objects in C to the same object in D, say object `d ∈ D`, and thus all arrows from C are mapped to the `d`'s identity arrow, `1ᵈ`, including the identity arrows of all objects in C. This also means, that the composite arrows from C are mapped into the `1ᵈ`, however, this still preserves the identity arrows of source objects, and the composition of arrows from the source category C in category D.

A constant functor `Δᵗ` maps a source cat C to a target cat D by mapping:
- all objects in C to the same object, `t` in D
- all identity arrrows of objects in C to the identity arrow of t, `1ᵗ`
- all arrrows in C to the identity arrow of t, `1ᵗ`
- all compositions of arrrows in C to the identity arrow of t, `1ᵗ`

```hs
-- The functor F = Δᵗ maps:

-- all objs in C to the same obj (t) in D
a,e,r ∈ Ob(C) ⟼ t ∈ Ob(D)
            a ⟼ t = Δ a
            e ⟼ t = Δ e
            r ⟼ t = Δ r

-- all id arrrows of obj in C to the id arrow of t
1ₐ ⟼ 1ꜰₐ = Δ 1ₐ = 1ᵗ
1ₑ ⟼ 1ꜰₑ = Δ 1ₑ = 1ᵗ
1ᵣ ⟼ 1ꜰᵣ = Δ 1ᵣ = 1ᵗ

-- all arrrows in C to the id arrow of t
f,g ∈ Ar(C)
f: a -> e ⟼ Δ f = Δ (a -> e) = Δ (Δ a -> Δ e) = Δ (t -> t) = 1ᵗ
g: e -> r ⟼ Δ g = Δ (e -> r) = Δ (Δ e -> Δ r) = Δ (t -> t) = 1ᵗ

-- composition of arrrows in C to the id arrow of t
g ∘ f ∈ Ar(C). g ∘ f : a -> r
(g ∘ f : a -> r) ⟼ Δ (g ∘ f) = Δ g ∘ Δ f = 1ᵗ ∘ 1ᵗ = 1ᵗ
```




meaning that the source and target object that anchor an arrow in C may be mapped to the same object in D, thus collapsing the arrow in the source category to an indentiy arrow in the target category.


however, the composition of arrows in C may collapse into a single arrow in D.


1. A functor `F : C -> D` maps all objects in a source category C to objects in a target category D, `∀a ∈ Ob(C). a ⟼ F a`.

2. A functor maps all arrows in a source category C to arrows in a target category D, `∀f:a→b ∈ Ar(C). f ⟼ F f`.

3. A functor preserves identity arrows in C by mapping them to identity arrows in D such that 1ₐ ⟼ `1ꜰₐ = F 1ₐ`.

4. A functor preserve the composition of arrows `g ∘ f` in C by mapping it to the composition of arrows in D, such that g ∘ f ⟼ `F (g ∘ f) = F g ∘ F f`.


```
F a     F f       F b
○ --------------> ●
│                 │
│                 │
│                 │
│                 │
○ --------------> ●
a        f        b
```

A functor is a structure-preserving mapping between categories.

A functor `F : C -> D` maps objects of category `C` to objects of category `D`, and morphisms of `C` to morphisms of `D`, in such a way that source objects in `C` are mapped to sources in `D`, and target objects are mapped to targets, such that the identity morphisms and composition is preserved.


That is, for each arrow `f : a -> b` in `C` (so `a,b,f ∈ C`),    

a functior `F : C -> D` will map:

- each source object `a` in `C` to a source object `F a` in `D`    
  `a` ⟼ `F a`
- each target object `b` in `C` to a target object `F b` in `D`    
  `b` ⟼ `F b`
- each arrow `f` in `C` to an arrow `F f : F a -> F b` in `D`      
  `f` ⟼ `F f`

such that    

1. Identity arrows are preserved, `F 1ᵃ = 1ꜰₐ`

For each object `a` in `C`, `F` maps each the arrow `1ᵃ` to the id arrow `F 1ᵃ`. That is `F` maps `a ⟼ F a` and `1ᵃ ⟼ F 1ᵃ`, such that:

`F 1ᵃ = 1ꜰₐ`

2. Composition of arrows is preserved

For each two arrows `f : a -> b` and `g : b -> c` in `C`,   
`F` will map objects to objects:    
  `a ⟼ F a`   
  `b ⟼ F b`   
  `c ⟼ F c`   

and arrows to arrows:    
  `f ⟼ F f`    
  `g ⟼ F g`    
  `g ∘ f ⟼ F (g ∘ f)`    

such that:

  `F (g ∘ f) = F g ∘ F f`

…such that:
1. `F 1ᵃ = 1ꜰₐ`
2. `F (g ∘ f) = F g ∘ F f`
