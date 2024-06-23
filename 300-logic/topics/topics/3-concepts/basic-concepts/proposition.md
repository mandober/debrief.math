# Proposition

https://en.wikipedia.org/wiki/Proposition
https://en.wikipedia.org/wiki/Syllogism
https://en.wikipedia.org/wiki/Proposition
https://en.wikipedia.org/wiki/Argument
https://en.wikipedia.org/wiki/Category:History_of_logic

* a proposition is a statement at the object level
* a judgement is a statement at the meta level


An *assertoric proposition* in Aristotelian logic merely asserts that something is (or is not) the case, in contrast to *problematic propositions* which assert the possibility of something being true, or *apodeictic propositions* which assert things which are necessarily or self-evidently true or false. For instance, "Chicago is larger than Omaha" is assertoric, "A corporation could be wealthier than a country" is problematic, while "Two plus two equals four" is apodeictic.

*The analytic-synthetic distinction* is a semantic distinction, used primarily in philosophy to distinguish between propositions (in particular, statements that are affirmative subject-predicate judgments) that are of two types: analytic propositions and synthetic propositions. *Analytic propositions* are true or not true solely by virtue of their meaning, whereas the truth of *synthetic propositions*, if any, derives from how their meaning relates to the world.

"All A are B," and "No A are B" are termed *universal propositions*. In philosophy, universality or absolutism is the idea that universal facts exist and can be progressively discovered, as opposed to relativism, which asserts that all facts are merely relative to one's perspective. Absolutism and relativism have been explored at length in contemporary analytic philosophy.

"Some A are B" and "Some A are not B" are termed *particular propositions*. A *categorical proposition* (statement) is a proposition that asserts or denies that all or some of the members of one category (the subject term) are included in another (the predicate term). The study of syllogisms as the arguments that use categorical statements forms an important branch of deductive reasoning that began with the Ancient Greeks.

An *explanation* is a set of statements usually constructed to describe a set of facts which clarifies the causes, context, and consequences of those facts. It may establish rules or laws, and may clarify the existing rules or laws in relation to any objects or phenomena examined.

De dicto and de re are two phrases used to mark a distinction in *intensional statements*, associated with the intensional operators in many such statements. The distinction is used regularly in metaphysics and in philosophy of language. In linguistics, logic, philosophy, and other fields, an *intension* is any property or quality connoted by a word, phrase, or another symbol. In the case of a word, the word's definition often implies an intension. For instance, the intensions of the word plant include properties such as "being composed of cellulose", "alive", and "organism", among others. A *comprehension* is the collection of all such intensions.

Bolzano's `Satz an Sich` i.e. proposition in itself.



## Syllogism

https://en.wikipedia.org/wiki/Syllogism

*Syllogism* was about drawing valid conclusions from assumptions (axioms), rather than about verifying the assumptions.

In the 19th century, modifications to syllogism were incorporated to deal with disjunctive ("A or B") and conditional ("if A then B") statements. Immanuel Kant famously claimed, in `Logic` (1800), that logic was the one completed science, and that Aristotelian logic more or less included everything about logic that there was to know.

Kant's opinion stood unchallenged in the West until 1879, when Gottlob Frege published his `Begriffsschrift` (Concept Script). This introduced a calculus, a method of representing categorical statements (and statements that are not provided for in syllogism as well) by the use of quantifiers and variables.

A noteworthy exception is the logic developed in Bernard Bolzano's work `Wissenschaftslehre` (Theory of Science, 1837), the principles of which were applied as a direct critique of Kant, in the posthumously published work `New Anti-Kant` (1850). The work of Bolzano had been largely overlooked until the late 20th century, but in the last 20 years, Bolzano's work has resurfaced and become subject of both translation and contemporary study.

This led to the rapid development of sentential logic and first-order predicate logic, subsuming syllogistic reasoning, which was, therefore, after 2000 years, suddenly considered obsolete by many.

C | Syllogism       | Type                   | Example
--|-----------------|------------------------|---------------------------
A | All  S is     P | universal  affirmative | All  humans are     mortal
E | No   S is     P | universal  negative    | No   humans are     perfect
I | Some S is     P | particular affirmative | Some humans are     healthy
O | Some S is not P | particular negative    | Some humans are not clever


Form                          | Shorthand | FOL formula
------------------------------|-----------|--------------------------------
All  A is B (No  A is not B)  | AaB       | ∀x(Ax →  Bx) === ¬∃x(Ax ⋀ ¬Bx)
No   A is B (All A is not B)  | AeB       | ∀x(Ax → ¬Bx) === ¬∃x(Ax ⋀  Bx)
Some A is B                   | AiB       | ∃x(Ax ⋀  Bx)
Some A is not B               | AoB       | ∃x(Ax ⋀ ¬Bx)


```
 ∀x. Ax === ¬∃x. ¬Ax            All x is     A  ===    No x is not A
 ∀x.¬Ax === ¬∃x.  Ax            All x is not A  ===    No x is     A
¬∀x. Ax ===  ∃x. ¬Ax        Not All x is     A  ===  Some x is not A
¬∀x.¬Ax ===  ∃x.  Ax        Not All x is not A  ===  Some x is     A

 ∃x. Ax === ¬∀x.¬Ax            Some x is     A  ===  Not All x is not A
¬∃x. Ax ===  ∀x.¬Ax              No x is     A  ===      All x is not A
 ∃x.¬Ax === ¬∀x. Ax            Some x is not A  ===  Not All x is     A
¬∃x.¬Ax ===  ∀x. Ax              No x is not A  ===      All x is     A
```


## Wissenschaftslehre (Theory of Science)

https://en.wikipedia.org/wiki/Bernard_Bolzano#Wissenschaftslehre_(Theory_of_Science)

In his 1837 `Wissenschaftslehre` *Bolzano* attempted to provide logical foundations for all sciences, building on abstractions like part-relation, abstract objects, attributes, sentence-shapes, ideas and propositions in themselves, sums and sets, collections, substances, adherences, subjective ideas, judgments, and sentence-occurrences.

These attempts were an extension of his earlier thoughts in the philosophy of mathematics, for example his 1810 `Beiträge` where he emphasized the distinction between the objective relationship between logical consequences and our subjective recognition of these connections.

For Bolzano, it was not enough that we merely have confirmation of natural or mathematical truths, but rather it was the proper role of the sciences (both pure and applied) to seek out justification in terms of the fundamental truths that may or may not appear to be obvious to our intuitions.
