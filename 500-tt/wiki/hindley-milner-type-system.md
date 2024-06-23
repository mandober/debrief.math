# Hindley-Milner type system

https://en.wikipedia.org/wiki/Hindley-Milner_type_system

A Hindley-Milner (HM) type system is a classical type system for the lambda calculus with parametric polymorphism. It is also known as Damas-Milner or Damas-Hindley-Milner. It was first described by J. Roger Hindley[1] and later rediscovered by Robin Milner.[2] Luis Damas contributed a close formal analysis and proof of the method in his PhD thesis.[3][4]

Among HM's more notable properties are its completeness and its ability to infer the most general type of a given program without programmer-supplied type annotations or other hints. Algorithm W is an efficient type inference method in practice and has been successfully applied on large code bases, although it has a high theoretical complexity.[note 1] HM is preferably used for functional languages. It was first implemented as part of the type system of the programming language ML. Since then, HM has been extended in various ways, most notably with type class constraints like those in Haskell.

## Contents

- 1. Introduction
  - 1.1. Monomorphism vs. polymorphism
  - 1.2. Let-polymorphism
- 2. Overview
- 3. The Hindley-Milner type system
  - 3.1. Syntax
    - 3.1.1. Monotypes
    - 3.1.2. Polytypes
    - 3.1.3. Context and typing
    - 3.1.4. Free type variables
  - 3.2. Type order
    - 3.2.1. Principal type
    - 3.2.2. Substitution in typings
  - 3.3. Deductive system
    - 3.3.1. Typing rules
  - 3.4. Let-polymorphism
  - 3.5. Generalization rule
- 4. An inference algorithm
  - 4.1. Degrees of freedom choosing the rules
  - 4.2. Syntax-directed rule system
  - 4.3. Degrees of freedom instantiating the rules
  - 4.4. Algorithm J
- 5. Proving the algorithm
  - 5.1. Algorithm W
  - 5.2. Proof obligations
- 6. Extensions
  - 6.1. Recursive definitions
    - 6.1.1. Typing rule
    - 6.1.2. Consequences
  - 6.2. Overloading
  - 6.3. Higher-order types
  - 6.4. Subtyping
- 7. Notes
- 8. References
- 9. External links

## 1. Introduction

As a type inference method, Hindley-Milner is able to deduce the types of variables, expressions and functions from programs written in an entirely untyped style.

Being *scope sensitive*, it is not limited to deriving the types only from a small portion of source code, but rather from complete programs or modules.

Being able to cope with *parametric types* too, it is core to the type systems of many functional programming languages. It was first applied in this manner in the programming language ML.

The origin is the type inference algorithm for the simply typed lambda calculus that was devised by Haskell Curry and Robert Feys in 1958.

In 1969, J. Roger Hindley extended this work and proved that their algorithm always inferred the most general type. In 1978, Robin Milner,[5] independently of Hindley's work, provided an equivalent algorithm, *Algorithm W*. In 1982, Luis Damas[4] finally proved that Milner's algorithm is complete and extended it to support systems with polymorphic references.

### 1.1. Monomorphism vs. polymorphism

In the simply typed lambda calculus, types `T` are either *atomic type constants* or *function types* of form `T → T`. Such types are *monomorphic*.

Typical examples are the types used in arithmetic values:

    3       : Number
    add 3 4 : Number
    add     : Number -> Number -> Number

Contrary to this, the untyped lambda calculus is neutral to typing at all, and many of its functions can be meaningfully applied to all type of arguments. The trivial example is the identity function

id := λx.x

which simply returns whatever value it is applied to. Less trivial examples include parametric types like lists.

While *polymorphism* in general means that operations accept values of more than one type, the polymorphism used here is *parametric*.

One finds the notation of *type schemes* in the literature too, emphasizing the parametric nature of the polymorphism. Additionally, constants may be typed with (quantified) type variables; e.g.

    cons : ∀ a . a -> List a -> List a
    nil  : ∀ a . List a
    id   : ∀ a . a -> a

Polymorphic types can become monomorphic by consistent *substitution* of their variables. Examples of monomorphic instances are:

    id'  : String -> String
    nil' : List Number

>More generally, types are polymorphic when they contain type variables, while types without them are monomorphic.

Contrary to the type systems used for example in Pascal (1970) or C (1972), which only support monomorphic types, HM is designed with emphasis on parametric polymorphism. 

The successors of these languages, like C++ (1985), focused on different types of polymorphism, namely *subtyping* in connection with OOP and *overloading*.

While subtyping is incompatible with HM, a variant of systematic overloading is available in the HM-based type system of Haskell.

### 1.2. Let-polymorphism

