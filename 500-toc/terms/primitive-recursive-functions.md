# Primitive Recursive Function

https://en.wikipedia.org/wiki/Primitive_recursive_function

Informally, a primitive recursive functions ar ethose functions that can be computed by a program whose loops are bounded (i.e. the loop bounds are fixed and known before entering the loop).

Primitive recursive functions form a strict subset of those *general recursive functions* that are also total functions, `PRF ⊂ GRF`.

Most *computable functions* studied in number theory, and, generally in math, are primitive recursive. For example, addition, division, factorial, etc.

To show that a computable function is primitive recursive, it suffices to show that its computational complexity is bounded from above by a primitive recursive function of the input size (`n`). It follows that it is difficult to devise a computable function that is not primitive recursive (although some are known).

The set of primitive recursive functions is known as *PR* in computational complexity theory.


## The basic primitive recursive functions

The primitive recursive functions are *number-theoretic functions*, which are functions on the set of the natural numbers; they are n-ary functions that take `n` arguments (where n ∈ ℕ).

The basic primitive recursive functions are given by these axioms. Each of these defines one fundamental primitive recursive function, whose primitive recursion is evident enough:

* **Zero**
  - the zero, `ζ`, is a n-ary constant function, `Zeroⁿ`
  - zero returns 0 no matter the number of args it is called with
  - e.g. `ζ(4, 2, 42) = 0`

* **Successor**
  - the successor, `σ`, is a unary function, `Succ¹`
  - it returns the successor of its argument (that is a ℕ)
  - e.g. `σ(2) = 3`

* **Projection**
  - the projection, π, is an n-ary function, `Projᵏᵢ`
  - it takes n args and returns the ith arg, for 1 ≤ i ≤ n
  - e.g. `π(i, x₀, x₁,...,xₙ) = xᵢ`
  - e.g. `π(0, (5, 7, 9)) = 5`


## Primitive recursive combinators

More complex primitive recursive functions can be obtained by applying the operations given by these axioms:
* Combination, `combo f g x = f x + g x`
* Composition, `∘`
* Primitive recursion, `ρ`


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


---

## Primitive recursion

A function `f` is primitive recursive if its definition has the following form, where `g` and `h` are primitive recursive functions. This definition specifies the standard form for a primitive recursive function:

```
f 0     x = g x
f (k+1) x = h (f k x) k x

f² , g¹ , h³

f 0 x = g x
f k x = h (f (k-1) x) (k-1) x
```

The function `f` is primitive recursive on its first arg.
























## Ref

https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/General_recursive_function
https://en.wikipedia.org/wiki/Corecursion
https://en.wikipedia.org/wiki/Anamorphism
https://en.wikipedia.org/wiki/Fold_(higher-order_function)

https://jtobin.io/practical-recursion-schemes

https://www.youtube.com/watch?v=yaDQrOUK-KY&list=PLC-8dKj3F0NUnR8LeBGH3utAI9aQjFbi5
