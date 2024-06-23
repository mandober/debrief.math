# Typing rule

https://en.wikipedia.org/wiki/Typing_rule

>A **typing rule** is an *inference rule* that describes how a *type system* assigns a *type* to a *syntactic construction*.

Typing rules may be applied by the type system to determine if a program is *well-typed* and what type the expressions have.

A prototypical example of the use of typing rules is in defining type inference in the Simply Typed Lambda Calculus.

## Contents

- 1. Notation
- 2. See also
- 3. References
- 4. Further reading

## Notation

>Typing rules specify the *structure* of a *typing relation* that relates *syntactic terms* to their *types*.

Syntactically, the *typing relation* is usually denoted by a colon, so `e : τ` denotes that an expression `e` has type `τ`.

The rules themselves are usually specified using the notation of *natural deduction*.

For example, the following typing rules specify the typing relation for a simple language of booleans:

```hs
                                 e1 : bool    e2 : τ    e3 : τ
------------   ------------     -------------------------------
true : bool    false : bool        if e1 then e2 else e3
```

Each rule states that the conclusion below the line may be derived from the premises above the line.

The first two rules have no premises above the line, so they are *axioms*.

The third rule has premises above the line (specifically, 3 premises), so it is an *inference rule*.

In programming languages, the type of a variable depends on where it is bound, which necessitates *context-sensitive typing rules*. These rules are given by a typing judgment, usually written `Γ ⊢ e : τ`, which states that an expression `e` has type `τ` under a typing context `Γ` that relates variables to their types.

*Typing contexts* are occasionally supplemented by the types of individual variables; e.g. `Γ, x : τ1 ⊢ e : τ2` can be read as "the context Γ extended with the information that the var `x` has type `τ1` yields the judgement that expression `e` has type `τ2`".

This notation can be used to give typing rules for variable references and lambda abstraction in the simply typed lambda calculus:

```hs
x : τ ∈ Γ
---------- Var
Γ ⊢ x : τ


Γ, x : τ₁ ⊢ M : τ₂
------------------------ Abs
Γ ⊢ λ(x:τ₁).M : τ₁ → τ₂


Γ ⊢ M : τ    Γ ⊢ N : τʹ
------------------------ App
Γ ⊢ M N : τʹ
```

Similarly, the following typing rule describes the let-construct of SML:

```hs

Γ,x:τ₁ ⊢ e₂ : τ₂    Γ ⊢ e₁ : τ₁
-------------------------------- Let
Γ ⊢ let x = e₁ in e₂ : τ₂
```

Not all systems of typing rules directly specify a type checking algorithm. For example, the typing rule for applying a parametrically polymorphic function in the Hindley-Milner type system requires "guessing" the appropriate type at which the function should be instantiated.

Adapting a *declarative typing rule system* to a *decidable algorithm* requires the production of a separate, *algorithmic system* that can be proven to specify the same *typing relation*.

## Further reading

- 1996 Luca Cardelli "Type Systems"
  http://lucacardelli.name/papers/typesystems.pdf
