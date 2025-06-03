# Definite Integral :: Limit of a Riemann Sum

https://flexbooks.ck12.org/cbook/ck-12-calculus-concepts/section/5.5/primary/lesson/the-definite-integral%3A-the-limit-of-a-riemann-sum-calc/

Approximating the area under a curve by summing a finite number of rectangles in a *Riemann Sum* can yield very accurate results, despite the intuition that more sub-intervals should give a better result.

However, taking the limit of the Riemann Sum as the subintervals get smaller (i.e. the number of rectangles tends to infinity as the width of each tends to 0), should asymptotically give the true area.

For some curves, the *Riemann limit* can be evaluated algebraically; for complex curves, the area can only be determined by brute force numerical computations of Riemann Sums.

The area under a curve is defined as the limit of the sum:

```
Rₙ = Δx∙f(x₁) + Δx∙f(x₂) + … + Δx∙f(xₙ) = Σ{i=1..n} Δx∙f(xᵢ)

     n
lim ⎲
n→∞ ⎳ Δx∙f(xᵢ)
    i=1
```

The formula above gives the exact area under the curve: it is defined in terms of the limit of `n`: as `n` (number of slices) tends to infinity, `Δx` (width of each slice) tends to 0, and the result approaches the true value (of area).

`Rₙ` is the sum of `n` rectangles fitted under a curve, each of width `Δx` and height given by `f(xᵢ)`; `xᵢ` is a value on the x-axis, i.e. an element of the interval `[a, b]`, where `a` is a lower and `b` an upper bound of a span of x-coordinates over which the area is calculated. That is, we want to calculate (by integration) the area under the curve (that is the graph of the function `f`), but only over an interval `[a, b]`. The x-coordinate `a` is the lower value (a < b) of the input `x`, and `b` is the higher value. If the number of rectangles that approximates the area under the curve `f(x)` is `n`, then the width of each slice is `Δx`, as given by `Δx = (b - a) / n`.

`Rₙ` is an examples of a *Riemann Sum*.

In general, Riemann Sums are of form `Σ{i=1..n} Δx∙f(xᵢ⋆)`, where `xᵢ⋆` is the value we use to find the length of the rectangle in the i-th sub-interval.

In another interpretation, `xᵢ⋆` is an arbitrary value in the interval, biased towards the center of the interval, that can be used to quickly find a very precise (although maybe not the most precise) value for the area under the curve - rather then evaluating the entire sum (which may be computationally intensive operation).

Since the function `f(x)` is continuous, we may as well use any value within the interval to evaluate the limit.

## History

https://en.wikipedia.org/wiki/Henri_Lebesgue

Integration is a mathematical operation that corresponds to the informal idea of finding the area under the graph of a function. 

The first theory of integration was developed by *Archimedes* in the 3rd century BC with his method of quadratures, but this could be applied only in limited circumstances with a high degree of geometric symmetry. 

In the 17th century, *Isaac Newton* and *Gottfried Wilhelm Leibniz* discovered the idea that integration was intrinsically linked to differentiation, the latter being a way of measuring how quickly a function changed at any given point on the graph. This surprising relationship between two major geometric operations in calculus, differentiation and integration, is now known as the Fundamental Theorem of Calculus. It has allowed mathematicians to calculate a broad class of integrals for the first time. However, unlike Archimedes' method, which was based on Euclidean geometry, mathematicians felt that Newton's and Leibniz's integral calculus did not have a rigorous foundation.

The mathematical notion of limit and the closely related notion of convergence are central to any modern definition of integration. In the 19th century, *Karl Weierstrass* developed the rigorous epsilon-delta definition of a limit, which is still accepted and used by mathematicians today. He built on previous but non-rigorous work by *Augustin Cauchy*, who had used the non-standard notion of infinitesimally small numbers, today rejected in standard mathematical analysis. Before Cauchy, *Bernard Bolzano* had laid the fundamental groundwork of the epsilon-delta definition.

*Bernhard Riemann* followed up on this by formalizing what is now called the **Riemann integral**. To define this integral, **one fills the area under the graph with smaller and smaller rectangles and takes the limit of the sums of the areas of the rectangles at each stage**. For some functions, however, the total area of these rectangles does not approach a single number. Thus, they have no Riemann integral.

