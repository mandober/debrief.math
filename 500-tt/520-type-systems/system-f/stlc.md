# STLC

These notes contain a short introduction to the syntactic, context-dependent, and operational aspects of `System F` and `System Fω`. The former extends the explicitly-typed STLC with universal parametric polymorphism, while the latter extends STLC with type ctors (aka type operators, aka type functions).

## Preliminaries

We assume familiarity with the distinction between an *object language*, a particular formal language under study, and *meta-language*, the notation used when talking about the object language.

Definitions and equality: It is common practice in mathematics to use *equality as a definitional device*. Since equality is also used as a relation on already defined entities, we distinguish equality from definitional equality and use the symbol `≝` for the latter. A definition induces an equality in the sense that if `X ≝ Y` then `X = Y`; the converse need not be true.

Quantification: We follow the widely used and well-known *quantifier-dot* convention when denoting quantification. For example, in `∀x:P` the scope of bound variable `x` starts from the dot to the end of the expression `P`. Also,
`∀x ∈ S. P` abbreviates `∀x. x ∈ S ⇒ P`

## Pure Simply Typed Lambda Calculus

The figure below shows the *syntax*, *type rules*, and *operational semantics* of the Pure Simply Typed Lambda Calculus (PSTLC).

There are terms carrying type annotations and for that reason this version of STLC is also called explicitly typed, or *typing à la Church*.

```hs
-- SYNTAX / GRAMMAR

Type := *                           −− base type
      | Type -> Type                −− function type
      | ( Type )                    −− grouping

Term := TermVar                     −− term variable
      | Term Term                   −− term application
      | λ TermVar : Type . Term     −− term abstraction
      | ( Term )                    −− grouping


-- TYPE RULES

Γ, x : τ
-----------
Γ |- x : τ


Γ |- t₁ : σ -> τ    Γ |- t₂ : σ
--------------------------------
Γ |- (t₁ t₂) : τ


Γ, x : σ |- t : τ
--------------------------
Γ |- (λx:σ . t) : σ -> τ


-- OPERATIONAL SEMANTICS

--------------------------- β
(λx:τ. t) t′ -->> t[x:=t′]


   t₁ -->> t₁′
------------------- LI1
t₁ t₂ -->> t₁′ t₂


   t₂ -->> t₂′
------------------- LI2
 x t₂ -->> x t₂′



--------- REFL
t -->> t


t₁ -->> t₂    t₂ -->> t₃
-------------------------- TRANS
      t₁ -->> t₃
```


**Terms and types**. The PSTLC has a language of types (non terminal `Type`) for expressing the types of functions inductively from a unique base or ground type `*`, and a language of terms (non-terminal `Term`) which consists of variables, lambda abstractions (unnamed functions), and applications of terms to other terms.

Variables stand for formal parameters or yet-to-be-defined primitive values when not bound by any λ. In a lambda abstraction `λx:τ.t`, the λ symbol indicates that `x` is a *bound variable* (a formal parameter), `τ` is the type of `x`, and `t` abbreviates an expression where `x` may occur free.

Meta-variable conventions:
- `σ`, `τ`    range over types
- `x`, `y`    range over term variables
- `t`, `t₁`   range over terms
- `Γ`         ranges over type-assignments
- `α`, `β`    range over type variables
- `κ`, `ν`    range over kinds

Types and terms are separated with the only exception: types can appear as annotations in lambda abstractions.

The type of a function is also called its type signature. It describes the function's arity, order, and the type of its arguments. The arity is the number of arguments it takes.

The *order of a function* is determined from its type signature as follows:
- order (*)      ≝  0
- order (σ → τ)  ≝  max (1 + order σ) (order τ)

Let `τ` be the type of a lambda abs and suppose `order(τ) = n`.
- If `n = 1` then the lambda abs may either return a manifest (non-function) value of type `*` or another lambda abs of order 1 as result.
- If `n > 1`, then it is a higher-order abs that either takes or returns a lambda abs of order `n`.

It is typical to blur the conceptual distinction between *manifest values* and *function values* by considering the former as *nullary functions* and the latter as *proper functions*. In the PSTLC not every term is a function: there is a *ground type*. In the untyped lambda calculus, every term is a function.

An *operator* is a term whose value is a function. An *operand* is a term that plays the role of a parameter or argument. A *formal parameter* appears in a function definition, whereas an *actual parameter or argument* appears in an function application. A call site is another name for an application of an operator to an operand.

