# FOL as the language of set theory

First-order logic (FOL) as the language of set theory



## FOL primer

In many books, set theory is treated as an axiomatic theory similar to the sort of system of geometry, and not as a formal system of logic for which exact rules of syntax and semantics are stated.



## FOL sentences

Components
- domain of discourse (DOD)
- variables ranging over DOD
- relations
  - equality relation, `=`
  - membership relation, `=`
- terms
  - variables, `x₀, …, xₙ`, `x`, `y`, `z`, …
  - constants (from the DOD), `a`, `b`, `c`, …
- predicates, `P`, `Q`, `R`
  - yield propositions
  - terms as args
  - 0-ary: `Q` repr constant sentences (embeds QL)
  - 1-ary: `P(x)` repr properties
  - 2-ary: `R(x, y)` repr relations
  - n-ary: `P(x₀, …, xₙ)`
- functions, `f`, `g`, `h`
  - terms as args
  - yield DOD elements
  - 0-ary: represent logical constancts, `0` and `1`
  - 1-ary: `f(x)`
  - 2-ary: `f(x, y)`
  - n-ary: `f(x₀, …, xₙ)`
- quantifiers
  - `∃` existential quantifier, `∃x(φ)`
  - `∀` universal quantifier, `∀x(φ)`
  - `φ` is a formula
- sentences
  - formulas, `φ`
  - well-formed formulas (wff), `φ`
  - atomic formulas (sentences)
  - compound formulas (sentences)
- logical connectives
  - usual set `{¬, ∧, ∨, ⇒, ⇔}`
  - 0-ary connectives: `⊤`, `⊥`
  - 1-ary connectives: `¬`
  - 2-ary connectives: `∧`, `∨`, `⇒`, `⇔`


- `{ =, ∈, ¬, ∧, ∨, ⇒, ⇔, ∀, ∃ }`

- *domain of discourse* (DOD): the set of all individuals under study
- *objects*: individuals, i.e. elements of DOD (`a`)
- *constants*: fixed objects from DOD (`a`)
- *variable*: ranges over DOD elements, varying object in DOD (`x`)
- *terms*: objects (in DOD), vars and constants
- *Logical symbols* always have the same meaning
  - logical connectives (i.e. `∧` is always interpretation as conjunction)
  - logical constants (nullary logical connectives like ⊤ and ⊥)
- *Non-logical symbols* have meaning that varies by interpretation
  - variables
  - functions
  - predicates
- *atomic sentences*
  - assertion of equality, `x = y` (equality binary relation)
  - assertion of membership, `x ∈ y` (membership binary relation)
- proposition, declaration, statement
- definition
  - `x ⊆ y` ≝ `∀z(z ∈ x ⇒ z ∈ y)`
  - `x ⊂ y` ≝ `∀z(z ∈ x ⇒ (z ∈ y ⋀ x ≠ y))`
  - 
- assertion, claim
- assumption, hypothesys (antecedent), conclusion (consequent)
- punctuation symbols
  - parentheses
  - brackets
  - braces
  - dot may be sometimes used for grouping
  - colon or pipe is used in set-builder notation


What makes a sentence of FOL can be defined starting with the atomic sentences.

There are two types of *atomic sentences*
- assertion of membership, `x ∈ y`
- assertion of equality, `x = y`

Other, *compound sentences* can be obtained from atomic sentences by repeated application of the usual logical operators (¬, ∧, ∨, ⇒, ⇔, ∀, ∃), with the usual rules of sentence construction.

## Finite axiomatization and axiom schmas

Some set theories (like ZF, ZFC, MK) are non-finitely axiomatizable, which means that although they have a finite set of axiom (ZFC has 10 axioms), the actual set of axioms is infinite because some axioms are in fact *axiom schemas*.

