# Basic concepts

object
  concept
  property
  attribute
  characteristic
formal
  formal system
  formal logic
  formal language
  formal grammar
logic
  formal logic
  symbolic logic
  mathematical logic
formal grammar
  top-down grammar
  bottom-up grammar
  alphabet
    collation
    symbol
      classes of symbols
        sign
        letter
          vocabulary
      primitive symbol
        predicate symbol
        relation symbol
        function symbol
      derived symbol
        definitional abbreviation
  formation rules
  formula
    well-formed formula




<!-- TOC -->

- [Object](#object)
- [Property](#property)
- [Symbolic logic](#symbolic-logic)
- [Mathematical logic](#mathematical-logic)
- [Formal Grammar](#formal-grammar)
- [Top-Down Grammar](#top-down-grammar)
- [Bottom-Up Grammar](#bottom-up-grammar)
- [Formation rules](#formation-rules)
- [Well-Formed Formula](#well-formed-formula)
- [Classes of WFFs](#classes-of-wffs)
- [Alphabet](#alphabet)
- [Letter](#letter)
- [Vocabulary](#vocabulary)
- [Symbol](#symbol)
- [Predicate symbol](#predicate-symbol)
- [Primitive symbol](#primitive-symbol)
- [Sign](#sign)
- [Variable](#variable)
- [Proper Name](#proper-name)
- [Constant](#constant)
- [Signature](#signature)
- [Undefined term](#undefined-term)
- [Statement](#statement)

<!-- /TOC -->

## Deductive system

A deductive system (confusingly, also called a logic) consists of the *axioms*, or *axiom schemata*, and *rules of inference* that can be used to derive *theorems* of the system.

Such deductive systems preserve *deductive qualities* (i.e. they are truth preseving) in the formulas that are expressed in the system. The quality we are usually interested in is the truth value, however, there are other modalities, such as justification or belief (that are the quality being preserved).

In order to sustain its deductive integrity, a deductive apparatus must be definable without referring to any intended interpretation of the language.

The aim is to ensure that each line of a derivation is merely a syntactic consequence of the lines that precede it. There should be no element of any interpretation of the language that gets involved with the deductive nature of the system.

An example of deductive system is first order predicate logic.


https://en.wikipedia.org/wiki/Skolem_normal_form
https://en.wikipedia.org/wiki/Prenex_normal_form
https://en.wikipedia.org/wiki/Universal_quantification
https://en.wikipedia.org/wiki/Quantifier_(logic)
https://en.wikipedia.org/wiki/Quantifier_elimination
https://en.wikipedia.org/wiki/Quantifier_shift
https://en.wikipedia.org/wiki/Uniqueness_quantification


## Object

An object is a thing, an entity, even a concept. Everything that can be talked about in mathematics and logic can be referred to as an object.

For example, "3" is the proper name for a particular object, in this case a number, which can also be identified by, e.g., the property "the smallest positive odd prime number".

## Property

A property is a concept that specifies an aspect of an object. In the phrase "living thing", "living" is a property that "thing" has; it creates a polarity between things that are living and things that are not living.

Sometimes, a property is considered as an external aspect of an object, an aspect without which that object wouldn't loose its identity; as opposed to an attribute that is used to refer to a more internal or essential characteristic.It seems, most often these terms are used interchangibly.

## Symbolic logic

Symbolic logic is the study of logic in which the logical form of statements is analyzed by using symbols as tools. Instead of explicit statements, logical formulas are investigated, which are symbolic representations of statements, and compound statements in particular. In symbolic logic, the rules of reasoning and logic are investigated by means of formal systems, which form a good foundation for the symbolic manipulations performed in this field.

Characteristics of symbolic logic (due to Clarence Irving Lewis):
- the use of symbols, instead of words, to represent concepts
- the use of the deductive method
- the use of variables

## Mathematical logic

Mathematical logic is a branch of symbolic logic, in which the foundations, of the assumptions upon which mathematics itself rest, are investigated and made rigorous.

The roots of mathematical logic originate with the work of George Boole, who first made an attempt to formally define the rules of logic in mathematical terms. Its development as a serious discipline was directly inspired by Hilbert's program, as an attempt to create a consistent and complete set of axioms that would render mathematics completely rigorous. This didn't go the way Hilbert planned due to Gödel and his theorems.

## Formal Grammar

Let `𝓛` be a formal language whose alphabet is `𝓐`. The formal grammar of `𝓛` comprises of rules of formation, which determine whether collations in `𝓐` belong to `𝓛` or not. Roughly speaking, there are two types of formal grammar: top-down grammar and bottom-up grammar.

## Top-Down Grammar

A top-down grammar for `𝓛` is a formal grammar which allows well-formed formulas to be built from a single metasymbol. Such a grammar can be made explicit by declaring that:
- a metasymbol may be replaced by a letter of `𝓐`
- a metasymbol may be replaced by certain collations labeled with metasymbols and signs of `𝓐`

From the words thus generated, those not containing any metasymbols are the well-formed formulas.

## Bottom-Up Grammar

A bottom-up grammar for `𝓛` is a formal grammar whose rules of formation allow the user to build well-formed formulas from primitive symbols, as follows:
- letters are well-formed formulas
- a collection of specified collations of well-formed formulas (possibly labeled with additional signs) are also well-formed formulas
- nothing else is a WFFs

In certain cases, the first clause is adjusted to allow for more complex situations (e.g. in the bottom-up grammar specification of predicate logic). The final rule, called the extremal clause, makes the defined set of rules the smallest one possible.

Soetimes, a formal grammar is called a syntax, however, a more convenient viewpoint is to think of the formal grammar as *explicating the syntax* for the associated formal language. That way, the formal grammar is a means to obtain the syntax for the formal language; also, multiple formal grammars may yield the same syntax.

## Formation rules

Let `𝓛` be a formal language whose alphabet is `𝓐`. The rules of formation of `𝓛` are the rules which define how to construct collations in `𝓐` which are well-formed. That is, the rules of formation tell you how to build collations featuring symbols from the alphabet `𝓐` which are part of the formal language `𝓛`.

The rules of formation of a formal language together constitute its formal grammar.

There are no strict guidelines on how a rule of formation should look like, since they are employed to produce such strict guidelines. Thus, these rules of formation are often phrased in natural language, but their exact form is to some extent arbitrary.


## Well-Formed Formula

Let `𝓛` be a formal language whose alphabet is `𝓐`. A well-formed formula is a collation in `𝓐` which can be built by using the *rules of formation* of the formal grammar of `𝓛`. That is, a collation in `𝓐` is a well-formed formula in `𝓛` iff it has a parsing sequence in `𝓛`. A well-formed formula is sporadically called well-formed word, well-formed expression, statement form, or simply a formula, and commonly written as WFFs.

Less formally, a formal language's alphabet consists of symbols, and they are combined to build formulas. However, since most such productions are gobbledygook, the formal grammar decides which of these are well-formed and thus called well-formed formulas.

Semantically, WFFs are symbolic representations of logical statements. For example, in math, the two most universal types of logical formula are propositional formulas and first-order formulas.

## Classes of WFFs

Let L1 denote the language of predicate logic. The set of all WFFs of L1 formed with relation symbols from P and function symbols from F can be denoted `WFF(P,F)` or, to emphasize parameters, `WFF(P,F,K)`.
- To specify P, one speaks of WFFs with relation symbols from P.
- To specify F, one speaks of WFFs with function symbols from F.
- To specify K, one speaks of WFFs with parameters from K.

Of course, combinations of these are possible. Several classes of WFFs are often considered and have special names.

* *Ground formula* (or ground wff): a ground wff is a wff without variables.

* *Plain wff*: A plain wff of predicate logic is a wff with no parameters. Thus `wff(P,F,∅)` is the set of all plain wffs with relation symbols from `P` and function symbols from `F`.

* *Sentence*: A wff is said to be a sentence iff it contains no free variables. To denote particular classes of sentences, SENT(P,F,K) and analogues may be used, similar to the notation for classes of wffs.

* *Plain sentence*: a wff is a plain sentence iff it is both plain and a sentence.


## Alphabet

Let L be a formal language. The alphabet A of L is a set of *symbols* from which *collations* in L may be constructed. An alphabet consists of the *letters* and the *signs*. Depending on the specific nature of any particular formal language, they too may be further categorized. Σ is often used to denote an arbitrary alphabet.

## Letter

A letter of a formal language is a more-less arbitrary *symbol* whose *interpretation* depends on the specific context. In building a formal language, letters are considered to be the *undefined terms*. An important part of assigning *semantics* to a formal language is providing an interpretation for its letters.

## Vocabulary

The vocabulary of a formal language is the collection of all of its *letters*. As such, it forms part of the *alphabet* of the language. Each *signature* for the language may have a different vocabulary. However, different signatures only have different members of the respective *classes of symbols* comprising the alphabet, rather than introducing new such classes.

## Symbol

Broadly, a symbol is an object that represents another object. In a more narrow sense, a symbol is a *sign*, of particular shape, to which a meaning is ascribed, and is used to represent or identify a particular concept or *object*. Symbols are very convenient due to their compactness, where a single sign can replace numerous words. As logical and mathematical definitions grow longer and more complex, the symbols "pack" and convey more information. On the other hand, understanding exactly what a symbol means becomes more difficult, especially since the same symbol may mean different things in different contexts. Thus, many math books start with a slew of definitions, precisely defining all the symbols the author plans to reference.

## Predicate symbol

A *predicate symbol* (or *relation symbol*) is a symbol of a formal language used to describe a predicate (or a relation). The term "predicate symbol" is used as an idication what the symbol stands for.

## Primitive symbol

Let A be the alphabet of a formal language L. The symbols which comprise A are called the primitive symbols of A. It is usual, during the development of a formal system, to introduce further symbols in order to abbreviate what would otherwise be unwieldy constructions. Hence the distinction between these newly-introduced symbols and the primitive symbols.

## Sign

A *sign* of a formal language 𝓛 is a *symbol* whose primary purpose is to structure the language. In building a formal language, signs form the hooks allowing the formal grammar to define the *well-formed formulae* of the formal language. Common examples of signs are parentheses and the comma, although these are usually called punctuation, and often elided form the grammar rules, delegating their definition as syntactical abbreviation. Strictly, the logical connectives are also signs. Signs form part of the *alphabet* of a formal language. Unlike the letters, they must be the same for each signature for the language.

## Variable

A variable is a label which is used to refer to an unspecified object. A variable can be identified by means of a symbol (`x, y, z, A, B, C, ϕ, ψ, ℵ`). It is often convenient to append a subscript letter or number to distinguish between different objects of a similar type (`a₀, aₙ, Sϕ, Sϕₓ`). The type of symbol used to define a variable is purely conventional. Particular types of object, as they are introduced, frequently have a particular range of symbols specified to define them, but there are no strict rules on the subject.

## Proper Name

A proper name (or just name) is a symbol or collection of symbols used to identify a particular object uniquely. In contrast with natural language, a proper name has a wider range than being the particular identifying label attached to a particular single entity (be it a person, or a place, or whatever else). For example: "Sloth is a proper name for the concept of being lazy". The term *individual constant* is often seen, as are (particularly when applied to a number) *constant* and *parameter*.

## Constant

A constant is a name for an object (usually a number, but the concept has wider applications) which does not change during the context of a logical or mathematical argument. A constant can be considered as an operator which takes no operands. A constant can also be considered as a variable whose domain is a singleton. A constant in an expression in algebra is also seen referred to as an absolute term. In the same context, the term *literal* or *literal constant* can sometimes be seen in order to differentiate it from a numerical constant. The term "constant", as opposed to the term "variable", was introduced by Gottfried Wilhelm von Leibniz.

## Signature

Let 𝓛 be a formal language. A choice of *vocabulary* for 𝓛 is called a signature for 𝓛.

Signature for predicate logic: 
let `𝓛₁` be the language of predicate logic; then a signature for `𝓛₁` is an explicit choice of the alphabet of `𝓛₁`, which amounts to choosing, for each `n ∈ ℕ`:
- a collection `𝓕ₙ` of n-ary function symbols
- a collection `𝓟ₙ` of n-ary relation symbols

It is often convenient to define the constant symbols as the nullary function symbols.


## Undefined term

For a definition to not be circular, the definer must use already defined terms. However, this process cannot go on indefinitely. If we were to insist on everything being defined only using previously defined terms, we would enter an infinite regress. Concepts that are not defined in terms of previously defined concepts are called undefined terms or *primitive notions*. An undefined term is frequently explained by using an ostensive definition: that is, a statement that shows what something is, rather than explains.


## Statement

A statement is a sentence which has objective and logical meaning.

In a non-mathematical context, the term statement has a wider and looser meaning than this. In CS, where it is more usual to encounter commands and questions, the term statement is generally used to encompass all types of sentence; what we refer to as a statement tends to be given the term assertion. In other fields of science, the term statement is usually tacitly understood as being a true statement, and in such a context such statements can be referred to as laws of asserted statements.

Classical logics, that recognize the *law of excluded middle* and the *principle of non-contradiction*, define a statement as a proposition which is either true or false, not both and not neither.

The term proposition is often seen for statement, but modern usage prefers to reserve the term proposition for something more specific. Some sources use the word sentence, but that word is considered nowadays to have too wide a range of meanings to be precise enough in this context.

In the various branches of symbolic logic, statements are assigned symbols:
- *statement label*: a symbol which is assigned to a particular statement, so that it can be identified without the need to write it out in full
- *statement variable*: a symbol which is used to stand for arbitrary and unspecified statements

For example, `3 × 4 = 11` is an example of a false statement.

During the course of an argument, statements perform different tasks. In this context, a statement is given a name according to what task it is doing, as follows:

* *axiom*: a statement which is accepted as true

* *assumption*: a statement, introduced into an argument, whose truth value is (temporarily) accepted as true

* *premise*: an assumption that is used as a basis from which to start to construct an argument

* *conclusion*: a statement that is obtained as the result of the process of an argument

* *theorem*: a statement which can be shown to be the conclusion of an argument which can be obtained as the result of no premises

* *proposition*: a statement whose truth value is under the investigation; often used interchangeably with the term statement.

* *hypothesis*: sometimes used to mean either assumption or premise, but this tends nowadays to mean a statement whose truth is suspected, but has not actually been proven to be true (*conjecture*)

In Aristotelian logic, all statements have a truth value (that is either true or false, not both, not neither). In multi-value logics, it is admissible for a statement to have a truth value other than true or false.
