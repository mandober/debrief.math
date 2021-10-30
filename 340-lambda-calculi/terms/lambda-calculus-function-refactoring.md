# Function Refactoring

Functional refactorings:
- Function wrapper
  - nullary function wrapper
  - introducing a binding


## Evaluation order

These refactorings will leave the code seemingly unaffected. However, there are situations when the evaluation order becomes important and when they are useful.

Most PL have *applicative evaluation order*, that is, arguments to the function are fully evaluated before being passed in (call-by-value and/or call-by-ref semantics). In languages with *normal evaluation order*, also called *lazy order* (e.g. Haskell), the expressions are not evaluated until actually needed (call-by-need).

Since JS belongs to the former category, these refactorings are useful when implementing things in the restricted spirit of Lambda Calculus. Using a function wrapper, an argument can be passed in with its evaluation delayed, which is absolutely critical in certain situations.


## Function wrappers

An expression can be wrapped in an an immediately invoked function that just returns the original expression.

Using nullary function as a wrapper is possible in JS (and others, e.g. ruby), but not in LC.

```js
// literal expression:
5
// wrapped in lambda and invoked
(() => (5))()
// or the older, pre ES6, way:
(function() { return 5 })()
```

```ruby
# wrapped in lambda and invoked
# ruby 1.8
lambda() { 5 }[]
# ruby 1.9
->() { 5 }.()
# ruby 1.9 (alternative invoke form)
->() { 5 }[]
```


## Binding introduction

A wrapper function may also introduce a formal parameter (in LC it must), but because it is jsut discarded without being used in the body of the function at all, the value of the corresponding argument is irrelevant.

```LC
-- expression:
(λb.b)
-- wrapped and invoked using an arbitrary arg
(λz.(λb.b))(λf.ff)
```

```js
// wrapped in (unary) lambda and invoked using an arbitrary arg
((z) => (5))(Object)
```

```ruby
# ruby 1.9
->(z) { 5 }.(34534)
```

> When using a wrapper function that introduces a new parameter, one must be careful not to shadow an existing identifier.


## Parameter juggling

A function like `adder` below, is a unary function that takes a single argument (the first argument - if compared to a corresponding binary function) then returns another function that takes another argument (the second argument) and then does something, possibly using both arguments.

In this case, the outer function can be seen as a specialization of the inner function.

A function like `adder`, when supplied with both arguments acts as a binary function, just returning the result of the calculation. But when supplied with a single argument it instead returns a more specialized version of itself.


```js
// binary function
const adder2 = (a, b) => a + b;

// "binary" function
const adder1 = a => b => a + b;

// (proper) binary func must be called with 2 args
adder2(3, 5) // 8

// "binary" functions can be called using 1 or both args:
adder1(3)(5); // 8

// but calling it using only one param returns a specialized version of the
// function (with the first arg locked in):
s = adder1(1);

// that func is now, and could have been written originally as:
s = b => 1 + b;
```

Considering the `adder1` function, it can be seen that the first argument gets bound to the `a` parameter, while the second goes to the `b`. It is possible to delay delivery of the second argument to `b` by bouncing it around: introducing another lambda function before the inner one, with a formal parameter that will just pass the argument to the parameter in the function's body that is set up in such a way to trigger invocation and thereby finally deliver the argument to the inner lambda.


```js
// original lambda...
let adder = a => b => b + a;

// ...now wrapped in a parameter-juggler:
let adder = a => z => ((b => b + a)(z));

succ = adder(1);
succ = z => (b => b + 1)(z);
```
