# Language of propositional logic

An important aspect of logic is the representation of a *natural language* as a *formal language* of *symbolic logic*, an area of interest in NLP and particularly in AI. Instilling the large body of human knowledge into computers would be less of an impossible endeavour if computers could learn and reason on their own. Humans have been trying to decompose the process of human reasoning for a long time, but we're still unsure if reasoning could be mechanized at all. Starting from a set of propositions and deriving the conclusion by correctly applying a suitable rule, chosen from a fixed set of available inference rules, seems like a procedure that might be mechanizable. Calculemus!

## Languages

Kinds of languages involved:
- natural language
- informal language of logic
- formal symbolic language of logic
- object language
- metalanguage

As the first kind of languages we should count numerous human languages, in this context called *natural languages*. Declarative sentences from natural languages are translatable into a *formal logic language*. The formal language (of propositional logic) is the **object language**. In an argument, we manipulate the objects of interest to achive some goal - we transform propositions (which are formulas) to derive acon clusion (another formula). However, when we need to talk about the language objects themselves (e.g. about the formulas), we cannot use the object language itself as that may bring about problems involving self-reference. For example, "The next sentence is true. The previous sentence is false."


natural language  (English, Latin, …)    
↘   
object language   (formal symbolic lang)    
↘   
meta-language     (English, Latin, Esperanto, even another formal lang)



*Syllogistic logic* takes complete sentences from a *natural language* and represents them formally with letters (constants, literal). By recognizing the role of various connective words and phrases, *propositional logic* is step-up from syllogistic becuse a statement from a language like English is translated by respecting its composition.

A **proposition**, a declarative sentence or statement, is a sentences that may be assigned a truth value. A *truth value*, or *logical value*, is a value indicating the relation of a proposition to the truth. A proposition has a truth value if it evaluates to true or false (in classical bivalence logic). There are other, non-binary, systems of logic that have three or more truth values, even a entire interval range like fuzzy logics. Propositions occur in both natural and *formal languages*, and we can distinguish between simple and compound propositions.

**Atomic propositions** are the simple, primitive, sentences that contain no connectives, that cannot be decomposed further. They are simple sentences of natural languages that may be directly represented in a language of propositional logic by propositional variables. **Compound propositions** are the composite statements built by joining atomic propositions with connectives, which is common to both natural and formal languages. The truth value of compound propositions depends only on the truth value of the contained atomic propositions and the connectives involved.

**Connectives** are various words and phrases, particularly abundant in natural languages, where they have richer expression forms compared to any formal language. Due to this, traslating from a natural into a formal language may prove quite difficult on occasion, even though formal connectives should be adequate in relaying the meaing of natural language connectives. Most of the time, however, the translation is straightforward, particularly for those common connectives that even share the same pronounciation, such as "not" (`¬`), "and" (`⋀`), "or" (`⋁`), "if…then" (`->`), "if and only if" (`⟺`). The number of connectives in a formal language tends to be small because, not only is the precision of meaning more appreciated then the conucopia of possible forms, but primarily because each connective carries extra obligations later, when the rigorous definition of the formal language is due. Rigor demands precison and specificity regarding the definition and use of every connective, which often implies tedious work filled with an unholy amount of repetitions. Having just a single "official" connective brings so much relief that people often voluntarily put in another (usually, `¬` and `⋀` or `⋁`), despite the fact that auxillary connectives may be introduced later as *definitional abbreviations* (in terms of those that are formally defined).


---

Propositions are the subject of to *proofs*; before we prove a proposition we cannot formally say if it is true or false. If the proof is successful then the result is a *judgment*. Consider the proposition `1 + 1 = 2`. When we prove it, it becomes the judgment `1 + 1 = 2 true`. On the other hand, a proposition like `1 + 1 = 3`, when proven becomest the judgement `1 + 1 = 3 false`. Despite being false, it is a valid proposition, successfully proven false.

Although, this may seem too pedantic, this kind of rigor is important because not all propositions turn out true or false in mathematics. Some propositions are unproven still, and some propositions we know to be unprovable. Actually, this is not the case in classical logics, which onlyh ave two truth values and which recognize the law of the exluded middle (LEM). However, there are logics influenced by the constuctive movement in mathematics, such as *intuitionistic logic*, that are also bivalent but don't admit LEM.
