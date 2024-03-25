# Denotational Semantics: Summary

## Programs semantics

The 3 main ways to employ mathematics to give meaning to programs:
1. *Operational semantics*: a step by step account of how to execute a program. For each instruction, explain what program variables or data structures get updated. Useful for building an interpreter that executes a program and computes its results. Easy to scale to very complex languages. Easy to prove some simple properties of programs. Harder to prove deeper properties without additional work.
2. *Axiomatic semantics*: describes what a program does in terms of logical preconditions and postconditions. Useful for building program analyzers that examine programs before they are run to detect bugs.
3. *Denotational semantics*: describes the meaning of a program by mapping the syntax of the program into a mathematical object (set, relation, function, sequence, heap, tree, etc.). Easy to describe and prove deep properties about simple languages, but harder to scale in some cases.

When employing denotational semantics we proceed as follows:
1. Define the syntax of the language using, e.g. BNF notation
2. Define the *denotation* (meaning) of the language
  - using a function that maps the syntax into a mathematical object
  - such function must be *inductive* and (usually) *total*
3. Prove properties about the language: proofs about denotational definitions are typically done by induction on the structure of the syntax of the language.

```js
   ┌ "is defined to be"
   │    ┌ alternates
   │    │ ┌ non-terminal
   │    ┴    │
b ::= # | b0 | b1
│          │    │
│          └ terminals (#,0,1)
└ metavariable; term/class of definition
```

read as: a `b` can either be
- a `#` (base case)
- a `b` ending in a `0`   (inductive case)
- a `b` followed by a `1` (inductive case)

We have a notation that defins binary numbers like `#01`, `#0010`, etc. We also have a mechanical procedure that checks if some bit of syntax is binary number:
- if syntax is `#`, then it repr a binary number
- if syntax ends in `0`, then recursively check if prefix is a binary number
- if syntax ends in `1`, then recursively check if prefix is a binary number
- `#` is a *base case* for it contains no references to `b` being defined
- `0b` and `1b` are *inductive cases* because they contain a reference to `b`

**Concrete syntax** is a sequence of characters in a text file. **Abstract syntax** is a structured data that represents the key information needed for semantic analysis (it usually discards whitespace and comments).

## Example syntaxes in BNF

```js
// unary numbers v1
Nat ::= Z | S Nat     // Z, S Z, S (S Z), …

// unary numbers v2
i ::= # | iS          // #, #S, #SS, #SSS, …

// binary numbers
b ::= # | b0 | b1     // #, #0, #1, #01, #0…01, #10, #11, #100, …

// hex numbers
h ::= 0x | h0 | h1 | … | ha | hb | hc | hd | he | hf | 

hex      ::= '0x' digit hexdigit
digit    ::= [0-9]
hexdigit ::= [a-fA-F]

digit    ::= ascDigit | uniDigit
ascDigit ::= 0 | 1 | … | 9
uniDigit ::= any Unicode decimal digit
octit    ::= 0 | 1 | … | 7
hexit    ::= digit | A | … | F | a | … | f
```





Given a binary number #10 you and I have a good idea of
what it means. But how can we be sure we agree on the
details?
• One way is translate it into a common language – the
language of mathematics. That’s what a denotational
semantics does.





## Summary

* Define syntax using BNF notation: `b ::= # | b0 | b1`
* Define denotational semantics using a function that maps the syntax to mathematical objects (natural numbers, booleans, sets, relations, functions):

```js
// unary numbers v1
Nat ::= Z | S Nat    // Z, S Z, S (S Z), …

// unary numbers v2
i ::= # | iS       // #, #S, #SS, #SSS, …

// binary numbers
b ::= # | b0 | b1

// map into natural numbers
binsem (#)  = 0
binsem (b0) = binsem(b)
binsem (b1) = binsem(b) + 1
```



Denotational functions are
* **total**
  - f is total when for any x with an appropriate type, f(x) produces a result
  - note: sometimes denotational functions will not be total; in such cases we are intentionally saying that some bit of syntax is meaningless
* inductive
  - functions are only called recursively on smaller arguments
  - a smaller argument is a proper subexpression of the original argument. 
  This is called *structural induction* or *induction on syntax*.