When extending the type inference for the simply-typed lambda calculus towards polymorphism, one has to define when deriving an instance of a value is admissible. Ideally, this would be allowed with any use of a bound variable, as in:

    (λ id .  ... (id 3) ... (id "text") ... ) (λ x . x)

Unfortunately, type inference in polymorphic lambda calculus is not decidable.[6] Instead, HM provides a let-polymorphism of the form

    let id = λ x . x
      in ... (id 3) ... (id "text") ...

restricting the binding mechanism in an extension of the expression syntax.

Only values bound in a let construct are subject to *instantiation*, i.e. are polymorphic, while the parameters in lambda abstractions are treated as being monomorphic.

## 2. Overview

The remainder of this article proceeds as follows:

- The HM type system is defined. This is done by describing a deduction system that makes precise what expressions have what type, if any.
- From there, it works towards an implementation of the type inference method. After introducing a *syntax-driven* variant of the above deductive system, it sketches an efficient implementation (algorithm J), appealing mostly to the reader's metalogical intuition.
- Because it remains open whether *algorithm J* indeed realizes the initial deduction system, a less efficient implementation, *algorithm W*, is introduced and its use in a proof is hinted.
- Finally, further topics related to the algorithm are discussed.

The same description of the deduction system is used throughout, even for the two algorithms, to make the various forms in which the HM method is presented directly comparable.

## 3. The Hindley-Milner type system

```hs
Expressions:
  e := x                      -- variable
     | e₁ e₂                  -- application
     | λx.e                   -- abstraction
     | let x = e₁ in e₂       -- let-expression

Monotypes:
  τ := α                      -- type variable
     | C τ₁ … τₙ              -- type constructor

Polytypes:
  σ := τ                      -- monotypes
     | ∀ α . σ                -- type scheme

Context:
  Γ := ε                      -- empty
     | Γ, x : σ               -- context extended with a new binding

Typing:
    := Γ ⊢ x : σ              -- typing judgement

Free Type Vars:
  FV(α)         = {α}
  FV(C τ₁ … τₙ)  = FV(τ₁) ∪ … ∪ FV(τₙ)
  FV(Γ, x : σ)  = FV(σ)
  FV(∀ α . σ)   = FV(σ) ∖ {α}
  FV(Γ ⊢ e : σ) = FV(σ) ∖ {Γ}

Specialization Rule:

  τ′ = {αᵢ ↦ τᵢ}τ       βᵢ ∉ free(∀ α₁ … αₙ . τ)
  --------------------------------------------- Gen
  ∀ α₁ … αₘ . τ  ⊑  ∀ β₁ … βₘ . τ′


Syntax of Rules:

  Predicate  = σ ⊑ σʹ
             | α ∉ FV(Γ)
             | x : α ∈ Γ

  Judgment   = Typing

  Premise    = Judgment | Predicate

  Conclusion = Judgment

               Premise …
  Rule       = ---------- [Name]
               Conclusion

```

The type system can be formally described by *syntax rules* that fix a language for the expressions, types, etc.

The presentation here of such a syntax is not too formal, in that it is written down not to study the *surface grammar*, but rather the *depth grammar*, and leaves some syntactical details open. This form of presentation is usual.

Building on this, *typing rules* are used to define how expressions and types are related.

## 3.1. Syntax

The expressions to be typed are exactly those of the lambda calculus extended with a let-expression.

- Parentheses can be used to disambiguate an expression.
- application is left-binding
- application binds stronger than abstraction or the let construct
- Types are syntactically split into two groups: monotypes and polytypes

```hs
Expressions
  e := x                        -- variable
     | e₁ e₂                    -- application
     | λx.e                     -- abstraction
     | let x = e₁ in e₂         -- let-expression

  -- comactly:
  e := x | e1 e2 | λx.e | let x = e1 in e2
```

### 3.1.1. Monotypes

>Monotypes always designate a particular type.

Monotypes `τ` are syntactically represented as terms.

Monotypes include
- type constants (bool, int, string)
- parametric types (Map string int, int → bool)

Parametric types are applications of *type functions*, aka *type constructors*.

An example set of monotypes `{ (→)², Map², Set¹, bool⁰, string⁰, int⁰ }`, where the superscript indicates the arity of a *type ctor*. Constant types may be considered nullary type ctors.

[note3]: Parametric types, `C τ₁ … τₙ`, were not present in the original paper on HM and are not needed to present the method. None of the inference rules below will take care or even note them. The same holds for the non-parametric "primitive types" in said paper. All the machinery for polymorphic type inference can be defined without them. They have been included here for sake of examples but also because the nature of HM is all about parametric types. This comes from the function type `τ → τ` being hard-wired in the inference rules, which already has two parameters and has been presented here only as a special case.

