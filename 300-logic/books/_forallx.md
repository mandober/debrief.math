# forallx

- SL Sentential (propositional) logic, syntax, semantics
- QL Quantified (predicate) logic, syntax, semantics

* In SL, the *atoms* are *indivisible statements* represented as letters and connected with *logical connectives* to make *compound statements*.

* In QL, the atoms are *objects*, their *properties* and *relations*.

We need a formal language that allows us to represent many arguments of a natural language. SL can represent every valid argument of Aristotelean logic and more, and QL even more.


## SL Sentential logic

Aristotelean, SL, and QL are bivalent logics. However, bivalent logic has many limits and problems, which has spawned a myriad of other logic systems.

> An argument is *valid* if it is impossible for the premises to be true and the conclusion false; otherwise *invalid*.

* A *tautology* is a sentence that must be true, as a matter of logic.
* A *contradiction* is a sentence that must be false, as a matter of logic.
* A *contingent* sentence is neither a tautology nor a contradiction.

Two wff are *logically equivalent* if they necessarily have same truth value. A set of wff is *consistent* if it is logically possible for all the members of the set to be true at the same time; otherwise *inconsistent*.

A formal language is called the *object language*, it is the subject of our discusion, and the language we use to talk about it is the *metalanguage*.


SL's WFF (formal definition):
- *atomic sentences* are logical variables ranging over some domain
- every atomic sentence is a wff
- if A and B are wffs, then
  - `¬A` is a wff
  - `(A ∧ B)` is a wff
  - `(A ∨ B)` is a wff
  - `(A → B)` is a wff
  - `(A ⇔ B)` is a wff
- nothing else is a wff


A sentence is a meaningful expression that can be true or false. Since the meaningful expressions of SL are the wffs, and since every wff of SL is either true or false, the definition for a sentence of SL is the same as the definition for a wff. Not every formal language will have this nice feature (e.g. there are wffs in QL which are not sentences).

**Truth-functional connectives**: the truth value of a compound sentence depends only on the truth value of atomic sentences that comprise it. In order to determine the truth value of, e.g., `D ⋀ E`, we only need to detrmine the truth value of `D` and `E`. Connectives that work like this are called truth-functional connectives.


## QL Quantified Logic

A logical language QL is a version of quantified logic, because it allows for *quantifiers*. Quantified logic is also sometimes called predicate logic, because the basic units of the language are predicates and terms.


Motivation

Generally, if a quantified argument is valid in SL, then it is also valid in a natural language. If it is invalid in SL, then we don't know - it might be valid due to a quantifier structure (that a natural language argument has) which SL lacks.

Similarly, a quantified sentence that is a tautology in SL is also a tautology in a natural language.

If contingent in SL, then this might be because of the structure of the quantifiers that gets removed when we translate into the formal language.

So, to symbolize arguments that rely on quantifier structure, we need to develop a different logical language - Quantified Logic (QL).

Building blocks of QL are predicates. A **predicate** is an expression that is not a sentence on its own since it lacks a truth value. In order to obtain it, it needs a subject (individual). We represent predicates with capital letters and reserve lower-case letters for individuals.


**Singular terms**
- *proper name* is a singular term that picks out an individual without desc it
- *definite description* picks out an individual by means of a unique desc

Singular terms in QL must refer to just one specific thing. We symbolize singular terms with (subscripted) lower-case letters. Singular terms are *constants* as they pick out specific individuals. *Variables* don't stand for any specific thing but they are not constants - we need vars to introduce quantifiers.

**Predicates**
- The simplest predicates are *properties* of individuals.
- *Monadic predicates* require a single term: a one-place predicate and a singular term combine to make a sentence.
- *Dyadic predicates* are about relation between 2 things
- *triadic predicates* are about relation between 3 things, etc.


**Quantifiers**
- quantifier must be followed by a var and formula that includes that var
- formula that follows the quantifier is called the *scope of the quantifier*
- scope is the part of the sentence that the quantifier quantifies over
- logically equivalent: `∀x.Ax ≡ ¬∃x.¬Ax`


## Universe of Discourse

In order to eliminate ambiguity, we will need to specify a universe of discourse (UD or UoD). The **universe of discourse** is the set of things that we are talking about. The quantifiers range over the universe of discourse.


In QL, the UD must be non-empty. It is possible to construct formal languages that allow for empty UDs, but this introduces complications. Even allowing for a UD with just one member can produce some strange results. There is the problem of *non-referring terms* - each constant of QL must refer to something in the UD, although the UD can be any set of things that we like.


### Example translations

- Every coin in my pocket is a quarter:      ∀x. Px -> Qx
- Some coin on the table is a dime:          ∃x. Tx ∧ Dx
- Not all the coins on the table are dimes: ¬∀x. Tx -> Dx
- None of the coins in my pocket are dimes: ¬∃x. Tx ∧ Dx

- all in UD (all existing coins) are in my pocket and are quarters: ∀x.Px ∧ Qx
- for any coin: if it is in my pocket, then it is a quarter: ∀x(Px → Qx)
- "for any coin: either it is NOT in my pocket OR it is a quarter". Since A → B is logically equivalent to ¬A ∨ B: `∀x(Px → Qx) ≡ ∀x(¬Px ∨ Qx)`



### Sentences of QL

QL Expressions
- predicates: A,B,C
- constants: a,b,c
- variables: x,y,z
- connectives: ¬ ∧ ∨ →
- quantifiers: ∃ ∀

We define an expression of QL as any string of symbols of QL. Take any of the symbols of QL in any order, and that's a QL expression.


Well-formed formulae:
- By definition, a term of QL is either a constant or a variable
- An atomic formula of QL is an n-place predicate followed by n terms
- Every atomic formula is a wff, build new wffs with connectives
- In order for `∀x.P` to be a wff, P must contain the variable x and must not already contain an x-quantifier.

WFF:
- Every atomic formula is a wff
- if P is a wff, then ¬P is a wff
- if P and Q are wffs, then (P ∧ Q) is a wff
- if P and Q are wffs, (P ∨ Q) is a wff
- if P and Q are wffs, then (P → Q) is a wff
- if P and Q are wffs, then (P ⟺ Q) is a wff
- if P is a wff, x is a variable, P contains at least one occurrence of x, and P contains no x-quantifiers, then ∀x.P is a wff
- If P is a wff, x is a variable, P contains at least one occurrence of x, and P contains no x-quantifiers, then ∃x.P is a wff.
- All wffs of QL can be generated by applications of these rules.

x above is a meta-variable that stands in for any variable of QL.

> The scope of a quantifier is the subformula for which the quantifier is the main logical operator.

Sentences
- A sentence is something that can be either true or false.
- In SL, every wff was a sentence, but this is not the case in QL.
- Quantifier tells us how to interpret a variable.
- The scope of x-quantifier is the part of formula where the quantifier tells how to interpret x.
- *Bound variable* is an occurrence of a variable x that is within the scope of an x-quantifier.
- *Free variable* is an occurance of a variable that is not bound.
- Sentence is a wff that contains no free variables.

## SL Semantics

To formally define truth in SL, then, we want a function, v (for "valuation"), that assigns a 1 or 0 to each of the sentences of SL.

We can interpret this function as a definition of truth for SL if it assigns 1 to all of the true sentences of SL and 0 to all of the false sentences of SL.

We want v to be a function such that for any sentence A, v(A)=1 if A is true and v(A)=0 if A is false.

Our strategy for defining the truth function, v, will also be in two steps. The first step will handle truth for atomic sentences; the second step will handle truth for compound sentences.
