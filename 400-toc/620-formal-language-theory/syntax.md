# Syntax

https://en.wikipedia.org/wiki/Syntax_(programming_languages)
https://en.wikipedia.org/wiki/Syntax_(logic)

> The *syntax* of a programming language is the set of rules that defines the combinations of symbols that are considered to be *expressions* (correctly structured statements) in that language.

This applies equally to programming languages, where the document represents the source code, and to markup languages, where the document represents data.

In a programming language, an *expressions* is a correctly structured statement (in that language).

The syntax of a language defines its *surface form*.

Text-based programming languages are based on sequences of characters, while visual programming languages are based on the spatial layout and connections between symbols.

Documents that are *syntactically invalid* are said to have a *syntax error*.

Syntax refers to the form of the code, and is contrasted with semantics, the meaning.

During the processing of a programming language's document (source code), semantic processing generally comes after syntactic processing; however, in some cases, semantic processing is necessary for complete syntactic analysis.

In compilers, the syntactic analysis is traditionally located in a compiler's frontend, while the semantic analysis comprises a compiler's backend.

Computer language syntax is generally distinguished into 3 levels:
1. *Words*  : the lexical level, determining how characters form tokens
2. *Phrases*: the grammar level, determining how tokens form phrases
3. *Context*: determines what objects or var names refer to

Distinguishing in this way yields *modularity*, allowing each level to be described and processed separately and often independently.

First, a *lexer* turns a linear sequence of characters into a linear sequence of *tokens*; this is known as *lexical analysis* (lexing).

Second, a *parser* turns a linear sequence of tokens into a hierarchical syntax tree; this is known as *parsing* (in a narrow sense).

Third, the *contextual analysis* resolves names and checks types.

This modularity is sometimes possible, but in many real-world languages an earlier step depends on a later step; for example, the lexer hack in C is because tokenization depends on context. Even in these cases, syntactical analysis is often seen as approximating this ideal model.




http://rigaux.org/language-study/syntax-across-languages/
http://rigaux.org/language-study/syntax-across-languages.html
https://en.wikipedia.org/wiki/Category:Programming_language_syntax
https://en.wikipedia.org/wiki/Formal_semantics_(natural_language)
https://en.wikipedia.org/wiki/Computational_semantics
https://en.wikipedia.org/wiki/Syntax_(programming_languages)
https://en.wikipedia.org/wiki/Semantics_(computer_science)
https://en.wikipedia.org/wiki/Semantics
https://en.wikipedia.org/wiki/Denotational_semantics
