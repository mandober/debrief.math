# Del

https://en.wikipedia.org/wiki/Del

This article is about the mathematical operator represented by the nabla symbol `∇`. For the symbol itself, see nabla symbol. For the operation associated with the symbol `∂`, also sometimes referred to as "del", see Partial derivative.

https://en.wikipedia.org/wiki/Nabla_symbol
https://en.wikipedia.org/wiki/Partial_derivative

**Del** (or nabla) is an operator particularly used in vector calculus as a *vector differential operator*, usually represented by the nabla symbol `∇`.

When applied to a function defined on a one-dimensional domain, it denotes the standard derivative of the function as defined in calculus.

When applied to a field (a function defined on a multi-dimensional domain), it may denote any one of 3 operations depending on the way it is applied:
- the gradient or (locally) steepest slope of a scalar field (or sometimes of a vector field, as in the Navier-Stokes equations)
- the divergence of a vector field
- the curl (rotation) of a vector field

Del is a very convenient mathematical notation for those 3 operations (gradient, divergence, and curl) that makes many equations easier to write and remember. 

The del symbol (or nabla) can be formally defined as a vector operator whose components are the corresponding *partial derivative operators*.

```js
// ∇ is the gradient operator
∇²Ψ = ∂Ψ/∂x² + ∂Ψ/∂y² + ∂Ψ/∂z²
```

As a vector operator, it can act on scalar and vector fields in 3 different ways, giving rise to 3 different differential operations:
1. it can act on scalar fields by a formal scalar multiplication, 
   giving a vector field called the *gradient*
2. it can act on vector fields by a formal dot product, 
   giving a scalar field called the *divergence*
3. it can act on vector fields by a formal cross product, 
   giving a vector field called the *curl*

These formal products do not necessarily commute with other operators or products. These 3 uses are summarized as:
- gradient:  `grad f = ∇f`
- divergence: `div v = ∇ ⋅ v`
- curl:      `curl v = ∇ × v`


In 3D Cartesian coordinate system ℝ³ with coordinates `(x,y,z)` and standard basis or unit vectors of axes `{î, ĵ, k̂}`, del is written as

    ∇ = î ∂/∂x
      + ĵ ∂/∂y
      + k̂ ∂/∂z
      = (∂/∂x, ∂/∂y, ∂/∂z)
