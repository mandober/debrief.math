# Quantifier

https://en.wikipedia.org/wiki/Quantifier_(logic)


## Quantifiers

* A **quantifier** is an operator that specifies how many individuals in the domain of discourse satisfy an open formula.

* A **quantifier** is the general name for a logical operation that constructs, from a predicate `P(x)`, a statement characterizing the domain of validity of `P(x)`.

* The statement `∀x.P(x)` means that the domain of validity of `P(x)` is the same as the domain of values of the variable `x`. The statement `∃x.P(x)` means that the domain of validity of `P(x)` is non-empty.

* The **universal quantifier** in the first order formula `∀x.P(x)` expresses that everything in the domain satisfies the property `P`.

* The **existential quantifier** in the first order formula `∃x.P(x)` expresses that there is at least one individual in the domain that satisfies the property `P`.

* A formula where a quantifier takes widest scope is called a **quantified formula**. A quantified formula must contain a *bound variable* and a *subformula* specifying the property of the referent of that variable.

* The universal and existential quantifiers are duals and are thus interdefinable using negation, `∀x.P(x) ≡ ¬∃x.¬P(x)`

* Other quantifiers are only definable within higher-order logics, and they can bind properties, predicates, functions, etc.

* Quantifiers have been generalized beginning with the work of Mostowski and Lindström.

**First order quantifiers** approximate the meanings of some natural language quantifiers such as "some" and "all". However, many natural language quantifiers can only be analyzed in terms of **generalized quantifiers**.


## Relation to conjunction and disjunction

For a finite domain of discourse `D = {a₁, …, aₙ}`, the universal quantifier is equivalent to a logical conjunction of propositions with singular terms `aᵢ` (having the form `P(aᵢ)` for monadic predicates).

The existential quantifier is equivalent to a logical disjunction of propositions having the same structure. For infinite domains of discourse, the equivalences are similar.

```js
D = {a₁, a₂, …, aₙ}

∀x.P(x) === P(a₁) ⋀ P(a₂) ⋀ … ⋀ P(aₙ)
∃x.P(x) === P(a₁) ⋁ P(a₂) ⋁ … ⋁ P(aₙ)
```

## Infinite domain of discourse

Consider the following statement (using dot notation for multiplication):

`1 · 2 = 1 + 1 and 2 · 2 = 2 + 2 and 3 · 2 = 3 + 3 and ... and 100 · 2 = 100 + 100 and ... and ...`

This has the appearance of an infinite conjunction of propositions. *From the point of view of formal languages, this is immediately a problem, since syntax rules are expected to generate finite words*.

Concerning this example, there is actually a procedure to generate all the conjuncts; however, consider a similar assertion about (every) irrational numbers - there's no way to enumerate all the conjuncts (since irrationals cannot be enumerated). A succinct, yet equivalent formula can be constructed, and avoid these problems, by using universal quantification:   
`∀n.(n ∈ ℕ -> 2n = n + n)`.

A similar analysis applies to the disjunction: `1 is equal to 5 + 5, or 2 is equal to 5 + 5, or 3 is equal to 5 + 5, ... , or 100 is equal to 5 + 5, or ..., etc.`, which can be rephrased using existential quantification:    
`∃n.(n ∈ ℕ ⋀ n = 5 + 5)`.

> Notice the differences in the connective used: ∀ goes with ⟶, ∃ with ⋀:    
> ∀n.(n ∈ ℕ -> 2n = n + n)    
> ∃n.(n ∈ ℕ ⋀   n = 5 + 5)

## Notation

The two most common quantifiers are
- the universal quantifier,   ∀; variants: `∀x.P(x)` or ∀x(P(x)) or ⋀{x} P(x)
- the existential quantifier, ∃; variants: `∃x.P(x)` or ∃x(P(x)) or ⋁{x} P(x)

Some versions of the notation explicitly mention the *range of quantification*. The range of quantification must always be specified; for a given mathematical theory, this can be done in several ways:

