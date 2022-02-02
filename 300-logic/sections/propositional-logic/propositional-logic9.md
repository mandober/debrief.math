# Propositional logic

https://en.wikipedia.org/wiki/Propositional_calculus

Propositional logic is a branch of logic. Propositional logic is also called propositional calculus, statement logic, sentential calculus, sentential logic, or sometimes zeroth-order logic.

**Propositional logic** deals with *propositions*, which are statements with *truth value*, and relations between propositions, including the construction of *arguments* based on them.

*Compound propositions* are formed by combining propositions with *logical connectives*. *Atomic propositions* are propositions without connectives.

Unlike *first-order logic*, propositional logic doesn't deal with non-logical objects, it doesn't have predicates and quantifiers. On the other hand, FOL and HOL include all the machinery of propositional logic. In this sense, propositional logic is the foundation of FOL and HOL logics.

## Description

Elements of propositional logic
- logical constants
- logical connectives
- logical variables

Propositional logic has propositions
- atomic propositions: logical variables and logical constants
- compound propositions: atomic popositions joined with connectives

Propositional logic:
  - atomic propositions
    - logical constants (`true` or `⟙`, `false` or `⟘`)
    - logical variables (`p`, `q`, `r`, …)
  - compound propositions
    - atoms joined with
    - logical connectives (`¬`, `⋀`, `⋁`, `->`, …)


## Example

Taking for example declarative sentences from a natural language, the following is an example of a simple inference within the scope of propositional logic:

```
If it's raining then it's cloudy.      (Premise 1)
It's raining.                          (Premise 2)
It's cloudy.                           (Conclusion)
```

Both premises and the conclusion are propositions. The premises are taken for granted. By applying modus ponens (premise 1, premise 2), the conclusion follows.

Propositional logic is not concerned with the structure of propositions beyond the point where they can't be decomposed any more by logical connectives. So we decompose a declarative statement into chunks that are free of connectives, thereby obtaining the individual statements that are further indivisible (as far as PL is concerned).

A declarative sentence may be translated into a single logical variable alone, such as `p` standing for "it is raining". A compound declarative sentence (because it contains connectives) may be translated into a complex proposition,which should contain the corresponding logical connectives as well: "it is Sunday and the day is sunny" clearly consists of two individual sentences joined with the conjunction; in this case, the conjunction directly translates into logical conjunction, `⋀`, and each subsentence makes an atomic proposition represented by logical variables `p` and `q` respectively; thus, the complete translation is `p ⋀ q`.

So, to translate a declarative sentence, we first identify its connectives and subsentences that could not be further divided. Each such atomic subsentence is represented by alogical variable, and each connective gets the corresponding logical connective. We have to be careful because the connectives of a natural language may not always correspond to the same logical connectives.

Returning to the example, it can now be translated into the formal language of propositional logic by using this translation schema:
- `p = it is raining`
- `q = it is cloudy`

we get the following

```
p -> q        (Prop 1)
p             (Prop 2)
q             (Conclusion)
```

These symbolic expressions can be seen to correspond exactly with the original expression in natural language. Not only that, but they will also correspond with any other inference of this form, which will be valid on the same basis this inference is.

Propositional logic may be studied through a *formal system* in which formulas of a *formal language* may be interpreted to represent propositions.

A system of *axioms* and *inference rules* allows certain formulas to be derived. These *derived formulas* are called *theorems* and may be interpreted to be *true propositions*.

A constructed sequence of such formulas is known as a **derivation** or a **proof**, and the last formula of the sequence is the **theorem**. The derivation may be interpreted as proof of the proposition represented by the theorem.

When a formal system is used to represent formal logic, only logical variables (p, q, r, …) are directly presented, that is, the natural language propositions they stand for when interpreted are outside the scope of the system, and the relation between the formal system and its interpretation is outside the formal system itself as well.

In classical truth-functional propositional logic, formulas are interpreted as having precisely one of two possible truth values, the truth value of true or the truth value of false.

*The principle of bivalence* and *the law of excluded middle* are upheld.

Truth-functional propositional logic defined as such (and systems isomorphic to it) are considered to be **zeroth-order logic**. However, alternative propositional logics are also possible.


---

## History

Main article: History of logic
https://en.wikipedia.org/wiki/History_of_logic

