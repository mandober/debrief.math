# Trigonometric functions

- trig functions represent ratios between sides of a right triangle
- trig functions are calculated in term of an angle `θ`
- trig functions and the ratios they define are related to the angle `θ`
- term "adjacent" and "opposite" side are sides relevant to the angle `θ`
- the opposite side is the side of right triangle opposite of the angle `θ`
- but related to the same angle θ, there may be multiple distinct opposite side


## Trig functions

Trigonometric functions are stated or calculated with a specific angle of the right triangle in mind. That angle is labelled `θ`, and it is in terms of this angle that trig fns are defined and phrases like "adjacent" and "opposite" used. However, the phrases "adjacent" and "opposite" are still relative to the angle θ, and not absolutely determined by that angle. This is because the same angle θ can belong to multiple right triangles. On the unit circle, the "standard" triangle has one vertex fixed at the origin `O`, another vertex `A` is on the circle, and the projection of the point `A` onto the x-axis deterines the final vertex `B`. The triangle `AOB` is a righht triangle, and the angle `AOB` is labelled `θ`, while the angle `ABO` is the right angle. However, we can extend this triangle such that the third vertex `B` is moved along the x-axis, exactly at the point of intersection of the x-axis and the circle, which we label `B'`. If we draw a (vertical) tanglent line that touches the circle exactly at point `B'`, then intersection of the extended radial line and the tangent line is the third vertex `A'`. The triangle `A'OB'` is also a right tiangle. In fact these two right triangles, `AOB` and `A'OB'` share the angle `θ` (angle `AOB`), but each triangle has the its own notion of "adjacent" and "opposite" side wrt to θ.

>Thus, we have the same angle θ, but two different referants fitting the "opposite" and "adjacent" reference.

We can identify 3 right triangles that are *opposite* the angle `θ`:
- one whose opposite side is given by sin θ
- one whose opposite side is given by tan θ
- one whose opposite side is 1
…and each has distinct opposite side (although the related ratios are the same between all three of them).


Trig fns are defined in terms of an angle, usually denoted by `θ`, which all trig functions take as their only argument. The argument value for the angle `θ` is stated in radians, by default (degrees must be annotated by the degree symbol, `ᵒ`). The angle is often given as a fraction or  multiple of `π` radians (`π rad` is approx. `3.14 rad`; `1 rad` is about `57ᵒ`).

When it comes to angles and circles, radians are often stated in terms of `π`
- π/6  rad = 30ᵒ
- π/4  rad = 45ᵒ
- 1    rad = 57ᵒ
- π/3  rad = 60ᵒ
- π/2  rad = 90ᵒ
- 2    rad = 114ᵒ
- 3    rad = 171ᵒ
- 1π   rad = 180ᵒ
- 4    rad = 229ᵒ
- 3π/2 rad = 270ᵒ
- 5    rad = 286ᵒ
- 6    rad = 343ᵒ
- 2π   rad = 360ᵒ


It is in relation to this angle `θ`, which all trig functions take as their only argument, that we discuss the right triangle and the ratios between its sides. The angle θ is at the point `O` that coincides with the center of the unit circle and the origin of the coordinate system.

One vertex, `O`, of these right triangles is always at the origin, and its angle is labelled `θ`. The vertex `B` is at the right angle (π/2, 90ᵒ) and this vertex is locted somewhere on the x-axis depending on the third vertex. The third vertex, `A`, is located somewhere on the circle. By projecting the point `A` onto the x-axis we get the point `B`.



an angle whose one vertex is always at the origin.

Sinus function 


## Trig functions list 



# Trigonometric function names

name      | fn  | function      | notes
----------|-----|---------------|-------
sinus     | sin | f(x) = sin(x) | SOH
cosinus   | cos | f(x) = cos(x) | CAH
secant    | sec | f(x) = sec(x) | 
cosecant  | csc | f(x) = csc(x) | 
tangens   | tan | f(x) = tan(x) | TOA
cotangens | cot | f(x) = cot(x) | 

The basic trig functions are
- sinus
- cosinus
- tangens

In another view, the basic trig functions are
- sinus
- secant
- tangens

and the other 3 functions are these prefixed by `co-`
- co⋅sinus
- co⋅secant
- co⋅tangens

The 3 basic functions without the `co-` prefix are represented by lines drawn below the x-axis, and the 3 with `co-` prefix are above the x-axis.


## Sign of trig fns

"All Students Take Calculus" is a mnemonic for the sign of each trig fn in each quadrant of the plane. The letters *ASTC* signify which of the trigonometric functions are positive, moving ccw through quadrants (as usual):
- Q1 (0ᵒ-90ᵒ, 0 - π/2 rad): all trig fns are positive
- Q2 (90ᵒ-180ᵒ, π/2 - π rad): `sin` and `csc` are positive
- Q3 (180ᵒ-270ᵒ, π - 3π/2 rad): `tan` and `cot` are positive
- Q4 (270ᵒ-360ᵒ, 3π/2 - 2π rad): `cos` and `sec` are positive

```
II            I
sin+ csc+ | sin+ csc+
cos- sec- | cos+ sec+
tan- cot- | tan+ cot+
-------------------------
sin- csc- | sin- csc-
cos+ sec+ | cos+ sec+
tan+ cot+ | tan- cot-
III           IV
```
