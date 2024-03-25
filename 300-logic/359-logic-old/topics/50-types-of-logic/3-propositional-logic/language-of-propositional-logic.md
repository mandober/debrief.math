# Language of propositional logic

https://proofwiki.org/wiki/Definition:Language_of_Propositional_Logic

There is a large number of formal languages that are used to express propositional logic, and although they are more or less distinct, it should, nevertheless, be possible to extract a minimal common language that is compatible across the board.

Elements
- alphabet
- symbols
- formal grammar
- formula
  - wff
    - atomic statements
    - compound statements
    - logical variables
    - logical constants
    - logical connectives
- definitional abbreviations


## Summary

Defining a language rigorously is an exercise in catching and covering all the possible edge cases - and those cases abound: since we're dealing with sets, it means that for any set, we need to establish whether it may be empty and what are the consequences of that; and the same for the case of an infinite set).

The alphabet is a set for one thing. It's a set of symbols, and we like finite alphabets, which implies a finite set of symbols. But if we have a finite set of symbols, we're in danger to run out of names (for e.g. variables). We also need to cover collation in order to define how are individual symbols combined to make words.

We have syntactic elements like the formal language that consists of an alphabet, which in turn consists of symbols, and we have a formal grammar that dictates how are the symbols combined in order to get wffs.


## The language of propositional logic

- `𝓛₀` is the *formal language* of propositional logic
- `𝓐` is the *alphabet*, a set of symbols
- `𝓟₀` is the possibly infinite set of *symbols*    
   𝓟₀ = { p, p₁, …, pₙ, …, q, q', r, rᵏ, … }

In order to define a formal language of propositional logic, `𝓛₀`, we need to specify an alphabet, `𝓐`, and a *formal grammar* that specifies which formulas are *well-formed formulas* (WFFs).

We say that the language of PL is based on the alphabet `𝓐`, which in turn consists of symbols (letters).

<details><summary>TL/DR</summary>

Right off the bat, we have a pickle: we'd like to specify an alphabet - and alphabets are usually finite sets - but we don't, and we can't possibly ever know, the number of distinct symbols the formulas in the language are ever going to need.

So, we have to do the dance, and say that the set of symbols is not really the same as the alphabet, but that it is another set `𝓟₀`, quite likely an infinite one. It is composed of all the symbols from the alphabet, however, each "base" symbol also has an infinite number of doppelgangers, thus rendered by decarating them with subscripts, superscripts, prime signs, etc.

We go through these motions to make sure we don't run out of distinct identifiers, mostly for the names of logical variables. We may as well use just a single letter indexed with subscripts pulled from an infinite set like ℕ, e.g. `𝓟₀ = {p₁, p₂, p₃, …, pₙ, …}`. And in everday practice, we shouln't need more than a handful of letters (`p`, `q`, `r`, …).

</details>

All the sequences obtained by combining the symbols from the alphabet are called *formulae* of the language. Understandably, the huge majority of these is complete shite. We need to specify the *formal grammar* that will weed out only the *well-formed formulas* out of all the possible ones.

Another anal thing when defining a language is dealing with parenthesis: they may be strictly defined and have a certain syntax, or they may be hand-waved to a meta level by saying that our language is actually defined by its abstract syntax tree (which needs no notion of parenthesized formulas). Let's do that!

The symbols of the alphabet are used to name things, primarily the *logical variables* that range over the Boolean domain, `𝔹`. We also use names for *logical constants* true and false, which are the actual elements of the domain. (I don't think PL needs more constants). And the third category of language elements are *logical connectives*.


Logical connectives
- nullary connectives (logical constants)
  - tautology,     ⟙
  - contradiction, ⟘
- unary connective
  - negation,      ¬
- binary connectives
  - conjunction,   ⋀
  - disjunction,   ⋁
  - conditional,   ->
  - biconditional, ⟺



The *Formal Grammar* of the language of propositional logic (and hence, the set of its WFFs) can be defined as follows:

```js bnf
<wff> := p | ⟙ | ⟘                      where p ∈ 𝓟₀ is a letter
<wff> := ¬ <wff>
<wff> := ( <wff> <op> <wff> )
<op>  := ⋀ | ⋁ | ⟹ | ⟺
```

In general, formal grammar is defined by specifying logical literals, and then stating how the connectives are used in order to combine the logical forms (e.g. "if A and B are terms, then A ⋀ B is a term", etc., finally stating that the defined set is the smallest possible, i.e. "…nothing else is a term").

Having a minimal set of connectives means less formal definitions, less repetitions, which implies that it pays to defines a language with just a few necessary connectives (perhaps, not the most minimal set, but something a tad more filled), introducing other logical connectives as *definitional abbreviations*. For example, we can leave out `->`, instead stating that implication is defined in terms of disjunction as `p ⋁ q ≡ ¬p -> q`; in intuitionistic logic, negation is commonly defined as `p := ¬p -> ⟘`.
