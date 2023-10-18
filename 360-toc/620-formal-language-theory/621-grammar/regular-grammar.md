# Regular grammar

https://en.wikipedia.org/wiki/Regular_grammar

## Regular grammars

In TCS and formal language theory, a **regular grammar** is a grammar that is *right-regular or left-regular*. Every regular grammar describes a regular language.

While the exact definition varies between textbooks, they all require that:
- all production rules have at most one non-terminal symbol
- that symbol is either always at the end, or always at the start of the rule's right-hand side


`(N, Σ, P, S)`
- `N` set of nonterminal symbols (variables, A, B, C, …)
- `Σ` alphabet containing terminal symbols (constants, a, b, c, …, incl. ε)
- `P` production rules:
  - A → B
  - A → aB
  - A → a
  - A → ε
- `S` start state, S ∈ N (e.g. `A`)

Once a constant (a, ε) is produced is stays put (it cannot be changed).


## Contents

- Strictly regular grammars
- Extended regular grammars
- Examples of regular grammars
- Expressive power of regular grammars
- Mixing left-regular and right-regular rules


## Strictly regular grammars

A **right-regular grammar** (also called **right-linear grammar**) is a formal regular grammar `(N, Σ, P, S)`, in which all production rules in the set `P` have one of the following forms:
- A → aB
- A → a
- A → ε

where `A, B, S ∈ N` are nonterminal symbols, `a ∈ Σ` is a terminal symbol, and `S` is the start symbol.

In a **left-regular grammar**, (also called **left-linear grammar**), all rules have the the form:
- A → Ba
- A → a
- A → ε


>The language described by a regular grammar is the set of all strings that contain only terminal symbols and can be derived from the start symbol by repeated application of production rules.

Two grammars are called **weakly equivalent** if they describe the same language.

*Left- and right-regular rules must not be mixed*; for example, the grammar with rule set `{ S → aT, T → Sb, S → ε }` is not regular, and describes the language `{ aⁱbⁱ : i ∈ N }`, which is not regular, either.

Some textbooks and articles disallow empty production rules, and assume that the empty string is not present in languages.

## Extended regular grammars

Production rules of extended regular grammars may produce whole strings and not just individual constants.

An **extended left-regular grammar** is one in which all rules obey one of
- A → w   , where `A ∈ N`, `w ∈ Σ*`
- A → Bw  , where `A,B ∈ N`, `w ∈ Σ*`

An **extended right-regular grammar** is one in which all rules obey one of:
- A → w   , where `A ∈ N`, `w ∈ Σ*` (`Σ*` is a string of terminals incl. ε)
- A → wB  , where `A,B ∈ N`, `w ∈ Σ*`

Note: some authors call this type of grammar a right-regular grammar (or right-linear grammar) and the type above a strictly right-regular grammar (or strictly right-linear grammar).

## Examples of regular grammars

An example of a right-regular grammar G with `N = {S, A}`, `Σ = {a, b, c}`, where `S` is the start symbol, and `P` are the rules:
- S → aS
- S → bA
- A → cA
- A → ε

This grammar describes the same language as the regex `a*bc*`, i.e. the set of all strings consisting of arbitrarily many `a`'s, followed by a single `b`, followed by arbitrarily many `c`'s.

* Considering a re `a*`, the fact that `a` may occur many times corresponds to the rule `S → aS`, but the fact that it may not occur corresponds to `S → bA` (i.e there is another rule that starts with the same nonterminal symbol, `S`).
* The fact that `b` must occur exactly once corresponds to the rule `S → bA`, where the two nonterminals are different (meaning the process produces one `b` and moves on).
* A rule from a nonterminal to the empty string halts the process.

A somewhat longer but more explicit extended right-regular grammar G for the same regex (`a*bc*`) such that each uppercase letter corresponds to phrases starting at the next position in the regex (and correspondence to NFA):
- S → A       A is the initial state
- A → aA      loop on `a` from A to A
- A → B       ε-transition from A to B
- B → bC      transition from B to C on `b`
- C → cC      loop on `c` from C to C
- C → ε       C is the final state


## Expressive power of regular grammars

There is a direct one-to-one correspondence between the rules of a (strictly) right-regular grammar and those of a NFA, such that the grammar generates exactly the language the automaton accepts.
>Hence, the right-regular grammars generate exactly all regular languages.

>The left-regular grammars describe the *reverses* of all such languages, that is, exactly the regular languages as well.

Note: regular language are closed under reversal, among other closures.

>Every *strict right-regular* grammar is *extended right-regular*.

Every extended right-regular grammar can be made strict by inserting new non-terminals, such that the result generates the same language; hence, extended right-regular grammars generate the regular languages as well. Analogously, so do the extended left-regular grammars.

>If empty productions are disallowed, only regular languages without ε can be generated.

While regular grammars can only describe regular languages, the converse is not true: **regular languages can also be described by non-regular grammars**.

## Mixing left-regular and right-regular rules

>If mixing of left-regular and right-regular rules is allowed, we still have a *linear grammar, but not necessarily a regular one*.

What is more, such a grammar need not generate a regular language: all linear grammars can be converted into this form, and hence, such grammars can generate exactly all linear languages, including non-regular ones.

For instance, the grammar G with N = {S,A}, Σ = {a,b}, with start symbol S, and the production rules P:
- S → aA
- A → Sb
- S → ε

generates `{ aⁱbⁱ : i ≥ 0 }`, the paradigmatic non-regular linear language.
