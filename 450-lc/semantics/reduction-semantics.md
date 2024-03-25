# Reduction semantics

## Intro

A model of a programming language includes at least one semantics, often several. A minimal model of a language requires the specification of the core syntax and its meaning. In the *semantics-via-syntax*, that is, in the syntactic approach to the formulation of meaning, the meaning of the core syntax is formulated through binary relations on itself.

This is contrasted to the denotational sematics where the meaning of a syntactic term is given as an association to a mathematical object (such as a function); specifing a denotational semantics for a language consists of finding a collection of semantic domains, and then defining an interpretation function that maps terms of the language into elements of these domains.

## Semantics via syntax

The specification of a PL starts with the syntax, and a common way to present the grammar is with a (variant of) BNF notation, enumerating all legal language productions. The difficult part, however, is the specification of the meaning of programs, i.e. how the program computes.

The syntax-based approach to the specification of semantics starts with the observation that computation generalizes calculations.

Calculating with programs means looking at the syntax of an expression and relating it to another, presumably simpler, expression.

For example, the expression `1 + 1` is related to the expression `2`. Even the application of a function to an arg can be expressed in this manner: 
`f(4) = 4 + 5` if `define f(x) = x + 5`.

Mathematically put, we are specifying the semantics of a PL with a relation on its syntax. For functional programers this is not surprising because FP is based on a rewriting system. It is similar to how the laws and identities of algebra let us rewrite and simplify algebraic expressions, relating expressions to each other. What may come as a surprise is the possibility of specifying the semantics of most PLs in this manner, including those with imperative effects.

A BNF grammar can be understood to define a set of strings, but a more useful interpretation is that it defines a set of trees, called abstract syntax trees (ASTs).

## Relations

A relation is a set whose elements consist of ordered pairs. If a relation is reflexive, symmetric, and transitive, then it is an *equivalence relation*. Certain names for a relation, such as `=`, suggest that the relation is an equivalence.

The following defines a relation `r` that is neither reflexive, symmetric, nor transitive.
- `(f • B) r B` i.e. ((f • B), B) ∈ r
- `(t • B) r t` i.e. ((t • B), t) ∈ r

In the context of a reduction semantics, such relations are known as **notions of reduction**.

A modification of this definition yields a relation `≍ᵣ` that is reflexive:
- `(f • B) ≍ᵣ B`       [a]
- `(t • B) ≍ᵣ t`       [b]
- `B ≍ᵣ B`             [c]

An alternative way of defining `≍ᵣ` is to extend `r` and explicitly constrain the new relation to be reflexive:
- `B1 ≍ᵣ B2` if `B1 r B2` [ab]
- `B ≍ᵣ B`                [c]

The relation `≍ᵣ` is therefore called the **reflexive closure** of `r` relation.

We define yet another relation by adding symmetry and transitivity constraints:
- `B1 ≈ᵣ B2` if `B1 r B2`                  [ab]
- `B1 ≈ᵣ B1`                               [c]  refl
- `B1 ≈ᵣ B2` if `B2 ≈ᵣ B1`                 [d]  symm
- `B1 ≈ᵣ B3` if `B1 ≈ᵣ B2` and `B2 ≈ᵣ B3`  [e]  trans

The `≈ᵣ` relation is the *symmetric-transitive closure* of `≍ᵣ`, and it is the *reflexive-symmetric-transitive closure* or equivalence closure of `r`.



Relations (≭ ≍ ≈):
- `r`
  - non-refl, non-symm, non-trans

- `≍ᵣ`
  - refl, non-symm, non-trans
  - reflexive closure of `r`
    - `r` + *refl*

- `≈ᵣ`
  - refl, symm, trans
  - reflexive-symmetric-transitive closure (equivalence closure) of `r`
    - `r` + refl + symm + trans
  - symmetric-transitive closure of `≍ᵣ`
    - `≍ᵣ` + *symm* + *trans*


## Semantics as equivalence relation

The running example of `B` and `r` suggests how a PL can be defined through syntax and relations on syntax - or, more specifically, as a set `B` of abstract syntax trees and a relation `r` on this set.

In fact, `B` is a grammar for boolean expressions with `t` for true, `f` for false, and `•` as the `or` operator. The relation `≈ᵣ` equates pairs of `B` expressions that have the same truth value.

It does not follow, however, that `•` is exactly like a boolean `or`. If we wished to establish this connection, we would have to prove general claims about `•`, such as `(B • t) ≈ᵣ t` for any expression `B`. Put differently, there is generally a gap between the semantics of a PL and the properties of that semantics that we'd like to know.

For various purposes, the properties of a semantics are as important as the values it relates to expressions or programs. For example, if `•` really satisfied the laws of `or`, then a compiler might safely optimize `(B • t)` as `t`. Similarly, if the semantics of the language guaranteed that a number can never be added to anything other than another number, the implementation of the semantics need not check the arguments of an addition operation to ensure that they are numbers.

## Semantics via reduction

The `≈ᵣ` relation is remiscant of `=` from algebra. Just like we can use equational reasoning in that setting for all kinds of purposes, we can use the `≈ᵣ` relation to prove the equivalence of certain expressions.

In general, though, the relation does not suggest how to get from an arbitrary `B` to either `t` or `f`, which is what we need to build an interpreter of a semantics for.

In this sense, the `r` relation is actually more useful than `≈ᵣ`. Both cases in the definition of `r` relate an expression to a smaller expression. Also, for any expression `B`, either `B` is `t` or `f`, or `r` relates `B` to at most one other expression.

As a result, we can think of `r` as a *single-step reduction*, corresponding to the way that an interpreter might take a single evaluation step in working towards a final value.

