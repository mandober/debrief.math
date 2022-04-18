# QL interpretation

We may fix the meaning of predicate symbols in the same way as a variable can be fixed (attached) to a universe of discourse, e.g. attached to the set of integers. In this manner, the formula `∀x(Ax → Bx)` could mean "every integer greater than 3 is greater than 2" by setting the predicate symbol `A` to "> 3", `B` to "> 2", and the domain of discourse to ℤ. In such cases, we speak of an *interpretation of a formula*.

One formula can have many interpretations. Not every interpretation of a formula must be true.

DEF: If the truth range of variables of a formula `U` is `S` and `a,b,c,…` are properties denoted by predicate symbols `A,B,C,…`, then such a system is denoted by `(S; a, b, c, …)` and called an interpretation of the formula `U`.

A *propositional function* is a quantifier-free formula. We shoud then add a truth value to each formula depending on the given interpretation - we do this by induction on the length of the formulas.

...


## Identity

Identity is a relation everything bears to itself and to nothing else. The concept of identity is the concept of self-sameness. If x is identical with y, then x and y are one and the same individual. This way of putting it has a faintly paradoxical ring. How can two things be one and the same thing? The paradox is only apparent. If x and y are identical, then there are not two things, x and y, but only a single thing twice designated.

We require the concept of identity precisely because things can be variously named and described. The identity relation enables us to indicate that two names or descriptions designate one and the same individual.

The 'is' of identity differs importantly from the 'is' of predication. The sentences below exhibit the 'is' of identity:
- Hesperus is Phosphorus.
- Lewis Carroll is Charles Dodgson.

This 'is' differs from the 'is' of predication illustrated by these sentences:
- Hesperus is bright.
- Carroll is English.

Here 'is' appears as an undetachable component of a pair of general terms: "is bright" and "is English".

An 'is' of identity can typically be replaced by the phrase *"is nothing but"* without affecting the truth conditions of the sentence in which it occurs: Phosphorus is nothing but Hesperus, and Carroll is nothing but Dodgson. If Phosphorus is bright and Carroll is English, however, it does not follow that Phosphorus is nothing but bright, or that Carroll is nothing but English.

### Identity and Resemblance

Identity is a relation between a thing with itself. If Cicero is identical with Tully, Cicero and Tully are one and the same individual.

Identity is distinguished from exact similarity or resemblance.

Twins Judy and Trudy are identical, not in the sense that there is just one of them with two names, but in the sense that each exactly resembles the other.

English affords a way of distinguishing cases in which 'identical' is used to designate the identity relation from those in which it is used to express resemblance.
- Cicero is identical with Tully.
- Judy is identical to (not with) Trudy.

If Cicero is identical with Tully, then, because everything resembles itself, Cicero would be identical to Tully. Judy's being identical to her twin Trudy does not, however, mean that Judy is identical with Trudy.

The basis of this distinction is clear. Identity is a relation every object bears to itself and to no other object.

*Identity is a two-place relation* that could be represented just as you might represent any other two-place relation, `Ixy`. However, usually the identity relation is denoted with its own dedicated infix symbol, `=`.

The identity sign does not express equality but identity: 
`a = b` does not mean that `a` and `b` are equal, but that `a` *is* `b`.

The identity sign is always flanked by individual names or variables: you could have `a = b` and `x = y`, but not `Pa = Pb` or `∃xFx = ∃xGx`.

- "If Carroll is an author, then Carroll is Dodgson" becomes `Ac ⊃ c = d`.
- "Clemens is the only author" becomes `Ac ⋀ ∀x(Ax ⊃ x = c)`, i.e. "Clemens is an author, and, for all x, if x is an author, x is Clemens".

### Identity
Everything is identical with itself and nothing else. It seems to follow that statements of identity must be either trivially true: "Lewis Carroll = Lewis Carroll", or patently false: "Lewis Carroll = Arnold Schwarzenegger". Still, "Lewis Carroll = Charles Dodgson" is an identity statement that is both true and informative. One reason identity is an indispensable concept is that names and objects are not perfectly correlated, and because it is possible to refer to a single object in many ways. We need some way of indicating that objects variously designated are one and the same: "Lewis Carroll = the author of Jabberwocky", "the author of Jabberwocky = the lecturer in mathematics". The foregoing illustrates one of the benefits of studying logic. Each of us deploys the concept of identity continuously, but without an explicit awareness that we are doing so. Were you to lack an implicit grasp of the concept of identity, you would be severely limited in what you could think or say. In studying Lp, your implicit knowledge is brought to the surface and made explicit: you learn something important about yourself.

