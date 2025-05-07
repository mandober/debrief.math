# Functionals

Higher-order functions are usually called functionals in math. These the functions that take another function as argument, or even return a function. However, these are usually encountered in specific math fields, like calculus, and even there they don't have formal notation.

Lambda calculus, on the other hand, is a logic formal system, a formal theory of functions. It has a formal notation how to define a function (abstraction) and hoew to apply them (application). In LC, all functions are in fact functionals since everything is a lambda function, even numbers.

However, LC is almost never used outside math logic, although its syntax is used on occaasion. Using LC sytnax making use of lambda binders, but using plain numbers and other math objects otherwise.

This, relaxed version, of the lambda calculus syntax looks like:
- `λx. x + 1`     defines an anonymous successor function
- `λx. x²`        function definition
- `(λx. x²)(5)`   function application

```js
λx.x²                   // function definition
(λx. x²)(5) = 5² = 25   // function application
```
