# First-order logic

https://en.wikipedia.org/wiki/First-order_logic


>THE NAME AND ITS USE
The term "first-order logic" is both a countable and uncountable noun (noun phrase), which explains why it is often used without indefinite or definite articles (sometimes, it is the null article that is actually used). Since the singular form also denotes plural (although one can still use "first-order logics"), the singular form seems to be preferred. This approach - no articles and always using the singular form - is spread throughout math, especially with the names involving "logic" (vs "logics", "a logic", "the logic", "the logics", and similar forms); it is also the reason for "set theory" vs "set theories" and other derived forms.

>THE SYSTEM OF LOGIC DENOTED
First-order logic (FOL) is not a single - or even concrete - formal system of logic. Instead, and similarly to so many denotations in mathematics, it names a collection of formal systems of logic (a class of logic systems) whose members share a particular set of features. Dually, it is the name for a class itself of particualr systems of logic, but also the name used for any member of that class. In general, it is the name for a system of logic that will be described precisely later on this page.

>SYNONYMS
- first-order logic (FOL)
- first-order predicate calculus
- predicate logic
- quantified logic (QL), logic with quantifiers

Predicate Logic improves Propositional Logic by introducing new features - like predicates - which explains the name *Predicate Logic*. When the quantification should be highlighted, the name changes to *Quantified Logic* (QL). When the notion of "order" should be emphasized, the name changes to *First-order Logic* (FOL).


>FIRST-ORDER
The notion of "order" has to do with variables - actually, with entities variables are allowed to range over. In a first-order system of logic, variables can only range over *first-order entities* - these are the individuals that make up the DOD. In set theory, these individuals are sets; sets are first-order entity.

Predicates are often associated with sets, while in higher-order theories, predicates may be interpreted as sets of sets. The term "first-order" distinguishes FOL from higher-order logic (HOL) that allows predicates to have predicates or functions as arguments, or that allows variables to range over predicates or functions. In FOL, variables can only range over sets, and only variables can be quantified (existentially or universally).

Thus, in a set theory with FOL as the internal language:
- there is a single *sort* (of entities); namely, there are only *sets*
- variables can only range over that one sort (i.e. only over sets)
- arguments of predicates and functions are *terms* (variables and constants) of that one sort (i.e. sets only).

Higher-order logic (HOL) relax these requirements. In second-order logic, variables can additinally range over sets of sets. In third-order logic, variables can additionally range over sets of sets of sets. And so on. These logics are often not distinguished from each other, but all go under the name higher-order logic (HOL). We can assume that HOL variables can range just about over anything.

The notion of the order will become significant when we introduce the axioms of the standard, ZF, set theory, and discover that some of the axioms do not have a concrete, finite quality but, in fact, represent axiom templates - the so-called *axiom schemas*. An axiom schema can be instantiated with any concrete predicate to get the concrete axiom - thus, each axiom schema in fact represents an infinite number of axioms (making the ZF set theory "non-finitely axiomatizable").


>FOL AS LANGUAGE OF SET THEORY
First-order logic enjoys some beneficial properties that HOL has to forego, so FOL is the standard choice of logic, employed "by default" when trying to formalize a mathematical theory.

Peano arithmetic and Zermelo-Fraenkel set theory are axiomatizations of number theory and set theory, respectively, into FOL.

If it turns out impossible to formalize a theory in FOL, mathematicians will not simply give up and use HOL, oh, no. Instead, they will sacrify enourmous amounts of sweat, swearing the God to remain in FOL even if they have to resort to their old scheming ways and invoke the infamous *axiom schema*. Bismiallah!

>AXIOM SCHEMA
Quantification over a predicate requires a higher-order logic since FOL does not allow it. A predicate, or a property, or a relation, may be denoted `φ`, but also, more generally, φ can denote any formula.

The axiom of specification involves a unary predicate `P(x)` because it needs to state that 





>LOGICAL OBJECTS
- logical connectives
- quantifiers

>NON-LOGICAL OBJECTS
- terms
- predicates
- functions


