# TOC :: GLOSSARY

## Abstract machine
An abstract machine is a theoretical computer used for defining a model of computation. Abstract machines are 'machines' because they permit step-by-step execution of programs; they are 'abstract' because they omit many details of real hardware. A typical abstract machine is defined in terms of input, output, and the set of operations that turn the input into output. Turing machine is the well-known example of an abstract machine.

## Automaton
An automaton is a self-operating machine.

## Finite-state automata
Finite-state automata (FSA) is a limited but still useful model of computation based on transitions between states in response to an input. The topics of interest in FSA include deterministic (DFA) and nondeterministic finite automata (NFA), RegExp, Pumping Lemma. An important discovery in this fields is that DFA and NFA are equivalent - a NFA can be converted to a DFA and vice versa (despite nondeterminism).

## Grammar
In Formal Language Theory, a Formal Grammar describes how to form strings from the alphabet of a language that are valid according to the language's syntax.

## Kleene's star
The Kleene's star, e.g. `Σ⃰`, is an operator that applied to an alphabet (a finite set of characters), usually denoted by `Σ`, produces a set of all possible words over that alphabet. Of course, most of these strings are garbage, with a language's grammar defining the well-formed strings. In the context of regular languages, the Kleene's star is one of the basic operators of regular expressions; when applied to a regexp, it means the regexp is repeated 0 or more times, e.g. `a⋆` may match `ε`, `a`, `aa`, `aaa`, ….

## Kleene's theorem
The Kleene's theorem states that finite automata (DFA, NFA) and regular expressions (regex) are equivalent in their expressiveness for denoting a regular language. That is, DFA, NFA and RegExp all recognize regular languages.

## Regular language
A regular language is a formal language consisting of a set of strings that can be recognized by one of these equivalent mathematical formalisms: finite automaton, regular grammar or regular expression.

## Regular expression
The concept of regular expressions was introduced by Kleene in 1951 via his definition of regular events. A regular expression is a symbolic expression, a translation of a finite automaton. The strict regex (language) consists only of literal characters (which are regexp), concatenation of regexps, alternation of regexps, and the use of Kleene's star on a regexp.
