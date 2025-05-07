# Line coordinates

https://en.wikipedia.org/wiki/Line_coordinates

In geometry, line coordinates are used to specify the position of a line just as point coordinates (or simply coordinates) are used to specify the position of a point.

## Contents

- 1. Lines in the plane
- 2. Tangential equations
- 3. Tangential equation of a point
- 4. Formulas
- 5. Lines in three-dimensional space
- 6. With complex numbers
- 7. See also
- 8. References

## Lines in the plane

There are several possible ways to specify the position of a line in the plane.
- by pair (m, b) and equation `y = mx + b`
- by pair (l, m) and equation `lx + my = -1`
- 

A simple way is by the pair `(m, b)` where the equation of the line is

    y = mx + b
    0 = mx + b - y

where
- `m` is the slope
- `b` is the y-intercept

This system specifies coordinates for all lines that are not vertical.

It is more common to use coordinates `(l, m)` where the line equation is

    lx + my + 1 = 0
    lx + my = -1

where
- `l` is the negative reciprocal of `x`
- `m` is the y-intercept

This system specifies coordinates for all lines except those that pass through the origin.

The exclusion of lines passing through the origin can be resolved by using a system of 3 coordinates `(l, m, n)` to specify the line with the equation

    lx + my + n = 0      for ¬(l=0 ∧ m=0)

where
- `l` and `m` may not both be 0
- only the ratios between `l`, `m`, `n` are significant

In this equation, only the ratios between `l`, `m` and `n` are significant; in other words, if the coordinates are multiplied by a non-zero scalar then line represented remains the same. So `(l, m, n)` is a system of homogeneous coordinates for the line.

If points in the real projective plane are represented by homogeneous coordinates (x, y, z), the equation of the line is lx + my + nz = 0, provided (l, m, n) ≠ (0,0,0) . In particular, line coordinate (0, 0, 1) represents the line z = 0, which is the line at infinity in the projective plane. Line coordinates (0, 1, 0) and (1, 0, 0) represent the x and y-axes respectively.
