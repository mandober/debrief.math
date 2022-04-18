# Boolean function

https://en.wikipedia.org/wiki/Boolean_function

A Boolean function is a function whose arguments and result assume values from the Boolean domain, `𝔹`, i.e. a two-element set, usually, `𝔹 = {T,F} = {0,1}`.

In general, *n-ary Boolean functions* are denoted by `h : 𝔹ⁿ → 𝔹`, where `n` denotes the arity, `n >= 0`. Since `𝔹` has 2 elements, there are `2^2ⁿ` n-ary Boolean functions, equal to the number of different truth tables with `2ⁿ` entries.

arity | number of unique functions
-----:|----------------------------
0     | 2^2⁰ = 2^1 = 2
1     | 2^2¹ = 2^2 = 4
2     | 2^2² = 2^4 = 16
3     | 2^2³ = 2^8 = 256
n     | 2^2ⁿ

Note: this determines the number of unique functions, where uniqueness is extensional, i.e. two functions are the same if they return the same result for the same inputs, that is, if they have the same graph.

Every n-ary Boolean function can be expressed as a propositional formula in `n` variables `x₁, … ,xₙ`, and two propositional formulas are logically equivalent if and only if they express the same Boolean function.

*Nullary Boolean functions*, denoted `c : 𝔹⁰ → 𝔹` or `c : () → 𝔹`, are constant functions (they ignore their input), so all such a function can do is select a particular element from the codomain `{0,1}`, e.g. `true () = 1`, `false () = 0`. Strictly, these are not Boolean functions because the domain is not `𝔹` but a singleton set `()` whose only element is denoted by `()` as well.

*Unary Boolean functions* are denoted by `𝔹 ⟼ 𝔹` or `f : 𝔹 → 𝔹`. There are 4 such functions corresponding to the 4 unary logical connectives: always true `⟙`, identity `I`, NOT `¬`, always false `⟘` or `F`.

p | T | Ip| ¬p| F
--|---|---|---|---
1 | 1 | 1 | 0 | 0
0 | 1 | 0 | 1 | 0


*Binary Boolean function* are denoted by `g : 𝔹 ⨯ 𝔹 → 𝔹` or `g : 𝔹² → 𝔹` or `g : 𝔹 → (𝔹 → 𝔹)`, or as anonymously functions `𝔹 ⟼ (𝔹 ⟼ 𝔹)`. There are 16 such functions corresponding to the 16 unary logical connectives. Just like with unary connectives, of which only NOT is usually used, of these 16 functions (connectives) only a few are frequently used `{ ⋀, ⋁, →, ⟺ }`, with the others being easily derived from this set if needed.

Boolean functions with multiple outputs, `h : 𝔹ⁿ → 𝔹ᵐ` (with `m > 1`), are *vectorial or vector-valued Boolean functions*.

Alternative names of Boolean functions are *switching functions*, used especially in older CS literature, and *truth function* or *logical function* as used in logic.

Boolean functions are a subject of investigation in Boolean algebra and switching theory.

## Rudimentary Boolean functions

The rudimentary symmetric Boolean functions (logical connectives or logic gates)
- NOT, negation or complement: flips the truth value of its one input ("not")
- AND or conjunction: 1 when all inputs are 1 ("both")
- OR or disjunction: 1 when any input is 1 ("either")
- XOR or exclusive disjunction - 1 when one of its inputs is 1 and the other is 0 ("not equal")
- NAND or Sheffer stroke - 1 when it is not the case that all inputs are 1 ("not both")
- NOR or logical nor - 1 when none of the inputs are 1 ("neither")
- XNOR or logical equality - 1 when both inputs are the same ("equal")

An example of a more complicated Boolean function is the *majority function* that must be given an odd number of inputs, and which outputs 1 is majority of inputs is 1, otherwise 0.

## Representation of Boolean functions

Representations of Boolean functions
- Truth table
- Marquand diagram
- Binary decision diagram
- Venn diagram
- Algebraically
  - Negation normal form
  - Disjunctive normal form
  - Conjunctive normal form
  - Canonical normal forms
    - Algebraic normal form (Zhegalkin polynomial)
    - Full (canonical) disjunctive normal form
    - Full (canonical) conjunctive normal form
    - Blake canonical form
- Graph
  - Propositional directed acyclic graph
  - Digital circuit diagram of logic gates, a Boolean circuit
  - And-inverter graph, using only AND and NOT


*Truth table* is an explicit, tabular, listing of all possible combinations of truth values of all the inputs and produced results.

*Marquand diagram*: truth table values arranged in a two-dimensional grid. This is used in e.g. Karnaugh map.

*Binary decision diagram* is a listing of the truth table values at the bottom of a binary tree.

*Venn diagram* is used for depicting the truth table values as a colouring of regions on a plane.

A propositional formula using rudimentary boolean functions can also be represented *algebraically*, in a variety of *normal forms*.

*Negation normal form* is an arbitrary mix of AND and ORs of the inputs and their complements (negations).

*Disjunctive normal form* is a disjunction of conjunctions of the inputs and their complements.

*Conjunctive normal form* is a conjunction of disjunctions of the inputs and their complements.

*Canonical normal form* is a standardized formula which uniquely identifies the Boolean function, and also has a variety of representations.

*Algebraic normal form* or *Zhegalkin polynomial* is a XOR of ANDs of the inputs, disallowing complements.

*Full (canonical) disjunctive normal form* is a disjunction of conjunctions, each containing every argument or complement (minterms).

*Full (canonical) conjunctive normal form* is a conjunction of disjunctions, each containing every argument or complement (maxterms).

*Blake canonical form* is a disjunction of all the prime implicants of the function.

Boolean formulas can also be displayed as graphs:
- Propositional directed acyclic graph
- Digital circuit diagram of logic gates, a Boolean circuit
- And-inverter graph, using only AND and NOT

In order to optimize electronic circuits, Boolean formulas can be minimized using the Quine-McCluskey algorithm or Karnaugh map.


## Properties of Boolean functions

Boolean function properties:
- constant
- monotone
- linear
- symmetric
- read-once
- balanced
- bent
- correlation immune
- evasive
- Sheffer function
- algerbraic degree


A Boolean function may have a variety of properties.

* *Constant Boolean functions* are always true or always false regardless of the inputs.

* *Monotone Boolean functions*: for every combination of inputs, changing an input from 0 to 1 can only cause the output to switch from 0 to 1 (and not from 1 to 0).

(0 <= 1) ⟺ [∀x∀y((x ∈ 𝔹 ⋀ y ∈ 𝔹) -> ((x <= y) -> (f x <= f y)))]

A function is said to be *unate* in a certain variable if it is monotone with respect to changes in that variable.

* *Linear*: for each variable, flipping the value of the variable either always makes a difference in the truth value or never makes a difference (a parity function).

* *Symmetric*: the value does not depend on the order of its arguments.

* *Read-once*: Can be expressed with conjunction, disjunction, and negation with a single instance of each variable.

* *Balanced*: if its truth table contains an equal amount of zeros and ones. The Hamming weight of the function is the number of ones in the truth table.

* *Bent*: its derivatives are all balanced (the autocorrelation spectrum is zero)

* *Correlation immune to mth order*: if the output is uncorrelated with all (linear) combinations of at most m arguments

* *Evasive*: if evaluation of the function always requires the value of all arguments

A Boolean function is a *Sheffer function* if it can be used to create (by composition) any arbitrary Boolean function (see functional completeness).

The *algebraic degree of a function* is the order of the highest order monomial in its algebraic normal form.

Circuit complexity attempts to classify Boolean functions with respect to the size or depth of circuits that can compute them.