### At Least, at Most, Exactly

- Theism: there is at least one god, `∃xGx`
- Atheism: there are no gods,       `¬∃xGx`
- Agnosticism: there is at most one god, `∀x(Gx ⊃ ∀y(Gy ⊃ x = y))`
- Monotheism: there is exactly one god,  `∃x(Gx ⋀ ∀y(Gy ⊃ x = y))`
- Gnosticism: there are exactly two gods, 
  `∃x(Gx ⋀ ∃y((Gy ⋀ x ≠ y) ⋀ ∀z(Gz ⊃ (z = x ⋁ z = y))))`

The last one is similar to:

For all x, if x is a philosopher, 
then, for all y, if y is a philosopher other than x, 
then, if anything, z, is a philosopher, 
z is identical with x or with y.    
`∃x(Px ⋀ ∃y((Py ⋀ x ≠ y) ⋀ ∀z(Pz ⊃ (z = x ⋁ z = y))))`


## Definite Descriptions

Quantification makes it possible to refer to sets or classes of individuals without enumerating their members. The identity relation makes it possible to refer to individual class members without using names. You might refer to a certain philosopher by means of a name, "Aristotle", or by means of a *definite description*, "the teacher of Alexander".

### Identity and Indiscernibility

The philosopher Leibniz is usually credited with formulating a controversial principle of identity called *the identity of indiscernibles* that says if every predicate true of `x` is true of `y`, and vice versa, then `x = y`.

According to this principle, if `x` and `y` are exactly alike in every respect (if `x` and `y` are indiscernible), then `x` and `y` are the selfsame object, `x = y`.

A distinct but closely related and less controversial principle is called *the indiscernibility of identicals*: if `x = y`, then every predicate true of `x` is true of `y`, and vice versa. The two principles differ importantly.

(...)

## Disco domain

"Everything is lost", expressed by `∀xLx`, has the var `x` ranging over e∙ve∙ry∙thing. Unless otherwise specified, the domain of discourse (DOD) is unrestricted; it should really include everything.

The set of individuals which the variables (in a sentence, or language) range over is called *the domain of discourse* (DOD) or *the universe*, `𝓤`.

What variables are taken to range over depends both on the predicates contained in a sentence and on the context (contextual factors, both stated or unstated).

The universe can be narrowed down explicitly with a conditional formula: "Everything in Europe is lost", `∀x(x = e ⊃ Lx)`. Or, you can restrict the universe in advance, by, e.g. stating that the DOD covers ℕ. When a lot of formulas share a common subject, this is the right path to go.

## The Syntax of QL

We begin by specifying classes of symbols from which the sentences of QL can be constructed, like the class `𝑪` of logical connectives, and the overkill class `𝑷` of punctuations (parentheses et al.), which are the same as in the syntax of sentential logic (SL) languages.
- set of punctuations,                 `𝑷 = { '(', ')' }`
- set of truth-functional connectives, `𝑪 = { ¬, ⋀, ⋁, ->, ⟺ }`

The symbols that denoted propositional constants in SL, are replaced in QL with the symbols that denote individual terms, predicates and quantifiers:
- set of individual variables, `α = { u, v, w, …, z }`
- set of individual constants, `β = { a, b, c, …, t }`
- set of predicate letters,    `ϕ = { A, B, C, …, Z }`
- set of quantifiers,          `ϒ = { ∀α, ∃α }`

Next, the set `Π` of *unquantified atomic sentences* is specified: it consists of finite strings of symbols made by pairing a predicate symbol with an individual constant, `Π = { ϕ₀ β₀ , ϕ₀ β₁ , … , ϕₙ β₀ ⋯  βₙ }`. Expressions, `ϕₙβ₀` and such, are finite. So, `Π` includes formulas, such as `Pc`, `Qd`, `Lab` (which should be classified by arity). It doesn't contain expressions with variables, only simple, unquantified sentences.

It is now possible to give a recursive specification of the set of sentences of QL, further complicating the language.

(...)

## The Semantics of QL
