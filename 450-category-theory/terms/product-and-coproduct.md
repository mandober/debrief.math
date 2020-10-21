# Product and Coproducts

Product and coproduct are **duals**. In Category Theory this always happens - one category can be converted to another, its co-category, with a prefix `co-`, just by reversing all the arrows. So, whenever you prove one thing and get another one (co-thing) for free.

## Product
Product corresponds to conjunction and coproduct to disjunction in logic. Similarly to the DeMogan's law that relates conjuction and disjunction, in category theory a corresponding principle relates product and coproduct types.


```
            C
           🔘
          ⋰ ⁞ ⋱
      p ⋰   ⁞   ⋱ q
      ⋰     ⁞m    ⋱
    ⋰       ⁞       ⋱
  ↙   p'    ↓    q'   ↘
🟣←--------🔺--------→🟠
A           C'         B
```

We have objects C' and C, both have a couple of arrows, one to `A` and another to `B`:
p  :: C -> A    q  :: C -> B
p' :: C'-> A    q' :: C'-> B




## Product

Product is a category of interest to programmers because it repr agebraic product types, such as record (struct in C). The product types are "and" types because all types involved are needed to construct the overall product type. A product type, being a conjunction of types, declares a set of types but only when all are present can we construct a valid value.

```
            C
           🔘
          ⋰ ⁞ ⋱
      f ⋰   ⁞   ⋱ g
      ⋰     ⁞h    ⋱
    ⋰       ⁞       ⋱
  ↙  fst    ↓   snd   ↘
🟣←--------🔺--------→🟠
A          A×B          B

f :: C -> A     g :: C -> B     h :: C -> A×B
f = fst ∘ h     g = snd ∘ h
```


## Coproduct

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
