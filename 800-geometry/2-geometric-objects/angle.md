# Geometry :: Angle

https://en.wikipedia.org/wiki/Angle

>An angle is a rotational separation of two rays.

The official definition of angle uses rays, but in practice the sides of an angle can also be lines, line segments, vectors, and generally any vertex at the intersection of two straight lines.

Components of an angle
- vertex: point of intersection of initial and terminal ray
- initial side: initial ray, by default horizontal ray
- terminal side: a ray subtending an angle with the initial ray

Angles are usually evaluated in terms of the Cartesian coordinate system where the initial side of an *angle in the standard position* coincides with the x-axis.

An angle placed in the standard position means
- its initial side is lined up with the (positive) x-axis
- its vertex is placed at the origin of the coordinate system
- its terminal side is positioned so as to subtends an angle, denoting its size

By convention, angles are measured such that counterclockwise (ccw) rotations are considered positive, while clockwise (cw) rotations are negative.

Thus, the two rays start with the terminal ray also coinciding with the x-axes, measuring 0ᵒ. Then the terminal ray starts its rotational separation by extending towards the quadrant I which measures positive angles; negative angles rotate downwards, towards the quadrant IV.

- 0ᵒ zero angle
- 360ᵒ full angle
- 90° right angle
Any negative angle has a dual positive angle and vice versa:
- 90°  = -270° = 450°
- 45°  = -315°
- 180° = -180°
- 270° = -90°
- 360° = 0°

Values of angles are implicitly `(mod 360)`, so they exhibit the wrap-around behavior; the values of angles "properly" range from 0° to 360° (in degrees), so below 0° and above 360°, they may wrap around, e.g.
-   0° ≡ ±360° ≡ ±720° (mod 360)
- ±45° ≡ ±405° (mod 360)
- ±90° ≡ ±450° (mod 360)

Positive angles per quadrant:
- Quadrant I    (+x, +y)     0° -  90°   (+, +)   0..2π/2
- Quadrant II   (-x, +y)    90° - 180°   (-, +)   2π/2..π
- Quadrant III  (-x, -y)   180° - 270°   (-, -)   π..3π/2
- Quadrant IV   (+x, -y)   270° - 360°   (+, -)   3π/2..2π

```
              π/2
               ↑
               │
       (-,+)   │   (+,+)
               │
        II     │     I
π ←────────────┼────────────→ 2π
        III    │    IV
               │
       (-,-)   │   (-,+)
               │
               ↓
             2π/3
```


It is a common convention to draw a little arc to indicate an angle, using a Greek small letter. It is also a convention to draw the little ticks on arcs - angles (also lines) with the same number of tick marks have the *same measure*, even if the actual measure is not known.

Types of angles I
-   0° -  90° acute or sharp
-  90° - 180° obtuse
- 180° - 360° reflex

Types of angles II
- quadrantal: muliples of 90°, their terminal side coincides with an axes
  (0, 90, 180, 270, 360)

- 0°    zero      0   rad
- 90ᵒ   right     π/2 rad
- 180ᵒ  straight  π   rad
- 360ᵒ  full     2π   rad     (how do we tell it apart from 0?)
- 270°           3π/2 rad     (anonymous quadrantal)



## Angle Relations

**Coterminal angles** have coincident sides in standard position. Zero and full angle are coterminal. Angle of 60° and its complement 300° have coincident terminal sides, so they are coterminal angles. Coterminal angles are always 360° apart (or a multiple of 360), considering their initial sides, when in standard position.

Angle Relations
- coterminal
- congruent angles: have the same measure, `θ ≅ β` (congruency symbol `≅`)
- adjacent: angles sharing a vertex and a side
- quadrantal
- complementary: make up a right angle
- supplementary: make up a straight angle
- vertical angles
- linear pair

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


The intersection of 2 lines is the vertex of 4 angles
- gives several linear pairs
- *vertical angles* are the opposite ones, always congruent, 1-4, 2-3


### Adding up angles

- **complementary**: two angles that add up to 90° (need not be adjacent)
- **supplementary**: two angles that add up to 180° (need not be adjacent), 3-4
  - if they are adjacent, they form a linear pair
- **linear pair**: two supplementary, and adjacent, angles, e.g. 1-2, 3-4

### Transversal

*Transversal*: a line that intersects two parallel lines.
- gives 8 angles, 4 at each intersection; max just 2 distinct angles.
- each of 8 angle has a corresponding (congruent) angle at the other intersection in the corresponding location, 1-5, 2-6, 3-7, 4-8
- *congruent angles*: 1 ≅ 4 ≅ 5 ≅ 8, 2 ≅ 3 ≅ 6 ≅ 7
- *alternate interior*: angles between parallel lines and at opposite sides of the transversal line, i.e. 3-6, 4-5 (supplementary)
- *alternate exterior*: angles on the outside of parallel lines and at opposite sides of the transversal line: 1-3, 7-8 (supplementary)
- *interior angles of transversal*: angles between parallel lines and on the same side of the transversal line: 3-5, 4-6 (supplementary)
- *exterior angles of transversal*: angles on the outside of parallel lines and at the same sides of the transversal line: 1-7, 2-8 (supplementary)


## Angle measurement: degrees

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

## Angle measurement: radians

With a circle of radius `r`, consider an angle in the standard position (vertex at origin, initial side lined up with x-axis), and its terminal side subtends an angle of ~57°, intersecting the circle at point `A`, while its initial side intersects the circle at point `B`. The arc `AB` has the lenght of 1 radian. Thus, an angle at the origin subtends an angle of 1 radian when it delineates an arc of 1 radius (which is about 57°). The angle of 2 `rad` (radians) subtends an arc of lenght 2 radians, and so on. The radian is often expressed not using integers (like 1, 2, 3, etc) but fraction of π (~3,14). So `3 rad` is just shy off `π rad` (or `~3.14 rad`, or 180°); 90° is `π/2 rad`, 180° is `π rad`, 270° is `3π/2 rad`, 360° is `2π rad`. In fact, the unit `rad` is often left out as it is the default angle unit in math.

Radian is an angle unit in  terms of the radius of a circle. Just like π it is intrinsically associated with a circle and angles, but it doesn't require the presence of a circle in order to measure angles (and we can always imagine a unit circle around an angle).

A circular segment (similar to a pizza slice) of the unit circle is bounded by 2 line segments (initial and termianl sides), each with a length of 1 radius, with the third side being an arc, also of length 1 radius. The angle at the origin is then 1 radian.



>1 radian (`1 rad`) is the angle subtending 1 radius of arclength of a circle

- 1 radian = 1 radius length of an arc.
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


## Angle units

- degree
- radian
- turn
- gradian
- binary degree

### Angle units conversion

- 1 rad ∙ 180° / π rad = 57.3°
- 1.5 rad ∙ 180° / π rad = 86°
- 1° = 0.017453 rad = 1.11 grad
- 1 grad = 0.9° = 0.0157 rad
- 1 rad = 57.29578° = 63.66198 grad
- 1 turn = 360° = 2π rad
