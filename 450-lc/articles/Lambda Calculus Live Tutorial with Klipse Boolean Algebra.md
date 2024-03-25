---
created: 2021-08-30T01:53:54 (UTC +02:00)
tags: []
source: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-2.html
author: Yehonathan Sharvit
---

# Lambda Calculus Live Tutorial with Klipse: Boolean Algebra | Yehonathan Sharvit

> ## Excerpt
> Lambda Calculus Live Tutorial with Klipse: Boolean Algebra

---
In our [previous article][1], we showed how the numbers are represented in lambda calculus.

The purpose of this article is to show how we represent boolean values in lambda calculus. And to show the code of the basic boolean operations: negation, conjunction and disjunction a.k.a `not`, `and` and `or`.

We are using `clojure` for the code snippets - as it belongs to the `LISP` family, and `LISP` is founded on top of lambda calculus.

![Truth](https://blog.klipse.tech/assets/truth.jpg)

All the code snippets on this article are live and interactive: feel free to modify the code and it will evaluate instantaneously!

The code snippets are powered by the [Klipse plugin][2].

First, let’s create a namespace for our journey, and `refer` the `disp` macro, from the [gadjett repository][3] on github:

More about the `disp` macro in [this article][4]…

In order to load code from a github repository, we use `data-external-libs` attribute on the code snippet as explained [here][5].

Here is how we define `T` (`true`) and `F` (`false`) in lambda calculus:

You can see `T` as a 2-arity function that returns the first argument and `F` as a 2-arity function that returns the second argument.

As we did with numerals, we can view a lambda boolean by passing to it `T` and `F`. Like this

And it works as expected: `T` returns `"T"`

and `F` returns `"F"`:

As we did in [Numbers and Arithmetics with functions only: lambda calculus live tutorial.][6], we are going to define the `Lambda` type to make the visualisation and comparison of the lambda booleans more convenient.

(Check [here][7] for an explanation about the code of the `Lambda` type.)

Now, let’s redefine `T` and `F` using `Lambda` type:

Now, the lambda booleans are viewed properly:

They are invokable as functions:

and they are comparable:

Now, we are going to build the basic boolean operations, using the definition of `T` and `F`: In a nutshell, `T` returns the first argument and `F` returns the second argument.

Keep in mind that in boolean algebra, the operations are defined by their truth tables:

x

y

negation(x)

conjunction(x, y)

disjunction(x, y)

T

T

F

T

T

T

F

T

F

T

F

F

 

F

F

F

T

 

F

T

Basically, what this code says is: if `x` is `T` then return the first argument - which is `F`. And if `x` is `F` then return the second argument - which is `T`. This is exactly what the `negation` is supposed to do.

Let’s check that `negation` respects the truth table:

In real lambda calculus, we cannot name things, so the real implementation of `negation` is:

It works exactly the same as `negation`:

But it is is much less readable.

From now on, we will use names to make our code readable and we will keep in the back on our mind that in real lambda calculus there are no names.

You might wondering how we are going to implement recursions in a language with no names?

We will answer that in another article, when we present the `Y-combinator`.

Back to our boolean operations…

Basically, this code says: if `x` is `T` return `y` else return `F`. This is exactly the definition of the conjunction in logic.

Let’s check that `conjunction` respects the truth table:

Basically, this code says: if `x` is `T` return `T` else return `y`. This is exactly the definition of the disjunction in logic.

Let’s check that `conjunction` respects the truth table:

Let us know what you think about this lambda-calculus tutorial in the comments below….

Now you are ready to move forward to the most beautiful idea of the lambda-calculus: the [Y combinator][8]…

[1]: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-1.html
[2]: https://github.com/viebel/klipse
[3]: https://github.com/viebel/gadjett/blob/master/src/gadjett/macros.clj
[4]: https://blog.klipse.tech/clojure/2016/05/09/macro-tutorial-4.html
[5]: https://github.com/viebel/klipse#clojure-only-1
[6]: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-1.html
[7]: https://blog.klipse.tech/lambda/2016/07/24/lambda-calculus-1.html
[8]: https://blog.klipse.tech/lambda/2016/08/07/almost-y-combinator-clojure.html
