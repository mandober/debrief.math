# Dual categories

Every category has opposite category, which is usually referred to with a "co" prefix, e.g. product and coproduct, monad and comonad


For every category `C`, there is an opposite category `D`, obtained by reversing all the arrows in `C`. Every category has the opposite category; these two categories are duals.

In Category Theory this always happens - one category can be converted to another, its *co-category* (prefixed with the `co-`) just by reversing all the arrows. So, whenever you prove one thing and get another, co-prove, for free.


```
Category            co-Category
a                             a
●                             ●
| ⋱                         ↗ ↑
|   ⋱ h                 h'⋰   |
|f    ⋱                 ⋰     |f'
↓       ↘             ⋰       |
● ------→ ●         ● ------→ ●
b    g    c         c   g'    b

f :: a -> b         f' :: b -> a
g :: b -> c         g' :: c -> b
h :: a -> c         h' :: c -> a
h = g ∘ f           h' = f' ∘ g'
( h )' = (g ∘ f)' = h' = f' ∘ g'

```