The complete set of type functions, `C`, is arbitrary in HM,[note3] except that it must contain at least `(→)²`, the type of functions, which is often written in infix notation for convenience (e.g. `int → bool` instead of `(→) int bool`).

- parentheses can be used to disambiguate a type expression.
- application binds to the left
- infix arrow binds to the right
- application binds stronger than the infix arrow

Type variables (α) are also considered monotypes.

>Monotypes are not to be confused with *monomorphic types*, which exclude variables and allow only *ground terms*.

Two monotypes are equal if they have identical terms.

```hs
Types

monotypes
  τ := α              -- type variable
     | C τ₁ … τₙ      -- type constructor

polytypes
  σ := τ              -- monotypes
     | ∀ α . σ        -- type scheme
```

Monotypes are counted as polytypes.

A type scheme, `∀α.σ` is a quantified type. For example, `∀α. α → α`, where the type variable `α` is universally quantified. Quantification may contain more than one type variable, e.g. `∀ α β. α → β → α`.

### 3.1.2. Polytypes

Polytypes (or type schemes) are types containing variables bound by zero or more universal (forall) quantifiers, e.g. `∀α.α → α`.

A function with polytype `∀α.α → α` can map any value of the same type to itself, and the identity function is a value for this type.

As another example, `∀α.(Set α) → int` is the type of a function that maps all finite sets to integers. A function which returns the cardinality of a set would be a value of this type.

>Quantifiers can only appear top level.

For instance, a type `∀α.α → ∀α.α` is excluded by the syntax of types.

Monotypes are included in the polytypes, thus the general form of a type is

    ∀ α₁ … αₙ . τ

where `τ` is a monotype and n ≥ 0.

>*Equality of polytypes* is up to reordering the quantification and renaming the quantified variables (α-conversion).

Further, quantified variables not occurring in the monotype can be dropped, e.g. `∀ α β. α → α` is equivalent to `∀ α. α → α`.

### 3.1.3. Context and typing

To meaningfully bring together the still disjoint parts (syntax expressions and types) a third part is needed: context. Syntactically, a context is a list of pairs `x : σ`, called type assignments (bindings, assumptions), where each pair in the list states that a term variable `xᵢ` has type `σᵢ`.

All three parts combined give a *typing judgment* of the form `Γ ⊢ e : σ`, stating that under assumptions `Γ`, the expression `e` indeed has the type `σ`.

```hs
Context
  Γ := ε                -- empty
     | Γ, x : σ         -- context extended with a new binding

Typing := Γ ⊢ x : σ
```

### 3.1.4. Free type variables

In a type `∀ α₁ … αₙ . τ`, the symbol `∀` is the universal quantifier that *binds type variables* `αᵢ` in the monotype `τ`.

The type variables `αᵢ` are said to be quantified, and any occurrence of a quantified type variable in `τ` is called *bound*, and all unbound type variables in `τ` are called *free*.

Additionally to being bound by the ∀ quantifier in polytypes, type variables can also be *bound by occurring in the context*, but with the inverse effect on the rhs of the typing judgement (⊢): such variables behave like type constants there.

>Finally, a type variable may legally occur unbound in a typing, in which case they are implicitly universally quantified.

The presence of both bound and unbound type variables is a bit uncommon in PLs. Often, all type variables are implicitly treated as forall-quantified. For instance, one does not have clauses with free variables in Prolog. Likewise in Haskell, where all type variables implicitly occur quantified, i.e. a Haskell type `a -> a` really means `forall a. a -> a` (although Haskell provides the 'ScopedTypeVariables' language extension that allows bringing forall-quantified type variables into scope).

Related (and also very uncommon) in PLs, is the binding effect of the rhs `σ` of the assignments.

Typically, the mixture of both bound and unbound type variables originate from the use of free variables in an expression. The constant function `K:=λx.λy.x` provides an example. It has the monotype `α → β → α`. One can force polymorphism by

```hs
let k = λx. (let f = λy.x
             in  f)
in  k
```

Herein, the nested `f` has the type `∀γ. γ → α`, corresponding to the type of the nested lambda abstraction `λy.x`. 

The *free monotype variable* `α` originates from the type of the variable `x` bound in the surrounding scope.

The exp `k` has the type `∀ α β . α → β → α`. 

One could imagine the free type variable `α` in the type of `f` to be bound by the `∀α` binder in the type of the enclosing exp `k`.

>However such scoping cannot be expressed in HM. Rather, the binding is realized by the context.

Closures demand evaluation that uses an environemnt model, not substitution model.

```hs
Free TypeVars

  FV(α)         = {α}
  FV(C τ₁ … τₙ)  = FV(τ₁) ∪ … ∪ FV(τₙ)
  FV(Γ, x : σ)  = FV(σ)
  FV(∀ α . σ)   = FV(σ) ∖ {α}
  FV(Γ ⊢ e : σ) = FV(σ) ∖ {Γ}
```

