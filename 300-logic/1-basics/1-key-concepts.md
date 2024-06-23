# Logic :: Key concepts

Different styles of deduction systems
- Hilbert-style deduction systems
- Gentzen-style deduction systems
  - Natural deduction
    - NK natural deduction in FOL, classical version
    - NJ natural deduction in FOL, intuitionistic version
  - Sequent calculus
    - Sequent calculi, Gentzen systems
    - LK sequent calculus in FOL, classical version
    - LJ sequent calculus in FOL, intuitionistic version
- Hilbert-style deduction systems
- Natural deduction systems



The first division of logic is into 3 main kinds of logic which is also chronological division:
- syllogistic logic
- propositional logic
- predicate logic

Syllogistic or Aristotelian logic is about forming the valid *syllogisms* or triples. This kind of logic is subsumed by propositional and predicate logic and not so common nowadays although it does form a useful introduction.

## Propositional logic

- propositions (A, B, …)
- logical connectives (¬, ∧, ∨, ⇒, …)

Propositional (or sentential) logic deals with the *propositions*, which are entire declarative sentencies that have a truth value. SL only has propositions, represented by (capital) letters, and a set of logical connectives, typically {¬, ∧, ∨, ⇒}.

## Predicate logic

- domain of discourse (DOD), `D`
- terms (individuals), `t`
  - constant terms (`c`, `d`, …) ∈ D
  - variables (`x`, `y`, …) ∈ D
  - functions (D → D) evaluate to terms: 
    - f t₁ t₂ … tₙ → t
    - nullary:
      - f : () → D or f : ⊤ → D
      - f () = t   or f tt = t
      - nullary functions are just terms themselves
    - unary: term to term
      - f : D → D
      - f t → t
    - binary: a pair of terms to a term, 
      - f : D × D → D
      - f t₁ t₂ → t, or f(t₁, t₂) → t
- predicates (P, Q, S, …) evaluate to a truth value
    - P : D → 𝔹
    - P t = 1
  - nullary predicates (logical constants)
    - True (1)
    - False (0)
  - unary predicates (properties)
    - P : D → 𝔹
    - P t = true
  - binary predicates
    - P : D × D → 𝔹
    - P t₁ t₂ = false
  - n-ary predicates (relations)
    - L : D³ → 𝔹
    - L a b c = true (e.g. if b is between a and c, a ≤ b ≤ c)
- quantifiers
  - `∀` universal, ∀x.Px
  - `∃` existential, ∃x.Px
- atomic propositions
  - `P a`, `∀x. P x`
- compund propositions
  - ∀x(P x ∧ Q x)
- logical connectives
  - nullary (logical constants): `⊤` (truth, tautology) and `⊥` (contradiction)
  - unary: ¬
  - binary: ∧, ∨, ⇒, …



relations, functions, quantifiers

Predicate logic decomposes propositinal sentencies into their constituent parts, distinguishing between subjects and *predicates*. Subjects are taken from the set of individuals called the *domain of discourse* (DOD) which represents the set under the consideration (e.g. set of natural numbers). Individuals are represented as *constants* (small letters from the start of the alphabet), e.g. a constant `c ∈ ℕ` in `∀xy ∈ ℕ. x = y ⇒ x + c = y + c`.

In fact, considering this example, constants do not seem that different from variables - a constant is an arbitrary natural number just the same as a variable, but it is considered fixed in some sense for some amount of time or context. Sometimes constants only denote e.g. (sidekick) numbers that are not the main attraction - the spotlight is on variables. Usually a constant stays fixed through different evaluations ("runs") of a formula, while vars get different values each time. The variablity of constants depends on many things but should be clear from the conext: some constants are only fixed ad hoc (per session, per textbook, per topic), some are fixed for an equation, some vary on each evaluation of an equation (just like vars), and then there are a few "proper" constants that remain fixed forever (like `π`).

*Variables* (represented using the small letters from the end of the alphabet, e.g. `x`) range over the DOD. In fact, variables should always be quantified, e.g. `∀x.P x`.

*Functions* are another way to get the individual elements from the DOD. Functions differ by their arity, but they always produce (individual) elements.

## Presentation systems

Logics are presented in different styles, depending on how the basic reasoning laws are formulated and how proofs are constructed. The 3 of the most prominent styles are
- *Hilbert system*: the connectives are governed by axioms; proofs are sequences of statements. Many axioms, few inference rules.
- *Natural deduction*: the connectives and the quantifiers are governed by inference rules; proofs are well-founded trees, generated inductively by the inference rules. Many inference rules, few axioms.
- *Sequent calculus*: looks similar to natural deduction as it also has inference rules and deduction trees. However, it has important differences, such as multi-part conclusions and built-in symmetries not present in natural deduction.

