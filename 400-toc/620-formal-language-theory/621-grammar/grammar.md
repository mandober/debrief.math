# Grammar

https://www.youtube.com/watch?v=NWyh8Eug7QM

In formal language theory, a **formal grammar** describes how to form strings from a language's alphabet that are valid according to the language's syntax.

FSMs (DFA and NFA) can recognize whether a string is in the language, and a regex describes a language. Grammars are another way to describe languages.

Grammars are an answer to the quation of whether there is a way to formally generate a string that belongs to a regular language.

The grammar has a set of rules that we can apply, starting with the "initial variable", to generate a string entirely of terminal symbols.

*Terminal symbols* are a language's literals and keywords, while *nonterminal symbols* are arbitrary abstract grammatical categories (labels).

A grammar consists of
- variables
- start variable
- terminals
- rules

A string of a language consists exclusively of terminal symbols.

Rules (a ∈ Σ; A,B ∈ vars)
- A → ε
- A → a
- A → B
- A → aB

*Grammar ⇔ NFA*
- Regular grammar can be converted to NFAs
- NFAs can be converted to regular grammars
