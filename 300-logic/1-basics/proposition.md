# Proposition

## Tl/DR

* Propositions are abstract logical entities whose concrete presentations are the suitable declarative sentences (linguistic entities) of natural languages.
* Propositions and declarative sentences have a truth value (arguments do not).
* Categorical proposition is a kind of proposition used in syllogistic logic that asserts/denies that all/some of the members of a class of objects (the subject term) are included in another class of objects (the predicate term).
* Propositional logic studies propositions and logical connectives in terms of their truth value.


## Propositions, declarative sentences, truth values

Proposition is a central notion in logic, along with argument, inference, entailment, truth.

In linguistics, sentences of a natural language are classified by functionality into 4 types: interrogative, exclamative, imperative and declarative sentences.

*Declarative sentences*, also called *declarations*, *claims*, *statements* or *assertions*, are the only suitable type of sentences to make propositions 
because only declarations can be assigned a truth value (e.g. true or false).

*Logical entities* that may have a truth value are called *truth-bearers*. We can discuss the veracity of truth-bearers, that is, we can argue whether they are true or false. Propositions are the primary truth-bearers in logic.


Unlike the other types of sentences, we can discuss the truth value of declarative sentences. Such discussions, when done verbally, are called *debates*, and they nominally include two participants, in this context called *interlocutors*, that continually take turns, one after the other, presenting their arguments as to why they think that a proposition, that is the subject matter of the debate, is true or false.

However, natural languages are complicated, so on the one hand, some sentences of other types (e.g. interrogative sentences) can actually be interpreted as declarations; on the other hand, not all declarative sentences are suitable propositions.

Declarations that talk about future events have an indeterminate truth value, but the common logic only allows two truth values, true and false; there is no third, indeterminate value in classical logic, like there is in 3-valued logics. Classical logic is *bivalent* or *two-valued logic*, as opposed to logics that have more than two truth values, like 3-valued logic, 4-valued logic, multi-valued logic, fuzzy logics (explored later). *The principle of bivalence* is one of the fundamental principles that classical logic is build upon. *Classical logic* is the most common type of logic, it's like a default logic. However, classical logic is not a system of logic per se, but more of a name for set of laws, principles and rules of logic that it admits, so perhaps a better name for it is *classical reasoning*.

Thus, classically, propositions are either true or false.

Declarative sentences that are open to different intepretations also make for problematic propositions because their truth value is difficult to determine.

*Indexical sentences* are statements that use relative determiners, e.g. "this", "that", the pronouns "I", "you", "they", and similar, context-dependent words and phrases, and thus make it difficult (but possible with paraphrasing) to assign them a truth value.

The term "proposition" thus refers to those (declarative) sentences that have a determinate, distinct truth value. Proper propositions make a subset of all declarative sentences of a natural language.

>Importantly, propositions are abstract logical entities, while declarative sentences are concrete linguistic entities.

Propositions are abstract objects of logic. Declarative sentences are concrete objects of linguistics. Propositions are made of declarative sentences, but propositions are abstract objects of logic in the sense that many declarative sentences of some natural language may express the same proposition. Moreover, the same proposition can be expressed using different natural languages.

>Propositions are abstract logical entities whose concrete presentations are the suitable declarative sentences of natural languages.

The fundamental property of propositions is a truth value.


### Propositional logic

*Propositional logic* studies propositions, in terms of their truth value, as they are jopined with different connectives. The basic terms of propositional logic are propositions (abstract objects of logic) and their concrete representations by declarative sentences, which is why it is also called *sentential logic* (SL). SL takes entire propositions as its terms, leaving the further decomposition of propositions to predicate logic that builds upon it. SL studies the truth value of simple propositions, but is particularly interested in the truth value of compound propositions.

>Propositional logic studies propositions and logical connectives in terms of their truth value.

*Simple propositions*, modelled after simple declarative sentences, are the atomic propositions that lack logical connectives. *Compound propositions* are simple propositions joined by logical connectives.

**Logical connectives** are the logical constants that are used to join propositions. They are modelled after the connectives of natural languages. Similarly to propositions, logical connectives are the abstract objects of logic, represented by various concrete connectives in a natural language. For example, conjunction as a logical connective is denoted either by *AND*, or more commonly, by the symbol `∧`, while conjunction as a connective in English may be expressed using different words and phrases, like "and", "but", etc.

