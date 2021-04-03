# Type system

https://en.wikipedia.org/wiki/Type_system

In PLs, a type system is a *logical system* comprising a set of rules that assigns a property called a *type* to the various *language constructs*, such as variables, expressions, functions, modules.

> "A type system is a tractable syntactic method for proving the absence of certain program behaviors by classifying phrases according to the kinds of values they compute." -- TAPL by B. Pierce 2002


These types formalize and enforce the otherwise implicit categories the programmer uses for algebraic data types, data structures, or other components (e.g. "string", "array of float", "function returning boolean"). The main purpose of a type system is to reduce possibilities for bugs in computer programs[2] by defining interfaces between different parts of a computer program, and then checking that the parts have been connected in a consistent way. This checking can happen statically (at compile time), dynamically (at run time), or as a combination of both. Type systems have other purposes as well, such as expressing business rules, enabling certain compiler optimizations, allowing for multiple dispatch, providing a form of documentation, etc.

A type system associates a type with each computed value and, by examining the flow of these values, attempts to ensure or prove that no type errors can occur. The given type system in question determines what constitutes a type error, but in general, the aim is to prevent operations expecting a certain kind of value from being used with values for which that operation does not make sense (logic errors). Type systems are often specified as part of programming languages and built into interpreters and compilers, although the type system of a language can be extended by optional tools that perform added checks using the language's original type syntax and grammar.


A distinction must be made between the unary second-order functions, depending on whether a unary or binary function can appear as its argument; a unary function is fundamentally different from a binary function - the latter cannot appear as an arg where the former can.
