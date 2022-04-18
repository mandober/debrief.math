# First-order Logic

Features of propositional logic (SL):
- SL is declarative: pieces of the syntax correspond to facts
- SL allows partial, disjunctive, negated information (unlike most data structures and databases)
- SL is compositional: the truth of `p ⋀ q` is derived from the meaning of `p` and the meaning of `q`
- The meaning is context-independent (unlike natural languages where meaning depends on the context)
- SL has limited expressive power (unlike natural languages). For example, it cannot express the sentence "pits cause breezes in adjacent squares", except by writing one sentence for each square.

Propositional logic assumes that the world contains facts, that is, it can only express facts (declarative sentences).

Quantificational logic (QL), or more commonly, predicate logic is a first-order logic (FOL) that takes a more granular view of the world. QL elements:
- objects
  - names (constant names)
  - variables
- predicates
  - unary relations
  - binary relations
  - n-ary relations
- functions
  - n-ary functions
- logical constants
  - truth values
    - TRUE, `T`, `1`
    - FALSE, `F`, `0`
  - truth constants
    - tautology, `⟙`
    - contradiction, `⟘`
  - logical connectives
    - unary: `¬`
    - binary: `{ ⋀, ⋁, ⟶, ⟺ }`
  - quantifiers
    - universal
    - existential
  - punctuation (parenthesis)
- semantics
  - domain of discourse
  - interpretation
  - valuation mapping


**Objects** (people, houses, numbers, theories, Donald Duck, colors, centuries) are the individual elements of a domain of discourse. Objects are represented by constants and variables.

**Constants** are unique identifiers that refer to specific, named, individuals in the *domain of discourse*. Syntactically, constants (names) are usually represented by letters from the beginning of the alphabet (`a`, `b`, `c`, …), but they may also use proper terms like "2", "Siouxie Banshee", "the last sailor to Americas", "the current king of France".

**Variables** are identifiers that range over the entire domain of discourse. A variable's name is a single letter like `x`, `y`, `z`, etc. Constants may be viewed as variables whose value has been fixed, so they became immutable. On the other hand, variables need to be mutable since they are often used as iterators: `∀x∀y` may be viewed as a nested for-loop, where variable `a` keeps binding the same element of DOD until variable `y` is finished going through all the elements of DOD. For example, A⨯B = { (a,b) | ∀a∀b(a ∈ A, b ∈ B) } is the set builder notation that such for-loops to create the product of two sets.

**Predicates** are n-ary relations that describe relations among the objects. Unary predicates describe properties of the individuals from DOD. Binary predicates are the common binary relations from mathematics that desribe some association an object has with another object. Predicates have a truth value. Predicates are commonly denoted by single capital letter (A,B,…P,Q,…), although the use of longer names is not unseen either ("<=", "Brother", "Father-of"). In order to simplify syntax, nullary predicates are sometimes taken to stand for constants, like *truth values* (TRUE, FALSE).

**Relations** (red, round, prime, multistoried, brother of, bigger than, part of, has color, occurred after, owns). Many FOL systems come with the equals relation (equality predicate) built in, used in the infix position, `t = u`.

**Functions** (+, middle of, father of, one more than, beginning of). Functions are not predicates - they don't have a truth value. Instead, functions are used to select (pick out) elements from DoD.

**Constant logical symbols** include logical connectives, quantifiers and punctuation. *Punctuation* characters, most importantly parenthesis, are used for grouping formulas together as a way to override associativity and precedence of connectives, but also to delineate the scope of quantifiers. *Connectives* are the same ones used in SL, only here they join atomic sentences. *Quantifiers* are the two logical symbols used to denote universal (∀) and existential quintification of variables.


## QL syntax

Atomic sentences (where tᵢ are terms)
- predicate, `P(t₁, …, tₙ)`
- equality, `t₁ = t₂`

Terms:
- functions `f(t₁, …, tₙ)`
- constants, e.g. `c`
- variables, e.g. `x`


