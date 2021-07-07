# Variables

Variables have distinct roles and different properties in a lambda expression.

First, variables are used as parameters in a lambda abstraction. In LC, with lambda abstractions, but also in a broader context of math and PLs, we say that a function is parameterized by some variable.

In simple lambda abstractions, e.g. `λx.x` or `λx.y`, the variable `x` occurs as a formal parameter in both cases. When this lambdas are applied to an argument, the `x` variable (parameter) will bind that argument. These kinds of variable occurrences are called *binding occurrences*.


- binding occurrence vs application occurrence(s)
- free vs bound variables


Variables that occur in a lambda abstraction are considered bound; e.g. `λx.xyx` is a lambda expression in which the variable `x` occurs bound, while the variable `y` occurs free.
