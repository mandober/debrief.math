# Type theory :: Introduction :: Current state of type theory

Modern type theories, especially those that are used as bases for proof assistants are largely based on the Martin-Löf Type Theory (MLTT). Even if some proof assistants use another type theory as their foundation, MLTT is still the type theory with a long term impact, so it pays to start the exploration into TT with it. Many concepts which MLTT have defined for the first time are still used in many modern TTs. And even if they were altered, we still need to be acquainted with the original concept in order to recognize similarities. That's the pitch to start the investigations into different type theories with MLTT since it may be considered the most common denominator.

>Agda, Idris, (Epigram, Cayenne)
>Isabelle, Coq, Lean, HOL



https://en.wikipedia.org/wiki/Proof_assistant
https://en.wikipedia.org/wiki/Dependent_type#Comparison
https://en.wikipedia.org/wiki/Automated_theorem_proving#Comparison

The main interest is in TT in general, but especially in those TTs used as bases for proof assistants and in dependently typed functional programming languages.

>Componenet wise vs wholesome approach

A good approach to learning TT, after getting acquainted with MLTT, seems not to be the study of another particular type theory in its entirety, but rather to get familiar with the vast number of type-theoretical concepts; primarily with various kinds of types and type constructions, but also with the features that usually come in opposing pairs, like intensionality vs extensionality, predicativity vs impredicativity, etc.

The most recent advance in type theory was the discovery of the link between it and topology which resulted in Homotopy Type Theory (HoTT) and later, Cubical Type Theory (CTT), both of which can be explored in Agda (to some extent).

>Plan of engagement: MLTT → HoTT → CTT and keep calm

## Proof assistants Coq, Isabell and Agda

https://www.reddit.com/r/logic/comments/jikuy0/best_proof_assistant_for_logic_self_study/

Isabelle is built using a *weak type theory* as a tool to encode *first-order logic* and *higher-order logic* statements. These can then be solved using a tactic language to construct a proof. Alternatively, you can use a declarative language that looks more similar to what a mathematician might write, but is overall harder to read. Isabelle has some term-rewriting engines and tableaux prover tools, but its strongest feature is the powerful proof-automation tool called `Sledgehammer` that just shits proofs. The educational usefulness of Sledgehammer is very questionable (unless you already knew how to derive the proof it shat). The biggest problem with Isabelle is the lack of dependent types which severly limits its use, and the uncomfortable, stringy syntax (i.e. all user written code must be double-quoted). In general, Isabelle favors proof automation far more to Coq and Agda. In fact, Agda features a very weak proof automation tool (C-c C-a) that can only assist with fairly trivial goals, so most of the time derivations have to be written manually.

In contrast to Isabelle's rather weak type theory, Coq is built on top of the *Calculus of Inductive Constructions (CIC)*, which was developed alongside Coq and is one of the most, if not the most, powerful type theories today. Thus, Coq features almost everything one would desire from the standard type theory, including dependent types, universe polymorphism, tactic language, proof automation.

Coq has less out-of-the-box automatic proving but provides a meta-language called `Ltac` that allows writing user-defined tactics for encoding sophisticated proof automation. If that isn't enough you can also expand Coq using plugins in OCaml (Isabelle only has expansions through plugins via the API - there's no Ltac equivalent). If an automatic proof fails in Coq, it either does nothing or gives you a good intermediate solution from which you can continue the work.

Coq has the most natural step-by-step way of proving statements, most akin to sequent or natural calculus. It also helps to get a feeling for what has to be done to prove something, even when using automation. Writing custom Ltac's also gets you used to notice "groups of proofs" that behave similarly and can therefore be solved using custom automation.

Agda similarly to Coq uses CIC, but instead of using tactics to produce proof, it uses an elaborator style proof system (which has some advantages and some disadvantages). In general, Agda is way more on the side of type theory, mirroring many design choices from Haskell. Agda is interesting because it's the easiest option for getting verified code: Coq and Isabelle can technically generate code in some PLs like Haskell, but the act is very error-prone and difficult. Agda is very natural to program in and seems to be the preferred by type theorists.
