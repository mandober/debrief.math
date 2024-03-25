# Lambda calculus :: Encoding

Lambda calculus can be used as a bare pure functional programing language. It is pure because it only supports mathematical functions, and it is bare because nothing is predefined or provided upfront: there are no primitives, there's no stdlib, in fact, there's nothing at all except the rules governing the creation of functions and their application.

Although it is possible to mount an I/O system for communicating with the outside world, thus providing support for user input and output, this can be delayed for after the lambda calculus is sufficiently understood, when we wish to implement it in using some PL as a metalanguage - that PL can then provide I/O facilities. In the meantime, lambda calculus can be practiced on paper, or, since it is just a formalisam about functions, in any PL that supports lambdas, which pretty much all PLs nowadays do. (e.g. JS is very suitable, especially since the basic lambda calculus is also untyped).

## Encoding

>An encoding in lambda calculus is a scheme for representing data types and operations on them as pure lambda terms.

## Encoding scheme

We need to come up with a consistent scheme to encode all the data types using only functions. An encoding is a way to represent data types with functions, starting with the base types (those which are usully available as primitives in PLs). This means deciding which functions will represent, e.g. the Boolean values, natural numbers, integers, and the other base types.

Consistency means that picking a function to represent the Boolean value 'true', means that function has to play nicely not only with the function that stands for the value 'false' value, but also with the other functions, most importantly with those that we choose to represent the Boolean operations like AND, OR, NOT, etc.

*Church Booleans* is one such scheme, compatible with the larger encoding, called *Church encoding*. Church Booleans are today almost the standard way for encoding the values and operations in the Boolean domain because this relatively simple domain doesn't pose a great challenge, i.e. there's no motivation to invent a more efficient set of encodings. A possible challenge could only be in inventing an alternative set of encodings for curiosity's sake, but no alternative set is widely known unlike in other areas; Church Booleans are sufficient, being as efficient as is possible.
