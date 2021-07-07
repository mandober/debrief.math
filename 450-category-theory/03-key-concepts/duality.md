# Duality

Duals
* Duals are a standard occurance in category theory. Every category has the opposite category; they are each other's duals.
* For every category `C`, there is an opposite category, i.e. a co-category, `Cᵒᵖ`, obtained by reversing all the arrows in `C`.
* Whenever you define a category, `C`, you get its opposite category, `Cᵒᵖ`, for free.
* Initial object in category `C` is the terminal object in category `Cᵒᵖ`.




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
