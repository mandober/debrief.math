# Foundations 1: Introduction to Mathematics

https://www.youtube.com/watch?v=HsUxn2l1Wzk

In this first video, we introduce the material, and discuss the important basic ideas of sets and functions from a rough, intuitive perspective.

## Introduction

Set-theoretical idea of a function is in terms of sets of ordered pairs, where the first pair component is the input element and the second component is the output element.

In set theory, a function is understood as a set of argument-value pairs. More specifically, a function is a set `f` of ordered pairs satisfying the property

`(x,y) ∈ f ⋀ (x,z) ∈ f --> y = z`

If `f` is a function and `(x,y) ∈ f`, this means that the function `f` assigns the value `y` to the argument `x`.

This is the concept of *functions-as-sets*.

Consequently, the notion of equality of functions-as-sets is equality *qua* sets, which, under the standard principle of extensionality, entails that two functions are equal precisely when they contain the same ordered pairs. In other words, two functions are identical if and only if they assign the same values to the same arguments. In this sense, functions-as-sets are *extensional* objects.

The *composition* of the function `f`, which is a function from A to B, and the function `g`, which is a function from set B to C, is the function `g ∘ f` (pronounced g after f), from A to C, such that for any element `x ∈ A`, we have that `(g ∘ f)(x)` is `g(f(x))`.
