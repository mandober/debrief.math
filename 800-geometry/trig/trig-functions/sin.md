# sin

A sine wave, sinusoidal wave, or sinusoid (symbol: `∿`) is a periodic wave whose waveform (shape) is the trigonometric sine function.

- wave
  - *crests*: y = 1 when `x = …, -11π/2, -7π/2, -3π/2, 1π/2, 5π/2, 9π/2, …`
    - multiplier `k = 1±4n` and `n ∈ ℤ`, so `…,-11,-7,-3,1,5,9,…`
             -11π/2
             -7π/2
             -3π/2
               π/2
              5π/2
              9π/2
             13π/2
  - crests:   y =  1 when x = `1±4×π/2`
  - zeros:    y =  0 when x = 0, ±π, ±2π, ±3π, …
  - throughs: y = -1 when x = 0, ±2π,   ±4π,   …
  - period: 2π
  - at x=0, y=0, i.e. first point is (0,0)

```js
// sin(x)
 ʸ↑
  │       crests: whenever y=1 and x=1±4n×π/2 for n ∈ ℤ
 ¹┤        ∙∙∙∙∙        ┴                                        ,
  │     ∙∙∙     ∙∙∙                                              ,
  │   ∙∙           ∙∙                                            ,
  │  ∙               ∙                                           ,
  │ ∙                 ∙                                          ,
  │∙                   ∙ π        3π/2         2π                ,
──┼──────────┬───────── ∙ ─────────┴────────── ∙ ──────────────→ ,
  │         π/2          ∙                    ∙                  ,
  │                       ∙                  ∙                   ,
  │                        ∙               ∙                     ,
  │                         ∙∙           ∙∙                      ,
  │                           ∙∙∙     ∙∙∙                        ,
⁻¹┤                     ┬        ∙∙∙∙∙                           ,
  │                      throughs: whenever y=-1 and x=3±4n×π/2 for n ∈ ℤ
```


- *crests*:   whenever `y = 1` and x = `1±4n×π/2` for n ∈ ℤ
  - at x = …, -7π/2, -3π/2, π/2, 5π/2, 9π/2, …
- *zeros*:    whenever `y = 0` and x = `n×π/2`    for n ∈ ℤ
  - at every whole integer `π`
  - at when x = …, -3π, -2π, -π, π, 2π, 3π, …
- *throughs*: whenever `y =-1` and x = `3±4n×π/2` for n ∈ ℤ
  - at x = …, -9π/2, -5π/2, -π/2, 3π/2, 7π/2, …




```js
            1
sin(x) = -------
         csc(x)
```

* sin(x) = opposite/hypotenuse (SOH) = tan(x)cos(x)

* sin and cos are out of phase from each other by π/2
  - sin θ = cos(θ ± π/2)
  - cos θ = sin(θ ± π/2)

* sin(A+B) = sinAcosB + sinBcosA
* cos(A+B) = cosAcosB + sinBsinA

- basics
  - name: sine, sinus
  - short: sin
  - as fn: sin(x), sinx, sin x
- sets
  - dom(sin) = ℝ
  - ran(sin) = [-1,1]
  - cod(sin) = ℝ
  - sin : ℝ → ℝ
  - sin : ℝ → ℂ ?
- parity: odd, sin(-x) = -sin(x)
- period: 2π

- attributes
  - crests: -5π/2, -3π/2, -π/2, π/2, 3π/2, 5π/2
    ±n π
  - zeros: -3π, -2π, -π, 0, π, 2π, 3π
    ±n π
  - troughs: 
    ±n π
  - cycle: 1st cycle (0, 3π/2)

- points:
  - x-values: at x = Nπ, y = 0 (N ∈ ℤ)
  - x-values: 0, π/2, π, 3π/2, 2π, 5π/2, 3π, 7π/2, 4π, 9π/2, 5π, 11π/2, 6π
  - y-values: 0,  1,  0,  -1,  0,         0         0         0          0
  (0, 0), (π/2, 1), (π, 0), (3π/2, -1)
  (-π/2, -1), (-π, 0), (-3π/2, 1), (-2π, 0)
- relations:
  - inverse: arcsin
  - reciprocal: csc (cosecant)
  - hyperbolic: sinh
  - hyperbolic inverse: arcsinh
- intercepts
  - x-intercept: every `πn` (n ∈ ℤ): 
  - y-intercept: one intercept at (0,0)
- extrema
  - minima: (2πn + 3π/2, 1)
  - maxima: (2πn + π/2, 1)
  - inflection points: every (πn, 0)
- monotonicity
  - monotonically decreasing: (2πn +  π/2, 2πn + 3π/2)
  - monotonically increasing: (2πn + 3π/2, 2πn + 5π/2)
- (in above, `n ∈ ℤ`)


y =  `0` when x = `±n π` (-5π, -4π, -3π, -2π, -π, 0, π, 2π, 3π, 4π, 5π)
y =  `1` when x = `(±4n+1) π/2` (-3,1,5,9,14,17,21)
y =  `1` when x = `(±4n+1) π/2` (-3π/2, π/2, 5π/2, 9π/2, 14π/2, 17π/2, 21π/2)

y = `-1` when x = `(±4n+1) π/2` (-17,-13,-9,-5,-1,3,7,11,15,19,23)
y = `-1` when x = `(±4n+1) π/2` (-9π/2, -5π/2, 1π/2, 3π/2, 7π/2, 11π/2, 15π/2)

            -7π/2, -3π/2,  π/2, 5π/2, 9π/2, 14π/2, 17π/2
-9π/2, -5π/2, -π/2, 3π/2, 7π/2, 11π/2, 15π/2


x: -6π -7π/2 -5π -5π/2 -3π -3π/2 -π -π/2 0 π/2 π 3π/2 2π 5π/2 3π 7π/2 4π 9π/2 5π 11π/2 6π

   11π  9π   7π   5π   3π   π  1π  3π  5π   7π   9π   11π
   ---  ---  --- --- ---    --- --- --- ---  ---  ---  ---
    2    2    2    2    2    2   2   2   2    2    2    2 

x: -5π   -4π   -3π   -2π   -π    0    π   2π   3π   4π   5π

y:   0   0   0   0   0   0   0     0   0   0   0   0   0

x: 11π  9π   7π   5π   3π   0π  1π  3π  5π   7π   9π   11π
   ---  ---  --- --- ---    --- --- --- ---  ---  ---  ---
    2    2    2    2    2    2   2   2   2    2    2    2 

y:

  , 5π/2, 3π, 7π/2, 4π, 9π/2, 5π, 11π/2, 6π
