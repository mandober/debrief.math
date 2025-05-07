# Triangle identities

https://en.wikipedia.org/wiki/Trigonometry#Triangle_identities
https://en.wikipedia.org/wiki/Triangle_identities


Triangle identities
- Law of sines
- Law of cosines
- Law of tangents
- Area

Here, `α`, `β` and `γ` are the angles of a triangle and `a`, `b` and `c` are the lengths of sides of the triangle opposite the respective angles.

## Law of sines

The law of sines, aka *the sine rule*, for an arbitrary triangle states:

```
  a        b        c            abc
------ = ------ = ------ = 2R = ------
sin α    sin β    sin γ          2△
```

where `△` is the area of the triangle and `R` is the radius of the circumscribed circle of the triangle:

```
                               abc
R = ---------------------------------------------------------
     √ [ (a + b + c) (a - b + c) (a + b - c) (-a + b + c) ]
```


## Law of cosines

The law of cosines, aka *the cosine formula* or *the "cos rule"* is an extension of the Pythagorean theorem to arbitrary triangles:

c² = a² + b² - 2ab cos C

or equivalently:

```
         a² + b² - c²
cos C = --------------
             2ab
```

## Law of tangents

The law of tangents, developed by François Viète, is an *alternative to the Law of Cosines* when solving for the unknown edges of a triangle, providing simpler computations when using trigonometric tables. It is given by:

```
a - b     tan ((A - B) ∙ 1/2)
------ = ---------------------
a + b     tan ((A + B) ∙ 1/2)
```

## Area

Given two sides `a` and `b` and the angle between the sides `C`, the area of the triangle is given by half the product of the lengths of two sides and the sine of the angle between the two sides:

`Area = △ = 1/2 ∙ a ∙ b ∙ sin C`

**Heron's formula** is another method that may be used to calculate the area of a triangle. His formula states that if a triangle has sides of lengths `a`, `b`, and `c`, and if the *semiperimeter* is

`s = 1/2(a + b + c)`

then the area of the triangle is:

`Area = △ = √(s(s - a)(s - b)(s - c)) = abc/4R`

where `R` is the radius of the circumcircle of the triangle.
