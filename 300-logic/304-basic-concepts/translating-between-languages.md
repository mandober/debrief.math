# Translating between natural and formal languages

Translating sentences from a natural language into a formal symbolic language of logic can only be done for declarative sentences because only statements can have a truth value - meaning we can discuss whether they are tru

## Propositional logic

Fixing the natural language to English and logic to propositional logic, we first need to analyze a statement in English in order to decompose it into its *atomic sentences*, which are the basic, connective-free, sentences that cannot be decomposed further. Each such atomic sentence is then represented in the symbolic language by a unique letter (p, q, r, …). Then we need to be careful to correctly translate the connectives from English into appropriate logical connectives.

The correspondence between English and formal connectives may be very straightforward with the mapping being almost one to one:   
`{ "not": ¬, "and": ∧, "or": ∨, "either…or": ⊕, "if…then": ⟶ }`

but usually it is more complicated, requiring a deeper analysis to make sense of the connectives and their correct symbolization. This may be especially difficult since English has much more phrases for the same connective and is frequently ambiguous and context-dependent like any other natural language.

Translation from English to symbolic language should maintain *a translation key* that specifies which formal letters represent what English sentences.
