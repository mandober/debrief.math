# Logic :: About :: Logics

Logics

- logic
- systems of logic
  - chronologically
    - syllogistic logic
    - propositional logic
    - predicate logic
  - mathematical logic
  - symbolic logic
  - formal logic
  - informal logic


Logic investigates the structure of statements and arguments through the study of formal systems and the associated rules of inference, as well as the study of arguments in a natural language setting.

## General logic systems

Note: the word "logic" has a regular plural, "logics", although it seems to be rarely used. The prase "a logic" denotes an indefinite system of logic and "logics" does the same for several. Perhaps, both phrases are to be taken as abbreviations of "system of logic".

There is a large number of logics; in fact, ther is a large number of factors alone that contribute to these divisions. Of the more general, sufficiently broad divisions is probably the classification of logics into these 3 kinds: *syllogistic logic*, *propositional logic* and *predicate logic* ⟨it is unclear what would be the name of this factor, although "chronologically" works⟩. Orthogonal factors of division are symbolization and formalization ⟨it is unclear if they pertain to syllogistic logic⟩, yielding *symbolic logic* and *formal logic*.

## Syllogistic logic

**Syllogistic or Aristotelian Logic** is the oldest system of logic. It has a rigid structure, usually consisting of a triple - two premises and a conclusion. "All men are mortal. Socrates is a man. Socrates is mortal" is a familar example of a syllogistic triple. With the advent of modern logics, particularly of predicate logic, which builds on the propositional logic, syllogistic logic is now less used, especially since it is subsumed by them. Syllogistic logic presents its triples both in a natural language and using symbols, sometimes even mixing the two. However, modern logics, like propositional and predicate logic, are symbolic logics.


## Formal logic, Symbolic logic, Mathematical logic

The division of logics into these 3 classes - formal logic, symbolic logic and mathematical logic - has probably made more sense before, perhaps at the time around and after the creation of predicate logic (at the turn from XIX to XX century), but nowadays they are practically synonyms.

## Symbolic logic

**Symbolic logic** is all about the syntax, with a complete disregard for semantics. It exclusively deals with symbols (syntax) and does not care about the meaning of symbols (semantics). That is not to say that it deems semantics unimportant, only that semantics is not within the purview of symbolic logic. Most of the time, the adjective "symbolic" seems redundant - similarly to the adjective "formal" (as in "formal logic") - particularly because nowadays all logic systems are both symbolic and formal, but this label was once very important. Symbolic logic is about the manipulation of symbols: it has rules, called the rules of inference, that govern the valid, *purely syntactical*, manipulations of symbols. What the symbols represent is of no concern to symbolic logic because these syntactical manipulations are always consistent with it; they always produce valid results, no matter the actual meanings of symbols.

For example (and going ahead of ourselves), under the classical logic paradigm (i.e. when the law of the excluded middle is admitted), the formulas `P → Q` and `¬P ∨ Q` are equal (they are identities; we can always substitute one for the other). The point of symbolic logic is that manipulations of formulas (formulas are made of symbols and connectives), such as this one, *are always valid regardless of the meaning their constituent symbols might have*.

## Formal logic

The adjective "formal" almost always accompanies the adjective "symbolic". A **formal logic** (a formal system of logic) means that the symbolic language of logic is fully and rigorously formalized, precisely defining what the valid terms of the language are. A formal system is described in an inductive manner, which may be understood as defining the valid terms of a formal language by first defining the smallest such set and then building upon it.

The opposite of symbolic logics ⟨is what?⟩ are logics that don't use symbols but stay within the realm of a natural language. Such logics are almost always *informal* - since they use a natural language there is no need, or even possibility, to define the logic language strictly.

Propositional and predicate logic are formal, symbolic systems of logic.

## Propositional logic

*Propositional or Sentential Logic* (SL) is the simplest form of modern symbolic logic.



Declarative senences of natural languages are those that can be assigned a truth value; the sentences about which we can discuss and determine whether they are true or false. Such senences can be symbolized by translating them into a formal system of logic, and the simplest system, upon which others are built, is *Propositional or Sentential Logic* (usually abbreviated as *SL* since *PL* tends to be reserved for predicate logic).


Linguistics has already recognized the most important constituent parts of a declarative sentencw in a natural language: there is the *subject*, a noun-phrase that acts as an agent that caries actions, and the *predicate*, which is the verb-phrase describing those actions. Another important part is the *object* that is the noun-phrase that acts as an agent that receives those actions, which is important distinction in linguistics but turned out to be superflous in logic, so the object is usually integrated with the predicate. In fact, propositional logic doesn't even distinguish between these parts of a sentence - this will be important later, in predicate logic. Instead, propositional logic tranlates the entire declarative sentences as units and represents them by a single letter.




Actually, a declarative sentence is first broken up into a collection of *simple declarative sentences*, which are identified by the lack of connective words and phrases (and, or, then, etc.) - they are broken up exactly (well, more-less) on the connectives. Each simple declarative sentence is then represented by a letter, called a *propositional variables* (although when they stand for a discrete sentence they may also be called *constants*).

For example, a natural language sentence "If it rains, it pours", is understood as an implication so it consists of two simpler sentences. The first sentence "if it rains" is a hypothesis (premise) and the second sentence "it pours" is the conslusion. It is represented as an implication `P → Q` in SL. In fact, `P → Q` is a *compound formula* in PL that consists of two atomic formulas, `P` and `Q`.

The *atomic formulas* (atoms) are commonly represented by a single letter and they are *well-defined formulas* (wffs). Wffs describe the set of valid terms in a formal language. The formal language we now discuss is SL. So atoms (atomic formulas) are terms. Logical connectives are also a part of the language, but they are not valid terms by themselves - it is only when atoms are joined by a connective that we get a valid term. Negation is one of the connectives that is unary, i.e. it takes a single atom to produce a valid term, unlike the other, binary, connectives that need two atoms.

- constants, variables
P, Q
