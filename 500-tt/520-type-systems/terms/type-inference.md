# Type Inference

Uncovering the Unknown: Principles of Type Inference
https://www.youtube.com/watch?v=fDTt_uo0F-g
http://chariotsolutions.com/presentation/uncovering-the-unknown-principles-of-type-inference/

Introduction to Type Inference 2015 Brian Hurt
New York Haskell Meetup April 22, 2015
https://invidious.fdn.org/watch?v=il3gD7XMdmA

The theory and practicum of type inference has been around for decades, but it remains a tricky and needlessly dry topic, even in academic circles. This talk will delve into the glorious details and subtle implications of type inference in industrial languages like C# and Scala, as well as highly mathematical languages like Haskell. We will uncover the sordid reasons beyond some of the many unnerving quirks of modern type inference schemes, as well as the the amazing power they proffer. The primary focus of this talk will be on Scala, Haskell and SML.

There are 2 sorts of type-inference systems:
* Local type inference (Scala)
* Global type inference (Haskell, SML)


Local type inference is the type inference at a *declaration-level*, while global type inference looks at the larger context, usually a function, so it can be said that it's a *function-level* type inference.

*Hindly-Milner* is a popular type system that uses *Damas-Milner* type inference algorithm.



## Introduction

A type-inference system is, fundamentally, a logical proof system. There are many proof systems in logic, but a system of natural deduction, with the rules of inference presented as judgments, is the most common one.

## Judgements

A judgement is a compound proposition similar to an implication. A judgement is distinguished by the turnstyle symbol, `|-`, both sides of which contain WFFs (well-formed forumulas).

Judgments have different semantics depending on a logic system, but in a system of natural deduction, the LHS contains a set of zero or more propositions, called *hypothesis* or *antecedents*, listed as a space- or comma-separated list, such that each element is a conjunct in a sequence of conjunctions.

While the interpretation of the LHS is often the same across logic systems, the difference in semantics is usually associated with the RHS of a judgment. Generally (particularly in sequent calculus), the RHS also contains a comma-separated sequence of zero or more propositions, called *conclusions* or consequents; however, a comma on the right side corresponds to the disjunction symbol.

So, a judgement, or, under this interpretation, perhaps more preciselly called a *sequent*, is denoted as `a,b,c |- d,e,f`, but actually represents the formula `a ⋀ b ⋀ c |- d ⋁ e ⋁ f`. Nevertheless, in a logic system of natural deduction, there can be only one proposition on the RHS, making the judgement form look like `a,b,c |- d` i.e. `a ⋀ b ⋀ c |- d`.

In sequent calculus, a judgment is a sequent with multiple consequents:

```js
// is a sequent
a,b,c |- d,e,f

// represents:
a ⋀ b ⋀ c |- d ⋁ e ⋁ f
```

In natural deduction, a judgement is a sequent with a single consequent:

```js
a,b,c |- d

// represents:
a ⋀ b ⋀ c |- d
```


## Rules of inference

An important aspect of a type system are its type-inference and type-checking subsystems. The former is usually referred to as a *type-inference engine*. It is the component most responsible for the unfavorable standing of the statically typed languages and the emergence of the dynamically-orientated evangelists (flat-Earthers).

An inference rule consists of formulae (sequents) above the line, called the *inference line*, which represent hypothesis (premises), and a formulae beneath the line which represents the conclusion. THe semantics of an inference rule is that, assuming the things above the line hold, then you can conclude the thing beheath it. Commonly, a name of the inference rule is annotated to the right of the line. Schematically, it looks like this:

```
hypothesis
----------- [rule name]
conclusion
```

In a programming language, there are various construct like if-expr, variables, let-expr, base types, lambda abstraction, lambda application, etc. The job of type-inference is to annotate all the expression in a source file so that all expressions are well-typed. An important element in the process of mapping expressions (or values) to types will be some kind of data structure that will be used to keep track of the assigned expr-to-type pairs.

A *typing context* or a *typing environment* maps variables (that is the names of variables) to types, and it is usually denoted with a capital greek letters such as `Γ`, `Γ'`, `Δ`, `Σ`, etc.

```
t : τ ∈ Γ
-----------
Γ |- t : τ

-----------------
Γ, x: τ |- x : τ
```

The line `Γ, x: τ |- x : τ` states that the context `Γ` *extended with* the variable `x` of type `τ` (we record in the env that var `x` has type `τ`), means that, indeed, var `x` has the type `τ`. It could be also said: if the context is extended with the fact that `x` has type `τ`, then var `x` has type `τ` indeed. Or that, after type-checking the code, we found that var `x` must have type `τ`, so we have record this fact in the typing env `Γ`; on the subsequent lookups for type of `x`, we'll see that its type is `τ` (in the context `Γ`), `Γ |- e : τ`.

The typing context, `Γ`, is a mapping such that every expression, `e`, can only have a single type, `τ`.


Two concrete rules of inference:

```
    Γ |- t : T
-------------------- PROGRESS
t ⇒ t' ⋁ t is value

Γ |- t : T    t ⇒ t'
-------------------- PRESERVATION
    Γ |- t' : T
```

The *progress* inference rule says that if a term is well-typed it evaluates to a value (in one steps semantics), or it is already a value.

The *preservation* inference rule says that if a term is well-typed, and it evaluates, then the result has the same type.
