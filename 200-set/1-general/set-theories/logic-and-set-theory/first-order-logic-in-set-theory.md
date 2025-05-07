# First-order logic in set theory

First-order logic is the system of symbolic logic concerned not only with representing the logical relations between sentences or propositions as wholes (like Propositional Logic), but also with their internal structure in terms of subject and predicate.

First-order logic can be considered as a kind of language which is distinguished from higher-order languages in that it does not allow quantification over subsets of the domain of discourse or other objects of higher type. Nevertheless, FOL is strong enough to formalize all of set theory and thereby virtually all of mathematics.

FOL is an abstract language that in one particular case might be the language of Group Theory, and in another case might be the language of Set Theory.

## Syntax: The Grammar of Symbols

FOL is a formal language based on an alphabet, which consists of these symbols:
1. *variables* (v₀, v₁ …), which range over (or are placeholders for) objects of the *domain of discourse* (DOD), i.e. domain under consideration (e.g. the elements of a group, natural numbers, or sets).
2. *logical connectives* (logical operators): ∧, ∧, ∨, →, ⇔
3. *logical quantifiers*: existential quantifier, ∃ ("there exists", "for some") and the universal quantifier ∀ ("for all" or "for each"), where the quantification is restricted to objects of the DOD only, and not to formulae or sets of objects (but the objects themselves may be sets).
4. *equality symbol*, `=`, a particular binary equality relation
5. *constant symbols*: e.g. number 0 in Peano Arithmetic, or the neutral element `e` in Group Theory. Constant symbols stand for fixed individual objects in the domain.
6. *function symbols* such as `∘` (the operation in Group Theory), or `+`, `⨯`, `S` (succ in Peano Arithmetic). Function symbols stand for fixed functions that take objects (from the DOD) as arguments and returning objects (from the DOD) as values. A positive natural number, called *arity* is associated with each function symbol (e.g. `∘` is a 2-ary or binary function, while the successor operation `S` is a 1-ary or unary function).
7. *relation symbols* or *predicate constants* (such as `∈` in set theory) stand for fixed relations between (or properties of) objects in the domain. Also, an *arity* is associated with each relation symbol (e.g. `∈` is a binary relation).

The symbols in 1-4 form the core of the alphabet and are called *logical symbols*.

The symbols in 5-7 depend on the specific topic under investigation and are called *non-logical symbols*.

The set of non-logical symbols which are used in order to formalize a certain mathematical theory is called the *signature* or *language of the theory*, denoted by `𝓛`. Formulae which are formulated in language `𝓛` are called *𝓛-formulae*. For example, if we investigate groups, then the only non-logical symbols we use are `ε` and `∘`; thus `𝓛 = {ε, ∘}` is the signature of Group Theory.


The first step towards a proper formal language is to define terms (names) with these symbols.

*Terms*:
- (T0) Each variable is a term.
- (T1) Each constant symbol is a term.
- (T2) If `t₁, …, tₙ` are terms and `F` is an n-ary function symbol, 
  then `F(t₁, …, tₙ)` is a term.

To some extent, terms correspond to certain names, since they denote objects of the domain under consideration. Like real names, they are not statements and cannot express or describe possible relations between objects. So, the next step is to build more complex expressions with these terms.

*Formulae*:
- (F0) If t₁ and t₂ are terms, then `t₁ = t₂` is a formula.
- (F1) If t₁, …, tₙ are terms and R is an n-ary relation symbol, 
  then `R(t₁, …, tₙ)` is a formula.
- (F2) If φ is a formula, then `¬φ` is a formula.
- (F3) If φ and ψ are formulae, then `φ ❉ ψ` is a formula, 
       where `❉` stands for logical connective (∧, ∧, ∨, →, ⇔)
- (F4) If φ is a formula and `x` a variable, then `∀xφ` and `∃xφ` are formulae.

(F0) and (F1) are the most basic expressions and since every formula is a logical connection or a quantification of these formulae, they are called **atomic formulae**.