## Proof derivation systems

Proof derivation is most commonly executed as a *derivation tree* of forumals where the formulas above a line play the role of premises for the formulas below a line. At the top are the axioms (assumptions), while the bottom holds the goal formula.

*Tabular drivation* uses a table with enumerated columns, but it has many repetitions, like the tree derivation.

Seemingly the optimal way is *Finch-style derivation* that is more vertically orientated compared to tree derivation that can get very wide. inch-style proof derivation proceeds by enumerated lines, that begin with the given premises. An assumption moves the next lines one step of identation to the right, indenting the subproof.

An example of Finch style deduction:

```
1 assume A
2   assume B
3     A                 R (1)
4   thus B ⇒ A          ⇒I (2-3)
5 thus A ⇒ (B ⇒ A)     ⇒I (1-4)
```

## Natural deduction

- in natural deduction, judgements have the shape `A₁, A₂, …, Aₙ ⊢ B` where `Aᵢ` and `B` are again formulae and n ≥ 0.
- Permutations of the `Aᵢ` are immaterial.
- theorems are those formulae `B` such that `⊢ B` (with an empty left-hand side) is the conclusion of a valid proof.
- The standard semantics of a judgment in natural deduction is that it asserts that whenever `Aᵢ` are true, then `B` is also true.
- single conclusion
- left side holds conjunctions, right side a sinlgle conclusion formula
- when manipulating a sequent, the right side msut hold a single formula at all times; the left side may be empty, though

```
A, B, …, G ⊢ P
means
A ∧ B ∧ … G ⊢ P

A ⊢ B
⊢ A ⇒ B
```

## Sequent calculus

https://en.wikipedia.org/wiki/Sequent_calculus

- sequent calculus generalizes the form of a natural deduction judgment to `A₁, A₂, …, Aₙ ⊢ B₁, B₂, …, Bₖ` which is a syntactic object called a sequent.
- The formulas on left-hand side of the turnstile are called the antecedent, and the formulas on right-hand side are called the succedent or consequent; together they are called cedents or sequents.
- `Aᵢ` and `Bᵢ` are formulae, and n≥0, k≥0, i.e. lhs or rhs (or neither or both) may be empty.
- As in natural deduction, theorems are those `B` where `⊢ B` is the conclusion of a valid proof.
- The standard semantics of a sequent is an assertion that whenever every `Aᵢ` is true, at least one `Bᵢ` will also be true. Thus, the empty sequent, having both cedents empty, is false.
- left side holds conjunctions, right side disjunctions
- multiple conclusions

- sides exibit symmetry


```
A ⊢ B      a formula can switch sides becomming negated
⊢ ¬A, B    classically, ¬A ∨ B is implication
⊢ A ⇒ B

⊢ A, B     left side may be empty (means: no premises)
A, B ⊢     right side may be empty but it means disjunction of no formulas
           which may be interpreted as false
⊢          both sides empty is false (contradiction)
```

Sequent calculus is a style of formal logical argumentation in which every line of a proof is a conditional tautology instead of an unconditional tautology. Each conditional tautology is inferred from other conditional tautologies on earlier lines in a formal argument according to rules and procedures of inference, giving a better approximation to the natural style of deduction used by mathematicians than to David Hilbert's earlier style of formal logic, in which every line was an unconditional tautology.

Sequent calculus is one of several extant styles of proof calculus for expressing line-by-line logical arguments.
- *Hilbert style*: every line is an unconditional tautology (or theorem).
- *Gentzen style*: every line is a conditional tautology (or theorem) with any number of conditions on the left.
  - *Natural deduction*: every (conditional) line has exactly 1 asserted proposition on the right.
  - *Sequent calculus*: every (conditional) line has any number of asserted propositions on the right.

In other words, natural deduction and sequent calculus systems are particular distinct kinds of Gentzen-style systems. Hilbert-style systems typically have a very small number of inference rules, relying more on sets of axioms. Gentzen-style systems typically have very few axioms, if any, relying more on sets of rules.

Gentzen-style systems have significant practical and theoretical advantages compared to Hilbert-style systems. For example, both natural deduction and sequent calculus systems facilitate the elimination and introduction of universal and existential quantifiers so that unquantified logical expressions can be manipulated according to the much simpler rules of propositional calculus. In a typical argument, quantifiers are eliminated, then propositional calculus is applied to unquantified expressions (which typically contain free variables), and then the quantifiers are reintroduced. This very much parallels the way in which mathematical proofs are carried out in practice by mathematicians. Predicate calculus proofs are generally much easier to discover with this approach, and are often shorter. Natural deduction systems are more suited to practical theorem-proving. Sequent calculus systems are more suited to theoretical analysis.
