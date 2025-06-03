# Fundamental theorem of calculus

https://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus

Differentiation and integration are each other's inverses.

*The fundamental theorem of calculus* is a theorem that links the concept of differentiating a function (calculating its slopes, or rate of change at each point in time) with the concept of integrating a function (calculating the area under its graph, or the cumulative effect of small contributions). Roughly speaking, the two operations can be thought of as inverses of each other.

- function `f(x)`
- derivative of the function `f(x)` is `f′(x)` or `d/dx f(x)`
- antiderivative of the function `f(x)` is `F(x)`
- antiderivative of the derivative of function `f(x)` is `f(x)` itself
- derivative of the antiderivative of function `f(x)` is `f(x)` itself


FTC
- antiderivative of f(x) is `f‛(x)` or F(x)
- derivative of f(x) is f′(x)


f(x) = x², f′(x) = 2x, f‛(x) x³/3

f(x) = 2x
‛(f′(x)) = ‛(2) = 2x
(f‛(x))′ = (x²)′ = 2x

f(x) = 2x
A(f(x)) = x²
D(f(x)) = 2




- Derivative of the antiderivative of function `F(x)` is `F(x)` itself:   
  `d/dx ⎰F(x)dx = F(x)`
- Antiderivative of the derivative of function `f(x)` is `f(x)` itself:   
  `⎰f′(x)dx = f′(x)`


If `A` means taking antiderivative, and `D` means taking derivative, then for a function `f(x) = x²`:
- A(D(x²)) = A(2x) = x²   
  antiderivative of the derivative of f(x) is f(x) itself
- D(A(x²)) = D(x³/3) = x²    
  derivative of the antiderivative of f(x) is f(x) itself




```js
f(x)                // function f
f′(x)               // derivative of f (Lagrange notation)
d/dx f(x)           // derivative of f (Leibniz notation)
⎰f(x)dx             // indefinite integral
⎰f(x)dx = F(x)      // antiderivative
---------------------------------------------------------------
f(x)  = 4x³ + 3         // function f
f′(x) = 12x²            // derivative of f
F(x)  = x⁴ + 3x + C     // antiderivative of f
---------------------------------------------------------------
f(x)     =   x⁴ + 3x       // function f
f′(x)    =  4x³ + 3       // 1st derivative of f
f′′(x)   = 12x²          // 2nd derivative of f
f′′′(x)  = 24x          // 3rd derivative of f
f′′′′(x) = 24          // 4th derivative of f

f(x)     = 24          // function f (it is a const fn)
F₁(x)    = 24x  + C    // iterating antiderivatives (1)
F₂(x)    = 12x² + C    // iterating antiderivatives (2)
F₃(x)    =  4x³ + C    // iterating antiderivatives (3)
F₄(x)    =   x⁴ + C    // iterating antiderivatives (4)

We get the same sequence of functions as for derivatives but in reverse; 
also the const C has concrete values in derivatives

---------------------------------------------------------------

4x³ + 3
F(x)  = x⁴ + 3x         // antiderivative of f
f′(x) = 12x²            // derivative of f




d/dx f(x) = f′(x)   // derivative
⎰ f(x) dx = F(x)    // antiderivative
d/dx F(x) = f′(x)   // derivative
```
