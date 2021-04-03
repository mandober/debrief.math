# Denotational Semantics

https://en.wikipedia.org/wiki/Denotational_semantics

math :: theory of computation :: terms


Denotational semantics is a method to formalize a PL semantics (the meaning of a PL). Using denotations, which are mathematical objects, we give mathematical meaning to expressions in a PL. We can reason about expressions abstractly when each expression represents a conceptual meaning. In practice, denotations are described using some form of math notation, formalizable into a denotational metalanguage. For instance, denotational semantics of FPL often translates the language to *domain theory*.


Denotational semantics originated in the 1970s in the work of Christopher Strachey and Dana Scott. As originally developed, denotational semantics provided the meaning of a computer program as a function that mapped input to output.

To give meanings to recursively defined programs, Scott proposed working with continuous functions between domains, specifically *complete partial orders*. Investigation continues into the appropriate denotational semantics for some aspects of PL such as sequentiality, concurrency, non-determinism and local state.

Denotational semantics are given to an expression as a function from an environment to its denotation.

For example, the expression n * m produces a denotation when provided with an env which holds the current values of the free variables; if n=3 and m=5 in the current env, then the denotation for n * m is 15.

In math, a function is a graph defined by a set of ordered pairs, (x,f(x)).

An important problem in denotational semantics is providing meaning for a *recursive program*, that is, a program that's defined in terms of itself. Denotational semantics have been developed for modern PLs, which have features like exceptions and concurrency, however, dealing with recursion becomes unwieldy. While it's trivial to formally specify that most Haskell's functions means the same thing as the math functions, providing the meaning of a program that loops forever is another story.

Denotational semantics provides a precise metalanguage based on math to reason about things. In denotational semantics, the basic idea is to map every syntactic entity associated with a programming language into a mathematical object, that is, to translate PL constructs into mathematical objects. An important feature of denotational semantics is that semantics should be compositional; denotation of an expression should be constructible from the denotations of its sub-expressions.

Denotational semantic definition has 5 parts:
1. Semantic equations
2. Syntactic categories
3. Semantic functions
4. Backus-Naur Form (BNF)
5. Value domains

Backus-Naur Form (BNF) defines the structure of syntactic categories.
