# The function concept

The concept of function in mathematics has numerous interpretations. The modern interpretation considers a function to be a map between two sets. This is different and more relaxed compared to a previously dominant view that held function as a rule given by a formula. Hand at heart, nearly all functions in modern math are given by a formula, but stating a function as an arbitrary mapping between two sets is now also acceptable (probably no one thought or needed to do this before or ever). Actually, this looser notion of function is useful in that it allows us to consider any arbitrary collection of data values as outputs of a potential function, with the goal being to figure out a proper function (i.e. function-as-a-rule) that fits these data values. This process is called "fitting the curve" since it is usually performed within a coordinate system with these points plotted.

**Function-as-a-rule** defines the function with a formula, usually an equation, but sometimes as inequation given by an inequality as well. This is the interpretation of functions where the famous notation `f(x) = y` belongs as functions are defined by an equation. The same form is used for inequations, simply by replacing the equals sign with another relation, e.g. `f(x) < y`.

When equality is used in mathematics, unlike in computer science (in pragramming languages), the expressions on the two sides related by the equals sign are considered as aboslutely equal, and so they may be exchanged for one another in other contexts. The two sides, i.e. the expressions on each side of the equals sign, are aboslutely equivalent - no expression is more important ot prioritized. After asserting that `a = b`, `a` and `b` are equal expressions, although they are rarely identical; even in `x = 2 + 5`, the right side is not identical to 7 although it does reduce to it. The notation `f(x) = y` sometimes feels like the equals there is introducing a definition for the left-hand side name, similarly to `x = 2 + 5` where a name (here, the name of a variable) is defined to be 7. The name of the function in `f(x) = y` is `f` but this form is used more as a template of the function form. A concrete function would instead look like `f(x) = x² + 2`, mentioning only the variable `x` - in this context called a prameter `x` - as `y` would be an undefiend name aka identifier (unless `y` was explicitly previosuly defined as in "let `y` be `π/2 + e²` in what follows"). This suggest that the only way for `y` to be defined is as an abbreviation to stand in for a larger expresion. However, in the context of functions, it is long established now that `x` and `y`, despite still being just plain variable names, do have a special role. Variable `x` is almost always understood as representing input values (arguemnt) to a function, while `y` represents its output values. 

The notation `f(x) = y` seems to sometimes fail to convey a more general meaning of `x` and `y` in that `x` is implicitly universally quantified - it ranges over all values of the function's domain. On the other hand, `y` is existentially quantified, implicitly as well, and it is peculiar because although it ranges over the values in the function's codomain, it cannot take on any value arbitrarily (like `x` can) because `y` is a dependent variable - it depends on `x`. `y` just names the resulting value - the result of applying the function `f` to an argument `x`. But then this gets out of hand and we soon have expressions like `x² + y² = 1` that cannot be easily recognized as functions. In fact, this equation may be a regular binary function with two paramters `x` and `y`, or an imlpicit unary function where `y` still represents the output (well, it would be two functions really, `y = ±√(1- x²)`).

In this view (and sense), `y` keeps representing the output, so isolating `x` instead of `y` alone sometimes represents the inverse of a function, `x = f(y)`.

This role of representing output is sometimes used to denote a nameless function, as in `y = x²`, where `x` is still an input.



A function is a relation between sets.

A function relates an object from one set to an object in another set.

A function relates an input to an output. 

The function `f(x) = x²` applied to an argument 4 becomes evaluted as `f(4) = 4² = 16`; in a way, it relates the input (4) to the output (16), i.e. it relates 4 to 16, `4 ⟼ 16`, better said it *maps* 4 to 16.


But whatever the interpretation of a function is, it seems that functions always act on sets. A function takes elements of one set, and gives back elements of another set (possibly the same set). Sets of numbers or letters, but always sets.

https://www.mathsisfun.com/sets/function.html
