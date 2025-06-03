# Rules

https://tutorial.math.lamar.edu/Extras/CheatSheets_Tables.aspx#AlgSheet
https://tutorial.math.lamar.edu/

N | Equation         | Derivative                | Antiderivative
--|------------------|---------------------------|------------------------------
S | f(x) = 1         | 0                         | 1x
S | f(x) = 5         | 0                         | 5x
S | f(x) = C         | 0                         | Cx
S | f(x) = x         | 1 = (x¹)′                 | x²/2
S | f(x) = 5x        | 5                         | 5x²/2
S | f(x) = Cx        | C                         | Cx²/2
T | f(x) = sin(x)    | cos(x)                    | -cos(x)
T | f(x) = cos(x)    |−sin(x)                    | sin(x)
T | f(x) = tan(x)    | sec²(x)                   | ln(|cos(x)|)

## Trig functions

```
deriv′  <| function |> ∫antider
-------------------------------
0       <|  k       |> kx
0       <|  2       |> 2x
1       <|  x       |> x²/2
2x      <|  x²      |> x³/3
x²      <|  x³/3    |> x⁴/12
-------------------------------
 cos(x) <|  sin(x)  |> -cos(x)
-sin(x) <|  cos(x)  |>  sin(x)
-------------------------------
-cos(x) <| -sin(x)  |>  cos(x)
 sin(x) <| -cos(x)  |> -sin(x)
-------------------------------
eˣ      <|  eˣ      |>  eˣ
2eˣ     <| 2eˣ      |> 2eˣ
```

(√x)′ = (x¹′²)′ = ½ x¹′² = ½ x^⁻½
    ʳ√xᵏ = xᵏ′ʳ
1 / ʳ√xᵏ = x⁻ᵏ′ʳ


## Latex

$$
\displaystyle
(\sqrt x)' 
= (x^\frac{1}{2})' 
= \frac{1}{2} x^{-\frac{1}{2}}
= \frac{1}{2 \sqrt x}
$$


## Fractions

½ 3⁄2
⅓ ⅔ 4⁄3 5⁄3
¼ ¾ 5⁄4
⅕ ⅖ ⅗ ⅘ 6⁄5
⅙ ⅚ 7⁄6
⅐ 2⁄7 3⁄7 4⁄7 5⁄7 6⁄7 8⁄7
⅛ ⅜ ⅝ ⅞ 9⁄8
⅑ 1⁄9 2⁄9 4⁄9 5⁄9 7⁄9 8⁄9 10⁄9
⅒ 1⁄10 ¹/⏨


Denoting differentiation
- f′
- f′(x)
- (f(x) + g(x))′
- (f(x) - g(x))′
- (f(x) / g(x))′
- (f(x) × g(x))′ =
  - (f(x)g(x))′ = f′(x)g(x) + f(x)g′(x)
  - (fg)′ = f′g + fg′ 
- (f ∘ g)′(x) = (f(g(x)))′
- sin′(x), (sin(x))′, sin′ x, (sin x)′
- (sec²(x))′, (sec² x)′
- (tan(sin(x)))′, (tan ∘ sin)′(x)
- (f(g(x)))′ = (f ∘ g)′(x) = f′(g(x)) × g(x)
  - (f ∘ g)′ = (f′ ∘ g) × g



## FTC

If `A` means taking antiderivative, and `D` means taking derivative, then for a function `f(x) = x²`:
- A(D(x²)) = A(2x) = x²   
  antiderivative of the derivative of f(x) is f(x) itself
- D(A(x²)) = D(x³/3) = x²    
  derivative of the antiderivative of f(x) is f(x) itself

In a more formal notation:
- d/dx (∫ f(x) dx) = f(x)
- d/dx (∫ f(x) dx) = d/dx (F(x) + C) = f(x)

- ∫ (d/dx f(x)) dx = f(x)
- ∫ (d/dx f(x)) dx = ∫ (f′(x)) dx = F′(x) + C

- ∫ f(x) dx = F(x) + C





## Antiderivatives

```js
// indefinite integral
∫ f(x) dx = F(x) + C


// definite integral
⎛ᵇ          ⎡      ⎤ᵇ
⎟ f(x) dx = ⎢ F(x)  ⎥ = F(b) - F(a)
⎠ₐ          ⎣      ⎦ₐ

⎛ᵇ              ⎥ᵇ
⎟ f(x) dx = F(x) ⎥ = F(b) - F(a)
⎠ₐ              ⎥ₐ


⌠ᵇ
⌡ₐ f(x) dx = F(x)

```







## Rules I

$$
\displaystyle\int{ (\dfrac{5x}{5}+3)}\ dx = x+3
$$

## Rules II

$$
\displaystyle
ln\ x^a = a\ ln\ x \\
\ \\
e^{ln\ x} = x \\
e^{ln\ x^a} = x^a \\
\ \\
\lim _{x\rightarrow 0}\left(\frac{e^x}{x^3}\right) \\
\ \\
\lim _{x\rightarrow 0^+}\left(x^x\right) \\
\ \\
\lim _{x\to \:3}\left(\frac{5x^2-8x-13}{x^2-5}\right) \\
\ \\
\frac{d}{dx}
\ \\
\ \\
\frac{d}{dx}\left(e^x\right)
$$


Evaluate
lim{x→+∞} (x³/eˣ)

Use the L'Hopital's rule
lim{x→+∞} (x³/eˣ)
​


$$
f(x) = \sum_ {i=0}^{n} \frac{a_i}{1+x} \\
\ \\
\frac{d}{dx}x = 1
\ \\
\frac{d}{dx}x^2 = 2x
\ \\
\frac{d}{dx}x^3 = 3x^2
\ \\
\displaystyle\frac{d}{dx}\left({ e }^{ x } \right) \\
\ \\
\displaystyle
\frac{d}{dx}
\left({ x }^{ 3 }
\right)
$$