Using `r` again, we can define `⟿ᵣ` as the *reflexive-transitive closure* of `r`:
- `B1 ⟿ᵣ B1`
- `B1 ⟿ᵣ B2` if `B2 r B1`
- `B1 ⟿ᵣ B2` if `B1 ⟿ᵣ B3` and `B3 ⟿ᵣ B2`

This yields a *multi-step reduction relation*. In particular, the multi-step relation `⟿ᵣ` maps a single expression to many other expressions but to at most one of `t` or `f`.

The relations `r` and `⟿ᵣ` are intentionally *asymmetric*, emphasizing that evaluation should proceed in a specific direction towards a value.

## Reduction in Context

So far, we don't have rules for reducing subexp positioned on the left of an exp. For example, `((f • t) • f)` cannot be reduced at all, but it should reduce to `(t • f)`, by simplifying the first subexp according to `(f • t) r t`.

Nothing in the definition of `r` matches `((f • t) • f)` as the source exp, however. That is, we can only reduce exp of the form `(f • B)` and `(t • B)`. While the exp on the rhs of the outermost `•` can be arbitrary, the exp on the lhs must be `f` or `t`.

If we wish to reduce such `B` exps to answers, we must extend the `r` relation to a relation that supports the reduction of subexps.
- `B1 ⟶ᵣ B2` if `B1 r B2`
- `(B1 • B2) ⟶ᵣ (B1′ • B2)` if `B1 ⟶ᵣ B1′`
- `(B1 • B2) ⟶ᵣ (B1 • B2′)` if `B2 ⟶ᵣ B2′`

The `⟶ᵣ` relation is the **compatible closure** of the `r` relation.

Like `r`, `⟶ᵣ` is a *single-step reduction relation*, but `⟶ᵣ` allows the reduction of any subexp within an exp.

A reducible exp is a **redex**, and the exps surrounding a redex are the **context**.

Finally, if we define `->>ᵣ` to be the *reflexive-transitive closure* of `⟶ᵣ`, then we get `((f • t) • f) ->>ᵣ t`. Thus, `->>ᵣ` is the **natural reduction relation** generated by `r`.

In general, the mere reflexive closure `≍ᵣ`, equivalence closure `≈ᵣ` or reflexive-transitive closure `⟿ᵣ` of a relation `r` is uninteresting. What we are most often interested in is the compatible closure `->ᵣ` and its reflexive-transitive closure `->>ᵣ`. Those two correspond to typical notions of expression evaluation and interpretation.

In addition, the equivalence closure `=ᵣ` of `->ᵣ` is interesting because it relates expressions that produce the same result.

## Evaluation Functions

The `->>ᵣ` relation brings us close to a useful notion of evaluation, but we are not there yet. While 
`((f • t) • f) ->>ᵣ t`, also 
`((f • t) • f) ->>ᵣ (t • f)` and 
`((f • t) • f) ->>ᵣ ((f • t) • f)`.

For an evaluator, however, we are only interested in whether a `B` evaluates to a result, i.e. to `f` or `t`; anything else is irrelevant.

We use two definitions to state this formally. The first specifies once and for all what we consider a result `R` for `B` "programs":

```
R := t | f
```

Obviously, `R ⊂ B` because all results are also expressions. The second definition specifies evaluation as the `evalᵣ->>ᵣ` relation, which maps each exp to a result.

```js
evalʳ->>ᵣ : B -> R
evalʳ->>ᵣ (B) -> if 'B ->>ᵣ t' then 't' else 'f'
```

We use a function because `evalᵣ->>ᵣ` must be a function if it is going to make sense as an evaluator (for a deterministic programming language).

The name of the function comes with both `evalʳ` and `->>ᵣ` parts. Naturally, the former just says that the function is based on the relation `r`, while the latter tells us that the definition of the evaluation function is based on the relation `->>ᵣ`.

We decorate the name of the `eval` function with both because there are many alternative definitions. For example, the following definition uses the equivalence relation based on `r`, `=ᵣ`, instead of the reduction relation (`->>ᵣ`).

```js
evalʳ=ᵣ : B -> R
evalʳ=ᵣ (B) -> if 'B =ᵣ t' then 't' else 'f'
```

The equivalence relation `=ᵣ` is just the compatible, reflexive, transitive and symmetric closure of `r`.

Defining an evaluation function via `=ᵣ` shows that a program's computation really just generalizes the notion of calculation from algebra.

## Summary of Relations

- `r`
  - non-refl, non-symm, non-trans
  - base relation on members of exp grammar
  - a single-step reduction with no context
- `≍ᵣ`
  - refl, non-symm, non-trans
  - refl closure of `r`
- `≈ᵣ`
  - refl, symm, trans
  - equivalence closure of `r`
  - symm + tran closure of `≍ᵣ`
- `⟿ᵣ`
  - refl + trans closure of `r`
- `⟶ᵣ`
  - compatible closure of `r` wrt the exp grammar
  - single-step within a context
  - provides rules for reducing nested subexp in any position
- `->>ᵣ`
  - refl + trans closure of `⟶ᵣ`
  - reduction relation
  - multi-step (0 or more) evaluation
- `=ᵣ`
  - equivalence relation
  - compatible + refl + symm + trans closure of `r`
  - equivalence closure of `->ᵣ`
  - symm + trans closure of `->>ᵣ`
  - equates exp that produce the same result
- `evalʳ->>ᵣ`
  - relation projected to a range (results ⊂ exp), i.e.
    evaluation relation that maps exps to a result R = {t,f} ⊂ B
  - complete evaluation based on `->>ᵣ`
- `evalʳ=ᵣ`
  - relation projected to a range (results ⊂ exp), i.e.
    evaluation relation that maps exps to a result R = {t,f} ⊂ B
  - complete evaluation based on `=ᵣ`
