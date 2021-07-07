# Lambda Calculus: Introduction

As an initial introduction, lambda calculus can be thought of as a formalization of the mathematical concept of a function. It concerns itself with the minimal set of elements needed to study the essence of the mathematical notion of function, which includes the rules of how a function is defined and how a function is applied to its arguments.

The fact that the functions are mathematical functions means the notion of a function is exactly how it is represented in mathematics, not how it is represented in programming languages. This means that, unlike in PLs, functions are honest, pure, free of side-effects.

Considered as the very minimal programming language, λ-calculus lacks almost every concept and construction found in PLs; in fact, there are no other values but functions. This means that LC deals with the first-class functions, such that a function can be taken as an argument of a function, and a function can be returned as a value from a function. Moreover, there is nothing predefined, there is no standard library of routines and anything similar, the evaluation environment is completely empty. There are only the rules for defining a new function and the rules for applying it an argument (that is again a function).

With nothing predefined, you work with a completely blank slate, free to determine yourself what the various functions you define will represent.


Lambda calculus has 3 forms of expressions:
- lambda abstraction
- lambda application
- variables

Lambda calculus is a formal system for expressing computation. The grammar rules are divided in two parts: function abstraction and function application.

Function abstraction is a function definition, it defines what a function does. A function definition is static, it does nothing by itself. It stays inactive until it is applied.

A function application "computes" a function. When a function is applied to some arguments is when the action really happens; calling a function is a call to action.

For example, using mathematical notation, `f(x) = x + 1` is a function abstraction, but `f(3)` is a function application.

In lambda calculus, the equality sign `=` from function definition is replaced by a dot



To represent a function `f(x) = x + 1` we write `λx.x + 1`. The big difference is that, unlike in math, in LC all functions are anonymous, so there are no external binders (identifiers), like `f` is in the math notation.

In function application, instead of writing `f(x)`, we must give the definition of a function (abstraction) and immediately follow it by the arguments.

In math, `f(5)`, but in the LC, `(λx.x + 1) (5)` (just for illustration, things like numbers do not exist, nothing exists, until defined explicitly).
