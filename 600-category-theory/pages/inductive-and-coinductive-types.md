# (Co)Inductive types

Inductive and coinductive types

Inductive types are defined using induction that is *well-founded*.

Usually, induction is well-founded if the inductive case gets (somehow) smaller with each evaluation step. For example, a function uses a well-founded induction/recursion (recursion is usually tied to one particular parameter that acts as a counter going from n towards 0, and is decremented by 1 in each step) such that the recursive parameter gets strictly smaller with evaluation step.

In general, well-definedness means that something (in an expression, or in a function) gets smaller with each recursive step of evaluation; that the form is such that the entire thing is evidently heading for the base case.

Coinductive types are opposite, and they use corecursion which goes from the base case into infinity. You cannot show the result, since it is infinite, but you can show a part of it. These types are best left to lazy FPL.
