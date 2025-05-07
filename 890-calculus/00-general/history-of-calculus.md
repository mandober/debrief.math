# History of calculus

Although the mathematicians of antiquity manged to calculate the areas of non-regular surfaces (like circles) using the *method of exhaustion*, it was not before the 17th century, during the scientific revolution, that the previous work was consolidated and improved, as new methods and paradigms were invented, establishing *Mathematical Analysis* (or just Analysis, aka Calculus) as a standalone branch of mathematics.

Calculus was independently invented by Newton in England and by Leibniz in Germany in the 17th century, and for the next 300 years, it was one of the most interesting branches of higher mathematics, always attracting attention of the great mathematicians, the likes of Euler and Lagrange in the 18th century and Cauchy and Weierstrass in the 19th century.

Traditionally, the subject was divided into differential and integral calculus, the scopes of which have broadened over time, interacting with existing and future math branches such as number theory, set theory, geometry, trigonometry, topology, measure theory, algebra.

- Analysis, Mathematical Analysis, Calculus
- Differential Calculus
- Integral Calculus
- Infinitesimal Calculus
- Theory of functions of complex variables
- Functional Analysis


## Excerpts

https://math.mit.edu/~djk/calculus_beginners/chapter00/section02.html

- Calculus is the study of how things change. It provides a framework for modeling systems in which there is change, and a way to deduce the predictions of such models. It provides a way for us to construct relatively simple quantitative models of change, and to deduce their consequences. With this you get the ability to find the effects of changing conditions on the system being investigated.
- The development of calculus and its applications to physics and engineering is probably the most significant factor in the development of modern science beyond where it was in the days of Archimedes. And this was responsible for the industrial revolution and everything that has followed from it including almost all the major advances of the last few centuries.
- The fundamental idea of calculus is to study change by studying instantaneous change, meaning changes over tiny intervals of time. It turns out that such changes tend to be lots simpler than changes over finite intervals of time, and thus easier to model. In fact calculus was invented by Newton, who discovered that acceleration, which means change of speed, could be modeled by his relatively simple laws of motion. This leaves us with the problem of deducing information about the motion of objects from information about their speed or acceleration. And the details of calculus involve the interrelations between the concepts exemplified by speed and acceleration and that represented by position.
- *Single variable calculus* can deal with motion of an object along a fixed path. The more general problem of motion that can take place on a surface or in space can be handled by *multivariable calculus*. We tackle the latter by throwing the one dimensional calculus on it, and finding ways to use the ideas and methods of 1D calculus to handle higher-dimensional, more general problems.
- When an object moves along a path, its position varies with time, and we can describe its position at any time by a single number, which can be the distance (in some units) from some fixed point on the path (the origin of our coordinate system). If we sign this number (that represents distance/displacement), then the negative number means the object is behind the origin. The motion of an object is then characterized by a set of its numerical positions at relevant points in time. The set of positions and times that we use to describe motion is what we call a function. And similar functions are used to describe the quantities of interest in all the systems to which calculus is applied.
- A typical calculus course covers at least the following topics: (1) How to find the derivative - process called differentiation - which is the instantaneous change of various functions. (2) Using derivatives to solve various problems. (3) Integration as reversed differentiation - the process of going from a derivative of a function back to the original function. (4) Study of methods for integrating various types of functions. (5) Using integration to solve various geometric problems, such as computing the area under a curve, or a surface/volume delineated by bounds/regions. Additional topics include: description of functions in terms of power series; convergence of sequences and series; limits.

## Function inverse

An inverse of function `y = f(x)` is a function obtained by switching its input and output values (arg and returned valued). Given a function `f(x) = y`, its inverse (if exists) is `f⁻¹(y) = x`. For example, the inverse of the square function, `x ⟼ x²`, is the square root function `x ⟼ √x`.

Function and its invense
- `f` and `f⁻¹`
- function named `f` with generic type `f : A → B` defined by `f(x) = y`
- if its inverse function exists, it is denoted by `f⁻¹`
- the inverse fn "undoes" the operation of fn `f`
- if `f(x) = y` then `f⁻¹(y) = x`
- if `f(x) = x²`, then `f⁻¹(y) = √y`
- e.g. `f(2) = 2² = 4`, so `f⁻¹(4) = √4 = 2`
- i.e. if `f(a) = b`, then `f⁻¹(b) = a`
- moreover: `f(f⁻¹(b)) = f(a) = b` and `f⁻¹(f(a)) = f⁻¹(b) = a`

```js
let f = x => Math.pow(x)
let g = x => Math.sqrt(x)
let h = x => Math.exp(x)

f(a) = b
f⁻¹(b) = a
f(f⁻¹(b)) = f(a) = b
f⁻¹(f(a)) = f⁻¹(b) = a
```

- *function inverse*: inverse of a function is a function obtained by switching its values with its arguments. For example the square function, usually written as `x²` has the square root function as an inverse.
- *function composition*: substitution of one function `f` into another `g` produces a new function, the function defined to have, at arg `x`, the value of `f` at arg which is the value of `g` at arg `x`.
