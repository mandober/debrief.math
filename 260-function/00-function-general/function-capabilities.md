# Function :: Capabilities of functions

In math, the term "function" has a single referent - a mathematical object having the familiar, parameterized form. That object is in fact an expression, a parameterized expression.

- name, new unique identifier acting like any std identifier
- isolated block independent of the main code
- new stadalone unit
- new stadalone behaviour (method or action)
- resuable
- parameterization
- I/O


*Name*

Giving a unique name to an expression (block of code) allows us to reuse it later, easily calling on to it whenever we want. Instead of writing a very copmplex expression every time, we just refer to a single brief identifier. The problem with this is that the expression is completely isolated - there is no way to get information in or out. The name becomes just another symbol; it is replaced by the contents every time we reference it - a straightforward substitution. However, even with that limitation, this constructions is very useful exactly because it saves us from writing out the entire expression every time. This construct is not really used in math, and in PLs where supported it is called a block. This concept perhaps occurs in math in the way some complex objects are only ever referenced by the assigned name; objects like the special number that describes the ratio of a circle's circumference to its diameter: rather then writing (an infinite number of digits), we just refer to it as `π`.

*I/O*

An encapsulated block only replaces the reference with itself - it is a direct substitution, like a macro, not an output of calculation. So, if a block was named `a` and defiend (to always contain the same expression) `let _A_ = (1×2×3×4×5)`, then every time we refer to `_A_` would be the same as if we have referred to (1×2×3×4×5). This is no need in math, but some PLs have precprocessor that provide exactly this shenanigans. Writing `_A_` in the souce code would be literally, without interpreting, replace that symbol by the contents, i.e. by (1×2×3×4×5). This is usually called a *macro*.

Alternatively, and for no good reason, we could also view (implement) macros in a way that a call to `_A_` in fact evaluates the expression and outputs only its results, as 125 (every time the same result, 125; this could be calculated once then cached for later called).

This concept, although rudimentary, already provides some benefits: we have a block of code that is completely isolated from the rest of code. No matter what happens on the main code, the block is not affected. And the usual benefit is that we get to a short symbol and have it replaced (or interpretated) as if we have written a big ass complex expression.

A macro system usually merely scans the source text and replaces one symbol with a presumably larger expression


*Parameterization*

If the previously described concept allows no flow of information in and out, then the parameterization is exactly the thing that enables that. Then, we are talking about bona fide functions. If a block is an encapsulated expression with no I/O, then a function is the next step - an expression equipped with communication capabilities. Parameterization allow us to abstract some part of the expressio, so instead of it being entirely hardcoded (basically one large constant), it becomes dependent on a paramerter which we supply on invocation.

Before making it complicated, let's consider a simple expression `5 + √2`
