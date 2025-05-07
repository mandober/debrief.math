# Slope

The slope or gradient of a line is a number that describes the inclination (steepness) of the line.

## Finding the slope of a line by projection

Given a line in the 2D Cartesian coordinate system (without equation that defines it), we can figure out its slope by picking any two distinct points P₁ and P₂ on the line. Projecting the point `P₁` onto the x-axis we can read off its x-coordinate, `x₁`, and projecting it onto the y-axis we can read off its y-coordinate, `y₁`. So `P₁ = (x₁, y₁)`. We can do the same for the point `P₂` to get its coordinates, `(x₂, y₂)`.
- P₁ = (x₁, y₁)
- P₂ = (x₂, y₂)

Now that we have the coordinates of both points, we focus first on the x-coordinates: by subtracting the smaller form the larger value we get the difference between them as `Δx = x₂ - x₁`. In general, `Δx` is used to represent a difference between two x-coordinates, while `Δy` represents the difference between two y-coordinates. We calculate it here as `Δx = x₂ - x₁`.

The slope of the line is then obtained as a quotient, called *difference quotient*, by dividing `Δy` by `Δx`.

```
           y₂ - y₁    Δy
slope, m = ------- = ----
           x₂ - x₁    Δx
```

Because we picked two distinct points on the line, no matter how close together they are, their x-coordinates must be distinct; and so the difference `x₂ - x₁` cannot be zero, which avoids the risk of division by zero here.

There are two special cases: for horizontal line and vertical line. The slope of *vertical line* is said to be `undefined` (in the same way as division by zero is), and the slope of *horizontal line* is `0`.

## Finding the slope of a line from its equation
