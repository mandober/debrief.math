# Terminal object

https://en.wikipedia.org/wiki/Terminal_object
https://en.wikipedia.org/wiki/Initial_and_terminal_objects
http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/terminal+object


A **terminal object** of a category C is an object T in C such that for every object X in C, there exists precisely one morphism `X -> T`.

```js
A   B   C
  ↘ ↓ ↙
    T
```

Every object in the category has exactly 1 arrow to the terminal object. The terminal object also has exactly 1 arrow to itself - the identity arrow.

Terminal objects are also called *final objects*. The dual notion is that of a initial object.


## Examples

- in 𝗦𝗲𝘁, every singleton is a terminal object
- in 𝗛𝗮𝘀𝗸, the `()` type is a terminal object (loosely), `a -> ()`. Algebraically, the number of unary functions from any type `a`, to the unit type, `()`, is `1ᵃ = 1`.
