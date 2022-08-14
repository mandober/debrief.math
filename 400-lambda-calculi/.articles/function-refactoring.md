# Function Refactoring

- refactoring
- introducing a binding
- affecting evaluation order with nullary function wrappers
- applicative evaluation order
  - call-by-value
  - call-by-reference
  - strict semantics
  - eager evaluation
  - delayed evaluation
- normal evaluation order
  - lazy semantics
  - call-by-need



## Evaluation order

These refactorings normally leave the code untouched, however, sometimes affecting the evaluation order is desirable.

Most PL have *applicative evaluation order*, that is, arguments to the function are fully evaluated before being passed in (call-by-value and/or call-by-ref semantics).

In languages with *normal evaluation order* (related to lazy evaluation), the arguments (and expressions in general) are not evaluated until actually needed (call-by-need).

JS is a strict language with eager semantics, but some of these refactorings require delayed evaluation. A typical way to achieve it is by wrapping an argument with a nullary function wrapper.

## Function wrappers

An expression can be wrapped in an *immediately invoked function expression* (IIFE) that just returns the original expression.

```js
// IIFE wrapper
(function() {
  return original_expression();
})();
```

Using a nullary function wrapper, also called a thunk, is possible in JS (and other PLs like ruby), but not in LC.

```js
// ES5 thunk and immediate call
(() => original_expression()) ()

// ES3 thunk and immediate call
(function() {
  return original_expression();
})();
```

Nullary function wrappers are also possible in Ruby

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

A wrapper function need not be nullary; in fact, LC doesn't have nullary functions: all functions are unary. However, we can still achieve the effect of delayed evaluation by introducing a new binder whose body will be our original expression.

That is, if our original lambda expression is, e.g. `λb.b`, and we wish to delay the evaluation of this expression, we cannot use a nullary function wrapper, like `(λ(). (λb.b)) ()`, because this is not allowed in LC. However, we can still do it by creating a new abstraction - we introduce a new binder, say `λv.`, whose body is our original expression, `λv. (λb.b)`. We now need some argument to invoke it, and since the formal parameter `v` is not used in the astraction's body, we can use any argument value for invocation, e.g. `(λa.a)`, or even a diverging term like `(λf.ff)`.

```
abstraction     id
 │              │
┌┴───────────┐ ┌┴─────┐
( λv. (λb.b) ) ( λa.a )
  └┬┘ └┬───┘   └┬─────┘
   │   │       arg
   │  expr
binder
```


```js lc
// original expression
(λb.b)

// we want to wrap it in a THUNK, but thi is not allowed in LC
(λ(). (λb.b)) ()

// So we introduce a new binder whose body is our expression.
// We then invoke it using any arg value (formal param is dropped anyway)
(λv. (λb.b)) (λf.ff)
```

> When using a wrapper function that introduces a new parameter, we must be careful not to shadow an existing identifier.

We don't need to use this technique in JS (since we can just use a nullary fn wrapper), but it would look like this:

```js
// wrapped in unary fn and invoked using an arbitrary arg value:
((z) => (5))(Object)
```

and in Ruby:

```ruby
# ruby 1.9
->(z) { 5 }.(34534)
```



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
