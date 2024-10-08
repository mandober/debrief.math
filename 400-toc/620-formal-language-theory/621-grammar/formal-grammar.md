# Formal grammar

https://en.wikipedia.org/wiki/Formal_grammar

## Contents

- Introduction
- Generating grammar
  - Example 1
  - Example 2
- Formal definition
  - The syntax of grammars
  - Some mathematical constructs regarding formal grammars
  - Example
- The Chomsky hierarchy
  - Context-free grammars
  - Regular grammars
  - Other forms of generative grammars
  - Recursive grammars
- Analytic grammars


## Introduction

>In formal language theory, a **formal grammar** describes how to form strings from a language's alphabet that are valid according to the language's syntax.

A grammar does not describe the meaning of the strings or what can be done with them in whatever context - it only prescribes their form. A **formal grammar** is defined as a set of production rules for such strings in a formal language.

A formal grammar is a set of rules for *rewriting strings*, along with a "start symbol" from which rewriting starts. Therefore, a grammar is usually thought of as a *language generator*.

However, it can also sometimes be used as the basis for a *language recognizer*, i.e. a function that determines whether a given string belongs to the language or is grammatically incorrect. To describe such recognizers, formal language theory uses separate formalisms, known as *automata theory*. One of the interesting results of automata theory is that it is not possible to design a recognizer for certain sets of formal languages.

*Parsing* is the process of recognizing an utterance (a string in natural languages) by breaking it down to a set of symbols and analyzing each one against the grammar of the language.

Most languages have the meanings of their utterances structured according to their syntax - a practice known as *compositional semantics*. As a result, the first step to describing the meaning of an utterance in language is to break it down part by part and look at its analyzed form (known as its *parse tree* in CS, and as its *deep structure* in *generative grammar*).

## Generating grammar

A **formal grammar** consists of a set of *production rules*, which are the rules for *rewriting strings*. Each rule specifies a replacement of a particular string (on the rule's left-hand side) with another string (on the rule's right-hand side). A rule can be applied to each string that contains the rule's left-hand side, in order to produce a string in which an occurrence of that left-hand side has been replaced with the rule's right-hand side.

