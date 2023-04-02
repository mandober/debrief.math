---
created: 2021-08-30T01:58:43 (UTC +02:00)
tags: []
source: https://blog.klipse.tech/lambda/2016/08/10/y-combinator-app.html
author: Yehonathan Sharvit
---

# Y combinator real life application: recursive memoization in clojure | Yehonathan Sharvit

> ## Excerpt
> Y combinator real life application: recursive memoization in clojure

---
When we presented [the Y combinator][1], we said that it was very aesthetic but not so practical.

Today, we are going to show a real life application of the [Y combinator][2]: the memoization of a recursive function.

![Recursive](https://blog.klipse.tech/assets/escher-stairs.jpg)

Did you ever try to [memoize][3] a recursive function?

At first glance it seems easy, especially in `clojure` with the [memoize][4] function:

And indeed subsequent calls to `factorial-memo` are cached:

The numbers are only printed once.

By the way, all the code snippets of this page are **live** and **interactive** powered by the [klipse plugin][5]:

1.  **Live**: The code is executed in your browser
2.  **Interactive**: You can modify the code and it is evaluated as you type

But what happens to subsequent calls with smaller numbers? We’d like them to be cached also. But they are not.

Here is the proof:

The reason is that the code of `factorial-memo` uses `factorial` and not `factorial-memo`.

In `clojure`, we could modify the code of `factorial` so that it calls `factorial-memo`, but it is very very ugly: the code of the recursive function has to be aware of its memoizer!!!

With the Y combinator we can solve this issue with elegance.

As we explained [here][6], the Y combinator allows us to generate recursive functions without using any names.

As envisioned by Bruce McAdam in his paper [Y in Practical Programs][7] and exposed [here][8] by Viksit Gaur, we are going to tweak the code of the Y combinator, so that it receives a wrapper function and apply it before executing the original function. Something like this:

And here is the code for a memo wrapper generator:

It is almost the same code as the clojure [memoize][9].

And now, we are going to build a Y combinator for memoization:

And here is how we get a memoized recursive factorial function:

And here is the proof that it is memoized properly:

Isn’t it elegant?

The worst effective implementation (exponential complexity) of the Fibonacci function is the recursive one:

There are a couple of [effective implementations][10] for the Fibonacci sequence without using recursion.

Using our `Ymemo` combinator, one can write an effective recursive implementation if the Fibonnaci sequence:

Let’s compare the performances of the naive recursive version and the memoized recursive:

(We have to redefine `fib-recursive-memo`, in order to reset the cache each time we re-run the code snippet.)

On my computer, the memoized one is around _300_ times faster!

Please share your thoughts about this really exciting topic…

[1]: https://blog.klipse.tech/lambda/2016/08/07/pure-y-combinator-clojure.html
[2]: https://en.wikipedia.org/wiki/Fixed-point_combinator
[3]: https://en.wikipedia.org/wiki/Memoization
[4]: https://clojuredocs.org/clojure.core/memoize
[5]: https://github.com/viebel/klipse
[6]: https://blog.klipse.tech/lambda/2016/08/07/pure-y-combinator-clojure.html
[7]: https://blog.klipse.tech/assets/y-in-practical-programs.pdf
[8]: http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/
[9]: https://en.wikipedia.org/wiki/Memoization
[10]: https://blog.klipse.tech/clojurescript/2016/04/19/fibonacci.html
