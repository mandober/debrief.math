# Primitive Recursive Function

https://en.wikipedia.org/wiki/Primitive_recursive_function


In computability theory, a **primitive recursive function** is, informally, a function that can be computed by a computer program whose loops are bounded.

*Bounded loops* are those loops that have a known upper bound, i.e. number of iterations through the loop is determined before entering the loop. These include the `for` loops.

Primitive recursive functions form a strict subset of those *general recursive functions* that are also total functions, `PRF ⊂ GRF`.

Most *computable functions* studied in number theory, and, generally in math, are primitive recursive. For example, addition, division, factorial, etc.

To show that a computable function is primitive recursive, it suffices to show that its computational complexity is bounded from above by a primitive recursive function of the input size. It follows that it is difficult to devise a computable function that is not primitive recursive (although some are known).

The set of primitive recursive functions is known as *PR* in computational complexity theory.


## Definition

The primitive recursive functions are *number-theoretic functions*, which are functions on the set of the natural numbers. These are n-ary functions that take `n` arguments, for some natural number `n`.

The basic primitive recursive functions are given by these axioms. These are primitive recursive functions:
- **Constant**
  - nullary constant function `Zero⁰`
  - called: Z, Zero, zero
  - Zero, $$Z^{n}$$
  - `Zero` always returns 0
- **Successor**
  - unary function `Succ¹` which returns the successor of its argument
  - called Succ, S, succ
  - Succ, $$S^{n}$$
- **Projection**
  - ∀n ≥ 1 and ∀i.1≤i≤n, the n-ary function `π` returns its ith arg
  - called Projection function,  P, π, `Projᵏᵢ`
  - Proj, $$\pi^{n}_{i}$$
  - e.g. π 0 (a, b) = a (`fst`), π 1 (a, b) = b (`snd`)

More complex primitive recursive functions can be obtained by applying the operations given by these axioms:
4. Composition, ∘
5. Primitive recursion, ρ


**Composition**: 
Given a `k`-ary primitive recursive function `fᵏ`, 
and `k` many `m`-ary primitive recursive functions `g₁⋯gₖ`, 
the composition of `f` with `g₁⋯gₖ` 
that is, the `m`-ary function 
`h(x₁⋯xₘ) = fᵏ( g₁(x₁⋯xₘ), ⋯, gₖ(x₁⋯xₘ) )` 
is primitive recursive.

That is, in the simplest case, composing 2 unary functions `h¹ = f¹ ∘ g¹`:   
h(x) = f(g(x))

Aruty of f and g
- fᵏ(gᵐ₁ ⋯ gᵐₖ)
- gᵐ(x₁ ⋯ xₘ)

In general:
- f ∘ (g₁⋯gₖ) [x₁⋯xₘ]
- h(x₁⋯xₘ) = fᵏ( g₁(x₁⋯xₘ), ⋯, gₖ(x₁⋯xₘ) )

- (fᵏ ∘ gᵐ) [x₁ x₂]
- f ∘ [g₁ g₂] (x₁ x₂)
- f ∘ g₁ (x₁ x₂)
- f ∘ g (x)

Unary case:
- h(x) = f(g(x))

Binary case:
- h(x, y) = f(g(x, y))


Example:
- Let `f = Succ` (f is a unary PRF)
- Let `g = Succ` (g is a unary PRF)
- So `h(x) = f(g(x)) = Succ(Succ(x))` (which is also a unary PRF); h(3) = 5




**Primitive recursion**: Given f, a k-ary primitive recursive function, and g, a (k+2)-ary primitive recursive function, the (k+1)-ary function h is defined as the primitive recursion of f and g, i.e. the function h is primitive recursive when

1. `hᵏ⁺¹(0 , x₁⋯xₖ) = fᵏ(x₁⋯xₖ)`
2. `hᵏ⁺¹(y', x₁⋯xₖ) = gᵏ⁺²(y, hᵏ⁺¹(y, x₁⋯xₖ), x₁⋯xₖ)`

hᵏ⁺¹ ~ (fᵏ, gᵏ⁺²)


