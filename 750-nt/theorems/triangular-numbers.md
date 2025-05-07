# Triangular numbers

## Triangular numbers limit

A triangular number `t` with index `n`, `tₙ`, is a sum of numbers from 1 to `n`, `tₙ = sum [1..n]`. Considering any `tₙ`, the index `n` when squared gives `n²`, which is a number consisting of 2 triangular numbers: the current `tₙ` and another triangular number `rₙ`. Number `rₙ` can be obtained as
- `rₙ = n(n-1)/2`, while `tₙ = n(n+1)/2`
- `rₙ = t - n`
- `rₙ = n² - t`

Given some `n`, we can calculate a triangular number with index `n` as `tₙ`, and the square of n as `n²`. `n² = tₙ + rₙ` meaning every square number consists if two triangular numbers which are not equal, `tₙ>n²/2` and `rₙ<n²/2`.

In `n² = tₙ + rₙ`, the *ratio* of `tₙ` and `rₙ` equals a number L: `tₙ/rₙ = L`.
>What is the limit of this ratio?

>`lim{n→∞} tₙ ÷ rₙ = L` in relation to `n` such that `n² = tₙ + rₙ`?

>Does the sequence of these ratios converges to 1?

- for n=5, n²=25, t₆=15, r₅=10, and tₙ/rₙ = 15/10 = 1.5
- for n=6, n²=36, t₆=21, r₆=15, and tₙ/rₙ = 36/21 = 1.71
- for n=30, n²=900, t₃₀=465, r₃₀=435, and t₃₀/r₃₀ = 465/435 = 1.0689655
- for n=30, t₃₀/r₃₀ = 31/29 = 1.0689655
- for n=60, t₆₀/r₆₀ = 61/59 = 1.033898


```js
 tₙ     n(n+1) / 2    n + 1
---- = ----------- = ------
 rₙ     n(n+1) / 2    n - 1
```

The limit of the sequence of rations is 1.

```js
     n + 1     ∞
lim ------- = ---- = 1
n→∞  n - 1     ∞
```



## Triangular numbers

Triangular numbers, △ = {0,1,3,6,10,15,21,28,…}

- any square `n²` is the sum of two △ numbers, `t` and `r`, `n² = t + r`
- `t` triangular number between n and n², 0 < t < n²
- `r` difference between n² and t, `r = n² - t`
- `h` - half of `n²`, `t > h`, `r < h`
- `t:r` proportion between `t` and `r` in the sum `n²`
- % of `t` in n², % of `r` in n²
- 3△ = 1+2+3 = 6
- 4△ = 1+2+3+4 = 10
- 5△ = 1+2+3+4+5 = 15
- 10△ = 1+2+3+4+5+6+7+8+9+10 = 55
- n△ = n(n+1)/2
- n! = n × (n-1)!, 7! = 7 × 6!
- `n△ = n + (n-1)△`
  - 6△ = 6 + 5△
  - `n△ - n = (n-1)△`
  - `(n+1)△ = n△ + n`
  - (5+1)△ = 5△ + 5, 6△ = 15 + 6 = 21
  - 6△ - 6 = 5△
  - △₅ = 15 ⇒ n=5 AND
    - △ₙ = n△
    - △₆ = 6△ = sum [1..6] = (+) <$> [1..6]
    - 4△ = △₄ = 5△ - 5 = 10
    - 6△ = 5△ + 6 = 15 + 6 = 21


Triangular numbers, △ₙ = sum 0..n = n(n+1)/2
- △₁₀ = sum 0..10 = 10∙11/2 = 5∙11 = 110/2 = 55
- △₁₁ = sum 0..11 = 11∙12/2 = 11∙6 = 132/2 = 66
- △₁₂ = sum 0..12 = 12∙13/2 = 6∙13 = 156/2 = 78
- △₁₃ = sum 0..13 = 13∙14/2 = 13∙7 = 182/2 = 91
- △₁₄ = sum 0..14 = 14∙15/2 = 7∙15 = 210/2 = 105
- △₁₅ = sum 0..15 = 15∙16/2 = 15∙8 = 240/2 = 120

D(240) = {2,3,4,5,6,8,10,12,15,16,20,24,30,40,48,60,80,120}

n  |  n² |  t |  r | half | prop|
---|-----|----|----|------|-----|
0  |   0 |  0 |  0 |  0   |     |
1  |   1 |  1 |  0 |  0.5 | 1:0 |
2  |   4 |  3 |  1 |  2   | 3:1 |
3  |   9 |  6 |  3 |  4.5 | 2:1 |
4  |  16 | 10 |  6 |  8   | 5:3 |
5  |  25 | 15 | 10 | 12.5 | 3:2 |
6  |  36 | 21 | 15 | 18   |     |
7  |  49 | 28 | 21 | 44.5 |     |
8  |  64 | 36 | 28 | 32   |     |
9  |  81 | 45 | 36 | 40.5 |     |
10 | 100 | 55 | 45 | 50   |     |
11 | 121 | 66 | 55 | 55   |     |
12 | 144 | 78 | 66 | 72   |     |
13 | 169 | 91 | 78 |      |     |
14 | 196 |105 | 91 |      |     |
15 | 225 |120 |    |      |     |
16 | 256 |136 |    |      |     |
17 | 289 |153 |    |      |     |
18 | 324 |171 |153 |      |     |
30 | 900 |465 |435 |      |     |

21/15 = 1.4   36/21 = 1.71   36/15 = 2.4
28/21 = 1.3
36/28 = 1.285
45/36 = 1.25
55/45 = 1.222
66/55 = 1.2
78/66 = 1.181818
91/78 = 1.66
105/91 = 1.15       105+91=196 = 14² (n=14)
171/153 = 1.1176
465/435 = 1.0689655



t/r ratio, n² = t + r, where t and r are △

>lim{n→∞} f(x) = L, L=1?


```js
     ∞   k
    ⎲  ⎲
△ = ⎳  ⎳ n = {0, 0+1, 0+1+2, 0+1+2+3, 0+1+2+3+4, 0+1+2+3+4+5, …}
    ᵏ⁼⁰ ⁿ⁼⁰
```


## Proportion of triangle vs remainder in a square

- `t` triangular number between n and n², 0 < t < n²
- `r` difference between n² and t, `r = n² - t`
- `n² = t + r`, a square consists of the sum of two △ numbers, `t` and `r`

```
n=1: 1 (t part only)
●

n=2
● ●
● ○

● ● ●
● ● ○
● ○ ○

● ● ● ●
● ● ● ○
● ● ○ ○
● ○ ○ ○

● ● ● ● ●
● ● ● ● ○
● ● ● ○ ○
● ● ○ ○ ○
● ○ ○ ○ ○
```

◼◻
◌ init
○ mid
● done
