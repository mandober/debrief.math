# Let Expressions

It is useful to bind intermediate results of computations to variables:

`let x = e1 in e2`

We can we implement this idea to the lambda calculus:

```js
translate (let x = e1 in e2) = (\x. translate e2) (translate e1)

translate (x)     = x
translate (\x. e) = \x. translate e
translate (e1 e2) = (translate e1) (translate e2)
```

# Let expression

https://en.wikipedia.org/wiki/Let_expression

* `let` expression associates a function definition with a *restricted scope*
* in LC, `let` expression is a lambda abstraction applied to an arg
* in math, `let` expr associates a Boolean condition with a restricted scope
* in math, let expression may be considered as a conjunction of expressions, within an existential quantifier which restricts the scope of the variable.
* let expression is present in many FPL to allow the *local definition* of expression, for use in defining another expression.
* `let rec` is an extension of the simple let expression which uses the fixed-point combinator to implement recursion.
