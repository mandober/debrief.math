# Judgments in formal systems

https://www.everything2.org/index.pl?node=Judgment

## Judgment

In formal logic, type theory and formal programming language semantics, a **judgment** is an extralogical (lying outside of the domain of logic) *assertion* about some grouping of elements of the domain of discourse.

We let the meta-variable `J` stand for a judgment.

When working with a formal system, we are often interested in some axiomatization of a particular judgment. Typically, such axiomatizations are presented as a collection of *inference rules* which have the form:

```
J₁ ⋯ Jₙ
--------
   J
```

meaning that judgment J holds, provided all judgments Jᵢ hold.

In presenting a propositional logic, two judgments are of interest:
- `A prop` means A is a proposition
- `A true` means A is a true proposition (proposition A is true)

The first judgment, `A prop` says that the object `A` is a *proposition*. For example, `A ∨ B prop`, provided that `A prop` and `B prop`, or as a rule of inference:

```
A prop   B prop
-----------------
   A ∨ B prop
```

The second judgment `A true` says that the proposition `A` is true. That is, that *there exists a proof that A is true*.

For example, `A ∨ B true` whenever `A true` (in words "there exists a proof of A ∨ B, whenever there exists a proof of A"); or, as a rule of inference:

```
  A true              B true
---------- ∨I₁      ---------- ∨I₂
A ∨ B true          A ∨ B true
```

(These 2 rules of inference are the introduction rules for disjunction)

## Hypothetical judgments

We often wish to define a judgment that holds only under some set of assumptions. We say that the judgment `J` is qualified by a collection of hypotheses `H₁ ⋯ Hₘ`, and write `H₁ ⋯ Hₘ ⊢ J`. The turnstile symbol (⊢) visually separates the hypotheses from the conclusion of the judgment.

In the study of programming languages, the judgment `e : τ` asserts that exp `e` has type `τ` (expression `e` is well-typed at type `τ`; or has type `τ`).

However, in most PLs, the type of an expression depends on the types of free variables appearing in it. As a consequence, the judgment is parametrized by the *typing environment* (context), denoted by `Γ`, which is a collection of hypotheses of the form `x₁ : τ₁, …, xₘ : τₘ`. The form of the judgment is then  `Γ ⊢ e : τ` (in the context Γ, the expression `e` has type `τ`). Note that expression `e` may contain a variable `xᵢ` whose type is in the context.

The inference rules for formaing a lambda abstraction in the STLC with Church-style typing (type parameters must be type-annonated):

```
Γ, x : τ₁ ⊢ E : τ₂
-------------------------- Abs
Γ ⊢ λ(x:τ₁) . E : τ₁ → τ₂
```

which says we can conclude that 
a lambda abstraction `λ(x : τ₁).E` 
has a function type `τ₁ → τ₂` 
in the context `Γ`, 
*provided that* 
exp `E` has type `τ₂` in the same context 
but extended with an additional assumption, 
namely, a typing assertion that `x` has type `τ₁`.

The T-Abs typing rule is often read bottom-up, in which case it states that when we encounter an abstraction `λx:τ₁.E`, its type is checked by first extending the context with the type of the formal parameter `x`, namely with a pair `x : τ₁`, and then checking that its body, `E`, has the appropriate type, `τ₂`.

This also allows us to break up an abstraction into a variable `x : τ₁` (the binder), and the expression `E : τ₂` that makes up the lambda's body.

In fact, it also means that we can just pick any variable `x : τ₁` in the context Γ, and associate it with any arbitrary expression `E : τ₂` (which is not in the context - the context only records the types of variables) pulled out from the thin air. The effect of this marriage is that the variable `x` binds (captures) all free occurences in the exp `E`, thus parameterizing it; we say that *some value in the expression got abstracted (into a variable)*, or that the *expression is parameterized (by a variable)*.

## Theorems

Asserting that some judgment is true is merely a game of symbol manipulation unless we can answer several questions about the inference rules partaining to a certain judgment: Are there enough rules? Are there too many rules? Are the rules consistent with each other? Are the rules sensible?

The particular questions we may ask depend on the particular domain we work in. In logic, for example, we may wish to relate the judgment `A true` with truth in some model of the logic. Then we'd typically prove a soundness and a completeness theorem. In programming languages, we'd show the type safety theorem.

>Type safety theorem states that the evaluation of well-typed expressions does not go wrong.

## Analytic and Synthetic Judgments

The logician Per Martin-Löf (actually, the idea stems from Kant) identified *classes of judgments* according to the sense in which they could be understood to hold:
- hypothetical judgment, `H ₁ ⋯ H ₙ ⊢ J`
- analytic judgment (`A prop`)
- synthetic judgment (`A true`)

An **analytic judgment** is "evident by virtue of the meanings of the terms that occur in it" (Martin-Löf). (compositionality)

A **synthetic judgment** is one where we must look outside it for evidence.

For example, the judgment `A prop` is *analytic* because (as in the case of disjunction) we only need to consider the subterms of A to determine whether A itself is a proposition.

On the other hand, the judgment `A true` is *synthetic* because the judgment merely asserts that a proof of the truth of A exists, but it does not tell us how to obtain it (so we must look outside it for evidence).

>Is there an analytic judgment for the truth of propositions?
Indeed. To do it, we record the proof of the proposition within the judgment. If `M` stands for a proof term, then the judgment has the form `M : A` (M is a proof that proposition A is true).

A remarkable gem of mathematical logic is the *Curry-Howard Isomorphism* which states that the proof terms of intuitionistic logic are exactly the terms of the lambda calculus. The isomorphism was first observed for first-order logic and the simply-typed lambda calculus, but it extends to higher-orders. Thus, a purely functional program may also be interpreted as a constructive proof (of its correctness).

Curry-Howard Isomorphism (CHI)
- propositions-as-types
- proofs-as-programs
- evaluation as derivation (simplification)

To _ (prove?) an expression `e`, find its type. If `e` is *typable*, then it has a _ (proof?). A type `τ` is _ (true?) if it is inhabited. An uninhabited type (⊥, void, empty, 𝟘) is/represents false propositions, and so negation is defined as `¬P := P → ⊥`. To show that a proposition (type) `P` is true, produce at least one of its inhabitants (values); call it `x` and assert `x : P`. To show that a proposition (type) `P` is false construct the function `P → ⊥`, i.e. produce one of its inhabitants. `P → ⊥` is a function type and function types are inhabited by functions (function values), constructed as lambda abstractions.

```hs
notA :: a -> Void
-- or is it:
notA :: forall a. a -> Void
-- The latter suggest that all types (propositions) may be negated; sure! that makes sense. But there is along way from "may" to producing an actual value.

-- the defition of negation above pertains to ILL which
-- does not admit material implication (transformation):
-- p → q ≡ ¬p ∨ q
-- but just for kicks, how would we encode this
-- equivalence, or just the second formula?
-- Perhaps this would be acceptable:
material :: (p -> q) -> Either (p -> Void) q
```

Purely FPLs are the languages related by the CHI since they embed intuitionistic logic. Under the CHI and propositions-as-types, we don't use a Boolean function to test equality of terms (proofs and propositions), but types. Namely, the empty type called bottom (`⊥`, Void, 𝟘) stands for 'false', and the top type (unit, `⊤`, 𝟙) stands for 'true'. More precisely, the unit type just asserts that there exists a proof. A more complex type is needed to actually represent tht proof. Also, there may be multiple proofs. When we get tired of carrying all those proof-terms around, the question of how to truncate them arises. And of proof equality; yip, yip, UIP.
