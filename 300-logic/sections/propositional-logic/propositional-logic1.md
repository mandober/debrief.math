# Propositional logic


We first specify a, preferably infinite, set `V` of *propositional variables*.

The alphabet of a language of symbolic logic consists of the symbols in `V` along with the symbols for the propositional connectives and signs (comma, parentheses, and other punctuation, even including connectives), all of which are assumed to not be in `V`. The formulas of the language will then be certain expressions (strings of symbols) over this alphabet, and most will be gibberish. A formal grammar is needed to weed out the well-formed formulas.

* A formal grammar may specify wffs inductively:

- each propositional variable is a wff
- if `φ` is a wff, then `¬φ` is a wff
- if `φ` and `ψ` are wffs, and `•` is a connective, then `(φ • ψ)` is a wff
- nothing else is a wff

In this definition, we have used `•` as a meta-variable that ranges over binary connectives since this set is particulary effemeral; however, the popular choice of its elements may be `{ ⋁, ⋀, -> }`, along with negation from the set of unary connectives. It pays to pick the smallest possible set of connectives, because the definitions are shorter, and thus more clearer, especially when the other connectives may be derived in terms of the primitive connectives. The two smalles sets possible contain just a single symbol (NAND or NOR), but deriving the other sumbols from that one turns to be a mess. So, the balance between the primitive vs derived connectives seems to be stuck somewhere at `{¬, ⋁, ⋀, ->}` for a comfortable version, `{ ¬, ⋁, ⋀, }` for a resonable version, or `{¬, ⋁}` for succint one. That is only if we are in the context of classical logic - in the context of intuitionistic logic, negation is not a primitive but a derived symbol, defined as `¬p := p -> ⟘`.

* A formal grammar may also specify wffs using BNF (provided the set of variables is finite); one such definition could be:

```js bnf
<alphabet> := p | q | r | s | …            (finite set of variables)
<wff>      := <alphabet>
            | ¬ <wff>
            | ( <wff> ⋀ <wff> )
            | ( <wff> ⋁ <wff> )
            | ( <wff> ⟶ <wff> )
```

Using either specification, the formula `(((p -> q) ⋀ (r -> s)) ⋁ (¬q ⋀ ¬s))` is a wff since it is grammatically correct; the formula `((->) ¬p q) p ⋀` is not a wff since it doesn't conform to the grammar.

Some wffs are so useful they are given names and recognized as axioms or laws:
- Pierce's law: (((a -> b) -> a) -> a)
- S: (a -> (b -> a))
- K: ((a -> b -> c) -> ((a -> b) -> (a -> c)))
- Currying: ((a ⋀ b) -> c) -> (a -> (b -> c))