```
predicate   constant        constant
┌─┴───┐     ┌───┴──┐   ┌────────┴────────┐
Brother  (  KingJohn , RichardTheLionheart )
            └───┬──┘   └────────┬────────┘
              term             term
└────────────────┬─────────────────────────┘
        atomic sentence



predicate  function  function   constant      function  function   constant
┌┴┐     ┌──┴─┐   ┌───┴───┐   ┌──┴──┐       ┌──┴─┐   ┌───┴───┐   ┌──┴───┐
>=   (  Length  (LeftLegOf  (Richard)) ,   Length  (LeftLegOf  (KingJohn))  )
     └──────────────┬────────────────┘     └───────────────┬─────────────┘
                   term                                   term
└───────────────────────────────────┬───────────────────────────────────────┘
                              atomic sentence
```


Complex Sentences
- built from atomic sentences using connectives
- similar to propositional logic
- connectives {¬, ∧, ↓, →, ⟺}
- `Sibling(KingJohn, Richard)) ⟺ Sibling(Richard, KingJohn)`

## FOL semantics

Models of first-order logic: sentences are true or false with respect to models.

A model consists of
- a domain of discourse
- an interpretation

A *domain of discourse* (DOD), or a universe, is a nonempty, finite or infinite, set of objects.

An *interpretation* is a function that assigns to each
* constant symbol - a domain element
* predicate symbol - a relation on the domain (of appropriate arity)
* function symbol - a function on the domain (of appropriate arity)

An atomic sentence, `P(t₁, …, tₙ)`, is true in a certain model (that consists of a domain and an interpretation) iff the domain elements that are the interpretations of `t₁, …, tₙ` are in the relation that is the interpretation of the predicate `P`.

The truth value of a complex sentence in a model is computed from the truth-values of its atomic sub-sentences in the same way as in propositional logic.

## Quantification

The syntax is `∀ variables sentence`, e.g. `∀x(Px -> Qx)`, 
`∀x(StudiesAt(x, Stanford) -> Smart(x))`.

Semantics: `∀xP` is true in a model iff, for all domain elements `d` in the model, `P` is true in the model when `x` is interpreted by `d`. Intuition: `∀xP` is roughly equivalent to the conjunction of all instances of `P`.

```
∀x(StudiesAt(x, Stanford) -> Smart(x))

UQ of x is equivalent to all instances of x

StudiesAt(Johnatan, Stanford) -> Smart(Johnatan) ⋀
StudiesAt(Richards, Stanford) -> Smart(Richards) ⋀
StudiesAt(Stanford, Stanford) -> Smart(Stanford) ⋀ …
```

Note that the constant (name) "Stanford" is also an element of DoD hence the last instance.

UQ sentence over variable `x` is equivalent to the conjunction of all instances of that sentence with `x` ranging over all domain elements.

However, the main connective used to join sentences in UQ is implication. The pattern that mainly occurs with UQ is `∀x(Px -> Qx)`. Using conjunction instead, `∀x(Px ⋀ Qx)`, is usually (but not always) a sign of mistake.

U = StudiesAt, c = Stanford, S = Smart
- `∀x(U(x,c) ⋀ S(x))` Everyone studies at Stanford and everyone is smart.
- `∀x(U(x,c) ⋁ S(x))` Everyone studies at Stanford or everyone is smart.
- `∀x(U(x,c) ⊕ S(x))` Either everyone studies at Stanford or everyone is smart.
- `∀x(U(x,c) ⟺ S(x))` Everyone studies at Stanford iff everyone is smart.

The last example decomposes into two implications:
- `∀x(U(x,c) -> S(x))` Everyone that studies at Stanford is smart.
- `∀x(U(x,c) <- S(x))` Everyone that is smart studies at Stanford.

What about these?
- ∀x∀y(x ∈ A ⋀ y ∈ B) === ∀x(x ∈ A) ⋀ ∀y(y ∈ B) === ∀x(x ∈ A) ⋀ ∀x(x ∈ B)
- ∀x  (x ∈ A ⋀ x ∈ B) !== ∀x(x ∈ A) ⋀ ∀x(x ∈ B)
- ∀x((x ∈ A ⋀ x ∈ B) -> x ∈ A⋂B)
- ∀x(x ∈ A ⋁ x ∈ B)
- ∀x((x ∈ A ⋁ x ∈ B) -> x ∈ A⋃B)
