# Non-logical symbol

https://en.wikipedia.org/wiki/Non-logical_symbol

In logic, the formal languages used to create expressions consist of symbols, which can be broadly divided into constants and variables. The *constants* of a language can further be divided into logical symbols (logical constants) and non-logical symbols (non-logical constants).

The *non-logical symbols* of a language of first-order logic consist of predicates and individual constants. These include symbols that, in an interpretation, may stand for individual constants, variables, functions, or predicates. A language of first-order logic is a formal language over the alphabet consisting of its non-logical symbols and its logical symbols. The latter include logical connectives, quantifiers, and variables that stand for statements.

*Non-logical symbols only have meaning (semantic content) when one is assigned to them by means of an interpretation*. Consequently, a sentence containing a non-logical symbol lacks meaning except under an interpretation, so a sentence is said to be true or false under an interpretation.

*Logical constants, by contrast, have the same meaning in all interpretations*. They include the symbols for truth-functional connectives and the symbols for quantifiers.

The equality symbol is sometimes treated as logical symbol and sometimes as non-logical symbol
* if treated as a logical symbol, then any interpretation will be required to interpret the equality sign using true equality
* if interpreted as a non-logical symbol, it may be interpreted by an arbitrary equivalence relation

## Signatures

A signature is a set of *non-logical constants* together with additional information identifying each symbol as either a constant symbol, or a function symbol of a specific arity `n` (where `n ∈ ℕ`), or a relation symbol of a specific arity.

The additional information controls how the non-logical symbols can be used to form terms and formulas. For instance if `f` is a binary function symbol and `c` is a constant symbol, then `f(x,c)` is a term, but `c(x,f)` is not a term.

Relation symbols cannot be used in terms, but they can be used to combine one or more (depending on the arity) terms into an atomic formula. For example a signature could consist of a binary function symbol `+`, a constant symbol `0`, and a binary relation symbol `<`.

## Refs

https://en.wikipedia.org/wiki/Symbol_(formal)
https://en.wikipedia.org/wiki/Category:Logic_symbols
https://en.wikipedia.org/wiki/List_of_logic_symbols