* If a formula `φ` is of the form `∀xψ` or `∃xψ` (for some formula `ψ`), and `x` occurs in `ψ`, then `x` is in the **scope** (range) of a logical quantifier.
* Every occurrence of a variable `x` in a formula `φ` is said to be **bound** by the innermost quantifier in whose scope it occurs.
* If an occurrence of `x` is not in the scope of a quantifier, `x` is **free**.
* A formula `φ` is a **sentence** (or **closed formula**) if it contains no free variables (i.e. `FV(φ) = ∅`)
* e.g. `∀x.x = x` is a sentence, but `x = x` is just a formula.
* Sometimes it is useful to indicate explicitly which variables occur free in a given formula `φ`, so `φ(x₁, …, xₙ)` indicates that `{x₁, …, xₙ} ∈ FV(φ)`.
* If `φ` is a formula, `x` a variable, and `t` a term, then `φ[x/t]` is the formula we get after replacing all free instances of the variable `x` by `t`. The process to obtain the formula `φ[x/t]` is called **substitution**.
* Substitution is *admissible* iff no free occurrence of `x` in `φ` is in the range of a quantifier that binds any variable which appears in `t`. Otherwise, we have a *name capture*.

So far we have letters, and we can build names and sentences. However, these sentences are just strings of symbols without any inherent meaning. Later we shall interpret formulae in the intuitively natural way by giving the symbols the intended meaning. Meaning is usually assigned only to nonlogical symbols since logical constants (∧, ∧, ∨, →, ⇔) always retain their usual meaning.

Certain formulae (or types of formulae) are designated as *axioms*, which are used in connection with inference rules in order to derive further formulae.

From a semantical point of view, we can think of axioms as "true" statements from which we deduce or prove further results. 

We distinguish two types of axioms, logical and non-logical axioms.

### Logical axioms

A **logical axiom** is a sentence or formula `φ` which is universally valid (i.e. `φ` is true in all possible universes, no matter how the variables, constants, etc., occurring in φ are interpreted). Usually one takes as logical axioms some minimal set of formulae that is sufficient for deriving all universally valid formulae.

If a symbol is involved in an axiom which stands for an arbitrary relation, function, or even a FOL formula, then we usually consider the statement as an **axiom schema** rather than an individual axiom, since each instance of the symbol represents a single axiom.

The following list of axiom schemata is a system of logical axioms.

Let `a`, `b`, `c`, and be arbitrary FOL formulae:
- L0: a ∨ ¬a
- L1: a → (b → a)
- L2: (a → (b → c)) → ((a → c) → (b → c))
- L3: (a ∧ b) → a
- L4: (a ∧ b) → b
- L5: a → (b → (a ∨ b))
- L6: a → (a ∨ b)
- L7: b → (a ∨ b)
- L8: (a → c) → ((b → c) → ((a ∨ b) → c))
- L9: ¬a → (a → b)

If `t` is a term, `x` a variable, and the substitution which leads to `φ[x/t]` is admissible, then:
- L10: ∀xφ(x) → φ[x/t]
- L11: φ[x/t] → ∃xφ(x)

If `ψ` is a formula and `x` a variable such that `x ∉ FV(ψ)`, then:
- L12: `∀x(ψ → φ(x))` → `(ψ → ∀xφ(x))`
- L13: `∀x(φ(x) → ψ)` → `(∃xφ(x) → ψ)`

Equality, `=`, is a binary relation. In our formal system, the binary equality relation is defined by the following 3 axioms.

If `t, t₁, …, tₙ, tʹ₁, …, tʹₙ` are any terms, `R` an n-ary relation symbol (e.g. the binary relation symbol `=`), and F an n-ary function symbol, then:
- L14: t = t
- L15: (t₁ = t₁ ⋀ … ⋀ tʹₙ = tʹₙ) → (R(t₁,…,tₙ) → R(tʹ₁,…,tʹₙ))
- L16: (t₁ = t₁ ⋀ … ⋀ tʹₙ = tʹₙ) → (F(t₁,…,tₙ) = F(tʹ₁,…,tʹₙ))


Finally, we define the logical operator `⇔` and the binary relation `≠` as abbreviations:
- p ⇔ q ≡ ((p ⇒ q) ⋀ (q ⇒ p))
- t₁ ≠ t₂ ≡ ¬(t₁ = t₂)

This completes the list of our logical axioms.

### Non-logical axioms

In addition to these axioms, we now add arbitrarily many theory-specific assumptions, so-called **non-logical axioms**. Such axioms are, for example, the three axioms of Group Theory (GT), or the axioms of Peano Arithmetic (PA).

...continued in the book
`Combinatorial Set Theory - With a Gentle Introduction to Forcing`, Second Edition, Lorenz J. Halbeisen, 2017 (page 15)



---

## Ref

`Combinatorial Set Theory - With a Gentle Introduction to Forcing`, Second Edition, Lorenz J. Halbeisen, 2017 (page 15)
