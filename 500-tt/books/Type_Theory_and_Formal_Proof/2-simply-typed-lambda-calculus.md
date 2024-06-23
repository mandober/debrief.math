# 2. Simply typed lambda calculus

## Contents

- 2.1 Adding types
- 2.2 Simple types
- 2.3 Church-typing and Curry-typing
- 2.4 Derivation rules for Church's λ→
- 2.5 Different formats for a derivation in λ→
- 2.6 Kinds of problems to be solved in type theory
- 2.7 Well-typedness in λ→
- 2.8 Type Checking in λ→
- 2.9 Term Finding in λ→
- 2.10 General properties of λ→
- 2.11 Reduction and substitution in λ→
- 2.12 Consequences
- 2.13 Conclusions
- 2.14 Further reading
- 2.15 Exercises


## 2.1 Adding types

Untyped lambda calculus shows that the abstract behaviour of functions can be expressed by means of λ-calculus; the system is concise and elegant, but sometimes too flexible to conform to our intuition about proper behaviour of functions. However, these negative properties are removed by *introduction of types*. Types naturally constrain the set of allowed λ-terms (primarily, as allowed function arguments).

Introducing types follows naturally: functions are usually thought of as acting on objects belonging to a certain collection (e.g. natural numbers, collection of points on a line), therefore, *the domain of a function* is always present, either implicitly or explicitly.

## 2.2 Simple types

A straightforward manner to abstract (introduce) *types* is to start with an infinite set of *type variables* and then add a production rule to build more complex types, the so-called *function types*. This is done as follows (based on a seminal paper of A. Church, 1940).

Assuming an infinite set of **type variables**, `𝕍 = {α, β, γ, …}`. 
The set `𝕋` of all **simple types** is defined by:
1. Type variable: if `α ∈ 𝕍` then `α ∈ 𝕋`
2. Arrow type: if `σ, τ ∈ 𝕋` then `(σ → τ) ∈ 𝕋`

Abstract syntax: 

𝕋 := 𝕍 
   | 𝕋 → 𝕋


Examples of simple types:
- γ
- (β → γ)
- ((γ → α) → (α → (β → γ)))


(Notation 2.2.2)
1. The Greek letters α, β, … are used for type variables belonging to `𝕍`.
2. We use σ, τ, …, occasionally A, B, …, to denote arbitrary simple types.
3. Outermost parentheses may be omitted.
4. The parentheses in arrow types are right-associative.


Intended meaning of the types:
>*Type variables* are abstract representations of basic types 
such as `nat` for natural numbers, `list` for lists, etc. 

So type variables are really **meta-type-variables** that range over the concrete types in the object language. In the surface syntax there are never type variables but only concrete types, right?

>*Arrow types* represent function types 
such as `(nat → int) → (int → nat)`

We distinguish between the sets and the types because sets like `ℕ` belong to mathematics and types like `nat` to computer science. Otherwise said, `ℕ` is a collection of things in the 'real world' of mathematical entities, whereas `nat` is some coding of these entities in the 'virtual world' of programming. 

In order to express things like term `M` has type `σ`, we add **typing statements** to our formal language, of the form `M : σ`. First of all, we assume that we have an infinitude of variables available for each type `σ`. If variable `x` has type `σ`, we denote this as `x : σ`. We thereby assume that each variable `x` has a unique type: if `x : σ` and `x : τ`, then `σ ≡ τ`.

The natural requirements are for the typing of applications and abstractions:
- App: if `M : σ → τ` and `N : σ` then `M N : τ`
- Abs: if `x : σ` and `M : τ` then `λx.M : σ → τ`

The result of this is that it suffices to give the types of variables. The extension of the types to more complicated terms (if possible!) is then a question of calculation.

This suggests that `x x` cannot have a type: if it had, then `x` should have type `σ → τ` (for the first `x`) and also `σ` (for the second `x`). Since we presuppose that each variable has a unique type, σ → τ ≡ σ is obviously impossible.

