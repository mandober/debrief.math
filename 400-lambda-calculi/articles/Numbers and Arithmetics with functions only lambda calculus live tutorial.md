---
created: 2021-08-30T01:56:29 (UTC +02:00)
tags: []
source: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-1.html
author: Yehonathan Sharvit
---

# Numbers and Arithmetics with functions only: lambda calculus live tutorial | Yehonathan Sharvit

> ## Excerpt
> Numbers and Arithmetics with functions only. Lambda-Calculus introduction in Clojure. Live tutorial.

---
The mathematical theory behind `LISP` is the [λ-calculus][1] (pronounced lambda-calculus).

The amazing thing about `λ-calculus` is that it is possible to represent numbers and the arithmetic operations (`successor`, `addition` and `multiplication`) as functions.

Once you have arithmetics, you have almost all the mathematics and the computer science.

In this article, we are going to show this representation using `clojure`.

By the way, this is the signification of the `λ` sign in the clojure logo:

![Clojure](https://blog.klipse.tech/assets/clojure_logo.jpg)

Like everything in `λ-calculus`, numbers are functions.

A number `n` is a function that receives as argument a `1-arity` function `f` and returns a function that applies `f` `n` times.

Let’s define the first natural numbers, manually:

In order to see the numbers in action, we need to execute them on a function and to execute the resulting function on a value.

All the code snippets on this article are live and interactive: feel free to modify the code and it will evaluate instantaneously!

The code snippets are powered by the [Klipse plugin][2].

We could take the increment function `inc`, and execute the result on `42`:

But, in order to make it more visual, we are going to define a custom function:

Let’s see what happens when we pass it to a lambda number:

Nice! Now, we see visually the definition of the number `two`: Application of a function twice.

In order to make things more convenient, let’s define a helper function `view`:

And let’s view the lambda numbers we have defined so far:

Let’s write a function that receives a regular number `n` and returns the corresponding `lambda-number`, using `clojure` functions `comp`, `repeat` and `apply`:

Let’s view the lambda-number `6`:

And we can easily view a range of lambda-numbers:

Two `lambda-numbers` are equal if they are the same functions from a mathematical perspective.

It is disappointing that a `lambda-number` is not equal to itself:

The reason, is that from a `clojure` perspective they are two different functions with the same code.

We will use the function `view` for equality test:

It works as expected:

Let’s define a `clojure` type to customize the viewability and equality of lambda numbers. Our type will have the following properties:

1.  It is callable as a function
2.  It is viewable with `view`
3.  It redefines equality with `view`

For that purpose, we need to implement three `clojure` protocols:

1.  `IFn`
2.  `IPrintWithWriter`
3.  `IEquiv`

Let’s define a type named `Lambda`:

(If you are not familiar with the details of `clojure` protocols, you can skip the following code snippet.)

And a function that converts a regular number to a typed lambda number:

Now, lambda numbers are viewable:

And comparable:

Now that we have defined lambda numbers and that they are viewable and comparable, we can introduce the basic arithmetic operations: successor, addition and multiplication.

Here is how one implements the `successor` function in `λ-calculus`. Successor is a function that receives a number `n` and returns `n+1`.

The code basically means: apply the function `f` `m` times and then another time.

Now, lets’ wrap it with our `Lambda` type

Let’s check it works fine:

## The addition operation

Here is how one implements the `addition` function in `λ-calculus`. Addition is a function that receives two numbers and returns the result of their addition:

The code basically means: apply the function `f` `m` times and then `n` times.

Let’s check it works fine:

Make sure that `3+2` equals 5:

Here is how one implements the `multiplication` function in `λ-calculus`. Multiplication is a function that receives two numbers and returns the result of their multiplication:

The code basically means: compose the function `f` `n` times and then `m` times.

Let’s check it works fine:

Make sure that `3*2` equals 6:

It is really amazing to see concretely how powerful is the `λ-calculus`. With a very limited set of characters and concepts we can build the arithmetics.

In the [next article][3], we are going to show how to define the booleans and their basic operations.

Let us know what you think about this lambda-calculus tutorial in the comments below….

[1]: https://en.wikipedia.org/wiki/Lambda_calculus
[2]: https://github.com/viebel/klipse
[3]: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-2.html
