# Encoding schemes in lambda calculi


## Nothing but functions

In the context of lambda calculi, an *encoding* is a way of representing a particular programming language construct.

An *encoding scheme* is a comprehensive set of definitions that consistently represents a functional subset of a common programming language entities. It's a set of definitions that makes lambda calculus a working programming language (despite being minimal and horribly uncomfortable).

A purpose of encoding, and encoding schemes especially, is to demonstrate that it is possible to create a fully functional (even Turing complete) programming language despite such a barren environment, that offers only anonymous functions. All you need are anonymous functions, that is all you need.

An encoding scheme includes primitives such as Booleans, logical ops and connectives, natural numbers, arithmetic ops, and so on. This layer can then support additional language elements such as different data structures: pair, tuple, list, tree, as well as operations that manipulate them.

Naturally, the author of the lambda calculus, Alonzo Church, has invented the most comprehensive set of definitions of how to encode many mathematical objects including Booleans, natural numbers, predicates, negative, rational, real numbers, and various data structures. Such an encoding scheme (set of encodings) has come to be known as the *the Church encoding*.

Besides inventing the lambda calculus, Alonzo Church was the first to come up with own comprehensive set of encodings, called the *Church encoding*. It is a collection of concrete lambda expressions used to represent many PL concepts including Booleans, logical connectives, predicates, natural numbers, data structures, related operations. In fact, many of the constituent concepts of the Church encoding bear Church's name as well: Church Booleans, Church numerals, Church pair, Church list, etc.

*Church Booleans* is the name for concrete functions (lambda abstractions) that Church created in order to represent the truth values (true and false), as well as the logical connectives (and, or, not, etc.), predicates and conditionals (i.e. functions that return a truth value (isTrue, isTautology, isMonotonic), and related operations (createTruthTable, meet, findJoin).

*Church numerals* are representations of the natural numbers using lambda terms.


## Overview of encoding schemes in lambda calculi

## Lambda calculi encoding schemes
- Church encoding
- Scott encoding
- Mogensen-Scott encoding
- Böhm-Berarducci encoding
- Parigot encoding





## Encoding schemes

*Scott encoding* is a way to represent potentially recursive data types in the lambda calculus.

Scott encoding uses the idea of continuations and can lead to simpler code.

Scott encoding can be done in untyped lambda calculus, whereas its use with types requires a type system with recursion and type polymorphism.

The data and operators form a mathematical structure which is embedded in the lambda calculus.

*Church encoding* performs a similar function, but whereas Church encoding starts with representations of the basic data types, and builds up from it, *Scott encoding* starts from the simplest method to compose *algebraic data types*.

*Mogensen-Scott encoding* extends and slightly modifies Scott encoding by applying the encoding to metaprogramming. This encoding allows the representation of lambda calculus terms, as data, to be operated on by a meta program.

Scott encoding appears first in a set of unpublished lecture notes by Dana Scott whose first citation occurs in the book "Combinatorial Logic, Volume II".

*Michel Parigot* gave a logical interpretation of and strongly normalizing recursor for Scott-encoded numerals, referring to them as the "Stack type" representation of numbers.

*Torben Mogensen* later extended Scott encoding for the encoding of Lambda terms as data.
