# Substitution

A FOL formula like `∀x∃y(y ∈ x)` is well-formed. It is a proposition that has a truth value. If we know the DOD, we can evaluate it. Variables range over DOD items which are sets. So, for all `x`, there is a `y`, such that `y` is in `x`. This means that all sets (in the DOD) are non-empty. In general, this proposition is false because the empty set (but it may be true given a paricular DOD without the empty set).

To evaluate this formula, we start from the left with the `∀`. Universal instantiation (UI) of variable `x` means we can pick any constant to replace `x` with. We pick `a`, so now we have the formula `∃y(y ∈ a)`.

A formula like `∃y(y ∈ x)` has one *free variable* (`x`). 

What do free variables mean? 
How should we interpret them? 

It seems the answer is to treat the free variable `x` in this formula as "given any set `x`", that is, `x` is neither a variable nor a constant, but perhaps somewhere in the middle. It seems it stands for *some fixed element* in the DOD, but we don't know which, and it doesn't actually matter which (since that wouldn't make a difference anyway). 
>A fixed but unspecified element.

The concept is similar to the components of a quadratic equation: some symbols are proper variables, some are fixed (but unknown) numbers, and some symbols are constants (known numbers). `2ax³ + 3bx² + 2cx - 5`.


A variable varies all the time, even during the evaluation of a formula. But a "given" or "fixed" object (element), is fixed to some value (although an unknown value) when the evaluation starts.
