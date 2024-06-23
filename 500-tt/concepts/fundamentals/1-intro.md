# Overview of TT :: Intro

Type theory is concerned with mathematical constructions (~~or does this only apply to constructive TT?~~), with what can be constructed. The main judgement `a : A` means "hey, dad, look what I've made!", so it has no negation - you can only "present" something that you:ve constructed, not something that you did not. This judgement says that the *term* `a` has *type* `A`, and the judgement that `A` is a type, `A : 𝒰`, is pressuposed. `𝒰` denotes a universe - the oxymoron is justified because there is an infinite number of universes, starting with the base universe, `𝒰₀`, which is often denoted as just `𝒰`. The hierarchy of universes is a way to avoid the Russell's paradox. Each universe is a term in the next universe, so, e.g. `𝒰₀ : 𝒰₁`, `𝒰₁ : 𝒰₂`, and so on. Commulativity of universes is a point of division type theories. In a *commulative universe*, if `x : 𝒰ᵢ` then `x : 𝒰ᵢ﹢₁`. That is, if a term belongs to a universe `n`, then it also belongs to the next universe `n + 1`. Thus, the term belongs to all the subsequent universes, `𝒰ᵢ` where `i >= n`. Basically, the base universe `𝒰₀` is where the action is, the other universes come to be used as a consequence of avoiding paradoxes. The hierarchy of universes suggest *universe polymorphism*, i.e. defining equations just once, yet being able to apply them across the universes (Agda supports it), with quantification over *universe levels*.

Many type theories are based on the Martin-Löf type theory (MLTT) that features 4 main types of judgements:
1. `Γ ⊢ A Type`      Type formation (in Agda, `A : Set`)
2. `Γ ⊢ A ≡ B type`  Type equality
3. `Γ ⊢ a : A`       Term formation
4. `Γ ⊢ a ≡ b : A`   Term equality

`Γ` is the context or environment and it consists exclusively of term-type pairs, i.e. term-type bindings, e.g. `a : A, b : B, c : C, … |- M`, with the possibility that the terms appearing later can depend on the terms appearing earlier. In fact, this dependence is the staple of the *dependent type theory* whose main feature is the possbility that types depend on terms. This accounts for the class of functions from term to types, the classes being
- functions from terms to terms
- functions from types to types (type ctors)
- functions from types to terms (polymorphism)
- functions from terms to types (dependent types)

Dependent types are build using the two main constructors:
- sigma types: `Σ (a:A) B(a)` (dependent pairs)
- pi    types: `Π (a:A) B(a)` (dependent functions)
