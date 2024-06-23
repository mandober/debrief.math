# 3. Second-order typed lambda calculus

## Contents

- 3.1 Type-abstraction and type-application
- 3.2 Π-types
- 3.3 Second order abstraction and application rules
- 3.4 The system λ2
- 3.5 Example of a derivation in λ2
- 3.6 Properties of λ2
- 3.7 Conclusions
- 3.8 Further reading
- 3.9 Exercises

## 3.1 Type-abstraction and type-application

In Church's λ→, we only encounter abstraction and application on the term level.

In the abstraction process, we start with a term `M` in which `x` may occur free. Assuming that `x` has type `σ`, we may then abstract `M` from `x` by means of λ abstraction, in order to obtain `λx:σ.M`. As a side effect, every free occurrence of `x` in `M` becomes bound in `λx:σ.M`.

As if: M = x y ---> λx.M = λx.x y, WTF?

The variable `x` is itself a term. Consequently, by abstracting the term `M` from the term `x`, we obtain a new term, `λx:σ.M`. One describes this situation by saying that the term `λx:σ.M` *depends on the term* `x`. Hence, in λ→ we can construct **terms depending on terms**.

The counterpart of abstraction is application. And when we can 'abstract a term from a term', then it is natural that we also can 'apply a term to a term'. And indeed, we can: for the construction of MN we apply the term M to the term N. Also now, the result is a term, namely MN.

Here one speaks of **first-order abstraction**, or **first-order dependency**, since the abstraction is over terms. Its companion, application, is first order as well.

Now we introduce terms depending on types. In this case one speaks of *second-order operations* (or *second-order dependency*). The system that we obtain is called the **second-order typed lambda calculus**, or `λ2` for short.

There are many identity functions, one per type. But what about 'the' identity function? It apparently *does not exist in λ→*. The best we can do is to consider an 'arbitrary' type `α` and construct the function `f ≡ λx:α.x` (¹). But now, given an `M` of type `nat`, we cannot write `f M`, because this term is not legal: *the types do not match*. Since `α ≢ nat`, the APP rule (def 2.4.5) fails.

~~(¹) So is `α` a meta-type-var, then? I though non-meta-type-vars can and do appear in the surface syntax?! e.g. `α → β → β`. Is `λx:α.x` an example of a concrete, surface, syntactically correct and legal exp?! I hope not. I hope it is in the metalang. Because a literal symbol like `α` or `β` (or whatever) can never appears in the cocrete syntax, right? If it can, then what-the-fuck does it all mean?! In fact, how can it appear in the surface syntax at all when *λ→ is not polymorphic*. I mean, the *literal, verbatim symbol* `α` can only ever be a *metavariable* (ranging over concrete types) **so it can only be writen in a metalanguage**, but **never ever written in the object language**, right? Any legit expression in the object language **must only contain concrete types**, right?! Because there is **no instantiation**, and **no polymorphism** in STLC. So WTF!? aaaaarghh! How can they even write a thing like `α ≢ nat`, for fuck's sake?!?!?! If `α` is a metavar (is it? I surely think so), then it can surely represent the type `nat`. If, by an abuse of notation, it is written even in the object lang, and meant to be instantiated for any concerete type in the on-the-fly manner, then it surely can be instantiated to `nat`. Maybe `α` is a bona fide type with a weird name (since it is different from `nat`)?~~





## 3.2 Π-types

## 3.3 Second order abstraction and application rules

## 3.4 The system λ2


>Derivation rules for λ2

```
if x : σ ∈ Γ and
   Γ is a λ₂ context
-------------------------------------- (var)
Γ ⊢ x : σ


if Γ is a λ₂ context
   B ∈ 𝕋₂ and
   all free type vars in B are declared in Γ
----------------------------------------------- (form)
Γ ⊢ B : ∗


Γ ⊢ M : σ → τ    Γ ⊢ N : σ
------------------------------ (app)
Γ ⊢ M N : τ


Γ ⊢ M : (Πα : *. A)    Γ ⊢ B : *
------------------------------ (app₂)
Γ ⊢ M B : A[α:=B]


Γ, x : σ ⊢ M : τ
------------------------------ (abs)
Γ ⊢ λ(x:σ). M : σ → τ


Γ, α : * ⊢ M : A
------------------------------ (abs₂)
Γ ⊢ λ(α : *). M : Πα : *. A
```

## 3.5 Example of a derivation in λ2
## 3.6 Properties of λ2
## 3.7 Conclusions
## 3.8 Further reading
## 3.9 Exercises
