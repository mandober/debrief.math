# Functions in lambda calculus

A function is a special kind of relation that relates the source set (domain) to the target set (codomain).

Being a relation, a function is a set comprised of ordered pairs. The first component of a pair comes from the domain set, while the second component comes from the codomain set.

A function associates each element in a domain set to exactly one element in a codomain. This constraint is exactly what promotes a relation to the status of a function. A function is a *left-unique, right serial relation*.

In fact, there are two restrictions here: 1) all elements of a domain must be associated 2) each to exactly one element of a codomain.

Since, not all codomain elements may be included in an association, those that are form a subset of a codomain called range. And because of that, a function's definition must mention both domain and codomain, although the domain set may be derived from the function set itself - it is the set formed by taking all the first components of all the ordered pairs.

In math, a function has two "faces": a function definition and function application. First, a function needs to be defined and in mathematical notation this looks like `f(x) = x + 1`. A function definition is also called function abstraction. The other face is function application, e.g. `f(3)`, where the previously defined function bound to a variable (identifier) `f` is applied to an argument, `3` in this case.
