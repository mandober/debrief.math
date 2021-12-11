# Encodings in Untyped Lambda Calculus

Lambda Calculus manages to place itself as a universal computing language, completely equivalent to a Turing machine in terms of computation, but quite more palatable in terms of human consumption, even though it can get unwieldy pretty quick; therefore, it's best to allow bindings (or shorthands) as a mechanism for abbreviating long expressions.

Since LC is in fact just a formalism that describes how to define functions - nothing comes "preloaded", except for the rules of this formalism, that is, the desciption of the production rules for the LC grammar: variables, abstraction and application. Shorthand abstraction and parenthesis are often also squeezed into the rules.

In FP languages that are based on the LC, the λ-calculus itself is often their core language, meaning plethora of surface syntax is desugared into the core language by the compiler. This is the situation in Haskell. Haskell is not so extreme, but there are FP languages that will reduce every surface construct into the set made of the 3 grammar rules of LC itself, i.e. variable references, anonymous unary function construction and function application.

Therefore, any programming language that supports these 3 things is Turing-complete and capable of practicing functional programming:

```bnf
<term> := <var>                     [var]
        | (<var>) => <term>         [abs]
        | <term> (<term>)           [app]
```

The above is a BNF-like grammar targeting JS. It states that a lambda term is a variable (identifier or var name) taken from an infinite set of lowercased letters (sub- and super-scipted if need be); a lambda term is also an abstraction consisting of the param name (it will bound the corresponding arg), followed by the fat arrow, and having a lambda term for the body.

....



Anyway, the semantic interpretation of LC is a tabula rasa - you are free to come up with your own interpretation for what a function that has a certian form mean. This process is called encoding and the only thing important is that it is consistent.

The most famous encoding came from the creator, of course. Church has presented encoding for booleans, natural numbers, data types, etc.

Well-known Encodings
- *Church encoding* (Alonzo Church)
- Scott encoding (Dana Scott)
- Parigot encoding
