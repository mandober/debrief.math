# Denotational semantics

"Denotational Semantics: A Methodology for Language Development"
Book by David A. Schmidt, 1997

## Contents

<!-- TOC -->

- [Contents](#contents)
- [TOC](#toc)
- [0. Introduction](#0-introduction)
- [0.1 Methods for specifying semantics](#01-methods-for-specifying-semantics)
  - [0.1.1 Operational semantics](#011-operational-semantics)
  - [0.1.2 Denotational semantics](#012-denotational-semantics)
  - [0.1.3 Axiomatic semantics](#013-axiomatic-semantics)
- [1. Syntax](#1-syntax)
  - [1.1 Abstract syntax definition](#11-abstract-syntax-definition)
  - [1.2 Mathematical and structural induction](#12-mathematical-and-structural-induction)
- [2. Sets, Functions and Domains](#2-sets-functions-and-domains)
  - [2.1 Sets](#21-sets)
    - [2.1.1 Constructions on Sets](#211-constructions-on-sets)
- [2.2 Functions](#22-functions)
  - [2.2.1 Representing Functions as Sets](#221-representing-functions-as-sets)
  - [2.2.2 Representing Functions as Equations](#222-representing-functions-as-equations)
- [2.3 Semantic Domains](#23-semantic-domains)
  - [2.3.1 Semantic Algebras](#231-semantic-algebras)

<!-- /TOC -->

## TOC

0. Introduction
  0.1 Methods for specifying semantics
    0.1.1 Operational semantics
    0.1.2 Denotational semantics
    0.1.3 Axiomatic semantics
1. Syntax
  1.1 Abstract syntax definition
  1.2 Mathematical and structural induction
2. Sets, Functions and Domains
  2.1 Sets
    2.1.1 Constructions on Sets
  2.2 Functions
    2.2.1 Representing Functions as Sets
    2.2.2 Representing Functions as Equations
  2.3 Semantic Domains
    2.3.1 Semantic Algebras
3. Domain Theory I: Semantic Algebras



## 0. Introduction

Any notation for issuing instructions to a computer is a programming language.

Arithmetic notation is a programming language, and so is Pascal. The input data format for an applications program is also a programming language. The person who uses a program thinks of its input commands as a language, just like the program's author thought of Pascal when she used it to implement the program. The person who wrote the Pascal compiler had a similar view about the assembly language he used for writing the compiler. This series of languages and viewpoints terminates at the physical machine, where code is converted into machine instructions.

A PL has 3 main characteristics:
1. *Syntax*:     appearance and structure of PL sentences.
2. *Semantics*:  assignment of meaning to the sentences.
3. *Pragmatics*: usability of the language.

Pragmatics includes the areas of application, the ease of implementation and use, and a PL's success in fulfilling its goals.

Syntax, semantics, and pragmatics are features of every computer program. Considering an application, it is a processor for its input language, and it has 2 main parts: the input checker module (parser) reads the input and verifies that it has the proper syntax; the evaluation module evaluates the input to its corresponding output, and in doing so, defines the input's semantics. How the system is implemented and used are pragmatical concerns.

These characteristics also apply to a general purpose language like Pascal. An interpreter for Pascal also has a parser and an evaluation module. An issue of pragmatics may be that the interpretation is slow, so we prefer a compiler instead. A Pascal's compiler transforms its input program into a fast-running, equivalent version in machine code.

The compiler presents some deeper semantic questions. In the case of an interpreter, *the semantics of a program is defined entirely by the interpreter*. But a compiler does not define the meaning, instead, *compiler preserves the meaning* of a program when it translates it into the machine code. The semantics of Pascal is an issue independent of any particular compiler or computer. The case in point are Pascal compilers on two different machines; the two different compilers still preserve the same semantics of Pascal.

Rigorous definitions of the syntax and semantics of Pascal are required to verify that a compiler is correctly implemented. The area of *syntax specification* has been thoroughly studied, and *Backus-Naur form (BNF)* is widely used for specifying syntax. One of reasons this area is so well developed is the close correspondence between a PL's BNF definition and its parser: the definition dictates how to build the parser. A *parser generator* maps a *BNF definition* to a *guaranteed correct parser*. In addition, a BNF definition provides valuable documentation.

Semantics definition methods are also valuable to implementors and programmers, for they provide:
* *A precise standard for a computer implementation*. The standard guarantees that the language is implemented exactly the same on all machines.
* *Useful user documentation*.
* *A tool for design and analysis*. Typically, systems are implemented before their designers study pragmatics. This is because few tools exist for testing and analyzing a language. Just as syntax definitions can be modified and made error-free so that fast parsers result, semantic definitions can be written and tuned to suggest efficient, elegant implementations.
4. *Input to a compiler generator*. A compiler generator maps a semantics definition to a guaranteed correct implementation for the language. The generator reduces systems development to systems specification.

Unfortunately, the semantics area is not as well developed as the syntax area. This is for two reasons: first, semantic features are much more difficult to define and describe. (In fact, BNF's utility is enhanced because those syntactic aspects that it cannot describe are pushed into the semantics area. The dividing line between the two areas is not fixed); second, a standard method for writing semantics is still evolving.

## 0.1 Methods for specifying semantics

Programmers naturally take the meaning of a program to be the actions that a machine takes upon it. The first versions of PL semantics used machines and their actions as the foundation.

### 0.1.1 Operational semantics

The *operational semantics* method uses an interpreter to define a language. The meaning of a program in the language is the evaluation history that the interpreter produces when it interprets the program. The evaluation history is a sequence of internal interpreter configurations. One of the disadvantages of an operational definition is that a language can be understood only in terms of interpreter configurations: no machine-independent definition exists. Another problem is the interpreter itself: it is represented as an algorithm. If the algorithm is simple and written in an elegant notation, the interpreter can give insight into the language. Unfortunately, interpreters for nontrivial languages are large and complex, and the notation used to write them is often as complex as the language being defined. Operational definitions are still worthy of study because one need only implement the interpreter to implement the language.

### 0.1.2 Denotational semantics

The *denotational semantics* method maps a program directly to its meaning, called its *denotation*, using a *valuation function*. The denotation is usually a mathematical value, such as a number or a function. No interpreters are used in a denotational definition; it is more abstract than an operational definition, since it doesn't specify computation steps. Its high-level, modular structure means the individual parts of a PL can be studied without examining the entire definition. On the other hand, the implementor of a PL has more work to do. The numbers and functions must be represented as objects in a physical machine, and the valuation function must be implemented as the processor.

### 0.1.3 Axiomatic semantics

With the *axiomatic semantics* method, the meaning of a program is not explicitly given at all. Instead, *properties about language constructs* are defined. These properties are expressed with *axioms* and *inference rules* from symbolic logic. A property about a program is deduced by using the axioms and rules to construct a *formal proof of the property*. The character of an axiomatic definition is determined by the kind of properties that can be proved. For example, a very simple system may only allow proofs that one program is equal to another, whatever meanings they might have. More complex systems allow proofs about a program's input and output properties. Axiomatic definitions are more abstract than denotational and operational ones, and the
properties proved about a program may not be enough to completely determine the program's meaning. The format is best used to provide preliminary specs for a language or to document properties that are of interest to the users.

∎

Each of the three methods of formal semantics definition has a different area of application, and together the three provide a set of tools for language development.

Designing a new programming system might proceed by first supplying a list of properties a PL should have. Since users interacts with it via an input language, an axiomatic definition is constructed first, defining the input language and how it achieves the desired properties. Next, a denotational semantics is defined to give the meaning of the language. A formal proof is constructed to show that the semantics contains the properties that the axiomatic definition specifies. *The denotational definition is a model of the axiomatic system*. Finally, the denotational definition is implemented using an operational definition. These complementary semantic definitions of a language support systematic design, development, and implementation.

Of the three semantics description methods, denotational semantics is the best format for precisely defining the meaning of a programming language. Possible implementation strategies can be derived from the definition as well. The study of denotational semantics provides a good foundation for understanding many of the research areas in semantics and PLT.

## 1. Syntax

A PL consists of syntax, semantics, and pragmatics. We formalize syntax first, because only syntactically correct programs have semantics. A syntax definition of a language lists the symbols for building words, the word structure, the structure of well formed phrases, and the sentence structure.

The *Backus-Naur form* notation is used to precisely specify the internal structure of a PL. A BNF definition consists of a set of equations. The lhs of an equation is called a *nonterminal* and gives the name to a *structural type* in the language. The rhs lists the forms which belong to the structural type. These forms are built from *terminal symbols* and other nonterminals.

The BNF definition gives a complete and precise description of the syntax. An expression derived from the language is called a *derivation tree*; it clearly exposes the internal structure. However, it may happend that a BNF definition results in two valid derivation trees for the same expression. When this happens, the syntax definition is said to be *ambiguous*. Ambiguous BNF definitions can usually be rewritten into an unambiguous form, at the cost of introducing some artificial levels of structure.

We consider the derivation trees are the real sentences of a language, and strings of symbols are just abbreviations for the trees. Thus, the string `4 × 2 + 1` is an ambiguous abbreviation. A BNF definition is adequate for specifying the structure of sentences (trees) of arithmetic, but it is not designed for assigning a unique derivation tree to a string purporting to be a sentence.

In practice, we use two BNF definitions: one to determine the derivation tree that a string abbreviates, called the *concrete syntax* definition; and one to analyze the tree's structure and determine its semantics, called the *abstract syntax* definition.

A formal relationship exists between a concrete and abstract syntax definitions: the tree generated for a string by a concrete definition identifies a derivation tree for the string in the abstract definition.

Concrete syntax definitions are used to handle parsing problems; this isn't a concern of semantics, and we'll work with derivation trees, not strings. The concrete syntax definition is derived from the abstract one. The abstract syntax definition is the true definition of the structure of a PL.

### 1.1 Abstract syntax definition

Abstract syntax definitions describe structure. Terminal symbols disappear entirely if we study abstract syntax at the word level. The building blocks (words) of abstract syntax are called *tokens*, rather than terminal symbols. This relates syntax to semantics more closely, for meanings are assigned to entire words (tokens), not to individual symbols.

Set theory gives us an even more abstract view of abstract syntax. Each nonterminal in a BNF definition names the set of those *language phrases* that have the structure specified by the nonterminal's BNF rule. However, the rules can be discarded by introducing *syntax builder operations*; one for each form on the right-hand side of the rule.

Set-theoretic formulation of the syntax of arithmetic:

```js
Sets
  Op
  Expr
  Numeral

Operations
  mkExprFromNumeral : Numeral -> Expr
  mkCompoundExpr    : Expr ⨯ Op ⨯ Expr -> Expr
  mkBracketedExpr   : Expr -> Expr

  plus  : Op
  minus : Op
  mult  : Op
  div   : Op

  zero  : Numeral
  one   : Numeral
  two   : Numeral
  …
  hundred : Numeral
  …
```

The language consists of 3 sets of values: expressions, arithmetic operators, and numerals.

The members of the `Numeral` set are exactly those values built by the "operations" (which are really constants): `zero`, `one`, `two`, etc. The `Operator` set contains just the 4 values denoted by the constants `plus`, `minus`, `mult`, and `div`. Members of the expression set, `Expr`, are built with the 3 operations, `mk*`.

Consider `mkExprFromNumeral`: it converts a value from the Numeral set into a value in the Expr set, thereby reflecting the idea that any known numeral can be used as an expression. Similarly, `mkCompoundExpr` combines two known members of the Expr set with a member of the Operation set to build a member of the Expr set. Note that `mkBracketedExpr` does not need parenthesis tokens to complete its mapping; the parentheses were just "window dressing".    
For example, the expression `4 + 12` is repr by    
`mkCompoundExpr(mkExprFromNumeral(four), plus, mkExprFromNumeral(twelve))`.


The set-theoretic abstract syntax is due to C. Strachey. When we work with the set-theoretic formulation of abstract syntax, we forget about words and derivation trees and work only in the world of sets and operations. The set-theoretic approach reinforces the view that syntax is not tied to symbols; it's a matter of structure. *Syntax domain* specifies a collection of values with a common syntactic structure (e.g. arithmetic has 3 syntax domains).

We specify a language's syntax by listing its syntax domains and its BNF rules. The syntax of a block-structured PL in this format:

```js
Abstract syntax:
  P ∈ Program
  B ∈ Block
  D ∈ Declaration
  C ∈ Command
  E ∈ Expression
  O ∈ Operator
  I ∈ Identifier
  N ∈ Numeral

P := B.
B := D;C
D := var I | procedure I; C | D1; D2
C := I = E | if E then C | while E do C | C1;C2 | begin B end
E := I | N | E1 O E2 | (E)
O := + | − | * | div
```

For example, the phrase `B ∈ Block` indicates that `Block` is a syntax domain and that `B` is the nonterminal that represents an arbitrary member of the domain. The structure of blocks is given by the BNF rule `B := D;C` which says that any block must consist of a declaration (repr by `D`) and a command (`C`). The structures of programs, declarations, commands, expressions, and operators are similarly specified. `Identifier` and `Numeral` have no BNF rules since they are collections of tokens.

### 1.2 Mathematical and structural induction

We must often show that all the members of a syntax domain have some property in common - the proof technique used on syntax domains is *structural induction*.

A specific case of structural induction is the *mathematical induction*, which is a proof strategy for showing that all members of `ℕ` possess a property `P`.

1. Show that `P(0)` holds
2. Assuming that `P(n)` holds for an arbitrary `n ∈ ℕ` (induction hypothesis), show that `P(n+1)` holds as well, `P(n) -> P(S n)`

When both steps are proved then it follows that the property holds for all the
numbers in ℕ. This is because any number `k` in `ℕ` is either `0`, for which the proof that `P(0)` holds was already given in (1), or `k` is `S n`, that is, `k = 1 = S(0)`, or `k = 2 = S (S 0)`, or `k = S (… S 0)`; in other words, `k` is always of the form `P(S(n))`, which we have already proved in (2). In the usual notation: any number `k` ∈ ℕ has the form `(… ((0 + 1) + 1) + … + 1)`, as 1 added `k` times.

The mathematical induction principle is simple because the natural numbers have a simple structure: a number is either 0 or a successor of some number. This structure can be formalized as a BNF rule: `N := 0 | N + 1`.

*Any natural number is just a derivation tree*. The mathematical induction principle is a proof strategy for showing that all the trees built by the rule for `N` possess a property `P`.

Step 1 says to show that the tree of depth zero, the leaf 0, has `P`. Step 2 says to use the fact that a tree `t` has property `P` to prove that the tree `t+1` has `P`.

The mathematical induction principle, generalized to work upon any syntax domain defined by a BNF rule, is **structural induction**. Treating the members of a syntax domain `D` as trees, we show that all trees in `D` have property `P`
inductively:
1. Show that all trees of depth zero (`d = 0`) have `P`
2. Assuming that all trees of depth `d` or less have `P` (where `d >= 0`), show that a tree of depth `m + 1` has `P` as well.

The structural induction strategy is easily adapted to operate directly upon the BNF rule that generates the trees.

[Definition] **The structural induction principle**:   
for the syntax domain `D` and its BNF rule:

d := Option₁ | Option₂ | … | Optionₙ

all members of `D` have a property `P`    
if the following holds for each `Optionᵢ` (where `1 <= i <= n`):    
assuming that every occurrence of `d` in `Optionᵢ` has `P` (inductive hypothesis), then `Optionᵢ` has `P`.

The method appears circular because it is necessary to assume that trees in `D` have `P` to prove that the `D`-tree built using `Optionᵢ` has `P`, but the tree being built must have a depth greater than the subtrees used to build it, so steps 1 and 2 apply.

The structural induction principle generalizes to operate over a number of domains simultaneously. We can prove properties of two or more domains that are defined in terms of one another.


## 2. Sets, Functions and Domains

Functions are fundamental to denotational semantics. We introduce functions through set theory. The concepts of set theory form a foundation for the **theory of semantic domains**, the *value spaces* used for giving meaning to languages. We examine the basic principles of sets, functions and domains.

### 2.1 Sets

- principle of intensionality
  - internal view of sets
  - intensional equality of sets
- principle of extensionality
  - external view of sets
  - extensional equality of sets
- set product
  - n-ary product
- ordered pair (2-tuple)
  - n-tuple
- union
  - n-ary union
  - disjoint union
- intersection
  - n-ary intersection


The internal structure of a set is exposed when sets are specified using a rooster notation. An *external view* treats sets as abstract objects, allowing us to only ask yes/no questions about membership of an element in some set; that way the internal structure of sets isn't even important, as long as membership questions can be answered.

To tie the internal and external views together, set theory has the **principle of extensionality**, also called **extensional equality of sets**: a set `R` is equal to a set `S` iff they give the same answer to all the membership queries:

`R = S <=> (∀x.(x ∈ R <=> x ∈ S))`

The extensionality principle implies the two elementary properties of sets: set is an unordered collection without duplicated elements; because the questions about an element's membership can only ask whether some element is in some set or not; not questions about its order or multiplicity.


#### 2.1.1 Constructions on Sets

Union and intersection are commutative and associative.

```
R = S <=> (∀x. x ∈ R <=> x ∈ S)
R ⊆ S <=> (∀x. x ∈ R --> x ∈ S)
R = S <=> (R ⊆ S ⋀ S ⊆ R)

∀x. x ∈ (R ⋃ S) -> (x ∈ R ⋁ x ∈ S)
∀x. x ∈ (R ⋂ S) -> (x ∈ R ⋀ x ∈ S)

ℤ = ⋃ [i = 0 ..] {i, -i}
```

An ordered pair is an element of the product of two sets, e.g.

`𝔹 ⨯ ℕ` = `{ (b, n) | ∀b.b ∈ 𝔹. ∀n. n ∈ ℕ }`

> A form of union construction on sets that keeps the members of the respective sets R and S separate is called **disjoint union** (or sum):

`R + S` = `{ (0,x) | x ∈ R }` ⋃ `{ (1,y) | y ∈ S }` = `{ (0,x), (1,y) }`

The ordered pair construction is used to *tag* elements of `R` and `S` such that it's always possible to determine an element's origin (even if R and S are the same set). 

The tags are elements of an arbitrary set that is called an *indexing set* when used in this role; those elements of the indexing set that are used for indexing are called *indices*.

Most of the time, the set ℕ is used as the indexing set, but in the case of the binary disjoint union, it is customery to use the Boolean set, 𝔹, for indexing. Above, the elements originating from `R` are tagged by pairing them with the Boolean false value `(0, x)` as the first pair component.

The ordered pair will also need operations for assembling and disassembling its components, `inR` and `inS`, which behave as follows:

- if x is in R then it is tagged with a F (false)
  `x ∈ R. inR(x) = (F,x)`

- if y is in S then it is tagged with a T (true)
  `y ∈ S. inS(y) = (T,y)`

`R + S = inR(x) + inS(y)`


To remove the tag from an element `m ∈ R + S`, we could simply say `snd(m)`, but instead we'll use a structured operation called *case analysis*. 
For any `m ∈ R + S`, the value of `m` can be deduced by

```js
case m of
  isR(a) -> … a (here we know that the value came from R)
  isS(a) -> … a (here we know that the value came from S)
end

// for example:
f(m) = case m of
  isL(a : ℕ) = a + 1
  isR(a : 𝔹) = 0
end

// if m is a value whose tag is L and whose value is a, then it is 'a'
// if m is a value whose tag is R and whose value is a, then it is 'a'
```


```hs
data Sum x y = L x | R y

m1 :: Sum Int Bool
m1 = L 42

m2 :: Sum Int Bool
m2 = R True

m :: Sum Int Bool
m = (unkown value)

case m of
  L a -> a is Int
  R a -> a is Bool
```

## 2.2 Functions

A function cannot be taken apart and its internals examined; it is like a black box that accepts an object as its input and then transforms it in some way to produce another object as its output. We must use the external view to understand functions.

For two sets R and S, `f` is a function from R to S, written `f : R → S`, if to each member of R, f associates exactly one member of S.

- the expression `R → S` is called the *arity* or *functionality* of `f`
- `R` is the domain and `S` is the codomain of `f`
- if `x ∈ R`, and the element paired to `x` by `f` is `y`, we write `f(x)=y`
- presenting an arg `a` to `f` is called *application* and is written `f(a)`

We don't know how `f` transforms the input to output, but we accept that somehow it does; the results are what matter. This viewpoint is similar to that taken by a user of an computer program: unaware of the workings of a computer and its software, the user treats the program as a function, as he is only concerned with its input-output properties.

An extensionality principle also applies to functions: for functions `f: R → S` and `g: R → S`, `f` is equal to `g`, written `f = g`, iff for all `x ∈ R`, 
`f(x) = g(x)`.

Composition, g ∘ f = (g ∘ f) x = g(f(x))

Functions can be classified by their mappings, 
a function `f : A -> B`
- `∀a ∈ A. ∃b ∈ B. f(a) = b`              is a function
- `∀b ∈ B. ∃a ∈ A. f(a) = b`              is a surjuction (in terms of B)
- `∀aa' ∈ A. f(a) = f(a') <=> a = a'`     is an injection (in terms of A)
- `∀a ∈ A. f(a) = a`                      is the identity function on A

- and a function `f⁻¹ : B -> A` where     is the inverse of f
  `∀b ∈ B. ∃a ∈ A. f⁻¹(b) = a <=> f(a) = b`




1. injective (one-one)
  - ∀x ∈ R.∀y ∈ R. `f(x) = f(y)` <=> `x = y`
  - `f : R → S` is injective iff `f(x) = f(y)` implies `x = y`

2. surjective (onto)
  - `f : R → S` is onto iff S = `{ y | ∃x ∈ R. f(x) = y }`
  - `∀y ∈ S. ∃x ∈ R. f(x) = y`
  - `∀x ∈ R. ∀y ∈ S. f(x) = y`

3. identity:
  - `f : R → R` is the identity function on `R` iff forall `x ∈ R`, `f(x) = x`
  - `f : A → A` is identity iff `∀a ∈ A. f(a) = a`

4. bijection, inverse:
  if `f : R → S` is injective and surjective, 
  then the function `g : S → R`, defined as `g(y) = x` iff `f(x) = y` 
  is called the inverse function of `f`. 
  Function `g`, i.e. theinverse of `f` is denoted by `f⁻¹`


### 2.2.1 Representing Functions as Sets

…

### 2.2.2 Representing Functions as Equations

…

## 2.3 Semantic Domains

Sets that are used as value spaces in PL semantics are called *semantic domains*.

We will make use of primitive domains (`𝔹`, `ℕ`, `ℤ`, etc.) and the following four types of compound domains, built from existing domains `A` and `B`:
1. Product domains  `A × B`
2. Sum domains      `A + B`
3. Function domains `A → B`
4. Lifted domains   `A⫠` where `A⫠ = A ⋃ { ⟘ }`

The 4th construction adds a special value `⟘` (bottom) that denotes nontermination or the absence of value.

Since we are interested in modelling computing-related situations, there is a possibility that a function `f` applied to an arg `a ∈ A` may yield no answer at all, `f(a)` may stand for a nonterminating computation. In such situations, we say that `f` has functionality `A → B⫠` and `f(a) = b | ⟘`.

The use of the codomain `B⫠` instead of `B` stands as a kind of warning: in the process of computing a value, nontermination may occur.

Including ⟘ as a value is an alternative to using a theory of *partial functions* (partial function is not defined for all domain values).

A function `f` that is undefined at argument `a` has the property `f(a) = ⟘`.

In addition to dealing with undefinedness as a real value, we can also use `⟘` to state what happens when a function receives a nonterminating value as an argument, `f : A⫠ → B⫠`, we write `f = λ!x.α` (`λ!` is the strict λ) to denote the mapping:

```hs
-- definition
f : A⫠ -> B⫠
f = λ!.α

-- application
f ⟘ = ⟘
f a = [a/x]α   for a ∈ A
```

The `λ!` denotes a strict function, so `f` cannot recovered from a nonterminating situation. For example

```hs
-- f is strict:
f : ℕ⫠ → ℕ⫠
f = λ! n . 0

f = \ n -> 0
f !n = 0

f(⟘) = ⟘

-- g is lazy
g : ℕ⫠ → ℕ⫠
g = λ n . 0

g(⟘) = 0
```

### 2.3.1 Semantic Algebras

Now that the tools for building domains and functions have been specified, we introduce a format for presenting semantic domains. The format is called a *semantic algebra* because (like the algebras studied in universal algebra) it is the grouping of a set with the fundamental operations on that set.

We choose the algebra format because

1. Clearly states the structure of a domain and how its elements are used by the functions.
2. Encourages the development of standard algebra "modules" or "kits" that can be used in a variety of semantic definitions.
3. Makes it easier to analyze a semantic definition concept by concept.
4. Makes it straightforward to alter a semantic definition by replacing one semantic algebra with another.

We use pairs of integers to simulate the rational numbers. Operations for creating, adding, and multiplying rational numbers are specified. The example also introduces a function that we will use often:   
the expression `e1 → e2 ▯ e3` is the *choice function*, which has the value `e2` if `e1 = true`, or `e3` if `e1 = false`, i.e. `e1 ? e2 : e3`, or   
`if e1 then e2 else e3`.

```hs
Example:
  Simulating the rational numbers

Domain:
  Rat = (ℤ × ℤ)⫠

Operations:
  makerat :: ℤ -> (ℤ -> Rat)
  makerat= λp. λq. if q = 0 then ⟘ else (p,q)

  addrat :: Rat -> (Rat -> Rat)
  addrat= λ !(p1,q1). λ !(p2,q2). (p1 * q2 + p2 * q1 , q1 * q2)

  multrat :: Rat -> (Rat -> Rat)
  multrat= λ !(p1,q1). λ !(p2,q2). (p1 * p2, q1 * q2)
```

Since the possibility of an undefined Rat exists, `addrat` and `mulrat` are strict: they must checks both args for definedness (with a bang binding) before performing the operation.


## 3. Domain Theory I: Semantic Algebras