## 3.2. Type order

https://en.wikipedia.org/wiki/Unification_(computer_science)#Substitution

Polymorphism means that one and the same expression can have (perhaps infinitely) many types. But in HM type system, these types are not completely unrelated, but rather orchestrated by the *parametric polymorphism*.

As an example, the identity `λx.x` can have `∀α.α → α` as its type as well as `string → string` or `int → int` and many others, but not `int → string`.

The most general type for the id function is `∀α.α → α`, while the others are more specific and can be derived from the general one by consistently replacing another type for the type parameter, i.e. the quantified variable `α`. The counter-example fails because the replacement would not be consistent.

The *consistent replacement* can be made formal by applying a *substitution* 
`S = { aᵢ ↦ τᵢ, … }` to the term of a type `τ`, written `S τ` or `S(τ)`.

As the example suggests, substitution is not only strongly related to a *type order* that expresses that a type is *more or less special*, but also to the quantification which allows the substitution to be applied.

       more-general ⊑ less-general

                 σ′ ⊑ σ

      less-specific ⊑ more-specific


In HM, a type `σ′` is *more general* than `σ`, denoted `σ′ ⊑ σ`, if some quantified variable in `σ′` is consistently substituted such that one gains `σ`. This order is part of the type definition of the HM type system.

In the previous example, applying the substitution `S = {α ↦ string}` would result in `(∀α. α → α) ⊑ (string → string)`.

While substituting a monomorphic (ground) type for a quantified variable is straightforward, substituting a polytype has some pitfalls caused by the presence of free variables.

Most particularly, *unbound variables must not be replaced* - they are treated as constants here. Additionally, quantifications can only occur top-level. Substituting a parametric type, one has to *lift its quantifiers*.

```hs
Specialization Rule

τ′ = {αᵢ ↦ τᵢ}τ       βᵢ ∉ free(∀ α₁ … αₙ . τ)
---------------------------------------------- Gen
∀ α₁ … αₘ . τ  ⊑  ∀ β₁ … βₘ . τ′
```


Alternatively, consider an equivalent notation for the polytypes without quantifiers in which quantified variables are represented by a different set of symbols. In such a notation, the specialization reduces to plain consistent replacement of such variables.

The relation `⊑` is a partial order and `∀α.α` is its smallest element.

The relation `⊑` is partial order:
- reflexive,     `α ⊑ α`
- antisymmetric (`α ⊑ β` ∧ `β ⊑ α`) ⇒ `a ≡ β`
- transitive,   (`α ⊑ β` ∧ `β ⊑ γ`) ⇒ `α ⊑ γ`


### 3.2.1. Principal type

While specialization of a type scheme is one use of the order, it plays a crucial second role in the type system.

Type inference with polymorphism faces the challenge of summarizing all possible types an expression may have. The order guarantees that such a summary exists as the *most general type* of the expression.

### 3.2.2. Substitution in typings

The type order defined above can be extended to typings because the implied all-quantification of typings enables consistent replacement:

`Γ ⊢ e : σ` ⟹ `S(Γ) ⊢ e : S(σ)`

Contrary to the specialisation rule, this is not part of the definition, but like the implicit all-quantification rather a consequence of the type rules defined next. 

Free type variables in a typing serve as placeholders for possible refinement. The binding effect of the environment to free type variables on the rhs of (⊢) that prohibits their substitution in the specialisation rule is again that a replacement has to be consistent and would need to include the whole typing.

This article will discuss 4 different rule sets:
- `⊢ᴅ`   declarative system
- `⊢ꜱ`   syntactical system
- `⊢ᴊ`   algorithm J
- `⊢ᴡ`   algorithm W

## 3.3. Deductive system

The syntax of HM is carried forward to the syntax of the inference rules that form the body of the formal system, by using the *typings as judgments*.

Each of the rules define what *conclusion* could be drawn from what *premises*. Additionally to the judgments, some extra conditions introduced above might be used as premises, too.

A *proof* using the rules is a sequence of judgments such that all premises are listed before a conclusion.

```hs
Syntax of Rules

Predicate  = σ ⊑ σʹ
           | α ∉ FV(Γ)
           | x : α ∈ Γ

Judgment   = Typing

Premise    = Judgment | Predicate

Conclusion = Judgment

               Premise …
Rule       = ------------- [Name]
              Conclusion
```

The examples below show a possible format of proofs. From left to right, each line shows the conclusion, the name of the rule applied and the premises, either by referring to an earlier line if the premise is a judgment or by making the predicate explicit.

### 3.3.1. Typing rules



## 3.4. Let-polymorphism



## 3.5. Generalization rule