* Assume a fixed *domain of discourse* for every quantification (as in ZF)

* *Fix several domains of discourse* in advance and require that each var have a declared domain, which is the type of that var. This is analogous to the situation in statically typed PLs, where vars have declared types.

* Mention *explicitly the range of quantification*, perhaps using a symbol for the set of all objects (like `𝓤`) in that domain (or the type of the objects in that domain).

The names of vars are not important, they are just dummy parameters (formal parameters), and you can use any variable as a quantified variable in place of any other, only minding that variable capture dosn't occur. Even if the notation uses typed vars, vars of that type may be used.

Informally or in natural language, the "∀x" or "∃x" might appear after or in the middle of P(x). Formally, however, the phrase that introduces the dummy variable is placed in front.


## Quantifier nesting

The order of quantifiers is *critical to the meaning*, as illustrated by the following examples:

* 1.1 Universal wrapping an existentinal, ∀(∃)

For every natural number `n`, 
there exists a natural number `s`, 
such that 
it holds that `s = n²`.

This is clearly true: it just asserts that every natural number has a square.

```js
// 1.1 ∀(∃)
∀n ∈ ℕ
 ∃s ∈ ℕ
  (s = n²)
===
∀n( (n ∈ ℕ) (
  ∃s( (s ∈ ℕ) (
    (s = n²)
  ))))
===
∀n((n ∈ ℕ).
  ∃s((s ∈ ℕ).
    (s = n²)))
===
∀n( (n ∈ ℕ). ∃s( (s ∈ ℕ) . (s = n²) ) )
//         ↑             ↑
//    connectives (but which?)
===
∀n∃s. n ∈ ℕ. s ∈ ℕ. (s = n²)
===
∀n  (n ∈ ℕ -> (∃s(s ∈ ℕ ⋀ s = n²))) ===
∀n∃s(n ∈ ℕ ->    (s ∈ ℕ ⋀ s = n²))


// 1.2 ∃(∀)
∃s ∈ ℕ.
 ∀n ∈ ℕ
  s = n²
// becomes
∃s  (s ∈ ℕ ⋀ (∀n(n ∈ ℕ -> s = n²))) ==
∃s∀n(s ∈ ℕ ⋀    (n ∈ ℕ -> s = n²))
```


The meaning of the assertion changes if the order of the quantifiers is swapped:

* 1.2. Existentinal wrapping a universal, ∃(∀)

There exists a natural number `s`, 
such that, 
for every natural number `n`, 
it holds that `s = n²`.

This is clearly false: it asserts that there is a single natural number `s` that is the square of every natural number. This is because the syntax directs that any variable cannot be a function of subsequently introduced variables.



* A less trivial example from mathematical analysis are the concepts of uniform and pointwise continuity, whose definitions are the same apart from the exchanged quantifiers.

A function `f : R ⟶ R` is called
- pointwise continuous in case (1)
- uniformly continuous in case (2)

```js
// the 2nd and 3rd term are exchanged

∀ϵ > 0.  ∀x ∈ ℝ. ∃δ > 0.   ∀h ∈ ℝ. (|h| < δ --> |f(x) - f(x+h)| < ϵ)       (1)

∀ϵ > 0.  ∃δ > 0. ∀x ∈ ℝ.   ∀h ∈ ℝ. (|h| < δ --> |f(x) - f(x+h)| < ϵ)       (2)

// (1)      (2)
∀ϵ > 0      ∀ϵ > 0
 ∀x ∈ ℝ   ↘  ∃δ > 0
  ∃δ > 0  ↗   ∀x ∈ ℝ
   ∀h ∈ ℝ      ∀h ∈ ℝ
    (|h| < δ --> |f(x) - f(x + h)| < ϵ)
```

* In the case (1), the particular value chosen for `δ` can be a function of both `ε` and `x`, i.e. of both variables that precede it.

* In the case (2), `δ` can be a function only of `ε`, i.e. it has to be chosen independent of `x`.

For example, `f(x) = x²` satisfies pointwise, but not uniform continuity.

