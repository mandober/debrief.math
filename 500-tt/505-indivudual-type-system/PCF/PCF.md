# Programming Computable Functions

https://en.wikipedia.org/wiki/Programming_Computable_Functions

**Programming Computable Functions (PCF)** is a typed functional language introduced by Gordon Plotkin in 1977, based on the previous unpublished material by Dana Scott.

- *PCF* is a programming language for computable functions, based on LCF, Scott's logic of computable functions.
- *Programming Computable Functions* is used by (Mitchell 1996).
- It is also referred to as *Programming with Computable Functions* or *Programming language for Computable Functions*.

<!-- #region LCF -->

Gordon Plotkin, 1977, `LCF considered as a programming language`. Theoretical Computer Science. 5 (3): 223-255. doi:10.1016/0304-3975(77)90044-5.
http://homepages.inf.ed.ac.uk/gdp/publications/LCF.pdf

Abstract. The paper studies connections between denotational and operational semantics for a simple programming language based on LCF. It begins with the connection between the behaviour of a program and its denotation. It turns out that a program denotes ⟘ in any of several possible semantics iff it does not terminate. From this it follows that if two terms have the same denotation in one of these semantics, they have the same behaviour in all contexts. The converse fails for all the semantics. If, however, the language is extended to allow certain parallel facilities, behaviours: equivalence does coincide with denotational equivalence in one of the semantics considered, which may therefore be called "fully abstract". Next, a connection is given which actually determines the semantics up to isomorphism from the behaviour alone. Conversely, by allowing further parallel facilities, every r.e. element of the fully abstract semantics, becomes definable, thus characterising the programming language, up to inter-definability, from the set of r.e. elements of the domains of the semantics.

<!-- #endregion -->

It can be considered to be an extended version of the typed lambda calculus or a simplified version of modern typed functional languages such as ML or Haskell.

A fully abstract model for PCF was first given by Robin Milner. However, since Milner's model was essentially based on the syntax of PCF it was considered less than satisfactory.

The first two fully abstract models not employing syntax were formulated during the 1990s. These models are based on game semantics and Kripke logical relations. For a time it was felt that neither of these models was completely satisfactory, since they were not effectively presentable.

However, Ralph Loader demonstrated that no effectively presentable fully abstract model could exist, since the question of program equivalence in the finitary fragment of PCF is not decidable.

## Syntax

The types of PCF are inductively defined as
- `nat` is a type
- for types `σ` and `τ`, there is a type `σ → τ`

A context is a list of pairs `x : σ`, where `x` is a variable name and `σ` is a type, such that no variable name is duplicated. One then defines typing judgments of *terms-in-context* in the usual way for the following syntactical constructs:
- Variables, if `x : σ ∈ Γ` ⇒ `Γ ⊢ x : σ`
- Application, of a term of type `σ → τ` to a term of type `σ`
- λ-abstraction
- Y fixpoint combinator making terms of type `σ` out of terms of type `σ → σ`
- `succ` and `pred` operations on `nat` and the constant 0
- the conditional `if` with the typing rule:

```
Γ |- t : nat    Γ |- s₀ : σ    Γ |- s₁ : σ
--------------------------------------------
Γ |- if (t, s₀, s₁) : σ
```

(`nat` is interpreted as a boolean here with a convention that 0 denotes truth, and any other number false)


## Denotational semantics

A relatively straightforward semantics for the language is the Scott model. In this model,

- Types are interpreted as certain domains.
  - `⟦nat⟧ := N⊥` (natural numbers with a bottom element adjoined, with the flat ordering)
  - `⟦σ -> τ⟧` is interpreted as the domain of Scott-continuous functions from `⟦σ⟧` to `⟦τ⟧` with the pointwise ordering.
- A context `x₁:σ₁, …, xₙ:σₙ` is interpreted as the product `⟦σ₁⟧ × … × ⟦σₙ⟧`

- Terms in context `Γ ⊢ x:σ` are interpreted as continuous functions `⟦Γ⟧ → ⟦σ⟧`
  - Variable terms are interpreted as projections
  - Lambda abstraction and application are interpreted by making use of the cartesian closed structure of the category of domains and continuous functions
  - Y is interpreted by taking the least fixed point of the argument

This model is not fully abstract for PCF; but it is fully abstract for the language obtained by adding a parallel or operator to PCF.
