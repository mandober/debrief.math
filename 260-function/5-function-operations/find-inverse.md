# Functions :: Operations :: Inverse

Given a function, find its inverse.

## Finding an inverse

To find the inverse of function `f(x) = y`
1. swap `x` and `y` in function definition, `f⁻¹(y) = x`
2. solve for `y`, i.e. isolate `y` on one side

For example,

```js
f(x) = y
f⁻¹(y) = x

y = 1 / (1 - x)   // function f
x = 1 / (1 - y)   // swap input (x) and output (y)
1/x = 1 - y
1/x - 1 = - y
y = -(1/x - 1)
y = 1 - 1/x

         1
f(x) = -----   // function f
       1 - x

         x - 1
f⁻¹(x) = ------  // inverse function of function f
           x
```



## Inverse

Not all functions have an inverse. More precisely, not all functions have an inverse that is a function, as the inverse may degrade into a relation.
- Bijective functions always have an inverse.
- Injective functions do not have an inverse.
- Surjective functions do not have an inverse.

Injective function is one to one mapping but it doesn't cover the whole codomain, which means its inverse function would be undefined for some elements.


### Bijections

A bijective function `f : A → B` always has an inverse function `f⁻¹ : B → A`.
- `f ∘ f⁻¹ = 1ʙ`
- f ∘ f⁻¹ : B → (A → B)
- (f ∘ f⁻¹)(x) = f(f⁻¹(b)) = f(a) = b
- `f⁻¹ ∘ f = 1ᴀ`
- f⁻¹ ∘ f : A → (B → A)
- (f⁻¹ ∘ f)(x) = f⁻¹(f(a)) = f⁻¹(b) = a


Given two functions, `f : A → B` and `g : B → A`,   
`g : B → A` is inverse of `f : A → B` iff:
- g ∘ f = 1ᴀ  and
- f ∘ g = 1ʙ

```
A -------ᶠ------→ B -------ᵍ------→ A
|                 |                 |
1ᴀ                1ʙ                1ᴀ
|                 |                 |
A -------ᶠ------→ B -------ᵍ------→ A
```


```
   A         ᶠ        B
a₀ ● ←──────────────→ ● b₀
a₁ ● ←──────────────→ ● b₁
a₂ ● ←──────────────→ ● b₂
a₃ ● ←──────────────→ ● b₃
a₄ ● ←──────────────→ ● b₄
             ᵍ
```
