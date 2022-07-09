# Church data structures

Lambda calculus allows data to be stored as partially applied functions - supplying all "field" values (for some data structure) as args to a higher function, except the last arg, which is a "selector" function that picks and returns a particular "field" value.


The trivial use of function to store data would be the constant function, 
`λx₁.λx₂.x₁`, partially applied; i.e. supplying only the first arg (e.g. `v`) stores it inside the function, `(λx₁.λx₂.x₁) v₁ ~~> λx₂.v₁`; to retrive it, we call the returned function with any arg (it is discarded anyway) and we get back the value (`v₁`): `(λx₂.v₁) y ~~> v₁`.

Expanding this concept to encode a pair of values, involves an additional arg - the selector function that will later pick and return one of the two values (we cannot return both at once). Conventinally, the selector function that returns the first components of a pair is called `first`, and the `second` returns the second component.

In general, a function as a data structure has n+1 formal parameters and n fields, where the extra formal parameter is for binding the selector function; and the body contains the application of the selector to "data" fields, in the form `s x₁ x₂ ... xₙ`.

```cpp
        selector         data
       application to   fields     args:fields
                 ↑     /      \     /      \
(λx₁...λxₙ . λs.  s    x₁ ... xₙ))  (v₁ ... vₙ) f
\       /    ↓                                 ↓
  field   selector                       arg:selector
 binders   binding                     (supplied later)
```

May be thought of as a record whose fields have been initialized with some values; these values may then be accessed by applying the term to a function f.

Below, `C` may represent a constructor for an ADT in a FPL such as Haskell. Now suppose there are `N` ctors, each with `Aᵢ` arguments

```js λc
((λx₁...λxₐ₁. λC₁...Cₙ. C₁ x₁ ... xₐ₁) v₁...vₐ₁)
((λx₁...λxₐ₂. λC₁...Cₙ. C₁ x₁ ... xₐ₂) v₁...vₐ₂)
...
((λx₁...λxₐₙ. λC₁...Cₙ. C₁ x₁ ... xₐₙ ) v₁...vₐₙ)
```

* Each ctor selects a different fn from the fn params `f₁...fₙ`
* which provides branching in the process flow, based on the ctor.
* Each ctor may have a different arity.
* If the ctors have no params, then they acts like an enumeration.
* If the ctors have params, recursive data structures may be constructed.

$$
{\displaystyle {\begin{array}{c|c|c}{\text{Constructor}}&{\text{Given arguments}}&{\text{Result}}\\\hline ((\lambda x_{1}\ldots x_{A_{1}}.\lambda c_{1}\ldots c_{N}.c_{1}\ x_{1}\ldots x_{A_{1}})\ v_{1}\ldots v_{A_{1}})&f_{1}\ldots f_{N}&f_{1}\ v_{1}\ldots v_{A_{1}}\\((\lambda x_{1}\ldots x_{A_{2}}.\lambda c_{1}\ldots c_{N}.c_{2}\ x_{1}\ldots x_{A_{2}})\ v_{1}\ldots v_{A_{2}})&f_{1}\ldots f_{N}&f_{2}\ v_{1}\ldots v_{A_{2}}\\\vdots &\vdots &\vdots \\((\lambda x_{1}\ldots x_{A_{N}}.\lambda c_{1}\ldots c_{N}.c_{N}\ x_{1}\ldots x_{A_{N}})\ v_{1}\ldots v_{A_{N}})&f_{1}\ldots f_{N}&f_{N}\ v_{1}\ldots v_{A_{N}}\end{array}}}
$$
