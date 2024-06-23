# Logic :: Fundamentals :: Up to speed

- term logic
- propositional logic
- predicate logic

The 3 main systems of logic are term logic, propositional logic and predicate logic, each of which is named after the smallest part of proposition they are capable of distinguishing.

A proposition is one of the fundamental notions in logic. Linguistically, *propositions* are declarative sentences that have a truth value. However, while declarative sentences are linguistic entities, propositions are not. The same proposition can be expressed in different natural languages, so along with premises and conclusions, propositions are logical entities.

The oldest system of logic, **term logic** (aka Aristotelian logic, syllogistic logic) was invented by Aristotle, who was the first person to systemize the study of logic, its basic aspects and aims as a system of arguments called syllogisms. A *syllogism* or a *triplet* is a *deductive argument* made of two *premises* and one *conclusion*, where all three are propositions. In addition to being quantified, each syllogistic proposition can be viewed as a standard subject-predicate sentence. Subjects and predicates are called *terms*, and they are usually connected by auxillary verbs called *copula*. While a syllogism can be expressed in a natural language, symbols (single capital letters) are often introduced to stand in for terms. Syllogistic propositions are always quantified - either universally (all) or existentially (some); also they are either positive (affirmative) or negative (negated). The combination of these gives these 4 forms of syllogistic propositions:
- universal affirmative,  `All S are P`
- universal negative,     `No S are P`
- particular affirmative, `Some S are P`
- particular negative,    `Some S are not P`

("particulars" are what term logic uses to refer to existentially quantified terms). The problem with syllogisms is that they are always quantified in this manner, and they must always have this particular form (the 4 forms listed above), which heavily constrains the possible set of sentences they can express.

**Propositional logic**, like the name suggests, deals only with entire propositions. It doesn't go into the sentence to distinguish its constituent parts like term logic and predicate logic do. Being able to only take the whole propositions, propositional logic is focused on the study of *logical connectives*, which are the entities that join propositions together. In natural languages, sentences are joined using a variety of phrases, which are translated to, usually symbolic, connectives of propositional logic: and (∧), or (∨), if-then (→), iff (⇔), etc. PL doesn't have fancy features like quantification or variables, it just has connectives, so its main subject of study are the rules of inference, especially those pertaining to logical connectives. For example, modus ponens, `p → q, p ⊢ q`, which may be examplifed by: "If it rains, it pours (p → q). It rains (p). Threfore, it pours (q)".

**Predicate logic** is based on propositional logic, but it extends it by introducing many additional features: constants, variables, functions, domain of discourse, quantifiers, predicates (properties and relations).
