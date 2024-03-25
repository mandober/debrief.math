# Primitive Recursive Functions :: Glossary and abbreviations

param, parameter
  : Strictly speaking, these are the formal parameters of a function. By applying the function, each formal parameter binds an argument corresponding to its own position. However, in these articles, params may be conflated with args since the phrases like "recursive arg" and "recursive param" are used interchangibly. Strictly, the correct term is "recursive parameter" because a function is defined to recurse over a certain param long before the arguments enter the picture. In general, a function we're defining may take many args, that we consider as if split in two groups: the *rec param* that varies, and the others, *extra params*, which are fixed.

arg, argument
  : Values that a function is applied to. Each arg is bound by a positionally corresponding formal parameter of the function.

rec param, recursive parameter
  : The parameter used for recursion, i.e. the param chosen to recurse over. A discussion about PRFs should decide this up front, once and for all. It is completely arbitrary whether we pick the first or the last arg to recurse over when we define the primitive recursive combinator `ρ`. The problem with choosing the rec param is a trade-off: picking the last arg for recursion makes non-commutative operations easier to define; otherwise, picking the first param for recursion makes it easier (at least) e.g. to implement PRF mechanics in a PL because the rec param always has the known, fixed position.

extra params, fixed parameters, additional parameters, parameters
  : other parameters, here called *extra params*, which have fixed value throughout the induction on the rec param. Only the recursive variable varies (gets decremented) with each recursive call, while the params stay immutable.

equations
  : Primitive recursion is a single function, specified as two equtions, that defines a new primitive recursive `k+1`-ary function `h`. The first eqution deals with the base case , and the second eqution deals with the recursive case. They both do so in terms of the two supplied functions: the `k`-ary function `f` that handles the base case, and `k+2`-ary function `g` that handles the rec case.

rec-case, recursive case
  : The `ρ` operator defines a new, two-part, PR function `h`: the second equation deals with the recursive case in terms of the function `g`.

base-case
  : The `ρ` operator defines a new, two-part, PR function `h`: the first equation deals with the base case in terms of the function `f`.

ρ operator
  : The `ρ` operator, `h = ρ(f,g)`, defines a new PR function `h` in terms of the two supplied functions `f` and `g`. It sets them up to handle the rhs of two equations: `f` handles the rhs of the base case equation, while `g` handles the rhs of the rec case equation.
