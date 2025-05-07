# sec

- physical description
  - `sec` consists of parabolas arranged by concavity
  - the vertex of a parabola is at extremes values of cos(x)
  - when cos(x) = 1 = y, concave up parabola with vertex at (x, 1)
  - when cos(x) = -1 = y, concave down parabola with vertex at (x, -1)
  - vertical asymptotes: ±π/2, ±3π/2, ±5π/2, ±7π/2, …; `(2n+1)×π/2, n ∈ ℤ`
  - zeros: N/A



* secant is "paired" with cos, `sec(x) = 1/cos(x)`
  - whenever `cos(x) = 0`, there is a vertical asymptote: 
    - VAs: ±π/2, ±3π/2, ±5π/2, ±7π/2, …
    - VAs: `(2n+1)×π/2` where `n ∈ ℤ`
    - VAs: ±N×π/2 where N is an odd integer
    - VAs: N×π/2 where N=2n+1 and n ∈ ℤ
  - whenever y=cos(x)=1, the point `(x,1)` is a vertex of a parabola that is sec
    - every other parabola changes concavity
    - concave up:
      - parabolas are concave up
      - vertices at (-4π,1), (-2π,1), (0,1), (2π,1), (4π,1)
      - y=1, x=Nπ where N=even integers, `x=2n×π` where `n ∈ ℤ`
      - which gives x-values of: `0π, ±2π, ±4π, ±6π, …`
    - concave down:
      - parabolas are concave down with veretices at
      - vertices at (-3π,1), (-π,1), (π,1), (3π,1)
      - y=-1, x=Nπ where N=odd integers, `x=(2n+1)×π` where `n ∈ ℤ`
      - y=-1, `x=(2n+1)×π` where `n ∈ ℤ`
      - which gives x-values of: `±π, ±3π, ±5π, ±7π, …`
- name: secant 
- short: `sec`
- fn: sec(x) or secx or sec x pr sec x
  - sec²x, (secx)², (sec x)², (sec x)²
  - reciprocals
    - sec⁻¹(x) = 1/cos(x)
    - sin⁻¹(x) = 1/sec(x)
- inverse:
  `-sec(x)`
- parity:
  - even, `sec(-x) = sec(x)`
- derivative:
  - sec′(x) = sec(x)tan(x)


```js
            1
sec(x) = -------
         cos(x)
```


## Derivative of secant

```js
sec′(x) = sec(x)tan(x)
tan′(x) = sec²(x)
```

### Example

```js
d/dx (sec²(x))                   // rewrite
= d/dx (sec(x))²                 // chain rule, h=x², g=sec(x), h′(g(x))∙g′(x)
= 2sec(x)×sec(x)tan(x)           // done! or…
= 2sec²(x)tan(x)                 // secx = 1/cosx
= 2 × 1/cos²(x) × sin(x)/cos(x)  // tinker more
= 2sin(x)/cos³(x)                // done!
```
