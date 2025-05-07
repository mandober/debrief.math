# Graphing functions

## Function basics

Similarly to relations, functions relate two sets - they associate the elements from a source set to elements of the target set

All functions are relations but not vice versa; only relations that are left-unique and right-total are functions. The crucial property of functions (functional property of relations) is that en element

Functions are relations that are left-unique and right-total. Like all relations, functions are associations between two sets. Note: binary relations are the most common and they relate two sets; however, there may be n-ary relations between `n` sets.


Unlike free-form geometric shapes which are graphed by taking their constituent points (at least a subset of the crucial points) and translating them into coordinates, shapes (curves) defined by a function are wholly contained in a single equation which takes inputs and for each distinct input `x` produces a corresponding output `y`.

Generically, functions have the form `f(x) = y`, where the variable `x` ranges over the domain set of the function `f`. Both the domain and the codomain set need to be specified, usually as a separate expression of the form `f : A → B` called the *function type* (or the type of the function).

Putting it all together, a function is properly defined by stating its type (also called type signature) and then stating its definition:

    f : A → B
    f(x) = y

which shows a generic form of both statements. A concrete example may be

  sq : ℤ → ℕ
  sq(x) = x²

which defines a function called `sq` whose domain is the set ℤ, while its codomain is set ℕ. Such function (disregarding functions' names) would be different from a function that has the same *definition* but different *type*.

  sq : ℚ → ℚ
  sq(x) = x²

This also shows that not any combination of domain and codomain is valid:

    ℕ → ℕ  (ok)
    ℤ → ℕ  (ok)
    ℕ → ℤ  (ok, but unnecessarily wide codomain)
    ℤ → ℤ  (ok, but unnecessarily wide codomain)
    ℚ → ℕ  (invalid)
    ℚ → ℤ  (invalid)
    ℚ → ℚ  (ok)
    ℚ → ℚᐩ (codomain may be restricted to only positive rationals)
    ℝ → ℝᐩ (codomain may be restricted to only positive reals)

Usually functions are defined such that their codomain is the smallest set possible, although a wider codomain then necessary may be used as well. In fact, two functions that are the same in all other respects except that one has the codomain wider then necessary are still distinct functions (ignoring function names as there shouldn't be two functions with the same name in the same context; in practice this is not that big of a concern).




along with the codomain of the function as the 
in the form `f : A → B`.


>A **graph** is a set of points (coordinates) in the *Cartesian plane*, where each point `(x, y)` indicates that `f(x) = y`.
