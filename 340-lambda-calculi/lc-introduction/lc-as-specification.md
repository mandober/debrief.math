# Lambda calculus as a specification

Lambda calculus is often considered a prototypical FPL, being entirely based on abstraction and application of functions.

However, lambda calculus is perhaps less of a PL and more a specification. It just specifies some aspects regarding the way on which functions are defined and applied. It doesn't even bother too much with the deailts, so many aspects are left unspecified.

> LC is merely a specification of how to define and apply functions.

it just specify the way in which functions are defined, along with some rules about how are they applied. Today, this specification is familiar to everyone, especially to mathematicians and programmers, but perhaps things weren't so evident back in the 1930's when computers didn't exist, let alone programming languages.

Even as a specification, lambda calculus is a very loose one, leaving many things open to interpretation, particularly the issues around function application. Although applying a function may seem like a simple thing, actually the number of issues and nuances involved can be staggering. For example: Are the arguments fully/partially/at all evaluated before being passed into a function? What about if an argument is ignored by the function? Is the procedure different if there are two or more arguments that are precisely the same - is each evaluated (and how much), or just one (and the result shared with the others)? Are results of current calculations cached (memoized) so they can be reused in case the function is again called with the same arguments?

As a specification of how to define functions, the notation used by LC is very succint, dispensing with the ceremony as much as possible; perhaps that was one the main reason this notational system became so popular.

Mathematics prefers the notation for defining named functions, e.g. `f(x) = x²`, defined the function named `f`; the notation for function application reuses the same parenthesized format, so applying this function to an argument (3) is denoted `f(3)`. However, insisting on parenthesis becomes unwieldy very quickly, e.g. the application `f(y - 1, h(y - 1, x), x)` already looks too noisy, and it can get much worse.

The situation is not much better in CS, where many of PLs also insist on highly verbose protocols. For example, JS's syntax for defining a function:

```js
// named function definition
function Foo (a, b) {
  // obligatory braces
  return a + b
  // obligatory return keyword
}
```

Fortunatelly, with ES6 edition, JS has gained another way of defining functions which is very similar to the syntax of LC:

```js
// anonymous function definition
(a => b => a)
// LC equivalent: (λa.λb.a)

// function application: (λx.x)(λa.λb.a) ~~> (λa.λb.a)
(x => x)(a => b => a)
//  ~~> (a => b => a)
```
