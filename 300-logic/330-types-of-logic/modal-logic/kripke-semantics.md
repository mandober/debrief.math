# Kripke semantics

https://en.wikipedia.org/wiki/Kripke_semantics

Kripke semantics, aka *relational semantics* or *frame semantics* (often confused with possible world semantics) is a formal semantics for non-classical logic systems created in the late 1950s and early 1960s by Saul Kripke and André Joyal.

It was first conceived for modal logics, and later adapted to intuitionistic logic and other non-classical systems.

The development of Kripke semantics was a breakthrough in the theory of non-classical logics, because the model theory of such logics was almost non-existent before Kripke (algebraic semantics existed, but were considered 'syntax in disguise').

## Contents

- Semantics of modal logic
  - Basic definitions
  - Correspondence and completeness
    - Common modal axiom schemata
    - Common modal systems
  - Canonical models
  - Finite model property
  - Multimodal logics
- Semantics of intuitionistic logic
  - Intuitionistic first-order logic
  - Kripke-Joyal semantics
- Model constructions
- General frame semantics
- Computer science applications
- History and terminology

## Semantics of modal logic

The language of *propositional modal logic* consists of
- a countably infinite set of propositional variables
- a set of truth-functional connectives (`→`, `¬`)
- the modal operator `◻` (necessity)
- the modal operator `◊` (possibility)

`◻` and `◊` are duals:
- `◊ A ≡ ¬□ ¬A`
- `◻ A ≡ ¬◊ ¬A`

"It is possible that `A`" is equivalent to "it is not necessary that not `A`". 
"It is necessary that `A`" is equivalent to "it is not possible that not `A`".

### Basic definitions

A **Kripke frame** or **modal frame** is a pair `⟨W,R⟩` where
- `W` is a (possibly empty) set of *worlds*
- `R` is a binary *accessibility relation* on `W`


A **Kripke model**¹ is a triple `⟨W,R,⊩⟩` where
- `⟨W,R⟩` is a Kripke frame
- `⊩` is a relation between nodes of `W` and modal formulas, 
  such that for all `w ∈ W` and modal formulas `A` and `B`:
  - `w ⊩ ¬A` ⇔ `w ⊮ A`
  - `w ⊩ A → B` ⇔ `w ⊮ A ⋁ w ⊩ B`
  - `∀u. wRu`. `w ⊩ □A` ⇔ `u ⊩ A` (for all `u` such that `wRu`)


<!-- #region NOTE Model¹ -->

<details><summary>Note¹ model</summary>

Note that the notion of *model* in the Kripke semantics of modal logic differs from the notion of 'model' in classical non-modal logics: 

In classical logics we say that some formula F has a 'model' if there exists some 'interpretation' of the variables of F which makes the formula F true; this specific interpretation is then a model of the formula F.

In the Kripke semantics of modal logic, by contrast, a 'model' is not a specific 'something' that makes a specific modal formula true; in Kripke semantics a 'model' must rather be understood as a larger universe of discourse within which any modal formulae can be meaningfully 'understood'. 

Thus: whereas the notion of 'has a model' in classical non-modal logic refers to some individual formula within that logic, the notion of 'has a model' in modal logic refers to the logic itself as a whole (i.e., the entire system of its axioms and deduction rules).

</details>

<!-- #endregion -->

We read `w ⊩ A` as "w satisfies A", "A is satisfied in w", or "w forces A". The relation `⊩` is called the *satisfaction relation*, *evaluation*, or *forcing relation*. The satisfaction relation is uniquely determined by its value on propositional variables.

A formula `A` is **valid** in:
- a model `⟨W,R,⊩⟩`, if `w ⊩ A` for all `w ∈ W`
- a frame `⟨W,R⟩`, if it is valid in `⟨W,R,⊩⟩` for all possible choices of `⊩`
- a class `C` of frames or models, if it is valid in every member of `C`

`Thm(C)` is the set of all formulas that are valid in `C`. Conversely, if `X` is a set of formulas, `Mod(X)` is the class of all frames which validate every formula from `X`.

A modal logic (i.e. a set of formulas) `L` is
- **sound**    with respect to a class of frames `C` if `L ⊆ Thm(C)`
- **complete** with respect to a class of frames `C` if `Thm(C) ⊆ L`

  In deductive reasoning, an argument is sound if it is both valid in form and its premises are true. Soundness also has a related meaning in mathematical logic, wherein logical systems are *sound* iff every formula that can be proved in the system is logically *valid* wrt the semantics of the system.


### Correspondence and completeness

Semantics is useful for investigating a logic (i.e. a derivation system) only if the *semantic consequence relation* (`||-`) reflects its syntactical counterpart, the *syntactic consequence relation (derivability)* (`|-`).