(Definition 2.2.7) **Typable term**. 
A term `M` is called typable if there is a type `σ` such that `M : σ`.

## 2.3 Church-typing and Curry-typing

Typing of a λ-term starts with typing its variables. 
There are 2 ways to give types to variables:
- typing à la Church, or explicit typing
- typing à la Curry, or implicit typing

### Typing à la Church

Prescribe a (unique) type for each variable upon its introduction. This is called *typing à la Church* or *explicit typing*, since the types of variables are explicitly written down (as in Church's original paper from 1940). The types of more complex terms now follow in an obvious manner, if one takes the restriction on typability of applications into account.

Examples:
In `(λzu.z)(yx)` 
assume `x` has type `α → α` and 
`y` has type `(α → α) → β`; 
then `yx` has type `β`.

If `z` has type `β` and `u` has type `γ`, 
then `λzu.z` has type `β → γ → β`.

The application `(λzu.z)(yx)` is permitted, 
since the type `β` of `yx` 
matches with the 'input type' `β` of `λzu.z`. 
So, `(λzu.z)(yx)` is typable, with type `γ → β`.



### Typing à la Curry

Another way is not to give the types of variables, but to leave them open (implicit) to some extent; this is called *typing à la Curry* or *implicit typing*. In this case, the typable terms are found by a search process, which contains guesses for the types of the variables.

Look again at the λ-term `M ≡ (λzu.z)(y x)`, but now assume that the types of the variables have not been given beforehand. Can we make an educated guess about the possible types of these variables, provided that we require that the full term must obtain a type?

First of all, we note that the term `M` is an application of `λzu.z` to `yx`. So, `λzu.z` should have a function type, say `A → B`, and then `yx` must have type `A`. Consequently, `M` has type `B`.

The fact that `λzu.z : A → B`, implies that `z : A` and `λu.z : B`. The latter λ-term is abstraction, so it cannot be just `B` but say `B ≡ (C → D)`, for some C and D, and it follows that `u : C` and `z : D`.

In the second place, `y x` itself is an application, so there must be E and F such that `y : E → F` and `x : E`. Then `y x : F`.

It follows that:
- x : E
- y : E → F
- z : A and z : D, so A ≡ D
- u : C
- B ≡ (C → D)
- y x : A and y x : F, so A ≡ F

Hence, we have that `A ≡ D ≡ F`, so, omitting the superfluous D and F (and B), we obtain: `x : E`, `y : E → A`, `z : A`, `u : C` (¹).

Since M has type B and D ≡ A, we can also say that M : C → A. Thus we obtained a general scheme (¹) for the types of x, y, z, u, inducing a type for M.

We may fill the scheme (¹) with 'real' types, for example:
- `x : β`, `y : β → α`, `z : α`, `u : δ`, with `M : δ → α`; or
- `x : α → α`, `y : (α → α) → β`, `z : β`, `u : γ`, with `M : γ → β` 
  (compare this with the typing-à-la-Church example above); or
- `x : α`, `y : α → α → β`, `z : α → β`, `u : α → α`, with `M: (α → α) → α → β`

Apparently, each mentioned 'instance' of the general scheme shows that the λ-term `M ≡ (λzu.z)(yx)` is a typable term. Hence, as long as the restrictions imposed by the general scheme are respected, there is a rich choice of types for the variables.


In the major part of this textbook we only consider typing à la Church because in real life situations from mathematics and logic types are usually fixed and given beforehand.

For a clear presentation, we denote the types of bound variables immediately after their introduction following a `λ`. The types of the free variables are given in a so-called *context* (sometimes called 'basis'), in an order that may be chosen at will.


Consider again the term `(λzu.z)(yx)` where `z` and `u` are bound and `x` and `y` are free. Assuming that `z:β` and `u:γ`, we write this term as follows:

    (λz:β. λu:γ. z)(y x)

with explicit typing of the bound variables `z` and `u`. The context registering the types of the free variables `x` and `y`, as given in becomes:

    x : α → α, y : (α → α) → β ⊢ …

So both the context and the term can be written as the *judgement*:

    x : α → α, y : (α → α) → β  ⊢  (λz:β. λu:γ. z)(y x) : γ → β


```hs
-- annotating each var with a type
(λzᵃ. λuᶜ. zᵃ)ᵃ🠂ᶜ🠂ᵃ (yᵉ🠂ᶠ xᵉ)ᶠ
```


## 2.4 Derivation rules for Church's λ→

Since we have decorated our terms with type information for the bound vars, we have to revise our definition of the set of λ-terms, `Λ`. We call our new set of terms `Λᴛ`, described by the following abstract syntax:

(Definition 2.4.1) 
>Pre-typed λ-terms, `Λᴛ`
The set of pre-typed λ-terms is defined by: 
Λᴛ := V 
    | (Λᴛ Λᴛ) 
    | (λV : T . Λᴛ)


(Definition 2.4.2)
>Statement, declaration, context, judgement
1. A statement is of the form `M : σ`, where `M ∈ Λᴛ` and `σ ∈ 𝕋`. In such a statement, `M` is called the *subject* and `σ` the *type*.
2. A declaration is a statement with a variable as subject.
3. A context is a list of declarations with different subjects.
4. A judgement has the form `Γ ⊢ M : σ`, with `Γ` context, `M : σ` statement.

So `x : α → β` is a *declaration*, and `x1 : α, x2 : α → β, x3 : (β → α) → β` is an example of a context, where x1, x2 and x3 must be different variables. A context may also consist of a single declaration, or none (empty context).

In a judgement `Γ ⊢ M : σ`, we count the subject vars in the declarations of `Γ` as *binding vars*; they bind the corresponding free vars in `M`.

Now we give a set of formal rules which enable us to see whether a judgement `Γ ⊢ M : σ` is derivable, that is, whether `M` has type `σ` in context `Γ`. The rules given below form a so-called **derivation system**: each rule explains how certain judgements can be formally established. Each of the 3 derivation rules is in the so-called premiss-conclusion format, where a number of premisses appear above a horizontal line, and the conclusion below.

Together, these 3 rules form a derivation system for Church's `λ→`:

(Definition 2.4.5)
>Derivation rules for λ→

```
if x : σ ∈ Γ
------------------------------ (var)
Γ ⊢ x : σ

Γ ⊢ M : σ → τ    Γ ⊢ N : σ
------------------------------ (app)
Γ ⊢ M N : τ

Γ, x : σ ⊢ M : τ
------------------------------ (abs)
Γ ⊢ λ(x:σ). M : σ → τ
```

>The VAR rule
This rule formally expresses that each declaration which occurs in the context is derivable with respect to that context. It thereby records behind the `⊢` symbol what the type is of a variable, the simplest expression in λ-calculus. This only applies to a variable that is already a subject in the context; its type is copied from that context. The rule has no premisses, but only contains a conclusion, so it can be used as the start of a derivation.

>The APP rule
This rule concerns the typing of an application. It has two premisses and one conclusion. The rule establishes: if M has function type σ → τ with respect to a certain context Γ, and N has type σ with respect to the same context Γ, then the application MN has type τ (with respect to the same Γ). Note that this means that the conditions on application have been satisfied.

>The ABS rule
This rule enables us to type an abstraction. It has one premiss and one conclusion. In the premiss, we have the context Γ, x : σ. This is a notation for the list Γ concatenated with x : σ, so for context Γ extended with one more declaration. The rule now establishes that, if M has type τ with respect to the extended context, then λx:σ.M has type σ → τ with respect to Γ only.

The context becomes smaller from premiss to conclusion - what is the motivation for this? In the term λx:σ.M, variable x may occur free in M, since the term expresses a function 'mapping x to M'. So, if we look at a stand-alone M, as we do in the premiss, then we need type information concerning such an x. Therefore, we register its type (viz. σ) in the context. On the other hand, this typing of x is no longer necessary in the conclusion: x has become a bound variable in λx:σ.M, and gets its type within that term.

An example derivation that following the rules not only serves to construct the final judgement, but also to justify it:

```
------------------   -----------------
y:α→β, z:α ⊢ y:α→β   y:α→β, z:α ⊢ z:α
--------------------------------------
y:α→β, z:α ⊢ y z : β
--------------------------------------
y:α→β ⊢ λz:α. y z : α → β
--------------------------------------
⊢ λy:α→β. λz:α. y z : (α → β) → α → β
```

Derivation rules can be read in two directions:
- from top to bottom
- from bottom to top

*From top to bottom*: when we are in a situation covered by the premisses, then we may derive the conclusion as a result. This makes it possible to extend our knowledge step by step. This reading also emphasises that the derivation rules give an inductive definition of the set of derivable judgements.

*From bottom to top*: the rules can also be used as a guide to obtain some goal. For example, APP rule gives a guideline on how to find a type for an application M N, namely: try to find types for M and N, and see whether they match. ABS rule tells us how to type an abstraction λx:σ.M, namely by trying to type M, with respect to the same context extended with x:σ.

The rules are **syntax-directed**: there are three kinds of terms (var, app and abs), and for each of them there is a corresponding derivation rule.

Terms which are typable by the aid of a derivation system are called **legal**.

(Definition 2.4.10)
>Legal λ→ terms
A *pre-typed term* `M` in λ→ is called legal if there exist context `Γ` and type `ρ` such that `Γ ⊢ M : ρ`.

## 2.5 Different formats for a derivation in λ→

The same derivation fro eralier chapter *in linear format* may look as the following list of judgements:

```
1  y : α → β, z : α ⊢ y : α → β                       (var)
2  y : α → β, z : α ⊢ z : α                           (var)
3  y : α → β, z : α ⊢ y z : β                         (app on 1 and 2)
4  y : α → β ⊢ λz : α . y z : α → β                   (abs 3)
5  ⊢ λy : α → β . λz : α . y z : (α → β) → α → β      (abs on 4)
```

Dependencies between judgements in a derivation can be characterised as being a *strict partial order*. That is to say: it is
- irreflexive (no judgement J precedes itself)
- asymmetric (if one precedes another, then not the other way round)
- transitive (if Jᵢ precedes Jⱼ, and Jⱼ precedes Jₖ, then Jᵢ precedes Jₖ)

In order to curb down the amount of duplication, we present an alternative format for linear derivations, called the **flag notation**. In this notation, one displays each declaration in a *flag* (a rectangular box) and presumes that this declaration is part of the context for all statements behind the attached *flag pole*.

```
1  f : α → β                                                     (ASS₁)
2  | x : α                                                       (ASS₂)
3  | | f   : α → β                                  VAR on 1     (R 1)
4  | | x   : α                                      VAR on 2     (R 2)
5  | | f x : β                                      APP on 3-4   (⇒E 3-4)
6  | λx : α . f x : α → β                           ABS on 5     (⇒I 2-5)
7  λf : α → β . λx : α . f x : (α → β) → α → β      ABS on 6     (⇒I 1-6)
```

## 2.6 Kinds of problems to be solved in type theory

In general, there are 3 kinds of problems connected with judgements in TT:
1. Well-typedness (typability)
  - Type assignment
2. Type checking
3. Term finding (term construction, inhabitation)


```hs
Γ   ⊢   x  : A
----------------
Γ?  ⊢   x  : A?   typability         given   X  , find Γ and A
Γ   ⊢   x  : A?   type-assignment    given Γ X  , find type A
Γ   ⊢   x? : A    inhabitation       given Γ   A, find term X
∅   ⊢   x? : A    inhabitation₂      given ∅   A, find term X
Γ   ⊢?  x  : A    type-checking      given Γ X A, check validity
```


**Well-typedness** or **typability** tries to find out whether a term is legal:

    ? ⊢ term : ?

To be precise, the task is to find an appropriate *context* and *type* if the *term* is indeed legal; else to show where it goes wrong.

A variant of this is **type assignment**, where the context is given as well, so that only the type has to be found:

    context ⊢ term : ?

The task of **type checking** is to check that a certain term has a certain type (relative to a certain context), where context, term and type are given. 

    context ⊢? term : type

**Term finding**, aka **term construction** or **inhabitation** is about finding, given a context and a type, whether a term exists with that type, corresponding to that specific context:

    context ⊢ ? : type

A particular case of Term Finding occurs when context is empty:

    ∅ ⊢ ? : type

The existence of a term of type `σ` in the empty context turns out to be equivalent to the provability of `σ`.

*All these problems are decidable in λ→*, i.e. for each of these questions there is an algorithm that produces the answer.

However, in more advacned type systems, *term finding is undecidable* in many cases. That is to say, there is no general method (or algorithm) to find out whether a term of the desired type exists, and if so, what this term is.

## 2.7 Well-typedness in λ→

In general, different derivations exist for showing that a particular term is legal.

## 2.8 Type Checking in λ→

Type Checking, i.e. checking the validity of a full judgement.

## 2.9 Term Finding in λ→

Term Finding: find an appropriate term of a certain type, in a certain context.

A term which belongs to a certain type, is called its **inhabitant**.

We start with an empty context and explore the situation in which the type is an expression from logic: a *proposition*. Surprisingly, every inhabitant then codes a *proof* of this proposition, hence declaring it to be a 'true' one.

As logical expression, we take `A → B → A`. This proposition is a *tautology*, which is to say that it holds as a general fact in logic. In this simple case our intuition immediately delivers a 'proof' of this: assume that A holds and assume then that also B holds, then A, of course, still holds; hence we conclude: if A, then (if B then A).

To formalise this proof in λ→, we take `A → B → A` as a type and try to find an inhabitant in the empty context. The rule ABS produces a variable, a term  `x : A`. Applying ABS again, we get a term `y : B`. At this point the goal is to 'return' `x` since the final type is `A`, and `x` just has that right type.

    ⊢ λx : A . λy : B . x : A → B → A

We also express this derivation in words, considering propositions as types and inhabitants of propositions as proofs:
- assume that `x` is a proof of proposition A
- assume that `y` is a proof of proposition B
- then `x` is (still) a proof of A
- so the function mapping `y` to `x` sends a proof of B to a proof of A 
  i.e. `λy:B. x` proves the implication B → A
- consequently, `λx:A. λy:B. x` proves A → B → A

So we deal with an interpretation of proofs and logical expressions that works. This is called the *PAT-interpretation*, where PAT means both  *propositions-as-types* and *proofs-as-terms*.

When wishing to capture the derivation above, it suffices to store the final term `λx : A . λy : B . x` only, because the full derivation can easily be reconstructed from this term. It is a complete 'coding' of the proof, and even more than that: the term implicitly includes the proposition it proves, since this is its type, being computable by the decidability of Well-typedness.

## 2.10 General properties of λ→

(Definition 2.10.1)
>Domain (dom), subcontext (⊆), permutation, projection, `↾`
1. If `Γ ≡ x₁:σ₁, …, xₙ:σₙ` then the *domain* of Γ or dom(Γ) is list `(x₁,…,xₙ)`
2. Context `Γʹ` is a *subcontext* of context Γ, or `Γʹ ⊆ Γ`, if all declarations occurring in Γʹ also occur in Γ, in the same order.
3. Context `Γʹ` is a *permutation* of context Γ, if all declarations in Γʹ also occur in Γ, and vice versa.
4. If Γ is a context and `Φ` a set of variables, then the *projection* of Γ on Φ, or `Γ ↾ Φ`, is the subcontext Γʹ of Γ with `dom(Γʹ) = dom(Γ) ∩ Φ`.

An important property of λ→ is the following, concerning the free variables occurring in a judgement:

(Lemma 2.10.3)
>Free Variables Lemma: 
If `Γ ⊢ L : σ`, then `FV(L) ⊆ dom(Γ)`.

As a consequence of the lemma, each free variable `x` that occurs in `L` has a type, which is recorded in a declaration `x : σ` occurring in the context Γ. Therefore, in a judgement, there can be no confusion about the type of any variable whatsoever, since also bound variables get their type, namely upon introduction, behind the binding λ.

**The principle of structural induction**: an inductive definition describes how to construct the expressions. So, to prove a general property `P` for an arbitrary expression `E` we can proceed by:
- assuming that `P` holds for all expressions `Eʹ` used to construct `E` (the induction hypothesis)
- and then proving that `P` also holds for `E` itself

(Lemma 2.10.5)
>Thinning, Condensing, Permutation
1. Thinning: Let Γʹ and Γ″ be contexts such that `Γʹ ⊆ Γ″`. 
   If `Γʹ ⊢ M : σ`, then also `Γ″ ⊢ M : σ`.
2. Condensing: If `Γ ⊢ M : σ`, then also `Γ ↾ FV(M) ⊢ M : σ`.
3. Permutation: If `Γ ⊢ M : σ`, and Γʹ is a permutation of Γ, 
   then Γʹ is also a context and moreover, `Γʹ ⊢ M : σ`.

So we may add or remove irrelevant var:type entries to/from a context, without affecting derivability, as long as the relavant entries remain, which are exactly those obtained by `Γ ↾ FV(M)`, i.e. the free vars in M.

The Permutation Lemma tells us that it is not important how the context is ordered. This may be true, but sometimes it is convenient if the context is *ordered so that the last var shadows the prior with the same name*. One can also define a context as a set (and not as list). We prefer ordered contexts over unordered ones, because richer systems have dependent declarations and their order is important.

λ→ derivations are **syntax-directed**: for each judgement there is only one rule possible for establishing that judgement as a conclusion, so the syntax of the term is a distinguishing factor in the construction of judgements.

(Lemma 2.10.7)
>Generation Lemma
1. If `Γ ⊢ x : σ`, then `x : σ ∈ Γ`.
2. If `Γ ⊢ M N : τ`, then there is a type `σ` 
   such that `Γ ⊢ M : σ → τ` and `Γ ⊢ N : σ`.
3. If `Γ ⊢ λx:σ. M : ρ`, then there is `τ` 
   such that `Γ, x:σ ⊢ M : τ` and `ρ ≡ σ → τ`.

The following lemma expresses that all subterms of a well-behaving term are well-behaving as well.

(Lemma 2.10.8)
>Subterm Lemma. 
If `M` is legal, then every subterm of `M` is legal.

If there are `Γ₁` and `σ₁` such that `Γ₁ ⊢ M : σ₁`, and if `L` is a subterm of `M`, then there are `Γ₂` and `σ₂` such that `Γ₂ ⊢ L : σ₂`.

Given a context, a term may have at most one type. Therefore, the type, if it exists, is *unique*. This doesn't hold for systems with typing à la Curry.

(Lemma 2.10.9)
>Uniqueness of Types. 
If `Γ ⊢ M : σ` and `Γ ⊢ M : τ`, then `σ ≡ τ`.

(Theorem 2.10.10)
>Decidability of typability, type assignment, type checking and inhabitation. 
In STLC, the following problems are decidable:
- well-typedness
- type assignment
- type checking
- term finding

## 2.11 Reduction and substitution in λ→

In order to be able to treat substitution in λ→, we have to adjust the related definition, viz. Definition 1.6.1; the only change concerns part (3), the abstraction case, because we have to add a type to the bound variable:

Substitution in STLC:

1.      x[x:=N] ≡ N                   since x = x
1.      y[x:=N] ≡ y                      if x ≠ y

2.  (M N)[x:=N] ≡ (M[x:=N]) (N[x:=N])

3. (λy.B)[x:=A] ≡ λz.(B[y→z][x:=A])            Abs case of substitution in λ
   if `λz.B[y→z]` is an α-variant 
   of `λy.B` such that `z ∉ FV(A)`

3. (λy:σ.B)[x:=A] ≡ λz:σ.(B[y→z][x:=A])      Abs case of substitution in λ→
   if `λz:σ.B[y→z]` is an α-variant 
   of `λy:σ.B` such that `z ∉ FV(A)`


(Lemma 2.11.1)
>Substitution Lemma. 
Assume `Γʹ`, `x:σ`, `Γ″ ⊢ M : τ` and `Γʹ ⊢ N : σ`. Then `Γʹ,Γ″ ⊢ M[x:=N] : τ`.

This lemma says that if we substitute, in a legal term `M`, all occurrences of context variable `x` by a term `N` of the same type as `x`, then the result `M[x:=N]` keeps the same type as `M` had. This is intuitively understandable: in order to calculate the type of `M`, it does not matter whether we deal with `x`s or with `N`s at the same places in the expression, given that the types of `x` and `N` are the same.


We have defined β-reduction in an untyped setting, so we have to adjust it to the (pre-typed) terms of `Λᴛ`. This is straightforward: all we have to do is reconsider the Basis of one-step β-reduction (see Definition 1.8.1), since this contains a λ-abstraction over variable `x`, which now gets a type. All other things remain the same.

(Definition 2.11.2)
>One-step β-reduction, `⟶ᵦ`, for `Λᴛ`.
1. Basis: `(λx:σ.M)N ⟶ᵦ M[x:=N]`
2. Compatibility: as in Definition 1.8.1.

Of course, in the third compatibility rule of Definition 1.8.1, we now have to read `λx:τ.M ⟶ᵦ λx:τ.N` instead of `λx.M ⟶ᵦ λx.N`.



(...)




(Theorem 2.11.3)
>Church-Rosser Theorem, Confluence. 
The Church-Rosser property also holds for λ→.


(Corollary 2.11.4) 
Suppose that `M =ᵦ= N`. Then there is `L` such that `M ->>ᵦ L` and `N ->>ᵦ L`.


An important lemma about β-reduction in λ→ is the following:

(Lemma 2.11.5)
>Subject Reduction. 
If `Γ ⊢ L : ρ` and if `L β Lʹ`, then `Γ ⊢ Lʹ : ρ`

The lemma states that β-reduction does not affect typability. And even more: β-reduction of a term does not change the type of that term (and the same context will do).


Finally, one can prove that there are no infinite reduction sequences in λ→, or *every calculation is finite*.

(Theorem 2.11.6) Strong Normalisation Theorem or Termination Theorem. 
Every legal `M` is **strongly normalising**.

Strong normalisation (or termination) always guarantees an outcome, whatever reduction path we choose. This of course is relevant for calculations, but also for programming: programs which do not end are undesirable. Bit, termination cannot be guaranteed and is, in fact, unavoidable: every programming language of sufficient power has non-terminating programs. On the other hand, one should not overestimate strong normalisability. Indeed, it guarantees termination within a finite amount of time, but this may nevertheless require waiting a long time. And since there is no upper bound on finiteness one doesn't know beforehand how long this waiting will take.

## 2.12 Consequences

All the negative aspects of untyped λ-calculus have disappeared:
- Self-application in λ→ is not possible
- Existence of β-normal forms is guaranteed
- Not every legal λ-term has a fixed point


>Not every legal λ-term has a fixed point.

First note that the proof of Theorem 1.10.1 no longer works in λ→: the term `M ≡ (λx.L(xx))(λx.L(xx))` which is introduced in that proof makes heavy
use of self-application (the term itself is of the form NN, and there are also
two subterms `xx`). But this is not enough to conclude that there are legal terms in Λᴛ without a fixed point. So, let's give an example to show this.

Take two different types, `σ` and `τ`, and consider some legal function `F` of
type `σ → τ`, in some context Γ, so `Γ ⊢ F : σ → τ`. Now this F cannot have a
fixed point within the system λ→, which we show now.

Assume that `F M =ᵦ= M`, where `F M` and `M` are legal. Then M must have type `σ` (by legality of F M, Uniqueness of Types and Generation Lemma).

Hence, by the APP rule, `F M` has type `τ`. 

By Corollary 2.11.4, there must be `N` such that `F M ->>ᵦ N` and `M ->>ᵦ N`, and by Subject Reduction (twice) we obtain both `Γ ⊢ N : τ` and `Γ ⊢ N : σ`. 

This contradicts Uniqueness of Types.


## 2.13 Conclusions

We have added simple types to lambda calculus but these types *don't have much structure*: starting from type variables, the only way to construct other types is by repeatedly writing the binary symbol `→` between types. By their simplicity, they do not contain much "information" about the terms.

The derivation system for Church's λ→ reflects the structure of λ-terms in that it has one rule for variables, one for applications and one for abstractions. Thus it is very concise and to the point. It also conforms neatly to intuition. We gave examples of derivations, which demonstrated the smooth behaviour of the system-in-action.

The system λ→ satisfies many nice and desirable properties, in particular concerning β-reduction. These properties also cause the drawbacks encountered in untyped lambda calculus to be eliminated. In other words, there is no more self-application, there are no infinite reduction sequences and we no longer have fixed points for every function.

And there is more: the positive points of untyped lambda calculus extend to the simply typed version of lambda calculus.

There is only one important drawback, which we mention here without a proof: the system λ→ is much too weak to encapsulate all computable functions and is hence not useable for the formalisation of mathematics. Therefore, we have to extend λ→ to more powerful systems of typed lambda calculus. Important to note is that these extensions will be without harm: the undesired aspects of untyped lambda calculus will stay away.

## 2.14 Further reading

For functional programming languages, the system `a la Curry, with implicit types, is relevant.

>For the Curry system, the type of a term is not unique.

J.R. Hindley, H.B. Curry, and R. Milner have independently developed the **principal type algorithm**, that, given a closed untyped term M, computes a type `σ` of `M` (if M is typable) or fails if M is not typable in simple type theory à la Curry.

Moreover, the computed type `σ` is 'minimal' in the sense that all possible types for M are substitution instances of `σ`. Such a type is called a **principal type**.

A more modern exposition of this algorithm is given by M. Wand where a type checking problem is reduced to a *unification problem* over type expressions, and then the *most general unifier* (mgu) of J.A. Robinson's *unification algorithm* yields the principal type.

On *Church typed numerals*, one can then define addition and multiplication, but that is about it: the class of functions definable on the Church numerals in simple type theory is the class of *generalised polynomials*.

The limited expressivity of simple type theory can be overcome *by extending the system with a fixpoint combinator*. This has been done in the system `PCF`. Plotkin added the rule that for every type `σ`, a constant `Yσ : (σ → σ) → σ` is added, satisfying the reduction rule `Yσ f → f (Yσ f)`. This renders the system Turing-complete and therefore it has been studied as the theoretical basis of FPLs. It is also a good basis to study various evaluation strategies that are known from functional programming, for example call-by-value and call-by-name.


## 2.15 Exercises

### 2.1 Find types (if possible)

(a) `x x y`, ✘ (self-app)

(b) `x y y` ✔
  (x y) y ≡⟩ ((x: a -> a -> a) y: a ) y: a
  (x y) y ≡⟩ ((x: (a -> a) -> (a -> a) -> a) (y: a -> a)) (y: a -> a)

(c) `x y x` ✘ (self-app)

  x y x
  = (x y) x
  = ((x: a -> b -> c) (y: ?)) (x: ?)
  = ((x: a -> b -> c) (y: a)) (x: b) ✘

(d) `x(x y)` ✔

  x(x y)
  = (x: ?)((x: ?) (y: ?))
  = (x: ?)((x: a -> a) (y: ?))
  = (x: a -> a)((x: a -> a) (y: a))

(e) `x(y x)` ✘

  x(y x)
  = (x: ?)((y: a -> a) (x: ?))
  = (x: a)((y: a -> a) (x: a)) ... ✘
  = (x: a)(y x: a) ... (app doesn't make sense)
