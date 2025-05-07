# Notation

## Function notation

Function notation is used very loosely everywhere, leaving it to the context to infer the meaning of variables used. For example, any arbitrary function is often represented by `f(x)`, which is a kind of generic function notation. However, the same notation is used for concrete functions, as in `f(x) = x²`, which defines a new function named `f` that squares its single argument. The generic function form, `f(x)`, is actually the notation for function application - it means applying the (previously defined) function `f` to an argument `x`, the result of which is often denoted by `y`. Therefore, the expression `f(x) = y` is interpreted as a generic function "template" that showcases important parts of a function: `f` is the function's name, `x` represents the function's input, i.e. an element in the (previously defined) function's domain set, while `y` represents the function's output, i.e. an element in the (previously defined) function's codomain set. Defining the function's domain and codomain means defined the function's type. Generically, the function type is denoted by `f : A → B`, and it is usually followed by the function's definition (implementation), e.g. `f : ℕ → ℚ` defined by `f(x)=1/x`. This example illustrates the fact that functions cannot always be identified by their graph (the actual set of ordered pairs), but their type is also of importance; e.g. the function `f : ℕ → ℝ` defined by the same equation as the previous one, `f(x) = 1/x`, is not the same function - their codomains are different.

Functions are then rigorously defined as triples, `(A, f, B)`, where `A` is the domain, `B` the codomain, and `f` the graph of a unary heterogenous function. However, unlike the codomain set, the domain set may be elided since it is possible to recreate it from the graph of the function, as is the range set (range is a subset of codomain). Unary homogenous functions are then fully defined by the graph of the function alone, since these functions are on the same set, `f : A → A`, and domain can always be inferred. For total functions, that is, since partial functions, unlike total, do not require all domain elements to be associated (to engage or participate in the relation). 

Relations are superset of functions, so all functions are relations, but only relations that are left-unique and right-total can be called total functions. Partial functions relax the property of right-totality. Thus, the essential property of functions is left-uniqueness - the fact that a domain element must not be associated with multiple codomain elements. This means it may not participate in the relation at all in case of partial functions, but if it does (and it must in case of total functions), then it must be associated to a single element of the codomain; in short, domain members must not be promiscuous.



Using `y` to mark the output is also uiseful in order to prevent the tautology `f(x) = f(x)`, but it also makes interpreting the ordered pairs `(x, y)` as points that make up the graph of the function.






```js
f : A → B, f(x) = y   e.g. f : ℕ → ℝ, f(x) = √x

// FOL makes this more precise
∀x ∈ A. ∃y ∈ B. f(x) = y
f = { (x, y) | x ∈ A, y ∈ B, f(x) = y }
{ (x₀, y₀), (x₁, y₁), …, (xₙ, yₙ) } ∈ f

// fixpoints
f : A → A, f(x) = y   e.g. f : ℕ → ℝ, f(x) = √x

∃x ∈ A. ∃y ∈ B. f(x) = y
f(x₀) = x₀
```


- f(x)         …generic function prototype
- f(x) = y     …generic fn prototype with `y` repr output for input `x`
- f(x) = 1     …constant fn `f` returns 1 regardless of input `x`
- f(x) = x     …identity fn `f` returns its arg unmodified
- f(x₀) = x₀   …arg `x₀` is a fixpoint of fn `f`
- f(x) = x²    …fn `f` returns the square of the arg, so `y` is `x²`, thus:
- y = x²       …alt def of anonymous fn in terms of the output `y`



- f′(x)        …derivative of previously defined function `f`
- d/dx f(x)    …derivative of previously defined function `f`


**f(x)** is a general notation for a function. `f` is the *function's name*. This form could also be considered as a *function declaration* or *function prototype* since it doesn't tells us anything about its definition, yet it still conveys some information besides the name of the function - such as the fact that the function is unary - it has a single parameter named `x`. Names of function's parameters are not important per se; rather, just like in PLs, a variable is first declared as a parameter in the *function's parameter list*, and then that same variable is used in the *function's body* to mark the places where the corresponding argument goes. The "corresponding" here relates to the fact that functions with arity larger then 1 have multiple paramaters - parameters are bound to the appropriate arguments (when the function is applied) **by position**. This is why the names of parameters must be consistently renamed (although there is little reason to rename function's paramters, at least in algebra and calculus); but, just as an example, `f(x) = x²` is exactly the same function as `f(z) = z²`.

In fact, the form `f(x) = x²` may be considered as *function's definition*. What is still possibly missing is the *function's type*, which, if avaialable, is given separately, e.g. `f : ℕ → ℝ`, showing that the domain of this function `f` is only defined oover the natural numbers, as well that its codomain is the set of real numbers.

    f : ℕ → ℝ
    f(x) = x² + 4


The function is given the name `f`. Names like `f`, `g` and `h` are often used generically, as generic function names, similarly to naming a function `foo` in programming languages. These generic names are often used to name arbitrary functions, given in exercises and examples, as opposed to the established mathematical functions that have their own, well-known and unique names, either alphabetic (like `sign(x)`, `sin(x)`, `arctan(x)`, …) or symbolic (`|x|`, `d|n`, …).

There is a dissonance between referring to a function as `f` vs `f(x)`. The former form is correct when referencing the function itself - when referring to a function we should use just its bare name, not also its possible arguments. The latter form, `f(x)`, is often used, incorrectly, to refer to the function even though it signifies the application of the function to its argument. However, these two forms seem to be interchangible in modern mathematics. Math doessn't really try to resolve these things, and things like the various forms for defining vs declaring vs applying the function.

A function takes an input, denoted by `x`, and produces output, which may be denoted by `f(x)` but `f(x) = f(x)` would look silly, so another variable, usually `y`, is used instead to denote the output value, `f(x) = y` - this is the usual form when stating a generic function.

Another reason the output is denoted by the variable named `y` has to do with plotting a *function's graph* in a coordinate system. Any point in a *plane cartesian coordinate system* is identified by an ordered pair `(x, y)`, so it becomes natural that an input for a function, `x`, denoted the *x-coordinate*, while the function's output, `y`, denotes the *y-coordinate*. This means points on the function's graph are identified as pairs `(x, y) = (x, f(x))`.


## Integral notation

```js
⎛ᵇ         ⎡          ⎤ᵇ
⎜ f(x)dx = ⎢ F(x) + C ⎥ = (F(b) + C) - (F(a) + C) = F(b) - F(a)
⎠ₐ         ⎣          ⎦ₐ
```
