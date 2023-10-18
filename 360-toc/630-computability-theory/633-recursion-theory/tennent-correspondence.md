# Tennent correspondence

Tennent correspondence and function refactoring, or, wrapping expressions in functions while maintaining the effects.

Function wrappings:
- Tennent correspondence principle (immediately invoked nullary fn wrapper)
- Binding introduction (immediately invoked unary fn wrapper)

## Tennent Correspondence and Abstraction Principles

The Tennent's Correspondence and Abstraction Principles (TCAP), as described in the book "Principles of Programming Languages" by R. D. Tennent, states that a *PL should support abstraction over all meaningful semantic categories*.

Regarding refactoring of functions, particularly with an eye to lambda calculus and its influence that resulted in the introduction of lambda functions in many PLs, the relevant Tennent's principle states that 
>it should be possible to abstract over an expression by introducing a function that returns that expression.

Basically, it should be possible to wrap any expression (e.g. a literal value like 5) in a function, which just returns that expression (`_ => 5`).

## The Principle of Correspondence

From "Principle's of Programming Languages", 1981, R. D. Tennent

[…] the underlying semantic notions for both parameter and definition mechanisms are simply expression evaluation (of an actual parameter or the right-hand side of a definition) and identifier binding (of a formal parameter or the left-hand side of a definition.) […] For any parameter mechanism, an analogous definition mechanism is possible, and vice versa. This is known as the principle of correspondence.

(§9.1 Definitions and Blocks, p.130)


It should be possible to abstract over all meaningful semantic categories in the language. Examples include the function, which is an abstraction over expressions, and the procedure, an abstraction over statements.

Tennent and Morrison note that this is a difficult principle to apply because it is hard to identify the semantically meaningful constructs that should be abstracted.


Tennent Correspondence Principle (TCP) means that an expression can be wrapped in an immediately invoked (nullary) function (lambda), so that the original expression is just returned.

This is a true refactoring that doesn't affect the code.

```js
// literal expression
5

// wrapped in an IIFE
(() => (5))()
```

## Binding introduction

Unlike TCP that deals with *thunks* (nullary functions), by introducing a binding in that same refactoring brings us closely to the LC domain. The binding introduction is exactly the same as the TCP except the wrapping lambda is not nullary (without any formal parameters), but it has an arbitrary named parameter that is not used in the function's body. Because the newly introduced formal parameter it's not used anywhere, the functions can be called by passing it any argument - it will be discarded anyway.

```js
// expression:
(b => b)
// wrapped in lambda:
(z => 5) (z => z)
```
