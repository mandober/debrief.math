---
created: 2021-09-08)
tags: []
source: https://wiki.haskell.org/Lambda_abstraction
author: 
---

# Lambda abstraction - HaskellWiki
A *lambda abstraction* is another name for an [anonymous function][1]. It gets its name from the usual notation for writing it: for example, ![\lambda x \to x^2](https://wiki.haskell.org/wikiupload/math/8/7/9/879d4ef555fb7da171253262dbe57013.png). (Another common, equivalent notation is: ![\lambda x . \ x^2](https://wiki.haskell.org/wikiupload/math/c/e/a/cea81414e60cded8a742d9bd7608b4ee.png).)

In Haskell source code, the Greek letter lambda is replaced by a backslash character ('`\`') instead, since this is easier to type and requires only the basic 7-bit ASCII character set. Similarly, the arrow is replaced with the ASCII character sequence '`->`'. So, for example, the lambda abstraction above would be written in Haskell as

There is actually a whole mathematical theory devoted to expressing computation entirely using lambda abstractions: the [lambda calculus][2]. Most functional programming languages (including Haskell) are based upon some extension of this idea.

When a lambda abstraction is applied to a value—for instance, ![(\lambda x \to x^2 ) \ 7](https://wiki.haskell.org/wikiupload/math/8/9/5/895dfafcdbb413f8150703dc1d6f8491.png)—the result of the expression is determined by replacing every [free occurrence][3] of the parameter variable (in this case ![x](https://wiki.haskell.org/wikiupload/math/9/d/d/9dd4e461268c8034f5c8564e155c67a6.png)) with the parameter value (in this case ![7](https://wiki.haskell.org/wikiupload/math/8/f/1/8f14e45fceea167a5a36dedd4bea2543.png)). This is a [beta reduction][4].

[1]: https://wiki.haskell.org/Anonymous_function "Anonymous function"
[2]: https://wiki.haskell.org/Lambda_calculus "Lambda calculus"
[3]: https://wiki.haskell.org/Free_variable "Free variable"
[4]: https://wiki.haskell.org/Beta_reduction "Beta reduction"