An axiom schema is a generalized form of an axiom that contains a predicate. However, FOL cannot quantify over predicates, its variables can only range over individuals, which in this case are sets. Higher-order logics can quantify over predicates and sets of sets, but that would make HOL the language of set theory. In order to keep FOL as the language of set theory, the mathematicians have introduced axiom schemas. An axiom scema contains an unquantifed predicate (basically an undefined variable) `P`, which can be instantiated with a first-order formula. Only an instantiated axiom schema is actually an axiom. And because there is an infinite number of predicates, each axiom schema is infinite, which makes theories with axiom schemas *non-finitely axiomatizable*.



The *axiom schema of specification*:    
`∀A ∃B(∀x(x ∈ B ⇔ (x ∈ B ⋀ Px)))`

states that to every set `A` corresponds a set `B` (subset of A) whose elements are exactly those elements `x` of `A` that satisfy the predicate `P(x)`.

This can be expressed equivalently in set-builder notation as:   
`B = {x | x ∈ A ⋀ P(x)}`


Note that the symbol `P` which represents a predicate is undeclared in the formula - basically, it is undefined. We cannot declare it because then we would need to universally quantify to encode its meaning which is "given any predicate" or "for all predicates". And we cannot quantify over predicates in FOL.

In HOL, this would could be expressed as:    
`∀P∀A∃B(∀x(x ∈ B ⇔ (x∈B ⋀ Px)))`


In order to remain in FOL, mathematicians use a trick and say that the entire formula makes an *axiom schema*. So it is not an axiom per se, but an infinite number of axioms, one for each possible instantiation of the predicate `P`. This justifies having an undeclared predicate in the formula. Only when the schema is instantiated, we get a proper axiom. Instantiation means plugging in a concrete, first-order formula in place of the predicate.

Actually, unary predicates, like `P` here, represent a *property*. A unary predicate `P(x)` represents some property of `x`. In other words, we can but don't really need to plug in anything in the formula - we can just state that the predicate `P` stands for some property. A property of `x` - recall that variables in FOL always range over sets - is a property of set `x`.

For example, the property that a set is not a member of itself is expressed as `x ∉ x`. This is exactly a kind of formula we can instantiate the unary predicate `P(x)` with. If we replace the predicate `P(x)` with the formula `x ∉ x`, the overall formula looks like:

`∀A ∃B(∀x(x ∈ B ⇔ (x ∈ B ⋀ x ∉ x)))`



Q: How does `x`, in the predicate `P(x)`, matches with the outer `x`, introduced and quantified by the binder `∀x`? The predicate `P` could be stated as `P(x)` or `P(z)`, or using any other variable name, which only serves to indicate that the predicate is unary.

Q: To associate the outer `x` with the variable bound by the predicate `P(x)`, a function is required. A function that declares a single parameter and lets `P` bind it, as in `λz.P(z)`. Then, the association (binding) of the outer `x` with the predicate could be accomplished as an application of the function `λz.P(z)` to the argument `x`, as `(λz.P(z))(x)` which results in `P(x)`.

>Instead of this, in many places the mechanics of the binding is described as:

This symbolism is intended to indicate that the variable `x` *occurs free* in the predicate `P(x)`, which means that `x` appears in `P(x)` at least once without being declared by a quantifier (`∀` or `∃`).


## Predicates and Quantifiers

Variables like x and y are used throughout mathematics to represent unspecified values. They are employed when we are interested in "properties" that may be true or false, depending on the values represented by the variables.

A predicate is simply a statement that proclaims that certain variables satisfy a property. For example, "x is a number" is a predicate, and we can symbolize this predicate by `N(x)`. Of course, the truth or falsity of the expression `N(x)` can be determined only when a value for x is given. For example, the expression `N(4)`, which means "4 is a number," is clearly true.

When our attention is to be focused on just the elements in a particular set, we shall then refer to that set as our universe of discourse. For example, if we were just talking about real numbers, then our universe of discourse would be the set of real numbers. Furthermore, every statement made in a specific universe of discourse applies to just the elements in that universe.

