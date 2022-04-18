# Functions ∷ notation



```js
// generic function denotation

ϕ(x) = y          // named function
f, g, h, ⨍, ϕ     // generic function names

x ⟼ y            // anonymous function
x = y             // anonymous function


// function declaration (signature)

f : A -> B      // named function
A |-ᶠ-> B       // anonymous function

// function definition

// Concrete (named) function definition
f(x) = x² + 1
x ⟼ y ⟼ x + y

// Concrete (anonymous) function definition
x ⟼ x² + 1
y = x² + 1


x ↦ f (x)
f: X → Y
```



## Notations

* definition of function, f : A -> B
  - `∀a(a ∈ A -> ∃b(b ∈ B ⋀ f(a) = b))`
  - `∀a₁,a₂ ∈ A. [f(a₁) = f(a₂)] -> (a₁ = a₂)`

* function signature (generic), `ƒ : A -> B` where
  - `ƒ` is a function's name
  - `A` is a domain set
  - `B` is a codomain set
  - concrete example, `f : ℕ -> ℤ`
  - more generally, `ƒ : Aⁿ -> Bᵐ` where
    - `n` is a function's arity (the number of input params)
    - `m` is the number of output values (rare)

* function definition (generic), `f(a) = b`
  - where `a ∈ A`, `b ∈ B`, such that `f(a) = b`
  - concrete example, `f(x) = x² + 2x + 1`

* function composition
  - f : A -> B, g : B -> C, h : A -> C
  - (η-reduction, point-free) `h = g ∘ f`
  - (η-expansion, point-full) `h(x) = (g ∘ f)(x) = g(f(x))`
  - backward composition (default), `g ∘ f`
  - forward composition, `fg`, `f |> g`, `x & f & g`

* invertability
  - f : A -> B, `f⁻¹ : B -> A`
  - `f` function's inverse, `f⁻¹`
  - `f` has an inverse if it is a bijection

* jections
  - function            ->      ⇾ ⇽
  - map, substitution   ⟼      ↦
  - injection           >->     ↣
  - surjection          ->>     ↠
  - bijection           >->>    ⇿  ⇼  ⇆  ⇄

* partiality
  - partial function    --|->    ⇸  ⇷  ⇻  ⇀  ⇁
  - partial injection   >-|->    
  - partial surjection  --|->>
  - partial bijection   >-|->>  ⇌  ⇹


## Conventions

Named function definition
- f(x) = x² - 1
- g(x, y) = x² - y
- g(x, y) = x² - y

Anonymous function definition
- x ⟼ x² - 1
- λn. λf. λx. f (n f x)
- n ⟼ f ⟼ x ⟼ f(n(f(x)))

Function application
- h(g(f(x))) = h g f x = ((h g) f) x

λa. λb. λc. λd. a b c d
λa. (λb. (λc. (λd. a b c d)))

λa. λb. λc. λd. a b c d
λa. λb. λc. λd. ((a b) c) d
a ⟼ b ⟼ c ⟼ d ⟼ ((a b) c) d


λa. λb. λc. λd. a b c d
λa. (λb. (λc. (λd. (((a b) c) d))))

= a b c d
- g x (f x)
- g (x f) x

- `f(x)` = `f x`
- `g(f(x))` = `g f x` = `g (f x)` = `(g ∘ f)(x)`
- `h(g(f(x)))` = `h g f x` = `h (g  (f x))` = `(h ∘ g ∘ f)(x)`
- g x (f x) = g(x, f(x))
- 


## misc

f g h     ⨍  ∮  φ  ϕ  𝕗  𝓯  𝒻  𝖋  𝔣    𝓕   𝔽   Φ   ℱ   𝕱   𝔉

⨍ᴅᴏᴍ  ∮ᴅᴏᴍ  ᴅᴏᴍ(f)      dom(⨍)  dom(f)  dom(f)
⨍ʀᴀɴ  ∮ʀᴀɴ  ʀᴀɴ(g)      ran(⨍)  ran(∮)  ran(f)
⨍ᴄᴏᴅ  ∮ᴄᴏᴅ  ᴄᴏᴅ(h)      cod(⨍)  cod(∮)  cod(f)

g ∘ f  =  fg  =  f & g  =  f > g  =  f >> g  =  f |> g

f(x) = f x = y
g(y) = g y = z
--------------
g(f(x)) = g (f x) = g y = z


h(g(f(x))) = (h ∘ g ∘ f)(x) = h g f x

= h(g(f(x)))
= h ∘ g(f(x))


       ⎛ 0             if n < 0
A(n) = ⎨ 1             if n = 1
       ⎝ n * n - 1     otherwise


⎰ 0     if n < 1
⎱ 1     else



⌠ Top Half Integral
⌡ Bottom Half Integral

⎛ Left Parenthesis Upper Hook
⎜ Left Parenthesis Extension
⎝ Left Parenthesis Lower Hook

⎞ Right Parenthesis Upper Hook
⎟ Right Parenthesis Extension
⎠ Right Parenthesis Lower Hook

⎡ Left Square Bracket Upper Corner
⎢ Left Square Bracket Extension
⎣ Left Square Bracket Lower Corner

⎤ Right Square Bracket Upper Corner
⎥ Right Square Bracket Extension
⎦ Right Square Bracket Lower Corner

    ⎧
y = ⎨
    ⎝

      ⎧
      ⎪
     1⎨
      ⎪
      ⎬3
      ⎪
     2⎨
      ⎪
      ⎩


⎫
⎬ x
⎭


⎰ Upper Left or Lower Right Curly Bracket Section
⎱ Upper Right or Lower Left Curly Bracket Section


⎲ Summation Top
⎳ Summation Bottom

∞
⎲   1          1    1    1   1    1
⎳  --       = -- + -- + -- + -- + --
n=1  2ⁿ         2    4    8   16   32
