# Binding the arguments

In LC, lambda abstraction is a function definition. A lambda abstraction is also referred to as a function or a lambda, but the difference between functions in general and lambda abstractions is that abstractions are always *anonymous* and *unary* functions.

LC has no top-level bindings, so functions are anonymous. The fact that functions can't be named at the top-level and then referenced by name whenever they are needed, might seem inconvenient when writing programs but it doesn't have to be: if we define an application as the root lambda term, we can then have each formal parameter bind a specific function fed as an arg; that way, each function that we want to reuse in the program will get the name of the corresponding formal parameter.

```js
(λi. λk. λs. BODY)
  (λp. p)             // I
  (λa. λb. a)         // K
  (λf. λg. f x (g x)) // S
```

The `I` function is passed in as an arg that will get bound to the formal parameter `i`. We can then refer to the `I` function by the name `i` in the body of the abstraction, where the main part of thecomputation takes place. The same thing with the functions `K` and `S`. This way we don't have to inline the entire definition of a function each time we need that function.


```js
  SKK
= S                        K           K
= ((λx. λy. λz. x z (y z)) (λx. λy. x) (λx. λy. x))

    [x ⟼ (λx. λy. x) ] (λy. λz. x z (y z))

= ((λy. λz. (λx. λy. x) z (y z)) (λx. λy. x))

    [y ⟼ (λx. λy. x) ] (λz. (λx. λy. x) z (y z))

= λz. (λx. λy. x) z ((λx. λy. x) z)

    [x ⟼ z] (λy. x)

= λz. (λy. z) ((λx. λy. x) z)

    [x ⟼ z] (λy. x)

= λz. z ≡ I
```
