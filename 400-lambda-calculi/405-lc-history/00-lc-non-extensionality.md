# LC :: Non-Extensionality

An important philosophical issue concerning the LC is the question of its underlying concept of functions. 

In set theory, a function is understood as a set of argument-value pairs. More specifically, a function is a set `f` of ordered pairs satisfying the property

`(x,y) ∈ f ⋀ (x,z) ∈ f --> y = z`

If `f` is a function and `(x,y) ∈ f`, this means that the function `f` assigns the value `y` to the argument `x`.

This is the concept of **functions-as-sets**. Consequently, the notion of equality of functions-as-sets is equality `qua` sets, which, under the standard principle of extensionality, entails that two functions are equal precisely when they contain the same ordered pairs. In other words, two functions are identical if and only if they assign the same values to the same arguments. In this sense, functions-as-sets are *extensional* objects.

In contrast, the notion of a function at work in LC is one where functions are understood as *rules*: a function is given by a rule for how to determine its values from its arguments. More specifically, we can view a λ-term `λx[M]` as a description of an operation that, given `x`, produces `M`; the body `M` of the abstraction term is, essentially, a *rule* for what to do with `x`.

This is the conception of ***functions-as-rules***. Intuitively, given rules `M` and `N`, we cannot, in general, decide whether `λx[M]` is equal to `λx[N]`.

The two terms might 'behave' the same (have the same value given the same arguments), but it may not be clear what resources are needed for showing the equality of the terms. In this sense, functions-as-rules are *non-extensional* objects.

To distinguish the extensional concept of functions-as-sets from the non-extensional concept of functions-as-rules, the latter is often referred to as an *'intensional'* function concept, in part because of the ostensibly intensional concept of a rule involved.


This terminology is particularly predominant in the community of mathematical logicians and philosophers of mathematics working on the foundations of mathematics.

But from the perspective of the philosophy of language, the terminology can be somewhat misleading, since in this context, the *extensional-intensional distinction has a slightly different meaning*.

In the standard, "possible-worlds", framework of philosophical semantics, we would distinguish between an extensional and an intensional function concept as follows.

Let us say that that two functions are *extensionally equivalent at a world* if and only if they assign the same values to the same arguments at that world.

And let us say that two functions are *intensionally equivalent* if and only if they assign the same values to the same arguments at *every* possible-world. 

To illustrate, consider the functions `highest-mountain-on-earth` and `highest-mountain-in-the-Himalayas`, where the `highest-mountain-on-earth` assigns the highest mountain on earth as the value to every argument, and the `highest-mountain-in-the-Himalayas` assigns the highest mountain in the Himalayas as the value to every argument.

*These two functions are extensionally equivalent (at the actual world), but not intensionally so*. At the actual world, the two functions assign the same value to every argument, namely Mt. Everest. 

Now consider a world where Mt. Everest is not the highest mountain on earth, but say, Mt. Rushmore is. Suppose further that this is so, just because Mt. Rushmore is 9100 m higher than it is at the actual world, while Mt. Everest, with its roughly 8800 m, is still the highest mountain in the Himalayas. 

At that world, `highest-mountain-on-earth` now assigns Mt. Rushmore as the value to every argument, while `highest-mountain-in-the-Himalayas` still assigns Mt. Everest to every object. In other words, the functions are now *extensionally equivalent (at the actual world) but not intensionally equivalent*.

A function concept may now be called *extensional* if and only if it requires functions that are extensionally equivalent at the actual world to be identical. 

And a function concept may be classified as *intensional* if and only if it requires intensionally equivalent functions to be identical. 

Note that these classifications are conceptually different from the distinctions commonly used in the foundations of mathematics. On the terminology used in the foundations of mathematics, functions-as-sets are classified as extensional since they use the axiom of extensionality as their criterion of identity, and functions-as-rules are classified as intensional because they rely on the ostensibly intensional concept of a rule. In the present possible-worlds terminology, function concepts are classified as extensional or intensional based of their behavior at possible-worlds.


An issue from which conceptual confusion might arise is that the two terminologies potentially pass different verdicts on the function concept at work in the LC. To see this, consider the following two functions:
- `f := λx. x + 1`
- `g := λx. x + 2 - 1`

These two functions are clearly extensionally equivalent: they assign the same value to the same input at the actual world. Moreover, given standard assumptions in possible worlds semantics, the two functions are also *intensionally* equivalent. If we assume that mathematical facts, like facts about addition and subtraction, are necessary in the sense that they are the same at every possible world, then we get that the two functions give the same value to the arguments at *every* possible world. So, an intensional function concept would require the two functions to be identical.

In the LC, however, it's not clear at all that we should identify the two functions. Formally speaking, without the help of other principle, we cannot show that the two λ-terms denote the same function.

Moreover, informally speaking, on the conception of functions-as-rules, it's not even clear that we should identify them: the two terms involve genuinely different rules, and so we might be tempted to say that they denote different functions.

A function concept that allows for intensionally equivalent functions to be distinct is called **hyperintensional**. The point is that in possible-worlds terminology, the function concept at work in the LC may be regarded not as intentional but hyperintensional - in contrast to what the terminology common in the foundations of mathematics says. Note that it's unclear how an intensional semantic framework, like the possible-worlds framework, could even in principle account for a non-intensional function concept. 

The point here was simply to clarify any conceptual confusions that might arise from different terminologies at play in philosophical discourse.

The hyperintensionality of the LC is particularly important when it comes to its applications as a theory of not only functions, but more generally n-ary relations.

It is effectively the hyperintensionality of the LC that makes it an attractive tool in this context. It should be noted, however, that the LC can be made extensional (as well as intensional) by postulating additional laws concerning the equality of λ-terms.
