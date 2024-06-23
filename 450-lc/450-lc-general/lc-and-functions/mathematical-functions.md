# Lambda calculus :: About :: Mathematical functions

At the time around the invention of λ-calculus, functions have long existed in mathematics, although they were not formally defined until the advent of set theory.

Set-theoretically, *a function was a set*, i.e. a function was identified by a set of ordered pairs, the components of which were the function's input and output values.

This was the *extensional definition of functions*. Under the extensional view, two sets are equal iff they contain the same elements. So two functions were equal if they produced the same outputs given the same inputs.

A mathematical function always has an input and an output value. Unlike functions and procedures in PLs, it lacks side effects.

The issue of dealing with polyadic functions was resolved by *currying*, the procedure which has simplified all functions down to only one kind - a *unary function that takes and returns a single value*, enabling mathematicians to treat all functions the same way.
