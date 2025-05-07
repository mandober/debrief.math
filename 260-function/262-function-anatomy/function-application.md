# Function application

Given a function `f(x) = x²`, we can apply it to an argument, like `5`, to get `f(5) = 5² = 25`, which is considered as function application in math.

In programming languages, e.g. JavaScript, this would look more like

```js
let f = x => x * x   // function definition
let r = f(5)        // function application
// or, definition and application at once
let r = (x => x * x)(5)
```

In math, when the function `f`, defined as `f(x) = x²`, is applied to an argument like 5, this is denoted as `f(5)`, but it never ends on that; rather we immediately proceed to calculate the result (there's no computer to do it for us), `f(5) = 5² = 25`.

```js
f(x) = x²                          // fn def
f(3) = 3² = 9                      // fn app
f(5) = 5² = 25                     // fn app

g(x, y) = x² + y²                   // fn def
g(3, 4) = 3² + 4² = 9 + 16 = 25     // fn app
g(4, 5) = 4² + 5² = 16 + 25 = 41    // fn app

sin(3) = ?                          // fn app (sin is an already defined fn)
```

Also anonymous functions, like the ones in JS, are rarely met in math, so the notation like `(x²)(5) = 5² = 25` (defining an anonymous inline function `x²` and immediately applying it to the argument 5), although possible, is almost never encountered in math.

A relaxed version of LC is used on occasion, mostly the lambda binders, but otherwise math objects appear as usual. For example,

```js
λx. x + 1                // function definition
λx.λy. x + y             // function definition
λx. x²                   // function definition
(λx. x²)(5) = 5² = 25    // application
```
