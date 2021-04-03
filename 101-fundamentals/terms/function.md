# Function

Although math is not directly used as a programming language, it should nevertheless have a standardized notation for all uses and forms of functions. Everyone know the famous `f(x) = y` that showcases a general function notation, but what is the concrete syntax for returning functions from functions and other variations?

In mathematics, the concept of functions has more-less standardized notation. Named functions take the form `f(x) = x²+x`, and anonymous functions are denoted by `x ⟼ x² + x`, that is, they are recognized by the use of the "mapping arrow", (⟼).


Functions declare their parames as an n-tuple, `f(x,y,z) = y`, and use the similar form for making the call, `f(2,6,12)`.

Parenthesis play several roles: they are used as delimiters, for grouping, as the function call keyword, to demarcate a tuple.

- f() is the form for calling a nullary (const) function, maybe just `f x`?
- f(x) calling unary function with a single value x
- f(x,y) calling binary function with a 2-tuple masked as 2 values; it should be f((x,y))


`f(x,y) = x + y` in the curryied form becomes `f(x) = y ⟼ x + y`


## Functional

In mathematics, the term functional (noun) has at least 3 meanings:

1. In modern linear algebra, it refers to a linear mapping from a vector space V into its field of scalars, i.e. it refers to an element of the dual space V∗

2. In mathematical analysis, more generally and historically, it refers to a mapping from a space X into the real numbers, or sometimes into the complex numbers, for the purpose of establishing a calculus-like structure on X. Depending on the author, such mappings may or may not be assumed to be linear, or to be defined on the whole space X.

3. In CS, the term "functional" is a synonym for higher-order function.


## Refs

Category:Types_of_functions
https://en.wikipedia.org/wiki/Category:Types_of_functions

Functional
https://en.wikipedia.org/wiki/Functional_(mathematics)