It is vital to know which modal logics are sound and complete wrt a class of Kripke frames, and to determine also which class that is.

For any class `C` of Kripke frames, `Thm(C)` is a *normal modal logic* (in particular, theorems of the *minimal normal modal logic*, `K`, are valid in every Kripke model). However, the converse does not hold in general: while most of the modal systems studied are complete of classes of frames described by simple conditions, Kripke incomplete normal modal logics do exist. A natural example of such a system is *Japaridze's polymodal logic*.

A normal modal logic `L` corresponds to a class of frames `C`, if `C = Mod(L)`. In other words, `C` is the largest class of frames such that `L` is sound wrt `C`. It follows that `L` is Kripke complete iff it is complete of its corresponding class.

Consider the schema `T : □ A → A`. 
T is valid in any reflexive frame `⟨W,R⟩`: 
if `w ⊩ □ A` then `w ⊩ A` since `w R w`. 
On the other hand, 
a frame which validates T 
has to be reflexive: 
fix `w ∈ W`, and define satisfaction 
of a propositional variable `p` as follows: 
`u ⊩ p ⇔ w R u`. 
Then `w ⊩ □ p`, 
thus `w ⊩ p` by T, 
which means `w R w` 
using the definition of `⊩`. 
T corresponds to *the class of reflexive Kripke frames*.

It is often much easier to characterize the corresponding class of `L` than to prove its completeness, thus correspondence serves as a guide to completeness proofs. Correspondence is also used to show incompleteness of modal logics: suppose `L1 ⊆ L2` are normal modal logics that correspond to the same class of frames, but `L1` does not prove all theorems of `L2`. Then `L1` is **Kripke incomplete**.

For example, the schema `□ (A ⇔ □ A) → □A` generates an incomplete logic, as it corresponds to the same class of frames as `GL` (viz. transitive and converse well-founded frames), but does not prove the `GL`-tautology `□ A → □ □ A`.

#### Common modal axiom schemata

The following table lists common modal axioms together with their corresponding classes. The naming of the axioms often varies. Here, axiom
- `K` is named after Saul Kripke
- `T`² is named after the truth axiom in epistemic logic
- `D` is named after deontic logic
- `B` is named after L. E. J. Brouwer
- 4 and 5 are named based on C. I. Lewis's numbering of symbolic logic systems

² *Axiom T* aka the knowledge axiom (or truth axiom); it says that if an agent knows facts, the facts must be true. This has often been taken as the major distinguishing feature between knowledge and belief. We can believe a statement to be true when it is false, but it would be impossible to know a false statement.


Name| Axiom                         | Frame condition

K   | `□ (A → B) → (□ A → □ B)`       | distr. axiom, holds true for any frames
T   | `□ A → A`                      | reflexive: wRw
¹   | `□ □ A → □ A`                   | dense: wRu -> ∃v(wRv ⋀ vRu)
4   | `□ A → □ □ A`                   | transitive: wRv ⋀ vRu -> wRu
D   | `□ A → ◊ A` or `◊ ⊤` or `¬ □ ⊥`  | serial: ∀w. ∃v. wRv
B   | `A → □ ◊ A` or `◊ □ A → A`      | symmetric: wRv -> vRw
5   | `◊ A → □ ◊ A`                  | Euclidean: wRu ⋀ wRv -> uRv
GL  | `□ (□ A → A) → □ A`            | `R` transitive, `R⁻¹` well-founded
Grz | `□ (□ (A → □ A) → A) → A`      | `R` refl, trans, `R⁻¹ɪᴅ` well-founded
H   | `□ (□ A → B) ⋁ □ (□ B → A)`     | wRu ⋀ wRv -> uRv ⋁ vRu
M   | `□ ◊ A → ◊ □ A`                 | (a complicated second-order property)
G   | `◊ □ A → □ ◊ A`                 | convergence: wRu ⋀ wRv -> ∃x(uRx ⋀ vRx)
²   | `A → □A`                     | discrete: wRv -> w = v
³   | `◊ A → □ A`                    | partial function rel: wRu ⋀ wRv -> u = v
⁴   | `◊ A ⇔ □ A`                   | function relation: ∀w. !∃u. wRu
⁵   | `□ A` or `□ ⊥`                 | empty: ∀w. ∀u. ¬(wRu)


*Axiom K* can also be rewritten as `□ (A -> B ⋀ A) -> □ B` which logically establishes modus ponens as a rule of inference in every possible world.

Note that for *axiom D*, `◊A` implicity implies `◊⊤`, which means that for every possible world in the model, there is always at least one possible world accessible from it (which could be itself). This implicit implication `◊A → ◊⊤` is similar to the implicit implication by existential quantifier on the range of quantification.


#### Common modal systems


### Canonical models



### Finite model property



### Multimodal logics
