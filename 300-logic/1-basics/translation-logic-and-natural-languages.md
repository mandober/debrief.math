# Translating between language and logic
(What Is Easy and What Is Difficult)
by Aarne Ranta

Mathematical text is a mix of natural language and formulas. A better user interaction is a notation that resembles English more than logic symbolisms.

## Grammatical Framework

Grammatical Framework as a tool that enables the construction of translation systems with the minimum of effort.

The FOL formula: `∀x(Nat(x) → Even(x) ∨ Odd(x))`

Translated to English, German, French, and Finnish:
- for all x, if x is a natural number then x is even or x is odd
- für alle x, wenn x eine natürliche Zahl ist, dann ist x gerade oder x ist ungerade
- pour tout x, si x est un nombre entier alors x est pair ou x est impair
- kaikille x, jos x on luonnollinen luku niin x on parillinen tai x on pariton

Increase the sophistication of the language by techniques from linguistics and compiler construction:
- every natural number is even or odd
- jede natürliche Zahl ist gerade oder ungerade
- tout nombre entier est pair ou impair
- jokainen luonnollinen luku on parillinen tai pariton

and the translation still works in both directions between the formula and a NL sentences.

## Mathematical texts

Mathematical texts consist of two kinds of elements, *verbal* (natural language words) and *symbolic* (mathematical formulas). 

The distribution of these elements is characterized by the following principles:
- Each sentence is a well-formed natural language sentence.
- A sentence may contain symbolic parts in the following roles:
  - noun phrases, as in "x² is divisible by √x"
  - subsentences formed with predicates, as in "we conclude that x² > √x"
- A symbolic part may not contain verbal parts (with some exceptions, e.g. set comprehension notation).

Of particular interest here is that logical constants are never (at least in traditional style) expressed by formulas. Also most logically atomic sentences are expressed by informal text, and so are many noun phrases corresponding to singular terms. The last rule may mandate the use of verbal expression even when symbolic notation exists. For instance, the sentence the square of every odd number is odd could not use the symbolic notation for the square, because it would then contain the verbal expression every odd number as its part. The conversion to symbolic notation is a complex procedure, as it involves the introduction of a variable: for every odd number x, x² is odd.

## 3. GF in a Nutshell

### 3.1 Abstract and Concrete Syntax

GF is based on a distinction between abstract syntax and concrete syntax: an *abstract syntax* defines a system of trees, and a *concrete syntax* specifies how the trees are realized as strings.

















## Ref

### Grammatical Framework

* Grammatical Framework - PL for multilingual grammar applications
https://www.grammaticalframework.org/
https://github.com/GrammaticalFramework/gf-core

* Grammatical Framework: A Hands-On Introduction - Aarne Ranta, 2011
https://www.grammaticalframework.org/gf-cade-2011/

https://www.grammaticalframework.org/gf-cade-2011/
https://www.grammaticalframework.org/gf-cade-2011/code/
https://www.grammaticalframework.org/gf-cade-2011/code/TransProp.hs
https://www.grammaticalframework.org/gf-cade-2011/code/README
https://www.grammaticalframework.org/gf-cade-2011/code/ReadMe.txt

https://hackage.haskell.org/package/gf

https://github.com/GrammaticalFramework/gf-rgl
https://github.com/GrammaticalFramework/gf-core
https://github.com/GrammaticalFramework/gf-rgl/releases/tag/20201114

https://www.grammaticalframework.org/lib/doc/synopsis/
https://www.grammaticalframework.org/download/index-3.11.html


https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/tags/haskell/
https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/tags/semantics/
