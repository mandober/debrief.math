# Predicate calculus

https://en.wikipedia.org/wiki/Predicate_calculus

In first-order predicate calculus, a statement is called well-formed formula (wff). A wff is interpreted as making a statement about some domain of discourse.

The syntax of wffs consists of
- logical operators: ∧, ∨, ¬, →, ⟺
- quantifiers: ∀ (@), ∃ (!)
- punctuation marks: `, . : () {}`
- terms:
  - variable: x, y, z
  - constant: a, b, c
  - function
- predicates
- literals


A *variable* represents potentially any element from the domain of discourse. Variables are distinguished from constants by the context in which they appear: vars are always quantified, constants are not.


A *constant* is a specific element from the domain of discourse, `a`,`b`,`joe`

A *function* is a **functional relation** that maps elements in the domain of discourse to other elements in the domain, e.g. `min(x,y,z)`, `abs(x)`. A function has one or more arguments (1+), which are terms.

A *predicate* is a **relation** on the domain of discourse that **evaluates to a Boolean value**, i.e. a relation that is either true or false within the domain. A predicate has 0 or more (0+) arguments (args are terms).

Examples of predicates:
- `above(a,b)`               "a is above b"
- `animal(child_of((Jerry))` "the child of Jerry is an animal"
- `larger_than(square(x),x)` "the square of x is larger than x"
- `hot`                      "it is hot" (nullary predicate)

A *literal* is a predicate or negation of a predicate.

A *WFF*  is defined recursively:
- a literal is a wff
- if `w` is a wff, then so is `¬w`
- if `w` and `v` are wffs, then so are: w ∧ v, w ∨ v, w → v, w <=> v
- if `w` is a wff, then, for any var `x`, so are ∀x.w, ∃x.w

The quantifiers `∀x` and `∃x` are said to have *scope* over `w`, and `x` is a *quantified variable*.

The symbols representing vars are distinguishable from the symbols representing constants because the vars are always quantified, whereas constants are not.
