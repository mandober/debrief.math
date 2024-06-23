# CT :: Diagrams :: Morphisms

## Monomorphism

```
        f
  -------------->          m
● --------------> ● --------------> ●
x       g         a                 b
```

m is an monomorphism iff
  ∀ f g ∈ hom(x,a).
    ∃ m ∈ hom(a,b).
      (m ∘ f = m ∘ g) -> f = g


## Epimorphism

```
                         f
        e         -------------->
--------------> ● --------------> ●
a               b        g        x
```

e is an epimorphism iff
  ∀ f g ∈ hom(b,x).
    ∃ e ∈ hom(a,b).
      (f ∘ e = g ∘ e) -> f = g


## Isomorphism

```
a         f          b
● ─────────────────→ ●
║                    ║
║                    ║
║                    ║
║                    ║
║                    ║
║                    ║
● ←───────────────── ●
a         g          b


╭──────╮
│      │
╰──────╯

╭────╮
│    │
╰────╯

╭────╮
↓ 1b │
● ───╯


╭──→ ● ─────────f────────→ ● ←──╮
1    a                     b    1
╰─── ● ←────────g───────── ● ───╯




╭────╮                     ╭────╮
│ 1a ↓                     ↓ 1b │
╰─── ● ←─────────────────→ ● ───╯
     a                     b



╭ ╮ ╰ ╯

╱ ╲ ╳





● ─────────────────→ ●


a ←───────────────── b

        f
  -------------->
● ←--------------- ●
a       g         b
```




In a category `C`, 
two objects `a` and `b` 
with arrows between them
`f ∈ hom(a,b)` and `g ∈ hom(b,a)` 
are isomorphic objects iff
`g ∘ f = 1ᵃ` and `f ∘ g = 1ᵇ` 
then 
`g = f⁻¹`
so, again 
`f⁻¹ ∘ f = 1ᵃ` and `f ∘ f⁻¹ = 1ᵇ`