Although propositional logic (which is interchangeable with propositional calculus) had been hinted by earlier philosophers, it was developed into a formal logic (Stoic logic) by Chrysippus in the 3rd century BC[2] and expanded by his successor Stoics. The logic was focused on propositions. This advancement was different from the traditional syllogistic logic, which was focused on terms. However, most of the original writings were lost[3] and the propositional logic developed by the Stoics was no longer understood later in antiquity.[citation needed] Consequently, the system was essentially reinvented by Peter Abelard in the 12th century.[4]

Propositional logic was eventually refined using symbolic logic. The 17th/18th-century mathematician Gottfried Leibniz has been credited with being the founder of symbolic logic for his work with the calculus ratiocinator. Although his work was the first of its kind, it was unknown to the larger logical community. Consequently, many of the advances achieved by Leibniz were recreated by logicians like George Boole and Augustus De Morgan-completely independent of Leibniz.[5]

Just as propositional logic can be considered an advancement from the earlier syllogistic logic, Gottlob Frege's predicate logic can be also considered an advancement from the earlier propositional logic. One author describes predicate logic as combining "the distinctive features of syllogistic logic and propositional logic."[6] Consequently, predicate logic ushered in a new era in logic's history; however, advances in propositional logic were still made after Frege, including natural deduction, truth trees and truth tables. Natural deduction was invented by Gerhard Gentzen and Jan Łukasiewicz. Truth trees were invented by Evert Willem Beth.[7] The invention of truth tables, however, is of uncertain attribution.

Within works by Frege[8] and Bertrand Russell,[9] are ideas influential to the invention of truth tables. The actual tabular structure (being formatted as a table), itself, is generally credited to either Ludwig Wittgenstein or Emil Post (or both, independently).[8] Besides Frege and Russell, others credited with having ideas preceding truth tables include Philo, Boole, Charles Sanders Peirce,[10] and Ernst Schröder. Others credited with the tabular structure include Jan Łukasiewicz, Alfred North Whitehead, William Stanley Jevons, John Venn, and Clarence Irving Lewis.[9] Ultimately, some have concluded, like John Shosky, that "It is far from clear that any one person should be given the title of 'inventor' of truth-tables.".[9]


## Terminology

In general terms, a calculus is 
a formal system that consists of 
a set of syntactic expressions (well-formed formulas), 
a distinguished subset of these expressions (axioms), 
plus a set of formal rules 
that define a specific binary relation, 
intended to be interpreted as logical equivalence, 
on the space of expressions.

When the formal system is intended to be a logical system, 
the expressions are meant to be interpreted as statements, 
and the rules, known to be inference rules, 
are typically intended to be truth-preserving. 

In this setting, the rules, which may include axioms, 
can then be used to derive ("infer") formulas 
representing true statements - 
from given formulas representing true statements.

The set of axioms may be empty, a nonempty finite set, or a countably infinite set (axiom schema). 

A formal grammar recursively defines the expressions and well-formed formulas of the language. 

In addition, a semantics may be given which defines truth and valuations (or interpretations).

Individual elements of a PL language:
- primitive symbol
  - logical variable
  - placeholder
- atomic statement
  - atomic formula
- operator symbol
  - logical operator
  - logical connective

* atomic statement -> atomic formula
* compound statement -> compound formula (= atomic formulas + operator symbols)

Elements of a PL language:
- primitive symbols
  - logical variables
- operator symbols
  - logical operators
  - logical connectives


The language of a propositional calculus consists of
* a set of **primitive symbols** 
  (variously referred to as atomic formulas, placeholders, proposition letters, *logical variables*) and
* a set of **operator symbols** 
  (variously interpreted as *logical operators* or *logical connectives*).

A **well-formed formula** 
is any atomic formula, 
or any formula that can be built up 
from atomic formulas 
by means of operator symbols 
according to the rules of the grammar.

Mathematicians sometimes distinguish between *propositional constants*, *propositional variables*, and *schemata*.

* **Propositional constants** represent concrete propositions.
* **Propositional variables** range over the set of atomic propositions.
* **Schemata** ranges over all propositions.

Conventional representation
- propositional constants by `A`, `B`, `C`, etc.
- propositional variables by `p`, `q`, `r`, etc.
- schema/schemata letters by `φ`, `ψ`, `χ`, etc.
