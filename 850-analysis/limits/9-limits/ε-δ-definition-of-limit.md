# Epsilon-delta definition of limit

https://math.libretexts.org/Bookshelves/Calculus/Calculus_3e_(Apex)/01%3A_Limits/1.02%3A_Epsilon-Delta_Definition_of_a_Limit

Consider a few informal ways of describing a limit, given a function `y = f(x)` and an x-coordinate `c`, we say that the limit of the function `f`, as inputs `x` approach `c`, is a function value `L` (output y-coordinate):
- if y tends to L as x tends to c
- if y approaches L as x approaches c
- if `y` is near `L` whenever `x` is near `c`

The problem with these definitions is the lack of rigor since the words "tends", "approach", "near" are not exact. In what way does the variable `x` tend to, or approach, `c`? How near do `x` and `y` have to be to `c` and `L`, respectively?

The formalization uses (3) as a starting point. A restatement gets us closer to the goal: if `x` is within a certain *tolerance level* of `c`, then the corresp value `y = f(x)` is within a certain *tolerance level* of `L`.
- x-tolerance is `δ` (delta)
- y-tolerance is `ϵ` (epsilon)

Rephrasing the previous attempt again nearly gets us to the actual definition: 
if `x` is within `δ` units of `c`, then the corresponding value
of `y` is within `ϵ` units of `L`.

We can write this as

    | x − c | < δ   ≡   c − δ < x < c + δ               (1.2.1)

Now we can express the main theorem as

    | x − c | < δ   ==>   | y − L | < ϵ

or, equivalently

    c − δ < x < c + δ  ==>  L − ϵ < y < L + ϵ             (1.2.2)


The point is that δ and ϵ, being tolerances, can be any positive, but typically tiny, values.


>Definition 1: Limit of a function `f`

Let `I` be an open interval containing `c`, and let `f` be a function defined on `I`, except possibly at `c`. The limit of `f(x)`, as `x` approaches `c`, is `L`, denoted by

    L = lim{x→c} f(x)                      (1.2.3)

means that given any `ϵ > 0`, there exists `δ > 0`, such that for all `x ≠ c`, if `|x − c| < δ`, then `|f(x) − L| < ϵ`.

or, entirely as a FOL formula

    L = lim{x→c}f(x) <=> ∀ϵ>0. ∃δ>0. ∀x≠c. |x−c| < δ ==> |f(x)−L| < ϵ

Note the order in which ϵ and δ are quantified. In the definition, the y-tolerance ϵ is given first and then the limit will exist if we can find an x-tolerance δ that works.