>RELATION TO PROPOSITIONAL LOGIC
Propositional or sentential logic (SL) is the foundation upon which FOL adds new features. So, propositions of SL become predicates in FOL, and logical connectives remain in the set of logical objects, which is then enhanced with quantifiers (∀ and ∃). The set of non-logical objects includes variables, predicates, functions. FOL allows sentences that contain *variables quantified over non-logical objects*. In FOL, predicates and functions have args that are terms.

For example, in SL, a *sentence* "Socrates is a man" is a *proposition*, maybe denoted by `P`, i.e. `P` here denotes the entire proposition - it is not possible to destructure it further in SL.

In FOL, it is possible to destructure this sentence. Generally, FOL expressions have the form: "there exists `x`, such that `x` is Socrates and `x` is a man".
- there exists `x` ⟼ `∃x`
- such that `x` is Socrates ⟼ `S(x)`
- and ⟼ `⋀`
- `x` is a man ⟼ `M(x)`

taken all together, this gets us the formula `∃x(S(x) ⋀ M(x))`. 
In this formula, `∃` is the existential quantifier that quantifies the variable `x` (viz. `∃x`), which means that the Domain Of Discourse (the set of individuals under the study - these are sets in set theory) contains at least one individual - *DOD contains at least one set* - that satisfies some conditions.

>In general, it is required that DOD is nonempty.

A condition is expressed as a predicate, so `P(x)` is a predicate `P` with one variable `x`, meaining `P` is a unary predicate.

That is, `P` is the symbol for a predicate, but predicates are stated along with their variables, e.g. `P(x)`, in order to indicate their arity.

- `Q` is a nullary predicate
- `P(x)` is a unary predicate
- `R(x,y)` is binary predicate (relation)

Nullary predicates are usually undestood as the means to embed propositional logic in predicate logic. A proposition `Q` in SL is represented as a nullary predicate `Q` in QL.


A theory, like that of sets, is usually a first-order logic that includes
- *Domain of Discourse* (DOD), over which the quantified variables range
- finitely many *functions* from DOD to DOD
- finitely many *predicates* defined on DOD
- a set of *axioms* believed to hold about them

In a more strict sense, a "theory" is identified with a set of FOL sentences.


>DEDUCTIVE SYSTEMS

There are many **deductive systems** for FOL which are both sound, i.e. all provable statements are true in all models, and complete, i.e. all statements which are true in all models are provable.

Types of deductive systems for FOL
- *sound*: all provable statements are true in all models
- *complete*: all statements which are true in all models are provable

>logical consequence relation in FOL: semidecidable

Although the *logical consequence relation* is only *semidecidable*, much progress has been made in automated theorem proving in FOL.

First-order logic also satisfies several metalogical theorems that make it amenable to analysis in proof theory:
- Löwenheim-Skolem theorem
- Compactness theorem

The **Compactness Theorem** states that a set of first-order sentences has a model iff its every finite subset has a model.

The **Löwenheim-Skolem Theorem** is a theorem on the existence and cardinality of models. It implies that if a *countable first-order theory* has an *infinite model*, then for every infinite cardinal number `κ` it has a model of size `κ`, and that no first-order theory with an infinite model can have a *unique model* up to isomorphism. As a consequence, first-order theories are unable to control the cardinality of their infinite models. The (downward) Löwenheim-Skolem theorem is one of the two key properties, along with the compactness theorem, that are used in Lindström's theorem to characterize FOL.

>FORMALIZATION OF MATHEMATICS
First-order logic is the standard for the formalization of mathematics into axioms, and is studied in the foundations of mathematics.
- *Peano arithmetic* is axiomatization of number theory in FOL.
- *Zermelo-Fraenkel set theory* is axiomatization of set theory in FOL.

>Strength of FOL
No first-order theory, however, has the strength to uniquely describe a structure with an infinite domain, such as the natural numbers or the real line.

Axiomatic systems that can fully describe these structures, i.e. *categorical axiom systems*, can be obtained in stronger logics such as second-order logic.
