# Math › Calculus › TERMS

## Derivative
https://en.wikipedia.org/wiki/Derivative


![derivative](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Tangent_to_a_curve.svg/200px-Tangent_to_a_curve.svg.png)

The graph of a function (in black) and a tangent line to that function (in red).

The *slope* of a *tangent* line is equal to the *derivative* of the function at the tangent point.

The derivative of 
a function of 
a real variable 
measures 
the sensitivity 
to change of 
the function value 
(output value) 
with respect to 
the change in 
its argument 
(input value).

For example, the derivative of the position of a moving object with respect to time is the object's velocity: this measures how quickly the position of the object changes when time advances.

The process of finding a derivative is called *differentiation*. The reverse process is called *antidifferentiation*.

The fundamental theorem of calculus relates antidifferentiation with integration.

Differentiation and integration constitute the two fundamental operations in single-variable calculus.


## Derivative

The derivative of a function $$y = f(x)$$ of a variable $$x$$ is a measure of the rate at which the value $$y$$ of the function changes with respect to the change of the variable $$x$$.

It is called the derivative of `f` with respect to `x`. If `x` and `y` are real numbers, and if the graph of `f` is plotted against `x`, the derivative is the slope of this graph at each point.

### Linear
If `y` is a *linear function* of `x`, then the graph of `y` is a line. In that case, `y = f(x) = mx + b`, for real numbers `m` and `b`, and the slope, `m`, is given by:

$$
\displaystyle m = \frac{\Delta y}{\Delta x}
$$

where the symbol Δ (Delta) is an abbreviation for "change in". The expressions $$\Delta x$$ and $$\Delta y$$ refer to corresponding changes, that is

$${\displaystyle \Delta y=f(x+\Delta x)-f(x)}$$

The above formula holds because:

$$
{
  \displaystyle{
    \begin{aligned}
      y + \Delta y &= f \left(x+\Delta x \right)\\
                   &= m \left(x+\Delta x \right)+b=mx+m \Delta x+b \\
                   &= y + m \Delta x
    \end{aligned}
  }
}
$$

thus, $$\Delta y=m\Delta x$$. This gives the value for the slope of a line.


### Non-linear
If the function f is not linear (i.e. its graph is not a straight line), then the change in y divided by the change in x varies over the considered range: differentiation is a method to find a unique value for this rate of change, not across a certain range {\displaystyle (\Delta x),} {\displaystyle (\Delta x),} but at any given value of x.


## Differentiation rules
The derivative of a function can, in principle, be computed from the definition by considering the difference quotient, and computing its limit. In practice, once the derivatives of a few simple functions are known, the derivatives of other functions are more easily computed using rules for obtaining derivatives of more complicated functions from simpler ones.

Derivative function of f(x) is denoted as f'(x)

### Rules for basic functions

**Derivatives of powers**

$$f(x)$$ | $$f'(x)$$
---------|----------
$$1$$    | $$0$$
$$x$$    | $$1$$
$$x^2$$  | $$2x$$
$$x^{\frac{1}{4}}$$ | $$(1/4)x^{-3/4}$$
$$3x^3$$ | $$9x^2$$
$$x^r$$  | $$rx^{r-1}$$
$$ax^r$$ | $$arx^{r-1}$$



For each term:
- mult coef by exp to get new coef
- decr exp to get new exp

$$f(ax^3 + bx^2 + cx + d) \to f'(3ax^2 + 2bx + c)$$

## Rules for combined functions

**Constant rule**:    
if $$f(x)$$ is constant, then $${\displaystyle f'(x)=0}$$

**Sum rule**:     
$${\displaystyle (\alpha f+\beta g)'=\alpha f'+\beta g'}$$,    
for all functions f and g and all real numbers $$\alpha$$ and $$\beta$$

**Product rule**:     
$$(fg)'=f'g+fg'$$    
for all functions $$f$$ and $$g$$.     
As a special case, this rule includes the fact    
$$(\alpha f)'=\alpha f'$$    
whenever $$\alpha$$ is a constant, because     
$$\alpha 'f=0\cdot f=0$$     
by the constant rule.

**Quotient rule**:    
$$\left({\frac {f}{g}}\right)'={\frac {f'g-fg'}{g^{2}}}$$     
for all functions $$f$$ and $$g$$ at all inputs where $$g\neq0$$.

**Chain rule for composite functions**:     
If $$f(x)=h(g(x))$$ then   
$$f'(x)=h'(g(x))\cdot g'(x)$$
