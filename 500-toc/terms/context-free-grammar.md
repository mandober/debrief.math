# Context-free grammar

https://en.wikipedia.org/wiki/Context-free_grammar

In formal language theory, a context-free grammar (CFG) is a formal grammar in which every production rule is of the form `A -> α` where `A` is a single nonterminal symbol, and `α` is a string of terminals and/or nonterminals (α can be empty).

A *formal grammar* is considered *context-free* when its production rules can be applied regardless of the context of a *nonterminal* - no matter which symbols surround it, the single nonterminal on the LHS must always be replacable by the RHS; this is what distinguishes it from a *context-sensitive grammar*.


A context-free grammar (CFG) is a certain type of formal grammar: a set of production rules that describe all possible strings in a given formal language.

*Production rules* are simple replacements. In context-free grammars, the rules may be in a few correspondence configurations:
- one-to-none   A -> ∅    expr := ϵ
- one-to-one    A -> B    expr := lit
- one-to-many   A -> *    expr := una expr | bin expr expr | st

The LHS of the production rule is always a nonterminal symbol, meaning that the symbol does not appear in the resulting formal language.


---

Context-free grammars (CFGs) are used to describe context-free languages. A context-free grammar is a set of recursive rules used to generate patterns of strings. A context-free grammar can describe all regular languages and more, but they cannot describe all possible languages.

A context-free grammar can be described by a 4-element tuple: (V,Σ,R,S)
- V is a finite set of variables (which are non-terminal)
- Σ is a finite set (disjoint from V) of terminal symbols
- R is a set of production rules where each production rule maps a variable to a string, s ∈ (V ∪ Σ)*
- S is a start symbol, S ∈ V

Example:    
Come up with a grammar that will generate the context-free (and also regular) language that contains all strings with matched parentheses. One solution is:
- starting symbol -> S
- nonterminal vars {`(`, `)`}
- production rules: S -> () | SS | (S) | ϵ






---

https://brilliant.org/wiki/context-free-grammars

https://www.youtube.com/watch?v=cNezM-Lirrg&list=PLlQBy7xY8mbK9Uy9i7MTGSwyLJPii3w1L&index=2

https://en.wikipedia.org/wiki/List_of_algorithms