In common parlance, the word "type" is not only used in reference to type-terms but also in reference to *data types*, i.e. a *concrete realisation of the type* in an implementation design or actual code.

**Type rules**: The type rules listed above can be employed to check the type of a term compositionally from the type of its subterms. The type of a term depends on the type of its free variables.

This context-dependent information is captured by a type-assignment function `Γ |- TypeVar → Type` which acts as a symbol table of sorts that stores the types of free variables in scope. The operation `Γ, x : τ` denotes the construction of a new type-assignment and has the following definition:

`(Γ, x : τ)(y)`  ≝  if `x = y` then `τ` else `Γ(y)`

The type rules are rather intuitive. Notice only that `Γ` is enlarged in the last rule because `x` may occur free in `t`.

**Operational semantics**: The call-by-name operational semantics was shown in the rules above. A reduction relation `-->>` is defined between terms.

* The β-rule captures the reduction of an application of a lambda abstraction to an argument. The free occurrences of the parameter variable are substituted (avoiding variable capture) by the argument in the lambda abstraction's body, which is performed by the operation `t[x:=t₀]`, read "`t` where `t₀` is substituted for free `x`".

* The LI1-rule specifies that an application `t1 t2` can be reduced to the term `t1′ t2` when `t1` can be reduced to `t1′`.

* The LI2-rule specifies that reduction must proceed to the argument of an application when the term being applied is a free variable.

Together, these rules specify a *leftmost-outermost reduction order*.

* The REFL and TRANS specify that `-->>` is a reflexive and transitive relation.


A **value** is a program term of central importance. Operationally, the set of values `V` is a subset of the set of normal forms `N`, which is in turn a subset of the set of terms `T`

>V ⊆ N ⊆ T

These sets are to be fixed by definition. 

>A term is in normal form if no reduction rule, other than reflexivity, is applicable to it.

In the PSTLC, all normal forms are values and they are defined by the following grammar:

`NF := TermVar | λ TermVar : Type . Term`

That is, *vars and abs are normal forms*, which means that function bodies are evaluated only after the function is applied to an argument.

This is reflected in the operational semantics by the *deliberate omission* of the following rule:

```hs
      t -->> t′
-----------------------
λx:τ. t -->> λx:τ. t′
```

It can be the case in other languages that there are normal forms that are not values. Examples are stuck terms which denote run-time errors.


## Adding primitive types and values

The PSTLC is impractical as a programming language. Given a term t, its free variables have no meanings. The PSTLC extended with various primitives has been given specific names. In particular, the language `PCF` (Programming Computable Functions) is a PSTLC extended with natural numbers, booleans, cartesian products, and fixed points.


Below, we show the extension of the STLC grammar of terms and types to include some primitive types. The base type `*` is removed from the language of types. Of particular interest are cartesian product and disjoint sum types that endow the Extended STLC (referred to as STLC from now on) with algebraic types roughly similar to those supported by functional languages.

*δ-rules* are reduction rules for primitive types. 
Primitive types are all manifest and therefore their order is 0.

```hs
-- SYNTAX

Type := Nat                                       −− naturals
      | Bool                                      −− booleans
      | Type × Type                               −− products
      | Type + Type                               −− disjoint sums
      | 1                                         −− unit type

Term := Num                                       −− natural literals
      | true                                      −− boolean literals
      | false
      | + | − | ⨯                                 −− arithmetic functions
      | not Term                                  −− boolean functions
      | if Term then Term else Term
      | unit                                      −− unit value
      | (Term, Term)                              −− pairs
      | fst Term
      | snd Term
      | Inl Term                                  −− sums
      | Inr Term
      | case Term of Inl TermVar then Term
                   ; Inr TermVar then Term

-- TYPING RULES

-----------------
Γ |- true : Bool

-----------------
Γ |- unit : 1

Γ |- t : Bool    Γ |- t1 : τ    Γ |- t2 : τ
----------------------------------------------
Γ |- (if t then t1 else t2) : τ


-- OPERATIONAL SEMANTICS

----------------------------------
(if true then t1 else t2) -->> t1

----------------------------------
(if false then t1 else t2) -->> t2


                     t -->> t′
-----------------------------------------------------
(if t then t1 else t2) -->> (if t′ then t1 else t2)
```
