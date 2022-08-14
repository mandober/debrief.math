# Let binding in lambda calculus

Again, lambda calculus has nothing but annonymous functions, which among other things, means that there's no way to bind the intermediate computations. Giving names to the results of intermediate calculations is a feature that solely benefits readability and understanding of the code. It is there only for the user's sake - a piece of code without it looks like a spaceless continuous line of suffocating text that tends to infinity. A parser couldn't care less, but a human reader (and author) might.

Binding the intermediate computations helps the flow. Let binding has (probably) originated in ML (or was it that let-binding in ML is the only way to get polymorphism? or both, "polymorphic let" and origin?). ML distiguishes between recursive and non-recursive let-binding, featuring two distinct forms: `let` and `let rec`. Haskell packs the two forms into a single one, so the same keyword (`let`) may be used for both forms.

```hs
-- the let-binding is a subexp:
let param = arg in body

-- so it may be bound to a top-level name:
selfPower = let x = 3 in x ^ x

-- the prev example wasn't recursive, this one is:
fix = let x = f x in x
```

We can we implement this idea to the lambda calculus

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