h²(0 , x) = f¹(x)
h²(y', x) = g³(y, h²(y,x), x)

h² ~ (f¹, g³)

h m  n
h 0  n = f n
h m' n = g m (h m n) n

h 0  n = Zero n = 0
h m' n = g m (h m n) n

f = Zero
h = mul
g = add m (mul m n)

mul 0  n = n
mul m' n = add m (mul m n)


Example:
- let f(x) = P¹₁(x) = x
- let g(x,y,z) = S(P³₂(x,y,z)) = S(y)
- then  h(0,x) = f(x) = x
- and   h(S(y), x) = g(y, h(y,x), x) = S( h(y,x) )

Now, 
h(0,1) = 1
h(1,1) = S(h(0,1)) = S(1) = 2
h(2,1) = S(h(1,1)) = S(S(0,1)) = S(S(1)) = S(2) = 3

So `h` is a binary PRF called "addition".














PRFs can be of 4 types:
1. Number-theoretic functions,  `Nat -> Nat`
2. Predicates,                  `Nat -> Bool`
3. Propositional connectives,   `Bool -> Bool`
4. Representing functions,      `Bool -> Nat`


## Ref

https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/General_recursive_function
https://en.wikipedia.org/wiki/Corecursion
https://en.wikipedia.org/wiki/Anamorphism
https://en.wikipedia.org/wiki/Fold_(higher-order_function)

https://www.youtube.com/watch?v=yaDQrOUK-KY&list=PLC-8dKj3F0NUnR8LeBGH3utAI9aQjFbi5

https://jtobin.io/practical-recursion-schemes



ℕ¹²³⁴⁵⁶⁷⁸⁹⁰
Σ₀₁₂₃₄₅₆₇₈₉ 

x₊₋₌₍₎ₐₑₒₓₔ ₕ ₖ ₗ ₘ ₙ ₚ ₛ ₜ X₍ₙ₋₃₊₅₌₉₎

x₊₋₌₍₎ xₐₑₒₓₔ ₕ ₖ ₗ ₘ  xₙ ₚ ₛ ₜ  X₍ₙ₋₃₊₅₌₉₎ x⏨ ℕᐩ ℕ﹢
x₊ x₋ x₌ x₍ x₎ xₙ = f(xₙ₋ₗ)

Πᵝᵞᵟ⁽ᵋ⁾ᶿᶥᶹᵠᵡ 
Pᵃᵇᶜᵈᵉᶠᵍʰⁱᶦʲᵏᶫˡᵐᶰⁿᵒᵖᵠʶʳˢᵗᶸᵘᵛʷˣʸᶻ
Σ₀₁₂₃₄₅₆₇₈₉ 
Γᵦᵧᵨᵩᵪ 
Θₐᵦ𝒸𝒹ₑ𝒻𝓰 ₕᵢⱼₖ ₗ ₘ ₙ ₒ ₚ ᵩ ᵣ ₛ ₜ ᵤ ᵥ 𝓌 ₓ ᵧ 𝓏

vars: 𝓪𝓫𝓬𝓭𝓮𝓯 𝒸 𝒹 𝒻 ∘ 𝓰 𝓌 𝓍 𝔂 𝓏 𝓤 𝓟 𝓍⁹ xⁱ R⁻¹

ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀsᴛᴜᴠᴡxʏᴢ
ℕ¹²³⁴⁵ 𝛙⁶⁷⁸⁹ 𝚿⁰ 𝓤⁺⁻ᶧⁿ⁼ 𝟊⁽ⁿ⁾ⁿ
𝛀ᵝᵞᵟᵋᶿᶥᶹ 𝚽ᵠᵡ
𝓍⁰ 𝔂² 𝓏ⁿ
𝓟(𝕊)
𝚤 ∘ 𝚥
𝛁 ᵃᵇᶜᵈᵉᶠᵍʰⁱᶦʲᵏᶫˡᵐᶰⁿᵒᵖᵠʶʳˢᵗᶸᵘᵛʷˣʸᶻ
𝟋₀₁₂₃₄₅₆₇₈₉
𝛡ᵦᵧᵨᵩᵪ
𝛝ₐ ᵦ ₑ ₕ ᵢ ⱼ ₖ ₗ ₘ ₙ ₒ ₚ ᵩ ᵣ ₛ ₜ ᵤ ᵥ ₓ ᵧ

𝓪 𝓫 𝓬 𝓭 𝓮 𝓯 𝓰 𝓱 𝓲 𝓳 𝓴 𝓵 𝓶 𝓷 𝓸 𝓹 𝓺 𝓻 𝓼 𝓽 𝓾 𝓿 𝔀 𝔁 𝔂 𝔃