In contrast, interchanging the two initial universal quantifiers in the definition of pointwise continuity does not change the meaning.

The maximum depth of nesting of quantifiers in a formula is called the quantifier **rank**.


## Equivalent expressions

* If one is interested in the behaviour of the predicate `P(x)`, but not on the whole domain of values of `x`, but only on the part singled out by a predicate `R(x)`, then one often uses **bounded quantification** (bounded, relativized):

`∀x ∈ D. P(x)` ≡ `∀x(x ∈ D → P(x))` and `∃x ∈ D. P(x)` ≡ `∃x(x ∈ D ⋀ P(x))`


If `D` is a domain of `x`, `P(x)` is a predicate dependent on object var `x`:

* The universal proposition can be expressed as:   
  `∀x ∈ D. P(x)` === `∀x(x ∈ D ⟶ P(x))`
   ↑                           ↑

* The existential proposition can be expressed as:   
  `∃x ∈ D. P(x)` === `∃x(x ∈ D ⋀ P(x))`
   ↑                           ↑

Together with negation, only one of either the universal or existential quantifier is needed to perform both tasks
* `¬(∀x ∈ D.P(x))` === `∃x ∈ D.¬P(x)`
* `¬(∃x ∈ D.P(x))` === `∀x ∈ D.¬P(x)`

This indicates that, to disprove a "∀x" proposition, you only need to find one `x` for which the predicate is false. However, to disprove a "∃x" proposition, you need to show that the predicate is false for each `x`.

```js
  ∀x ∈ D. P(x)  ===  ∀x(x ∈ D → P(x))
  ∃x ∈ D. P(x)  ===  ∃x(x ∈ D ⋀ P(x))

  ∀x ∈ D.¬P(x)  ===  ¬(∃x ∈ D.  P(x))
  ∃x ∈ D.¬P(x)  ===  ¬(∀x ∈ D.  P(x))

¬(∀x ∈ D. P(x)) ===    ∃x ∈ D. ¬P(x)
¬(∃x ∈ D. P(x)) ===    ∀x ∈ D. ¬P(x)


  ∀x ∈ D. P(x)  ===  ∀x(x ∈ D →  P(x)) === ∀x(¬(x ∈ D) ⋁  P(x))
  ∀x ∈ D.¬P(x)  ===  ∀x(x ∈ D → ¬P(x)) === ∀x(¬(x ∈ D) ⋁ ¬P(x))
  
  ∀x ∈ D.¬P(x)  ===  ¬(∃x ∈ D.   P(x))



∀x. P(x) === ¬∃x.¬P(x))

∀x.¬P(x) === ¬∃x. P(x))
∃x.¬P(x) === ¬∀x. P(x))
```

## Range of quantification

* Every quantification involves one specific variable and a domain of discourse or range of quantification of that variable.
* The range of quantification specifies the set of values that the variable may take. In the examples above, the range of quantification is the set of natural numbers.

Specification of the range of quantification allows us to express the difference between, say, asserting that a predicate holds for some natural number or for some real number.

Expository conventions often reserve some variable names such as "n" for natural numbers, and "x" for real numbers, although relying exclusively on naming conventions cannot work in general, since ranges of variables can change in the course of a mathematical argument.

A more natural way to restrict the domain of discourse uses **guarded quantification**. For example, the guarded quantification:   
"for some natural number n, n is even and n is prime"    
means   
"for some even number n, n is prime".

In some mathematical theories, a single domain of discourse fixed in advance is assumed. For example, in ZF set theory, variables range over (all, any) sets. In this case, guarded quantifiers can be used to mimic a smaller range of quantification.

Thus in the example above, to express   
"for every natural number n, 2n = n + n"   
i.e. `∀n ∈ ℕ(2n = n + n)`;    
in ZF set theory, one would write   
"for every n, if n belongs to ℕ, then 2n = n + n"    
i.e. `∀n(n ∈ ℕ -> 2n = n + n)`
