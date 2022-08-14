# The Hindley-Milner type system

<!-- TOC -->

- [Syntax](#syntax)
[Expressions](#terms)
  - [Types](#types)
    - [Monotypes](#monotypes)
    - [Polytypes](#polytypes)
- [Context and Typing](#context-and-typing)
- [Free type variables](#free-type-variables)
- [Type order](#type-order)
- [Principal type](#principal-type)
- [Substitution in typings](#substitution-in-typings)
- [Deductive system](#deductive-system)
- [The Syntax of Rules](#the-syntax-of-rules)
- [Declarative Rule System](#declarative-rule-system)

<!-- /TOC -->

After defining the HM type system by describing a syntax-driven deduction system that makes precise what expressions have what type (if any), we consider an implementation of the type inference method called algorithm `J`. Because it remains open whether algorithm `J` indeed realises the initial deduction system, a less efficient implementation, called algorithm `W`, is introduced.

A type system may be formally described by syntax rules that fix a language for expressions, types, etc. From that, type rules dicate how expressions and types are related.

## Syntax

The syntax has two levels: *term-level* and *type-level*.

- term-level:
  - (term) expression
  - (term) variable
  - (term) parameter
  - (term) argument
  - (term) value
  - (term) constant
  - (term) literal
  - (term) function
  - ground term
  - (term) λ-abstraction, `λ`
  - (term) λ-application
  - let-binding

- type-level:
  - type expression
  - type variable
  - type parameter
  - type argument
  - type value
  - type constant
  - type function
  - ground type
  - type abstraction `Λ`
  - type application
  - type constructor

  - monomorphic type
  - polymorphic type
  - monotype
  - polytype
  - type schema

  - parametric type
  - non-parametric types
  - primitive types
  - non-parametric primitive types
  - polytypism (genericity)



### Terms

The terms to be typed are exactly those of the λ-calculus: variables, λ-application, λ-abstraction, extended with let-expressions.

Parentheses are used for disambiguition. Application is left-associative (left-binding) and binds stronger than both abstraction and `let-in` expression.

```js bnf
terms:
  e := x                      variable
     | e₁ e₂                  application
     | λ x . e                abstraction
     | let x = e₁ in e₂       let-binding
```

### Types

Types are syntactically split into two groups: **monotypes** and **polytypes**. Polytypes are either monotypes or *type schemas* (quantified types).

```js bnf
monotypes:
  τ := α                     type variable
     | C τ … τ               type application
     | τ -> τ                type abstraction

polytypes:
  σ := τ
     | forall α. σ            type schema
```


#### Monotypes

- monotypes always designate a particular concrete type
- monotypes `τ` are syntactically represented as terms

Monotypes include
- *type constants*:   `Int` or `String`      (base types)
- *parametric types*: `Map (Set String) Int` (type ctors, type functions)

The last one is an example of *applications of type functions*, e.g. from the set `{ Map², Set¹, String⁰, Int⁰, ->² }`, where the superscript indicates the arity. There are two (named) type functions in this example: the `Map` type ctor and the `Set` type ctor; `Map` is a binary type fucntion (expects 2 type args), and `Set` is a unary type function.

The complete set of type functions `C` is arbitrary in HM,[note.3] except that it must contain at least `->²`, the type of functions (function type ctor is 2-ary). For example, a function mapping integers to strings has type `Int -> String` (often as infix). Again, parentheses can be used to disambiguate a type expression. The application binds stronger than the infix arrow, which is right-binding.

[note.3] The parametric types, `C τ … τ`, were not present in the original paper on HM and are not needed to present the method. None of the inference rules below will take care or even note them. The same holds for the non-parametric "primitive types" in said paper. All the machinery for polymorphic type inference can be defined without them. They have been included here for sake of examples but also because the nature of HM is all about parametric types. This comes from the function type `τ -> τ`, hard-wired in the inference rules, below, which already has two parameters and has been presented here as only a special case.

* Type variables are admitted as monotypes.

* Monotypes are not to be confused with *monomorphic types*, which exclude type variables and allow only *ground terms*.

* Two monotypes are equal if they have identical terms.


#### Polytypes

Polytypes (or type schemes) are types containing variables bound by zero or more universal (forall) quantifiers, e.g. `∀α. α -> α`.

A function with polytype `∀α. α -> α` can map any value (of any type) to itself; the identity function, `λx.x`, is a value for this type; And due to parametricity, it is the only sensible value of this type.

```hs
id :: forall a. a -> a
id a = a

length :: forall a. [a] -> Int
length []     = 0
length (x:xs) = 1 + length xs
```


```js λ→
λx. x : ∀α. α -> α

λs. LEN s : ∀α. Set α -> Int
```

As another example, `∀α. (Set α) -> Int` is the type of a function mapping all finite sets to integers. A function which returns the cardinality of a set would be a value of this type.

Quantifiers can only appear top level. For instance, a type `∀α. α -> ∀α. α` is excluded by the syntax of types.

Also, monotypes are included in the polytypes, thus a type has the general form `∀α₁ … ∀αₙ . τ` , where `n >= 0` and `τ` is a monotype.

Equality of polytypes is up to reordering the quantification and renaming the quantified variables (α-equivalence). Further, quantified variables not occurring in the monotype can be dropped.


## Context and Typing

```
Value Context    Γ := ϵ
                    | Γ, x : σ
Typing context     := Γ |- e : σ
```

To meaningfully bring together the still disjoint parts (syntax expressions and types) a third part is needed: *context*. Syntactically, a context is a list of pairs `x : σ`, called assignments, assumptions or bindings, each pair stating that value variable `xᵢ` has type `σᵢ`. All three parts combined give a typing judgment of the form `Γ |- e : σ`, stating that under assumptions `Γ`, the expression `e` has type `σ`.

## Free type variables

```
free(α)         = {α}
free(C τ₁ … τₙ) = ⋃ [i=1..n] free(τᵢ)
free(Γ)        = ⋃ [x:σ ∈ Γ] free(σ)

free(∀α.σ)      = free(σ) - {α}
fee(Γ |- e : σ) = free(σ) - free(Γ)
```

* In a type `∀α₁ … ∀αₙ . τ` the symbol `∀` is the quantifier binding the type variables `αᵢ` in the monotype `τ`. The variables `αᵢ` are called quantified and any occurrence of a quantified type variable in `τ` is called *bound* and all unbound type variables in `τ` are called *free*.

* In addition to the quantification `∀` in polytypes, type variables can also be bound by occurring in the context, but with the inverse effect on the right hand side of the `⊢`. Such variables then behave like type constants there.

* Finally, a type variable may legally occur unbound in a typing, in which case they are implicitly universally quantified.

The presence of both bound and unbound type variables is a bit uncommon in PLs. Often, all type variables are implicitly treated as forall quantified. For instance, one does not have clauses with free variables in Prolog. Likewise in Haskell (Haskell provides the `ScopedTypeVariables` language extension allowing to bring all-quantified type variables into scope), where all type variables implicitly occur quantified, i.e. a Haskell type `a -> a` means `∀a. a -> a` aka `∀α. α -> α` here. Related and also very uncommon is the binding effect of the right hand side `σ` of the assignments.

Typically, the mixture of both bound and unbound type variables originate from the use of free variables in an expression. The constant function (maker) `K := λx.λy.x` is one example of this because it has the monotype `α -> β -> α`. Regarding HM restrictions, one can force the (let) polymorphism using a let binding such as `let k = λx. (let f = λy.x in f) in k`; it is in this subexpression that we see that a variable `f` can obtain the type such as `∀γ. γ -> α`, i.e. a type with a free variable, `α`. This free monotype variable `α` originates from the type of the variable `x` bound in the surrounding scope. But the variable `k` that binds the overall expression has the type `∀α∀β. α -> β -> α`. One could assume that the free type variable `α` in the type of `f` was bound by the `∀α` in the outer scope, i.e. in the type of `k`. But such a nested scoping cannot be expressed in HM; instead, the binding is realized by the context.

```hs
k :: a -> b -> a
k = λx. λy. x

let k = λx. (let f = λy. x in f) in k
y :: b
x :: a
f :: ∀b. b -> a
k :: ∀a ∀b. a -> b -> a
```

## Type order

Polymorphism means that one and the same expression can have (perhaps infinitely) many types.

However, in HM type system, all these types are not completely unrelated, but rather orchestrated by the parametric polymorphism.

For example, the identity function `λx.x` can have `∀α. α -> α` as its type, as well as `Int -> Int` and `String -> String` and many others; but not (Int -> String). The most general type for this function is `∀α. α -> α` while the others are more specific and can be derived from the general one by consistently replacing another type for the type parameter, i.e. the quantified variable `α`. The counter-example (Int -> String) fails because the replacement is not consistent.

The consistent replacement can be made formal by applying a substitution
`S = { aᵢ ⟼ τᵢ, … }` to the term of a type `τ`, denoted by `Sτ`. As the example suggests, substitution is not only strongly related to an order, that expresses that a type is more or less special, but also with the all-quantification which allows the substitution to be applied.

Formally, in HM, a type `σ'` is more general than `σ`, formally `σ' ⊑ σ`, if some quantified variable in `σ'` is consistently substituted such that one gains `σ` as shown below. This order is part of the type definition of the type system.

* Specialization rule

```
τ' = { αᵢ ⟼ τᵢ } τ     βᵢ ∉ free(∀α₁ … ∀αₙ . τ)
-------------------------------------------------
        ∀α₁ … ∀αₙ . τ ⊑ ∀β₁ … ∀βₘ . τ'
```

In our previous example, applying the substitution `S = { α ⟼ String }` would result in `∀α. α -> α  ⊑  String -> String`.

While substituting a monomorphic (ground) type for a quantified variable is straight forward, substituting a polytype has some pitfalls caused by the presence of free variables. Most particularly, unbound variables must not be replaced (captured); they are treated as constants here. Additionally, quantifications can only occur top-level. Substituting a parametric type, one has to lift its quantifiers (the legend table makes the rule precise).

Alternatively, consider an equivalent notation for the polytypes without quantifiers in which quantified variables are represented by a different set of symbols. In such a notation, the specialization reduces to plain consistent replacement of such variables.

The relation `⊑` is a partial order, and `∀α. α` is its smallest element.

## Principal type

While specialization of a type scheme is one use of the partial order, the partial order plays a crucial second role in the type system. Type inference with polymorphism faces the challenge of summarizing all possible types an expression may have. The order guarantees that such a summary exists as the most general type of the expression.

## Substitution in typings

The type order defined above can be extended to typings because the implied all-quantification of typings enables consistent replacement:

`Γ |- e : σ ===> SΓ |- e : Sσ`

Contrary to the specialisation rule, this is not part of the definition, but like the implicit all-quantification rather a consequence of the type rules.

Free type variables in a typing serve as placeholders for possible refinement. The binding effect of the environment to free type variables on the right hand side of `|-` that prohibits their substitution in the specialisation rule is again that a replacement has to be consistent and would need to include the whole typing.

This article will discuss 4 different rule sets:
1. |-ᴅ    declarative system
2. |-s    syntactical system
3. |-ᴊ    algorithm J
4. |-ᴡ    algorithm W


## Deductive system

The syntax of HM is carried forward to the syntax of the inference rules that form the body of the formal system, by using the typings as judgments. Each of the rules define what conclusion could be drawn from what premises. Additionally to the judgments, some extra conditions introduced above might be used as premises, too.

A proof using the rules is a sequence of judgments such that all premises are listed before a conclusion. The examples below show a possible format of proofs. From left to right, each line shows the conclusion, the `[Name]` of the rule applied and the premises, either by referring to an earlier line number if the premise is a judgment, or by making the predicate explicit.

## The Syntax of Rules

```
Predicate  := σ ⊑ σ'
            | α ∉ free(Γ)
            | x : α ∈ Γ

Judgement  := Typing
Premise    := Judgement | Predicate
Conclusion := Judgement

              Premise …
Rule       := ----------- [Name]
              Conclusion
```











## Declarative Rule System

```
x : σ ∈ Γ
----------- [Var]
Γ |- x : σ

Γ |- e₀ : τ -> τ'    Γ |- e₁ : τ
-------------------------------- [App]
Γ |- e₀ e₁ : τ'

Γ, x : τ |- e : τ'
----------------------- [Abs]
Γ |- λ x . e : τ -> τ'

Γ, x : σ |- e₁ : τ    Γ |- e₀ : σ
---------------------------------- [Let]
Γ |- let x = e₀ in e₁ : τ

Γ |- e₀ : σ'    σ' ⊑ σ
----------------------- [Inst]
Γ |- e₀ : σ

Γ |- e : σ    α ∉ Free (Γ)
--------------------------- [Gen]
Γ |- e : ∀ α . σ
```
