# Unit circle

## Unit circle equation

The unit circle has radius 1 and it is centered at the origin, as defined by the equation `x² + y² = 1`, which is identical to the Pythagorean theorem for case when hypotenuse is 1.

## Unit circle as a pair of functions

This equation, however, is not a function but may be split into two functions of opposite signs:
- the function `y =  √(1 - x²)` defines the upper semicircle
- the function `y = -√(1 - x²)` defines the lower semicircle

```js
x² + y² = 1      // circle equation
y² = 1 - x²      // rearrange
y = ±√(1 - x²)   // isolate y
```

We had `y²` on the left side, so when we take a square root of both sides, we also need to account for the possibility that `y` was a negative number, thus we have `±√(…)`. In this case, if the term `√(1 - x²)` is positive, we get the function that defines the upper semicircle; otherwise, we get a function that defines the lower half of the circle.

## Trig functions on the unit circle

The unit circle is ideal for idetifying trig functions. The trig functions are actually related to a right triangle where they represent ratios of its different sides.

The right triangle here is the one we can draw inside the unit circle.

One vertex, `O`, of these right triangles is always at the origin, and its angle is labelled `θ`. The vertex `B` is at the right angle (π/2, 90ᵒ) and this vertex is locted somewhere on the x-axis depending on the third vertex. The third vertex, `A`, is located somewhere on the circle. By projecting the point `A` onto the x-axis we get the point `B`.



We want to find out the lengths of the sides of the right triangles with different angle `θ`.



The unit circle is ideal for identifying the trig functions. Focusing only on the first quandarant, any point on the circle can be identified by the coordinates `(x, y) = (cos θ, sin θ)`. Moreover, any radial line from the center of the circle to a point `A` on the circle makes a right triangle. The radial line, `OA`, is the hypotenuse of that right triangle, and the angle it subtends with the x-axis is labelled `θ`. The line segment, `AB`, coinciding with the x-axis is the *adjacent side* of the right triangle wrt the angle `θ`. Initial point of that line segment is the origin, `O`, while its terminal point, `B`, can be found by projecting the point `A` onto the x-axis. The line segment `OB` is the *opposite side* of the right triangle wrt the angle `θ`. With that, we have constructed a right triangle `AOB`.

Trigonometry is about the ratios of the sides of the right triangle wrt to one of the two other angles. The angle in terms of which we examine these ratios is traditionally labelled `θ`. The ratio between the opposite side `OB` of the triangle `AOB` to the hypotenuse `OB` is given by the sinus function, `sin(θ)`.

- `AOB` right triangle
- `θ` angle at vertex `O`
- hypotenuse    `OA`
- opposite side `OB`
- adjacent side `AB`

Basic trig functions
- sin(θ) = opp/hyp = OB/OA
- cos(θ) = adj/hyp = AB/OA
- tan(θ) = opp/adj = OB/AB

```
√2   = 1.414
√2/2 = 1/√2 = 0.707
1/√2 = √2/2 = 0.707

√3   = 1.442
√3/2 = 3/2√3 = 0.721

√5   = 2.236
√5/2 = 1.118
```

Common values of basic trig functions for common angles
- for θ = 0π rad = 0ᵒ
  - sin(0) = 0
  - cos(0) = 1
  - tan(0) = 0
- for θ = π/2 rad = 90ᵒ (π/2 rad = 1.57 rad)
  - sin(0) = 0
  - cos(0) = 1
  - tan(0) = 0
- for θ = π rad = 180ᵒ (π rad = 3.14 rad)
  - sin(0) = 0
  - cos(0) = 1
  - tan(0) = 0
- for θ = 2π rad = 360ᵒ (2π rad = 6.29 rad)
  - sin(2π) = 0
  - cos(2π) = -1
  - tan(2π) = 

- for θ = π/6 rad = 30ᵒ (π/6 rad = ? rad)
  - coordinates of the point on the circle, (√3/2, 1/2)
  - sin(π/6) = 1/2  = 0.5
  - cos(π/6) = √3/2 = 0.721
  - tan(π/6) = 

- for θ = π/4 rad = 45ᵒ (π/4 rad = ? rad)
  - coordinates of the point on the circle, (√2/2, √2/2)
  - sin(π/6) = √2/2 = 0.707
  - cos(π/6) = √2/2 = 0.707
  - tan(π/6) = 

- for θ = π/3 rad = 60ᵒ (π/3 rad = ? rad)
  - coordinates of the point on the circle, (1/2, √3/2)
  - sin(π/6) = √3/2 = 0.721
  - cos(π/6) = 1/2  = 0.5
  - tan(π/6) = 


```
degree  | 30ᵒ         | 45ᵒ          | 60ᵒ
radians | π/6         | π/4          | π/3
sin(θ)  | 1/2         | √2/2         | √3/2
cos(θ)  | √3/2        | √2/2         | 1/2
coords  | (√3/2, 1/2) | (√2/2, √2/2) | (1/2, √3/2)
```





radians| 0π | π/12  | π/6   | π/5   | π/4   | π/3   | π/2   |
-------|----|-------|-------|-------|-------|-------|-------|
sin    | 0  | 0.282 |       |       |       |       |       |
sin⁻¹  | 0  | 3.549 |       |       |       |       |       |
sinh   | 0  | 0.289 |       |       |       |       | 2.301 |
sinh⁻¹ | 0  | 3.454 |       |       |       |       |       |
cos    | 1  | 0.959 |       |       |       |       |       |
cos⁻¹  | 1  | 1.042 |       |       |       |       |       |
cosh   | 1  | 1.041 |       |       |       |       | 2.509 |
cosh⁻¹ | 1  | 0.960 |       |       |       |       |       |
tan    | 0  | 0.293 |       |       |       |       |       |
tan⁻¹  | 0  | 3.405 |       |       |       |       |       |
tanh   | 0  | 0.278 |       |       |       |       | 0.917 |
tanh⁻¹ | 0  | 3.596 |       |       |       |       |       |
sec    | 1  | 1.042 |       |       |       |       |       |
sec⁻¹  | 1  | 0.959 |       |       |       |       |       |
sech   | 1  | 0.960 |       |       |       |       | 0.398 |
sech⁻¹ | 1  | 1.041 |       |       |       |       |       |
csc    | un | 3.549 |       |       |       |       |       |
csc⁻¹  | un | 0.282 |       |       |       |       |       |
csch   | un | 3.454 |       |       |       |       | 0.434 |
csch⁻¹ | un | 0.289 |       |       |       |       |       |
cot    | un | 3.405 |       |       |       |       |       |
cot⁻¹  | un | 0.293 |       |       |       |       |       |
coth   | un | 3.596 |       |       |       |       | 1.090 |
coth⁻¹ | un | 0.278 |       |       |       |       |       |



rad  | sin    | cos    | tan    |
-----|--------|--------|--------|
1    |  0.841 |  0.540 |  1.557 |
2    |  0.909 | -0.416 | -2.185 |
3    |  0.141 | -0.999 | -0.142 |
4    | -0.757 | -0.653 |  1.157 |
5    | -0.959 |  0.283 | -3.380 |
6    | -0.279 |  0.960 | -0.291 |
