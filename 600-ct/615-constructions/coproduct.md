# Coproduct

https://bartoszmilewski.com/2015/01/07/products-and-coproducts/


```
    Left          Right
a ───────→ a + b ←─────── b
│            ┆            │
│            ┆h           │
│            ┆            │
│            ↓            │
╰──────────→ c ←──────────╯
f                         g
```



Coproduct is a category of interest to programmers because it repr agebraic sum types, such as enums and disjointed unions (union in C). The coproduct types are "or" types because only one type (out of all the involved types) is needed to construct the overall sum type. In fact, a sum type is a disjunction of types, it declares a set of types but any time at least one is present we can construct a valid value.

A very useful sum type is `Maybe`, as found in Haskell, which encodes nullability and abstracts away the null value; `Maybe` is a bivariant type, it is either `Nothing` (empty) or it holds some value `x`, in which case it is `Just x`. `Either` is similar but it permits for a value (instead of being Nothing) in the failed case, which is used as an error message. So, an `Either` is either `Left err` or `Right val`.

```
A    left  A+B  right   B
🟣←--------🔻--------→🟠
  ⋱         ⁞         ⋰
    ⋱       ⁞h      ⋰
    f ⋱     ⁞     ⋰ g
        ⋱   ⁞   ⋰
          ↘ ↓ ↙
           🔘
            C

f :: A -> C     g :: B -> C     h :: A+B -> C
h = f ∘ left    h = g ∘ right
```
