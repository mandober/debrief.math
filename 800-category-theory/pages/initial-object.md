# Initial object

https://en.wikipedia.org/wiki/Initial_object
https://en.wikipedia.org/wiki/Initial_and_terminal_objects
http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/initial+object

An **initial object** of a category C is an object I in C such that for every object X in C, there exists precisely one morphism `I -> X`.

```js
    I
  ↙ ↓ ↘
A   B   C
```

Every object in the category has exactly 1 inbound arrow from the initial object. The initial object itself also has exactly 1 arrow coming to it from itself - the identity arrow.

Initial objects are also called *coterminal objects* or *universal objects*. The dual notion is that of a terminal object.

A **strict initial object** `I` is one for which every morphism into `I` is an isomorphism.

## Examples

- in 𝗦𝗲𝘁, the empty set is the unique initial object
- in 𝗛𝗮𝘀𝗸, `Void` type is an initial object (loose), `initial ∷ Void -> a`. This vacuuously satisfies the condition since it cannot be called. Algebraically, the number of unary functions from `Void` to any type, `a`, is `a⁰ = 1`.
