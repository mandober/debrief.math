# Properties of functions

## Summary

- A function is a constrained relation



## Properties shared with relations

- a relation describes associations between two sets
- a relation shows how the two sets are related by listing associations between the elements of domain and the elements of codomain.
- a relation is a set whose elements are very specific structures - each element is an ordered pair.
- Another set comprised of the same type of elements is a Cartesian product of two sets, A⨯B, so, it is also a relation, in fact, it is the *total relation*.
- In a CP, all domain elements get associated with all codomain elements, there is no choice in the matter. However, in a relation there is, that is, a relation between two sets can associate any number of elements, even none; such a relation is called *null relation*.
- So, a relation can be any set, from the empty set to the CP set of ordered pairs (the empty set also contains ordered pairs, vacuously).
- A relation has a notion of direction because its elements are ordered pairs, and an ordered pair `(a,b) ≠ (b,a)` unless `a = b`. An ordered pair consist of two components and the first component is always a domain element, while the second component is always a codomain element.
- If domain is infinite, a relation is possibly infinite as well, provided there is a way to describe it (e.g. with a set-builder notation) succinctly and not by listing all its pairs (rooster notation).
- A relation can be described explicitly (rooster notation) or implicitly (set-builder notation) using some kind of rule.

A function is a relation that is restricted in a very specific way: examining all the ordered pairs that make up that relation, it cannot be the case that the same domain element appears as the first component in more than one pair; this allows for complete absence of some domain elements from the set of ordered pairs, which is still considered a function, only a *partial function*.

The stronger requirement is that each domain element must appear exactly once in an ordered pair (as the first component) in the set of all ordered pairs that is that relation; such relation is a *total function*.

## Properties of functions

A functional relation is left-unique and right-serial. A relation is a function if it associates each domain element to exactly one codomain element.

A function is possibly infinite is its domain is.

A function is usually equated with a rule that descibes it, but a proper description of a function must mention both domain and codomain, besides that rule, (Dom, Cod, f).

If a function is total (which is always assumed unless it is specifically qualified as partial), the the domain can be derived from the function itself, i.e. from the function-as-a-rule; however, the codomain cannot be derived like that, only the range. And it is this aspect of *vague codomain* that has provoken a function's declaration to necessarily contains explicitly stated codomain as well.

Domain and codomain of a function, `f`, can be stated in the signature of a function, `f : ℕ -> ℤ`, which is usually followed by function's definition (implementation). Sometime, when only the signature is given (because the implementation is unimportant), the arity of the function may be explicitly stated by the superscript on the domain, `f : ℕ² -> ℤ` (no point in stating the arity on the codomain since an output of a function is always a single value). However, to have a tighter formalization of functions, the arity of a function's input can be fixed to a single value as well, mirroring the output.

So, a function always has a single input and a single output. In order to reconcile this with polyadic functions, we can employ the method of *finkeling* a polyadic function into a unary one. (This method was discovered by Russian logician Moses Schoenfinkel, but, nevertheless, it is called "currying" after the American logician Haskell Curry. Although this unfairness is widely recognized, the method's name wasn't changed, stealing Shoenfinkel's well- deserved glory and doubling Curry's, who's first and last name name a pair of programming languages). For example, a binary function `f`, that takes 2 arguments and binds them to paramaters `x` and `y`, is finkeled by constructing a new unary function `f'`based on `f`, that only takes a single argument and returns an anonymous function that will accept the second argument, after which point, it will carry out the same calculation as the original function `f` would. Finkeling: `f(x,y) = z` ≡ `f(x) = λy.z`

## Notation

In math, the traditional notation involving functions is to be explicit about a function's parameters by redundantly using parenthesis. This is fine for shorter expressions but it quickly becomes harder to read then the alternative notation that ditches the parenthesis. More preciselly, it elides the parenthesis that were used to delineate formal parameters in a function declaration, `f(x,y,z)`, and correspondingly, to delineate the arguments in the call to the function, i.e. in function application, `f(a, a+3, 5*a)`. A nullary function is then declared with empty parenthesis, `f()`, and the same form is used application, `f()`. Technically, the case of nullary functions justifies the use of parenthesis because it distinguishes the application of a nullary function `f` to no arguments, `f()`; and the form used to refer to the function `f` itself, i.e. `f`. 
