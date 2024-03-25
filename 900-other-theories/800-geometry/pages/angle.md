# Geometry :: Angle

https://en.wikipedia.org/wiki/Angle

**Angle** is a rotational separation of two rays.

The accepted definition of angle uses rays, but in practice the sides of an angle can also be lines, line segments, vectors.

Components of angle:
- initial side - a ray
- vertex - point of intersection of rays
- terminal side - the other ray

To evaluate angles we place them in the *standard position* in a Cartesian coordinate system, which means:
- the initial side is lined up with the positive x-axis
- the vertex is placed at the origin of the coordinate system
- the terminal side is positioned to denote the size of the angle

By convention, angles are measured so that counterclockwise rotations are considered positive, while clockwise rotations are negative. Thus, positive angles rotate upwards, toward the quadrant I and negative angles rotate downwards, towards the quadrant IV. Any negative angle has a dual positive angle and vice versa, 180°= -180°, 45°= -315°, 90°= -270°. Values of angles are implicitly `(mod 360)`, so they exhibit the wrap-around behavior - the values of angles "properly" range from 0° to 360° (in degrees), so below 0° and above 360°, they may wrap around, e.g.
- 0° = 360° = -360 = 720° = -720°
- 45° = 405°, -45° = -405°, 90° = 450°, …

Quadrants:
- I    (+x, +y)     0° -  90°   (+, +)
- II   (-x, +y)    90° - 180°   (-, +)
- III  (-x, -y)   180° - 270°   (-, -)
- IV   (+x, -y)   270° - 360°   (+, -)

```
              π/2
               y
               ↑
               │
       (-,+)   │   (+,+)
        II     │     I
π -x ←─────────┼─────────→ x 2π
        III    │    IV
       (-,-)   │   (-,+)
               │
               ↓
              -y
             2π/3
```


It is a common convention to draw a little arc to indicate an angle. It is also a convention to draw the little ticks on arcs - angles (also lines) with the same number of tick marks have the same measure, even if the actual measure is not known.

*Quadrantal angle* (muliple of 90°) has a terminal side matched up with an axis.

- zero, 0° (quadrantal), means no rotation
- 0° < acute < 90°
- right = 90° (quadrantal), π/2
- 90° < obtuse < 180°
- straight = 180° (quadrantal), π
- 180° < reflex < 360°
- 270° is another quadrantal angle, otherwise anonymous, 3π/2
- full = 360° (quadrantal), 2π

*Coterminal angles* have coincident sides in standard position. Zero and full angle are coterminal. Angle of 60° and its complement 300° have coincident terminal sides, so they are coterminal angles. Coterminal angles are always 360° apart (or a multiple of 360), considering their initial sides, when in standard position.

## Angle Relations

- congruent: angles with the same measure, θ ≅ α; congruency, `≅`
- adjacent: share a vertex and a side

The intersection of 2 lines is the vertex of 4 angles
- *vertical* angles are the opposite ones, always congruent, 1-4, 2-3
- gives several linear pairs

Adding up
- complementary: two angles that add up to 90° (need not be adjacent)
- supplementary: two angles that add up to 180° (need not be adjacent), 3-4
  - if they are adjacent, they form a linear pair
- *linear pair*: two supplementary, and adjacent, angles, e.g. 1-2, 3-4

*Transversal*: a line that intersects two parallel lines.
- gives 8 angles, 4 at each intersection; max just 2 distinct angles.
- each of 8 angle has a *corresponding* (congruent) angle at the other intersection in the corresponding location, 1-5, 2-6, 3-7, 4-8
- *congruent angles*: 1 ≅ 4 ≅ 5 ≅ 8, 2 ≅ 3 ≅ 6 ≅ 7
- *alternate interior*: angles between parallel lines and at opposite sides of the transversal line, i.e. 3-6, 4-5 (supplementary)
- *alternate exterior*: angles on the outside of parallel lines and at opposite sides of the transversal line: 1-3, 7-8 (supplementary)
- *interior angles of transversal*: angles between parallel lines and on the same side of the transversal line: 3-5, 4-6 (supplementary)
- *exterior angles of transversal*: angles on the outside of parallel lines and at the same sides of the transversal line: 1-7, 2-8 (supplementary)


```
   │                          ⟋
  ₁│₂                     ₁ ⟋₂
───┼──────────────────────⟋───────────
  ³│⁴                  ³⟋ ⁴
  ₅│₆               ₅ ⟋₆
───┼────────────────⟋─────────────
  ⁷│⁸            ⁷⟋ ⁸
   │            ⟋
```

## Angle measurement - degrees

DMS notation: degree, minute, second
- degree = 1°, minute = 1ʹ, second = 1ʹʹ
- 1° = 60ʹ = 3600ʹʹ
- 1ʹ = 60ʹʹ

```
90° 15ʹ 45ʹʹ = (90 + 15/60 + 45/3600)° = 90.2625°

= (90 + x + y)°
  x = 15/60   = 0.25
  y = 45/3600 = 0.0125
  ---------------------
        x + y = 0.2625

= 90 + 0.2625
= 90.2625°
```

## Angle measurement - radians

- **1 radian = 1 radius**
  where the radius of the circle is laied on its circumference, 
  i.e. 1 radian = 1 radius length of an arc.
- One *radian* is the central angle (angle positioned in the standard location) that subtends an *arc length* of 1 radius (`r = s` where `s` is arc length).
- denotation: `rad`
- *arc length*: curved distance between two points.
- *subtend*: cut or limit from both sides.

`s` is arc length, `r` is radius, `θ` is the angle (in radians)
- `1 rad` is the angle when `s = 1r` i.e. when `s = r` (`θ` = 1 rad)
- `s = θr` (arc length is theta radii)
- `θ = s/r`
- `r = s/θ`
- full angle is 2π rad, since the circumference of a circle is `2πr` or `πd`, where `d` is the circle's diamter, aka `d = 2r`; 360° = ~6.283 rad


Angle units
- degree
- radian
- gradian
- turn

Conversion
- 1 rad ∙ 180° / π rad = 57.3°
- 1.5 rad ∙ 180° / π rad = 86°
- 1° = 0.017453 rad = 1.11 grad
- 1 grad = 0.9° = 0.0157 rad
- 1 rad = 57.29578° = 63.66198 grad
- 1 turn = 360° = 2π rad