Given a statement `P(x)`, which says something about the variable `x`, we often want to assert that every element `x` in the universe of discourse satisfies `P(x)`. Moreover, there will be times when we want to express the fact that at least one element `x` in the universe makes `P(x)` true. We will thus form sentences using the quantifiers ∀ and ∃.

- A statement of the form `∀xP(x)` is called a *universal statement*.
- A statement of the form `∃xP(x)` is called an *existential statement*.

Quantifiers offer us a valuable tool for clear thinking in mathematics, where many concepts begin with the expression "for every" or "there exists". Of course, the truth or falsity of a quantified statement depends on the universe of discourse.

Suppose that a variable `x` appears in an assertion `P(x)`. In the two statements `∀xP(x)` and `∃xP(x)`, we say that `x` is a *bound variable* because `x` is bound by a quantifier. In other words, when a variable in a statement is immediately used by a quantifier, then that variable is referred to as being a bound variable. If a variable in a statement is not bound by a quantifier, then we shall say that the variable is a *free variable*.

>When a variable is free then substitution may take place, that is, we can *replace a free variable with any particular value* from the **universe of discourse**.

For example, the assertion `∀x(P(x) ⇒ x=y)` has one free variable `y`. Thus, we can perform a *substitution* to obtain `∀x(P(x) ⇒ x=2)`.

In a given context, if all of the free variables in a statement are replaced with values, then one can determine the truth or falsity of the resulting statement.

The **uniqueness quantifier**, `∃!`, can be defined. In particular, the statement `∃!x P(x)` ≡ `∃x P(x) ⋀ ∀x ∀y([P(x) ⋀ P(y)] ⇒ x = y)`.

**Bounded set quantifiers** are often used when one wants to restrict a quantifier to a specific set of values. For each set A, we write `(∀x ∈ A)P(x)` to mean that for every `x` in `A`, `P(x)` is true. Similarly, we write `(∃x ∈ A)P(x)` to signify that for some `x` in `A`, `P(x)` is true.
- (∀x ∈ A)P(x) ⇔ ∀x(x ∈ A → P(x))
- (∃x ∈ A)P(x) ⇔ ∃x(x ∈ A ∧ P(x))

**Bounded Quantifier Negation Laws** 
For every predicate P(x), we have the logical equivalences:
- ¬(∀x ∈ A)P(x) ⇔ (∃x ∈ A)¬P(x)
- ¬(∃x ∈ A)P(x) ⇔ (∀x ∈ A)¬P(x)







## Language of Set Theory and its formulas

The safe way to eliminate paradoxes is to abandon the Schema of Comprehension and keep its weak version, the *Schema of Separation*:   
If `P` is a property, then for any `X` there exists a set `Y = {x ∈ X : P(x)}`.

Replacing full *Comprehension* with *Separation* presents us with a new problem - the Separation Axiom is too weak to develop set theory with its usual operations and constructions. Notably, it is not sufficient to prove that e.g. the union of two sets exists, or to define the notion of a real number.

Thus, we have to add further construction principles that postulate the existence of sets obtained from other sets by means of certain operations. The axioms of ZFC are generally accepted as a correct formalization of those principles that mathematicians apply when dealing with sets.


The Axiom Schema of Separation as formulated above uses the vague notion of a *property*. To give the axioms a precise form, we develop axiomatic set theory in the framework of the first order predicate calculus.

Apart from the equality predicate `=`, the language of set theory consists of the binary predicate `∈`, the membership relation.

In practice, we shall use in formulas other symbols, namely defined predicates, operations, and constants, and even use formulas informally; but it will be tacitly understood that each such formula can be written in a form that only involves `∈` and `=` as *nonlogical symbols*.

Concerning formulas with free variables, we adopt the notational convention that all free variables of a formula `ϕ(u₁, …, uₙ)` are among `u₁, …, uₙ` (possibly some vars `uᵢ` are not free, or even do not occur, in `ϕ`). A formula without free variables is a **sentence**.
