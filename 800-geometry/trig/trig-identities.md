# Trig identities

https://www.youtube.com/watch?v=Dsf6ADwJ66E
https://www.youtube.com/watch?v=68Pi4RJ1Rnw

Euler's identity
- eⁱˣ = cos(x) + 𝒾 sin(x)

Pythagorean identities
- cos²x + sin²x = 1                                   (PY1)


Sum identities
- sin(α + β) = sin(α)cos(β) + sin(β)cos(α)            (S1)
- cos(α + β) = cos(α)cos(β) - sin(α)sin(β)            (S2)

Double angle (sum identities when α = β)
- sin(2x) = 2sin(x)cos(x)         (follows from S1)
- cos(2x) = 1 - 2sin²(x)
          = 2cos²(x) - 1          (follows from PR2)
- cos(2x) = cos²(x) - sin²(x) 
          = cos(x)cos(x) - sin(x)sin(x)

Power reduction
- sin²(x) = (1 - cos(2x)) / 2     (PR1)
- cos²(x) = (1 + cos(2x)) / 2     (PR2)



```js
sin(x+x) =
= sin(2x)
= sin(x)cos(x) + sin(x)cos(x)
= 2sin(x)cos(x)

// --------------------------------------------------------
cos(x+x) =
= cos(2x)
= cos(x)cos(x) - sin(x)sin(x)
= cos²(x) - sin²(x)
= 1 - 2sin²(x)
= 2cos²(x) - 1

// --------------------------------------------------------
cos²x + sin²x = 1
sin²x = 1 - cos²x
cos²x = 1 - sin²x

// --------------------------------------------------------
cos(2x) = 1 - 2sin²(x)
2sin²(x) = 1 - cos(2x)
sin²(x) = (1 - cos(2x)) / 2

// --------------------------------------------------------
cos²(x) = (1 + cos(2x)) / 2
2cos²(x) = 1 + cos(2x)
2cos²(x) - cos(2x) = 1
1 - 2cos²(x) = -cos(2x)
cos(2x) = 2cos²(x) - 1
```



sin and cos are out of phase from each other by π/2:
- sin θ = cos(θ ± π/2)
- cos θ = sin(θ ± π/2)

Unit circle
- cos²θ + sin²θ = 1

rad θ | 0  | π/2 |  π | 3π/2 | 2π
------|----|-----|----|------|----
sin θ | 0  |   1 |  0 |  -1  | 0
cos θ | 1  |   0 | -1 |   0  | 1

tangens
- tan θ = sin θ / cos θ
- cos θ = sin θ / tan θ
- sin θ = tan θ cos θ

# Trig on the unit circle

The unit circle has radius 1 and it is centered at the origin. We want to find out the lengths of the sides of the right triangles with different angle `θ`.

One vertex, `O`, of these right triangles is always at the origin, and its angle is labelled `θ`. The vertex `B` is at the right angle (π/2, 90ᵒ) and this vertex is locted somewhere on the x-axis depending on the third vertex. The third vertex, `A`, is located somewhere on the circle. By projecting the point `A` onto the x-axis we get the point `B`.

- unit circle at `O`, of radius 1, C = 2πr = 2π, A = 2πr² = 2π
- right triangle `ABO`
  - interior angles = π rad (180ᵒ)
  - of which one right angle = π/2 rad (90ᵒ)
  - cos²θ + sin²θ = 1
  - sin²θ = 1 - cos²θ
  - cos²θ = 1 - sin²θ
- angles:
  - the angle `θ` at `O`
  - the right angle `ρ` at `B` is π/2 rad (90ᵒ)
  - the remaining angle at `A` is `α`
  - the sum of these 3 angles is π rad (180ᵒ)
  - π/2 rad (90ᵒ) + θ + α = π rad (180ᵒ)
  - π/2 rad (90ᵒ) = θ + α
  - α = π/2 (90ᵒ) - θ = π (180ᵒ) - π/2 (90ᵒ) - θ
  - α = π/2 - θ
- sides:
  - triangle side `OB` is adjacent   = sin θ
  - triangle side `AB` is opposite   = cos θ
  - triangle side `OA` is hypotenuse = 1
  - the hypotenuse is a radial line of 1

side lengths:
- For `θ = 0π`     (0ᵒ)
  - degenerate triangle
  - adjacent side OB is cosθ = 1
  - opposite side AB is sinθ = 0
- For `θ = π/12`  (15ᵒ)
- For `θ = π/6`   (30ᵒ)
- For `θ = π/4`   (45ᵒ)
- For `θ = π/3`   (60ᵒ)
- For `θ = π/2`   (90ᵒ)
  - degenerate triangle
- For `θ = π`    (180ᵒ)
  - degenerate triangle
- For `θ = 3π/2` (270ᵒ)
  - degenerate triangle
- For `θ = 2π`   (360ᵒ)
  - degenerate triangle


## For θ = π/6

- θ = π/6 (30ᵒ)
- α = π/3 (60ᵒ) = π/2 - π/6
- since π/3 + π/6 + π/2 = 3π/6 + π/6 + 2π/6 = 6π/6 = π (180ᵒ)

If we extend the side `AB` of the triangle `AOB` until we hit another point on the circle `D`. With that we get a secant line `AD` and a larger triangle `AOD`. The angle `θ = π/6` is doubled, i.e. the angle `AOD` is 2θ = 2π/6 = π/3. Since `α` is also an angle of π/3 radians, 

We have two angles of π/3 radians, this new one at `AOD` and `α` 


The angle at vertex `D` is the same angle `α = π/3` like at `A`. This means the 3 angles ( )
The obtained triangle `OAD` is thus equilateral triangle 