*Henry Lebesgue* invented a new method of integration to solve this problem. Instead of using the areas of rectangles, which put the focus on the *domain of the function*, Lebesgue looked at the *codomain of the function* for his fundamental unit of area.

Lebesgue's idea was to first define *measure*, for both sets and functions on those sets. He then proceeded to build the integral for what he called simple functions - *measurable functions* that take only finitely many values. Then he defined it for more complicated functions as the least upper bound of all the integrals of simple functions smaller than the function in question.

>*Lebesgue integration* has the property that every function defined over a bounded interval with a Riemann integral also has a Lebesgue integral, and for those functions the two integrals agree.

>Furthermore, every bounded function on a closed bounded interval has a Lebesgue integral and there are many functions with a Lebesgue integral that have no Riemann integral.

As part of the development of Lebesgue integration, Lebesgue invented the *concept of measure*, which extends the idea of length from intervals to a very large class of sets, called *measurable sets* (so, more precisely, *simple functions* are functions that take a finite number of values, and each value is taken on a measurable set). Lebesgue's technique for turning a measure into an integral generalises easily to many other situations, leading to the modern field of *measure theory*.

The Lebesgue integral is deficient in one respect: the Riemann integral generalises to the *improper Riemann integral* to measure functions whose domain of definition is not a closed interval. The Lebesgue integral integrates many of these functions (always reproducing the same answer when it does), but not all of them.

For functions on the real line, the *Henstock integral* is an even more general notion of integral (based on Riemann's theory rather than Lebesgue's) that subsumes both Lebesgue integration and improper Riemann integration. However, the Henstock integral depends on specific ordering features of the real line and so does not generalise to allow integration in more general spaces (say, manifolds), while the Lebesgue integral extends to such spaces quite naturally.

>While the Riemann integral considers the area under a curve as made out of vertical rectangles, the Lebesgue definition considers horizontal slabs that are not necessarily just rectangles, and so it is more flexible. For this reason, the Lebesgue definition makes it possible to calculate integrals for a broader class of functions.

For example, the Dirichlet function, which is 1 where its argument is rational and 0 otherwise, has a Lebesgue integral, but does not have a Riemann integral. Furthermore, the Lebesgue integral of this function is zero, which agrees with the intuition that when picking a real number uniformly at random from the unit interval, the probability of picking a rational number should be zero.

"I have to pay a certain sum, which I have collected in my pocket. I take the bills and coins out of my pocket and give them to the creditor in the order I find them until I have reached the total sum. This is the Riemann integral. But I can proceed differently. After I have taken all the money out of my pocket I order the bills and coins according to identical values and then I pay the several heaps one after the other to the creditor. This is my integral."   
-- H. Lebesgue (summarizing his approach to integration in a letter to Paul Montel).

The insight is that one should be able to rearrange the values of a function freely, while preserving the value of the integral. This process of rearrangement can convert a very pathological function into one that is "nice" from the point of view of integration, and thus let such pathological functions be integrated.

https://en.wikipedia.org/wiki/Lebesgue_integral

Folland (1999) summarizes the difference between the Riemann and Lebesgue approaches thus: "to compute the Riemann integral of f, one partitions the domain [a, b] into subintervals", while in the Lebesgue integral, "one is in effect partitioning the range of f."

For the Riemann integral, the domain is partitioned into intervals, and bars are constructed to meet the height of the graph. The areas of these bars are added together, and this approximates the integral, in effect by summing areas of the form f(x)dx where f(x) is the height of a rectangle and dx is its width.

For the Lebesgue integral, the range is partitioned into intervals, and so the region under the graph is partitioned into horizontal "slabs" (which may not be connected sets). The area of a small horizontal "slab" under the graph of `f`, of height `dy`, is equal to the measure of the slab's width times `dy`: 
`μ({x∣f(x)>y})dy`.

The Lebesgue integral may then be defined by adding up the areas of these horizontal slabs. From this perspective, a key difference with the Riemann integral is that the "slabs" are no longer rectangular (cartesian products of two intervals), but instead are cartesian products of a measurable set with an interval.
