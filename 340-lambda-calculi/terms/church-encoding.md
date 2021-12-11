---
created: 2021-08-28T11:24:27 (UTC +02:00)
tags: []
source: https://blog.ploeh.dk/2018/05/22/church-encoding/
author: Mark Seemann
---

# Church encoding

> ## Excerpt
> Church encoding is a unified way to model data and functions. An introduction for object-oriented developers.

---
_Church encoding is a unified way to model data and functions. An introduction for object-oriented developers._

This article series is part of [an even larger series of articles about the relationship between design patterns and category theory.][1]

When asked why I like functional programming so much, I often emphasise the [superior modelling ability][2] that I get from [algebraic data types][3]. Particularly, languages like [F#][4] and [Haskell][5] have [sum types][6] in addition to the [product types][7] that most statically typed languages seem to have.

In short, a _sum type_ gives you the ability to declare, as part of the type system, that a particular data type must be exactly one of a _finite_ list of mutually exclusive options. This differs from common object-oriented sub-typing because class inheritance or interface implementation offers conceptually infinite extensibility. Sometimes, unconstrained extensibility is exactly what you need, but in other cases, the ability to define a closed set of cases can be an effective modelling tool. If you need an easy-to-read introduction to algebraic data types, I recommend [Tomas Petricek][8]'s fine article [Power of mathematics: Reasoning about functional types][9].

Interestingly, [TypeScript has sum types][10], so they don't have to belong exclusively in the realm of functional programming. In this article series, you'll see an alternative way to represent sum types in C# using _Church encoding_.

### Lambda calculus [#][11]

In the 1930s, several mathematicians were investigating the foundations of mathematics. One of them, [Alonzo Church][12], developed [lambda calculus][13] as a universal model of computation. In a sense, you can think of lambda calculus as a sort of hypothetical programming language, although it was never designed to be a practical programming language. Even so, you can learn a lot from it.

In the untyped lambda calculus, the only primitive data type is a function. There are no primitive numbers, Boolean values, branching instructions, loops, or anything else you'd normally consider as parts of a programming language. Instead, there's only functions, written as _lambda expressions:_

λf.λx.f x

This looks opaque and mathematical, but most modern programmers should be familiar with lambda (λ) expressions. The above expression is an anonymous function that takes a single argument: `f`. The body of the function is the return value; here, another lambda expression: `λx.f x`. This lambda expression also takes a single argument: `x`.

In the untyped lambda calculus, everything is a function, so that includes `f` and `x`. The return value of the entire expression is `f x`, which means that the function `f` is applied to the value (in fact: function) `x`. The entire expression is therefore a [higher-order function][14].

In C#, the corresponding lambda expression would be:

f => x => f(x)

This is a lambda expression that returns another lambda expression, which again returns the result of calling the function `f` with the value `x`.

In F#, it would be:

fun f -> fun x -> f x

and in Haskell, it would be:

\\f -> \\x -> f x

In both Haskell and F#, functions are already curried, so you can shorten that Haskell lambda expression to:

\\f x -> f x

and the F# lambda expression to:

fun f x -> f x

This looks more like a function that takes two arguments, so alternatively, via [uncurry isomorphisms][15], you can also write the C# representation like this:

(f, x) => f(x)

Those six lambda expressions, however, are statically typed, even though they're generic (or, as Haskellers would put it, [parametric polymorphic][16]). This means that they're not entirely equal to `λf.λx.f x`, but it should give you a sense of what a lambda expression is.

It turns out that using nothing but lambda expressions, one can express any computation; lambda calculus is Turing-complete.

### Church encoding [#][17]

Since languages like C#, F#, Haskell, and others, include lambda expressions, you can reproduce as much of the lambda calculus as you'd like. In this article series, I'll mainly use it to show you how to represent sum types in C#. Later, you'll see how it relates to design patterns.

-   [Church-encoded Boolean values][18]
-   [Church-encoded natural numbers][19]
-   [Church-encoded Maybe][20]
-   [Church-encoded Either][21]
-   [Church-encoded payment types][22]
-   [Church-encoded rose tree][23]

These articles give you examples in C#. For Haskell examples, I found [Travis Whitaker][24]'s article [Scrap Your Constructors: Church Encoding Algebraic Types][25] useful.

All C# code for these articles is [available on GitHub][26].

### Summary [#][27]

You can use lambda expressions to define all sorts of data types and computations. Because lambda calculus is a universal model of computation, you can learn about fundamental representations of computation. Particularly, lambda calculus offers a model of logical branching, which again teaches us how to model sum types.

**Next:** [Church-encoded Boolean values][28].

[1]: https://blog.ploeh.dk/2017/10/04/from-design-patterns-to-category-theory
[2]: https://blog.ploeh.dk/2016/02/10/types-properties-software-designing-with-types
[3]: https://en.wikipedia.org/wiki/Algebraic_data_type
[4]: http://fsharp.org/
[5]: https://www.haskell.org/
[6]: https://en.wikipedia.org/wiki/Tagged_union
[7]: https://en.wikipedia.org/wiki/Product_type
[8]: http://tomasp.net/
[9]: http://tomasp.net/blog/types-and-math.aspx
[10]: https://www.typescriptlang.org/docs/handbook/advanced-types.html
[11]: https://blog.ploeh.dk/2018/05/22/church-encoding/#981c0967cd414784968a1ceded3f9f45 "permalink"
[12]: https://en.wikipedia.org/wiki/Alonzo_Church
[13]: https://en.wikipedia.org/wiki/Lambda_calculus
[14]: https://en.wikipedia.org/wiki/Higher-order_function
[15]: https://blog.ploeh.dk/2018/02/05/uncurry-isomorphisms
[16]: https://en.wikipedia.org/wiki/Parametric_polymorphism
[17]: https://blog.ploeh.dk/2018/05/22/church-encoding/#a921177fdc9e485389b476ab7f599aa7 "permalink"
[18]: https://blog.ploeh.dk/2018/05/24/church-encoded-boolean-values
[19]: https://blog.ploeh.dk/2018/05/28/church-encoded-natural-numbers
[20]: https://blog.ploeh.dk/2018/06/04/church-encoded-maybe
[21]: https://blog.ploeh.dk/2018/06/11/church-encoded-either
[22]: https://blog.ploeh.dk/2018/06/18/church-encoded-payment-types
[23]: https://blog.ploeh.dk/2019/07/29/church-encoded-rose-tree
[24]: http://programmable.computer/
[25]: http://programmable.computer/posts/church_encoding.html
[26]: https://github.com/ploeh/ChurchEncoding
[27]: https://blog.ploeh.dk/2018/05/22/church-encoding/#36ea9ca3c38842ed906e2b02d175d116 "permalink"
[28]: https://blog.ploeh.dk/2018/05/24/church-encoded-boolean-values
