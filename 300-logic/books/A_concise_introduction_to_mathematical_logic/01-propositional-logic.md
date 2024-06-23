# 1. Propositional logic

1. Propositional Logic
- 1.1 Boolean Functions and Formulas
- 1.2 Semantic Equivalence and Normal Forms
- 1.3 Tautologies and Logical Consequence
- 1.4 A Complete Calculus for |=
- 1.5 Applications of the Compactness Theorem
- 1.6 Hilbert Calculi


## 1.4 A Complete Calculus for |=

We define a **derivability relation** `⊦` by means of a calculus operating solely with some structural rules.

`⊦` turns out to be identical to the consequence relation `⊨`.

The calculus `⊦` is of the so-called *Gentzen type*. Its rules are given with respect to pairs `(X, α)` of sets of formulas `X` and formulas `α`. Another calculus for `⊨` is of the so-called *Hilbert type*.

In distinction to Gentzen, we do not require that `X` be finite; our particular goals here make such a restriction dispensable.

If `⊦` applies on the pair `(X, α)` then we write `X ⊦ α`, and say that `α` is **derivable or provable** from `X`; otherwise we write `X ⊬ α`.

Gentzen's name for `(X, α)` is a **sequent**.

The calculus is formulated in terms of `∧`, `¬` and encompasses 6 basic rules; other rules derived from these are called *provable or derivable*.

The choice of `{∧, ¬}` as the basic signature is a matter of convenience and justified by its functional completeness.

The other standard connectives are introduced by the definitions:
- `α ∨ β := ¬(¬α ∧ ¬β)`
- `α → β := ¬(α ∧ ¬β)`
- `α ⇔ β := (α → β) ∧ (β → α)`


```
------ (IS) initial sequent
α ⊦ α


X ⊦ α    X′ ⊇ X
---------------- (MR) monotonicity
X′ ⊦ α


X ⊦ α, β
---------------- (∧1)
X ⊦ α ∧ β


X ⊦ α ∧ β
---------------- (∧2)
X ⊦ α, β


X ⊦ α, ¬α
---------------- (¬1)
X ⊦ β


X,α ⊦ β  X,¬α ⊦ β
------------------ (¬2)
X ⊦ β
```

Each of the 6 basic rules below has certain premises and a conclusion. Only (IS) has no premises. It allows the derivation of all sequents `α ⊦ α`. These are called the *initial sequents*, because each derivation must start with these. Each of the six basic rules is actually needed for proving the completeness of `⊦`.

`X ⊦ α,β` means `X ⊦ α` and `X ⊦ β`. This convention is important since `X⊦α,β` has another meaning in Gentzen calculi, which are given with respect to pairs of sets of formulas and which play a role in proof-theoretical investigations. Thus, the rules (∧1) and (¬1) actually have two premises, just like (¬2). Note further that (∧2) really consists of two subrules corresponding to the conclusions `X⊦α` and `X⊦β`. In (¬2), `X,α` stands for `X ∪ {α}`, and this abbreviated form is used when there is no risk of misunderstanding.



(Theorem 4.1) **Finiteness theorem** for `⊦`: 
if `X ⊦ α` then there is a finite subset `X₀ ⊆ X` with `X₀ ⊦ α`.


(Definition) `X ⊆ F` is called *inconsistent* (in our calculus ⊦) if `X⊦α` for all `α ∈ F`, and otherwise *consistent*. `X` is called *maximally consistent* if `X` is consistent but each `Y ⊃ X` is inconsistent, or equivalently, 
`α ∉ X ⇒ X,α⊦β` for all `β`.

(Lemma 4.2) The derivability relation `⊦` has the properties:
- (Cᐩ) `X ⊦  α` ⇔ `X,¬α ⊦ ⊥`
- (C⁻) `X ⊦ ¬α` ⇔ `X, α ⊦ ⊥`

Proof of Cᐩ:
If              `X    ⊦ α` holds then 
so too does     `X,¬α ⊦ α`. 
Since certainly `X,¬α ⊦ ¬α`, 
we have         `X,¬α ⊦ β` for all `β` by (¬1), 
in particular   `X,¬α ⊦ ⊥`. 
Conversely, let `X,¬α ⊦ ⊥` be the case, so that 
in particular   `X,¬α ⊦ α`, 
and thus        `X    ⊦ α` by (¬)-elimination. 
Proof of C⁻ is analogous.



(Lemma 4.3) **Lindenbaum's theorem**: Every consistent set `X` can be extended to a maximally consistent set `X′ ⊇ X`.


(Lemma 4.4) A maximally consistent set X has the property 
[¬]    `X ⊦ ¬α ⇔ X ⊬ α`, for arbitrary `α`.


(Lemma 4.5) A maximally consistent set `X` is satisfiable.


(Theorem 4.6) **Completeness theorem**: `X ⊦ α ⇔ X ⊦ α`, for all `X` and `α`.

(Theorem 4.7) **Finiteness theorem** for (⊦): 
if `X ⊦ α`, then so too `X₀ ⊦ α` for some finite `X₀ ⊆ X`.

(Theorem 4.8) **Compactness theorem**: 
A set `X` is satisfiable provided each finite subset of `X` is satisfiable.


## 1.5 Applications of the Compactness Theorem

Compactness Theorem is very useful in carrying over certain properties of finite structures to infinite ones.

The following examples (which could also be treated with the compactness theorem of predicate logic) demonstrate how the consistency of certain sets of sentences in predicate logic can also be obtained in propositional logic.

Examples:
1. Every set M can be (totally) ordered
2. The four-color theorem for infinite planar graphs
3. König's tree lemma
4. The marriage problem
5. The ultrafilter theorem

### The ultrafilter theorem

The ultrafilter theorem, which originally stemmed from topology, is also of fundamental importance in model theory, set theory, and elsewhere.

Let a nonempty set `I`. 
A non-empty collection of sets `F ⊆ 𝒫(I)` (i.e. each `F ∈ 𝒫(𝒫(I))`)   
is called a **filter** on `I` if `∀ M N ⊆ I` (i.e. each `M,N ∈ 𝒫(I)`)
- `M,N ∈ F` ⇒ `M ⋂ N ∈ F`               (a)
- `(M ∈ F) ⋀ (M ⊆ N)` ⇒ `N ∈ F`         (b)

As is easily verified, (a) and (b) are equivalent to a single condition:
- `M ⋂ N ∈ F` ⇔ `(M ∈ F) ⋀ (N ∈ F)`     (∩)

Since `F ≠ ∅`, (and `I ⊆ I`), the condition (b) shows that always `I ∈ F`.
