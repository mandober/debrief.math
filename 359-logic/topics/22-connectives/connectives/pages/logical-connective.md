# Logical connectives

https://en.wikipedia.org/wiki/Logical_connective

**Logical connectives** (logical operators, sentential connectives) are a group of logical constants used to connect logical formulas.

In propositional logic, each propositional variable (`p`, `q`, …) corresponds to a simple or atomic sentence (a connective-free, declarative statement that cannot be decomposed further) from a natural language, so each variable by itself constitutes an atomic formula. And just like the atomic sentences are conected in a natural language with connectives to produce complex sentences, so are atomic formulas joined in a formal language to make compound formulas.

More formally, the syntax of a formal language is defined by first defining the set of propositional variables. Then we defined wffs by stating: if variables `p` and `q` are wffs, then so is `¬p` and `p ❉ q`, where `❉` stands for any binary connective (⋀, ⋁, ->, ⟺, …). We usually also stipulate that nothing else is a wff.

## Properties of connectives

## Arity

An important property of connectives is their arity, i.e. the number of operands they take, by which we can divide them into unary (¬) and binary connectives (⋀, ⋁, ->, ⟺, …).

Sometimes we also talk about nullary connectives which are actually logical constants that represent tautology (`⟙`, always true) and contradiction (`⟘`, always false). Commonly, classical bivalent logic is mostly used so there are only two truth values (0 and 1) which may also be considered as nullary connectives. Connective of arity larger than two are rarely used.


## Jan Łukasiewicz's

Concept         | Sign   | PN  | Polish term
----------------|--------|-----|--------------------------
Negation        | ¬p     | Np  | negacja
Conjunction     | p ∧ q  | Kpq | koniunkcja
Disjunction     | p ∨ q  | Apq | alternatywa
Conditional     | p → q  | Cpq | implikacja
Biconditional   | p ↔ q  | Epq | ekwiwalencja
Falsum          | ⟘      | O   | fałsz
Sheffer stroke  | p ↑ q  | Dpq | dysjunkcja
Universal       | ∀xφ    | Πxφ |  wantyfikator ogólny
Existential     | ∃xφ    | Σxφ | wantyfikator szczegółowy
Possibility     | ◊φ     | Mφ  | możliwość
Necessity       | ◻φ     | Lφ  | konieczność


Polish notation (Jan Łukasiewicz)
- negation,           N     (NOT)
- conjunction,        K     (AND)
- disjunction,        A     (OR)
- alternative denial, D     (XOR)
- joint denial,       X     (NOR)
- implication,        C     (IMPLY)
- biconditional,      E     (BICOND)
