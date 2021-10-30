# Duality

Every category `𝒞` has the opposite category, a co-category `𝒞ᵒᵖ`, obtained by reversing all the arrows in `𝒞`. They are each other's duals. Whenever you define a category you get its opposite category for free.

The opposite category automatically satisfies all the requirements of a category, as long as we simultaneously redefine composition: 
if the original morphisms 
`f : a -> b` and `g : b -> c` composed to `h = g ∘ f : a -> c`, 
then the reversed morphisms 
`fᵒᵖ : b -> a` and `gᵒᵖ : c -> b` compose to `hᵒᵖ = fᵒᵖ ∘ gᵒᵖ : c -> a`, 
and reversing the identity arrows is a no-op.

Many categorical concepts have duals in the opposite category you get for free. For example, an initial object in the category `𝒞` is the terminal object in the category `𝒞ᵒᵖ`.

Duals
- category, `𝒞`, and its opposite category, `𝒞ᵒᵖ` by reversing the arrows
- initial and final object
- monic and epic arrow
- monad and comonad
- (anything and co-anything)



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

## Asymmetry

We have seen two set of dual definitions: The definition of a terminal object can be obtained from the definition of the initial object by reversing the direction of arrows; in a similar way, the definition of the coproduct can be obtained from that of the product.

Yet in the category of sets the initial object is very different from the final object, and coproduct is very different from product. We'll see later that product behaves like multiplication, with the terminal object playing the role of one; whereas coproduct behaves more like the sum, with the initial object playing the role of zero.

In particular, for finite sets, the size of the product is the product of the sizes of individual sets, and the size of the coproduct is the sum of the sizes.

> This shows that the category of sets is not symmetric with respect to the inversion of arrows.