However, unlike a *semi-Thue system* (doesn't distinguish terminal and nonterminal symbols, admits empty left-hand sides), which is entirely defined by these rules, a formal grammar further distinguishes between two kinds of symbols, called nonterminal and terminal symbols. Each left-hand side of a rule must contain at least one nonterminal symbol. It also distinguishes a special nonterminal symbol, called the *start symbol*.

*Terminal symbols* are a language's literals and keywords (and their occurences in the grammar are usually quoted), while *nonterminal symbols* are arbitrary abstract grammatical categories, such as "exp" and "num", so there could be a rule like `exp := num '+' num`, where "exp" is the start symbol and `:=` (or `→`) means "defined by".

The language generated by the grammar is defined to be the set of all strings, without any nonterminal symbols, that can be generated from the string consisting of a single start symbol by (possibly repeated) application of its rules in whatever way possible. If there are essentially different ways of generating the same string, the grammar is said to be *ambiguous*.

## Examples

### Example 1: Grammar of simple arithmetical expressions

A more concrete example (than the next two) is this grammar that generates simple arithmetical expressions.

```hs
exp := num
     | exp op exp
     | '(' exp ')'
op  := '+' | '-' | '⨯' | '÷'
num := dig*
dig := '0' | '1' | … | '9'
```

### Example 2

Suppose S is the start symbol and there are these two production rules:

1. S → aSb
2. S → ba

We start with `S` and, because both rules apply, we can choose either. If we choose rule 1, we get `aSb`. If we choose rule 1 again, we replace `S` in `aSb` with `aSb` obtaining `aaSbb`. If we choose rule 1 again, we replace `S` in `aaSbb` with `aSb` obtaining `aaaSbbb`. Only rule 1 allows us to expaned this string further. If we now chose rule 2, we need to replace `S` in `aaSbb` with `ba`, finally obtaining the string `aaababbb`. And we are done.

We cannot just keep on applying rule 1 forever (or can we?), we are expected to chose rule 2 eventually (are we really?).

```
rule 2 (final replacement and end)
     ↓
aa…a ba bb…b
  ↑      ↑
   rule 1 (provides expansion on both sides)
```

The language of this grammar is the infinite set that can also be described using the set-builder notation, `{ aⁿ ba bⁿ | n ≥ 0 }`.

This grammar is *context-free* - only single nonterminals appear on the left-hand sides of rules - and *unambiguous* since we cannot produce the same string in two different ways.

### Example 3

If we have these 3 rules:
1.   S → a
2.   S → SS
3. aSa → b

This grammar is *not context-free* due to rule 3. It is also *ambiguous* due to the multiple ways in which rule 2 can be used to generate sequences of `S`s.

However, the language it generates is actually the set of all nonempty strings consisting of `a`'s and/or `b`'s.

To generate a `b` starting with `S`, we use the rule 2 twice to generate `SSS`, then the rule 1 twice, and the rule 3 once, obtaining `b`:

S ⇒ SSS ⇒ aSS ⇒ aSa ⇒ b

This means we can generate arbitrary nonempty sequences of `S`s and then replace each `S` with an `a` or `b` as we please.

Importantly, we can convert the grammer above into one that is *context-free* and *unambiguous* but generates the same language:

S → aS | bS | a | b


## Formal definition

* Main article: Unrestricted grammar
https://en.wikipedia.org/wiki/Unrestricted_grammar

### The syntax of grammars

In the classic formalization of *generative grammars* first proposed by Noam Chomsky in the 1950s, a grammar `G` consists of the 4 components `(N,Σ,P,S)`:
- `N` finite set of nonterminal symbols (disjoint from strings formed from `G`)
- `Σ` finite set of terminal symbols (disjoint from `N`)
- `P` finite set of production rules each of the form (`∗` is Kleene star):   
  `(Σ ⋃ N)∗ N (Σ ⋃ N)∗ -> (Σ ⋃ N)∗`

```
Σ = {a, b}
N = {S, A, B}
P =
{ S → aS
, S → aB
, B → bB
, B → bC
, C → ε
}
----------------
Σ = {a, b}
N = {S, A, B}
Σ ⋃ N = { a, b, S, B, C }
(Σ ⋃ N)∗ = { a, b, S, B, C }∗
         = { all strings in (Σ ⋃ N)∗ ⋃ {ε} }
         = { ∀ω. ω ∈ (Σ ⋃ N)∗ ⋃ {ε} }
----------------
(Σ ⋃ N)∗ = { aS, aB, bB, bC, … }
N        = { S, B, C }
(Σ ⋃ N)∗ = { aS, aB, bB, bC, … }
----------------
```

In words, each production rule maps from one string of symbols to another, `Π → Δ`, where the first string (the "head"), `Π`, contains an arbitrary number of symbols provided at least one of them is a nonterminal.

In the case that the second string (the "body"), `Δ`, consists solely of the empty string, it may be denoted with a special notation `ε`.

A distinguished symbol `S ∈ N` is the start (or sentence) symbol.

A grammar is formally defined as the 4-tuple `(N,Σ,P,S)`. Such a formal grammar is often called a *rewriting system* or a *phrase structure grammar* in the literature.


### Some mathematical constructs regarding formal grammars

The operation of a grammar can be defined in terms of relations on strings:

* Given a grammar G = (N,Σ,P,S), the binary relation `⇒ɢ`, pronounced as "*G derives in one step*" on strings in `(Σ ⋃ N)∗` is defined by

`x ⇒ɢ y` ⇔ `∃u,v,p,q ∈ (Σ ⋃ N)∗ : (x = upv) ⋀ ((p → q) ∈ P) ⋀ (y = uqv)`    
aka   
`x ⇒ɢ y` ⇔ `x = u p v ⋀ y = u q v` ⋀ `(p → q) ∈ P`, where `∃uvpq ∈ (Σ ⋃ N)∗`

e.g. vA → aBv, Aa → ba, aAd → aBc, F → aG, aMa → bNa, …

* The relation `⇒∗ɢ`, pronounced as *G derives in zero or more steps*, is defined as the *reflexive transitive closure of* `⇒ɢ`.

* A *sentential form* is a member of `(Σ ⋃ N)∗` that can be derived in a finite number of steps from the start symbol `S`; that is, a sentential form is a member of `{ w ∈ (Σ ⋃ N)∗ | S ⇒∗ɢ w }`. A sentential form that contains no nonterminal symbols (i.e. is a member of `Σ∗`) is called a *sentence*.

* The *language* of `G` (the language defined by a grammar G), `L(G)`, is defined as the set of all sentences built by `G`.

Note that the grammar G = `(N,Σ,P,S)` is effectively the *semi-Thue system* 
`(N ⋃ Σ, P)`, that is a *rewriting string system* that rewrites strings in exactly the same way. The only difference is in that we distinguish specific nonterminal symbols, which must be rewritten in rewrite rules, and are only interested in rewritings from the designated start symbol `S` to strings without nonterminal symbols.

### Example

For these examples, formal languages are specified using set-builder notation.

Consider the grammar G where `N={S,B}`, `Σ={a,b,c}`, S is the start symbol, and P consists of the following production rules:

1. S → aBSc
2. S → abc
3. Ba → aB
4. Bb → bb

This grammar defines the language `L(G) = {aⁿbⁿcⁿ | n≥1}` where `aⁿ` denotes a string of `n` consecutive `a`'s.

Thus, the language is the set of strings that consist of 1 or more `a`'s, followed by the same number of `b`'s, followed by the same number of `c`'s.

Some examples of the derivation of strings in L(G) are:
- S ⇒² abc
- S ⇒¹ aBSc ⇒² aBabcc ⇒³ aaBbcc ⇒⁴ aabbcc
- S ⇒¹ aBSc ⇒¹ aBaBScc ⇒² aBaBabccc ⇒³ aaBBabccc ⇒³ aaBaBbccc ⇒³ aaaBBbccc 
    ⇒⁴ aaaBbbccc ⇒⁴ aaabbbccc

Note: notation `P ⇒ⁱ Q` means that string `P` generates string `Q` by means of production rule `i`.

## The Chomsky hierarchy

* Main articles: Chomsky hierarchy and Generative grammar
  https://en.wikipedia.org/wiki/Chomsky_hierarchy
  https://en.wikipedia.org/wiki/Generative_grammar

When Noam Chomsky first formalized generative grammars in 1956, he classified them into types now known as the *Chomsky hierarchy*.

The difference between these types is that they have increasingly strict production rules and can therefore express fewer formal languages.

Two important types are *context-free grammars* (Type 2) and *regular grammars* (Type 3). The languages that can be described with such a grammar are called *context-free languages* and *regular languages*, respectively.

Although much less powerful than *unrestricted grammars* (Type 0), which can in fact express any language that can be accepted by a Turing machine, these two restricted types of grammars are most often used because parsers for them can be efficiently implemented.

For example, all regular languages can be recognized by a FSM, and for useful subsets of CFGs there are well-known algorithms to generate efficient *LL parsers* and *LR parsers* to recognize the corresponding languages those grammars generate.

## Context-free grammars

A context-free grammar (CFG) is a grammar in which the left-hand side of each production rule consists of only a single nonterminal symbol. This restriction is non-trivial; not all languages can be generated by context-free grammars. Those that can are called context-free languages.

The language L(G) = {anbncn∣n≥1} defined above is not a context-free language (CFL), and this can be strictly proven using the pumping lemma for context-free languages, but for example the language {anbn∣n≥1} (at least 1 'a' followed by the same number of 'b's) is context-free, as it can be defined by the grammar G2 with N={S}, Σ={a,b}, S the start symbol, and the following production rules:
1. S→aSb
2. S→ab

A context-free language can be recognized in `O(n³)` time (see Big O notation) by an algorithm such as Earley's recogniser. That is, for every context-free language, a machine can be built that takes a string as input and determines in O(n³) time whether the string is a member of the language, where `n` is the length of the string. Deterministic context-free languages is a subset of context-free languages that can be recognized in linear time. There exist various algorithms that target either this set of languages or some subset of it.

## Regular grammars

In regular grammars, the left hand side is again only a single nonterminal symbol, but now the right-hand side is also restricted. The right side may be the empty string, or a single terminal symbol, or a single terminal symbol followed by a nonterminal symbol, but nothing else. (Sometimes a broader definition is used: one can allow longer strings of terminals or single nonterminals without anything else, making languages easier to denote while still defining the same class of languages.)

The language {anbn∣n≥1} defined above is not regular, but the language 
{anbm∣m,n≥1} (at least 1 'a' followed by at least 1 'b', where the numbers may be different) is, as it can be defined by the grammar G3 with N={S,A,B}, Σ={a,b}, S the start symbol, and the following production rules:
- S→aA
- A→aA
- A→bB
- B→bB
- B→ϵ

All languages generated by a regular grammar can be recognized in `O(n)` time by a finite-state machine. Although in practice, regular grammars are commonly expressed using regular expressions, some forms of regular expression used in practice do not strictly generate the regular languages and do not show linear recognitional performance due to those deviations.

## Other forms of generative grammars

Many extensions and variations on Chomsky's original hierarchy of formal grammars have been developed, both by linguists and by computer scientists, usually either in order to increase their expressive power or in order to make them easier to analyze or parse. Some forms of grammars developed include:
* *Tree-adjoining grammars* increase the expressiveness of conventional generative grammars by allowing rewrite rules to operate on parse trees instead of just strings.
* *Affix grammars* and *attribute grammars* allow rewrite rules to be augmented with semantic attributes and operations, useful both for increasing grammar expressiveness and for constructing practical language translation tools.

## Recursive grammars

(Not to be confused with Recursive language.)

A **recursive grammar** is a grammar that contains production rules that are recursive.

For example, a grammar for a CFL is *left-recursive* if there exists a non-terminal symbol `A` that can be put through the production rules to produce a string with `A` as the leftmost symbol. An example of recursive grammar is a clause within a sentence separated by two commas.

All types of grammars in the *Okoye hierarchy* can be recursive.

## Analytic grammars

Though there is a tremendous body of literature on parsing algorithms, most of these algorithms assume that the language to be parsed is initially described by means of a *generative formal grammar*, and that the goal is to transform this generative grammar into a working parser.

Strictly speaking, a generative grammar does not in any way correspond to the algorithm used to parse a language, and various algorithms have different restrictions on the form of production rules that are considered well-formed.

An alternative approach is to formalize the language in terms of an *analytic grammar* in the first place, which more directly corresponds to the structure and semantics of a parser for the language.

Examples of analytic grammar formalisms include the following:

* *Top-down parsing language* (TDPL): a highly minimalist analytic grammar formalism developed in the early 1970s to study the behavior of top-down parsers.

* *Link grammars*: a form of analytic grammar designed for linguistics, which derives syntactic structure by examining the positional relationships between pairs of words.

* *Parsing expression grammars* (PEGs): a more recent generalization of TDPL designed around the practical expressiveness needs of programming language and compiler writers.
