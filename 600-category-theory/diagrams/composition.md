# Diagrams :: composition

## Arrows

a                 b
○ --------------> ●

a       ᶠ         b        ᵍ        c
○ --------------> ● --------------> ◉
                 ᵍ °ᶠ
○ -------------->-----------------> ◉
                 ᵍ˙ᶠ

## Arrow composition

a
○
| .
|   .
|     . g ∘ f
|f      .
|         .
↓     g     ↘
● ----------> ◉
b             c


a               c
○ ------------> ◉
| . g∙f         |
|   .           |
|     .         |
|f      .     1ᶜ|
|         .     |
|           .   |
↓      g      ↘ ↓
● ------------> ◉
b               c


```js
f ∘ 1ᵃ = f  ≡  a----f---->  ≡  o----  ≡  a |> f = b

1ᵇ ∘ f = f  ≡  -----f--->b  ≡  ----o

1ᵇ ∘ f = f = f ∘ 1ᵃ  ≡  a--------f------->b  ≡  a |> f |> g = b
```



## Symbols

a b c
○ ●
a b c
◯ ◉ ◎
a b c
◌ ◍


○ WHITE CIRCLE 0x25cb
● BLACK CIRCLE 0x25cf
◯ LARGE CIRCLE 0x25ef
◉ FISHEYE 0x25c9
◎ BULLSEYE 0x25ce
◌ DOTTED CIRCLE 0x25cc
◍ CIRCLE WITH VERTICAL FILL 0x25cd
