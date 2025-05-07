# Algebraic curve

https://en.wikipedia.org/wiki/Algebraic_curve

>An *affine algebraic plane curve* is the zero set of a polynomial in 2 vars.

A *projective algebraic plane curve* is the zero set in a projective plane of a homogeneous polynomial in 3 variables.

An affine algebraic plane curve can be completed in a projective algebraic plane curve by homogenizing its defining polynomial. Conversely, a projective algebraic plane curve of homogeneous equation `h(x, y, t) = 0` can be restricted to the affine algebraic plane curve of equation `h(x, y, 1) = 0`.

These two operations are each inverse to the other; therefore, the phrase algebraic plane curve is often used without specifying explicitly whether it is the affine or the projective case that is considered.

If the defining polynomial of a plane algebraic curve is irreducible, then one has an *irreducible plane algebraic curve*. Otherwise, the algebraic curve is the union of one or several irreducible curves, called its *components*, that are defined by the *irreducible factors*.

>More generally, an algebraic curve is an *algebraic variety of dimension one*.

Equivalently, an algebraic curve is an algebraic variety that is *birationally equivalent* to an *irreducible algebraic plane curve*. 

If the curve is contained in an affine space or a projective space, one can take a projection for such a *birational equivalence*.

These birational equivalences reduce most of the study of algebraic curves to the study of algebraic plane curves. However, some properties are not kept under birational equivalence and must be studied on non-plane curves. This is, in particular, the case for the *degree* and *smoothness*. 

For example, there exist *smooth curves of genus 0* and degree greater than 2, but any plane projection of such curves has singular points (see Genus-degree formula).

A non-plane curve is often called a *space curve* or a *skew curve*.

## In Euclidean geometry

An algebraic curve in the Euclidean plane is the set of the points whose coordinates are the solutions of a *bivariate polynomial equation* `p(x,y)=0`.

This equation is often called the *implicit equation of the curve*, in contrast to the curves that are the graph of a function defining explicitly `y` as a function of `x`.

With a curve given by such an implicit equation, the first problems are to determine the shape of the curve and to draw it. These problems are not as easy to solve as in the case of the graph of a function, for which `y` may easily be computed for various values of `x`. The fact that the defining equation is a polynomial implies that the curve has some structural properties that may help in solving these problems.

Every algebraic curve may be *uniquely decomposed* into a finite number of smooth monotone arcs (also called *branches*) sometimes connected by some points sometimes called *"remarkable points"*, and possibly a finite number of *isolated points called acnodes*.

>A *smooth monotone arc* is the graph of a smooth function which is defined and monotone on an open interval of the x-axis.

In each direction, an arc is either unbounded (usually called an infinite arc) or has an endpoint which is either a singular point, or a point with a tangent parallel to one of the coordinate axes.

For example, for the *Tschirnhausen cubic*, there are two infinite arcs having the origin (0,0) as of endpoint. This point is the only *singular point* of the curve. There are also 2 arcs having this singular point as one endpoint and having a second endpoint with a horizontal tangent. Finally, there are 2 other arcs each having one of these points with horizontal tangent as the first endpoint and having the unique point with vertical tangent as the second endpoint. In contrast, the *sinusoid* is certainly not an algebraic curve, having an infinite number of monotone arcs.

To draw an algebraic curve, it is important to know the remarkable points and their tangents, the infinite branches and their asymptotes (if any) and the way in which the arcs connect them. It is also useful to consider the *inflection points* as remarkable points.

When all this information is drawn on a sheet of paper, the shape of the curve usually appears rather clearly. If not, it suffices to add a few other points and their tangents to get a good description of the curve.
