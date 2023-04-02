# Product

## Prologue

Product in CT is somewhat related to products from arithmetic. So, in arithmetic, `6 = 2 * 3`, means that 2 and 3 are factors of 6, each one factorizes it. Similarly, in `6 = x * 3` and with x restricted to ℕ domain, there may be a nat that factorizes 6, or there may not be. If it exists, then it must satisfy the given equation.

If we know that a category `C` has a product object, `x`, then we know there will be two crucial arrows, called *projections*, outbound from `x`, each ending at a different inbound object, `f : x -> a` and `g : x -> b`. The entire category may be a haystack of objects and arrows, but we need to find a needle represented by the pattern involving 3 distinct objects and 2 distinct arrows.

```
         x'
        /↑\           f' : x' -> a
       / | \          g' : x' -> b
      /  |  \
   f'/   |   \ g'       f = m . f'
    /  m |    \         g = m . g'
   /     |     \
  /      |      \     f : x -> a
 ↙   f   |   g   ↘    g : x -> b
a <----- x -----> b
```


## Products

The concepts of product corresponds to Cartesian products.

(Definition) 
A product of objects `a` and `b` 
in a category `𝒞` consists of 
a product object `a × b`, 
and projection morphisms 
`π₁ ∶ a × b → a` and `π₂ ∶ a × b → b`, 
such that, for all objects `c`, 
and morphisms `f ∶ c → a` and `g ∶ c → b`, 
there is a unique morphism 
`⟨f, g⟩ ∶ c → a × b` such that 
`π₁ ∘ ⟨f, g⟩ = f` and `π₂ ∘ ⟨f, g⟩ = g`.

In Hask, tuples are products and 
the two projection functions are `fst` and `snd`:

```hs
data (,) a b = (,) a b

fst :: (a,b) -> a
fst (a,b) = a

snd :: (a,b) -> b
snd (a,b) = b

fork :: (c -> a) -> (c -> b) -> c -> (a, b)
fork f g z = (f z, g z)
```

The `fork` function is required to show that tuples are indeed products.


In Set, the product of two sets `𝐴` and `𝐵` 
consists of the Cartesian product 
`𝐴 × 𝐵 = {(𝑥, 𝑦) ∣ 𝑥 ∈ 𝐴 and 𝑦 ∈ 𝐵}` 
and two projection functions 
`π₁ ∶ 𝐴 × 𝐵 → 𝐴` and `π₂ ∶ 𝐴 × 𝐵 → 𝐵` 
such that, for all `(𝑥, 𝑦) ∈ 𝐴 × 𝐵`, 
`π₁(𝑥, 𝑦) = 𝑥` and `π₂(𝑥, 𝑦) = 𝑦`.

Given a set `𝐶`, and two functions 
`𝑓 ∶ 𝐶 → 𝐴` and `𝑔 ∶ 𝐶 → 𝐵`, 
there is a unique function 
`⟨𝑓, 𝑔⟩ ∶ 𝐶 → 𝐴 × 𝐵` defined by 
`⟨𝑓, 𝑔⟩(𝑧) = (𝑓(𝑧), 𝑔(𝑧))` 
for all `𝑧 ∈ 𝐶`.