### Logical connectives

In natual languages, *connectives* are the various words and phrases that join simple sentences, such as "and", "or", "nor", "if…then", "if and only if".

A **simple sentence** is a sentence without connectives, e.g. "Shape X is a square", or "Shape X is an equilateral".

A **compound sentence** is a sentence constructed by joining two simple sentences with a connective.

For example, "Shape X is a square *and* shape X is an equilateral", which is built by joining two (simple) sentences with **conjunction** ("and"). In a natural language like English, conjunction may be expressed by many more words than just "and", e.g. "Shape X is any equilateral *but* a square", which is more verbosly expressed as "Shape X is an equilateral *and* shape X is not a square".

The last example sentence mentions "not", which is also considered a connective despite the fact that it is applied to a single sentence. It is called **negation** and "not" serves to negate a sentence, e.g. "*It is not the case that* shape X is a square". Because propositional logic can only distinguish simple sentences - it cannot look inside them to discern their components - negation is usally expressed by prefixing a proposition by the phrase "It is not the case that …", rather than inserting "not" inside it, e.g. "Shape X is *not* a square". More precisely, while we stay within a natural language, both options of negation are possible (because we do see inside statements), but the first way is preferred when working within the formal language of propositional logic because it only has symbols.

In propositional logic, the entire sentence "shape X is a square" is represented by a symbol; conventionally, by a single lowercase letter, such as `p`, `q`, `r` or `s`, etc., which are called **propositional variables**. They are variables in the sense that initially a symbol like `p` may stand for any proposition, but once it gets associated with a sentence, it is fixed and it stays that way (it cannot be re-associated with another sentence). That's why sometimes they are also called **propositional constants**. In general, constants are those elements whose meaning never changes, so perhaps we should stick to calling them propositional variables. *Logical constants* are *logical connectives* ("and", "not", "or") because their meaning is forever fixed, it never changes.

**Logical connectives** are logical representations of natural language connectives. Disjunction ("or") can be expressed in many ways in a natural language, but in a formal language of logic, it is always expressed in only one way - as "or". This "or" is a logical entity that denotes logical disjunction. In order to emphasize this, each logical connective has an associated symbolic presentation. Usually, the alphabetic, spelled-out version, e.g. `or` is used in informal logic and informal setting, while the symbolic version, `∨`, is used in formal logic and formal setting.

Logical connectives
- conjunction, AND, `∧`
- disjunction, OR, `∨`
- negation, NOT, `¬`
- implication, IMP, `→`

There are plenty more logical connectives but these are enough to define them (and enough for now; others are examines later).

### Propositions as propositional variables

In propositional logic, an entire proposition is represented by a symbol:
- `p` := "Shape X is a square"
- `¬p` := "It is not the case that shape X is a square"
- `q` := "Shape X is an equilateral"
- `¬q` := "It is not the case that shape X is an equilateral"

So, `p` may be interpreted as '"Shape X is a square" is true', 
and `¬p` as '"Shape X is a square" is false'.

This shows the distinction between the language used to express the symbolic expressions (of a formal language of logic), called an **object language**, and the language used to talk about the object language, called a **metalanguage**. For example, here the object language is (a form of) the symbolic language of propositional logic, while English serves as a metalanguage.

### Formal language

A formal language is a rigorously defined language, usually by first specifying the axioms and its atomic elements, and then inductively defining more properties and rules by building upon the simpler definitions. For example, an attempt to formally define what propositions are (a formal language of propositional erntities), we could start by first stating that a simple proposition is a translation of a simple sentence form a natural language.

- propositions         = declarative sentences
- atomic proposition   = simple sentence without connectives
- compound proposition = compound sentence formed by connecting simple ones
- logical connective   = connective

```hs ebnf
propositions (p, q, r)
  := atom
   | '¬' p
   | p 'conn' q
   | 'if' p 'then' q

conn := 'and' | '∧'
      | 'or'  | '∨'
      | 'iff' | '⇔'
      | 'xor' | '⊕'

atom := atomic-proposition
```
