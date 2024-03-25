# Programming Computable Functions

https://en.wikipedia.org/wiki/Programming_Computable_Functions

Programming Computable Functions (PCF) is a typed functional language introduced by Gordon Plotkin in 1977, based on previous unpublished material by Dana Scott. It can be considered to be an extended version of the typed lambda calculus, or a simplified version of modern typed functional languages such as Haskell.

A fully abstract model for PCF was first given by Milner (1977). However, since Milner's model was essentially based on the syntax of PCF it was considered less than satisfactory (Ong, 1995). The first two fully abstract models not employing syntax were formulated during the 1990s. These models are based on *game semantics* (Hyland and Ong, 2000; Abramsky, Jagadeesan, and Malacaria, 2000) and *Kripke logical relations* (O'Hearn and Riecke, 1995). For a time it was felt that neither of these models was completely satisfactory, since they were not effectively presentable. However, Ralph Loader demonstrated that no effectively presentable fully abstract model could exist, since the question of **program equivalence in the finitary fragment of PCF is not decidable**.


PCF is the simplest, lazy, purely functional programming language. It serves as a basis for programming language research.

PCF is a call-by-name, simply-typed, λ-calculus equipped with
- one or two base types; usually flat natural numbers and Booleans
- a fixed point combinator at all types



## Syntax

The types of PCF are inductively defined as
- `nat` is a type
- for types `σ` and `τ`, there is a type `σ → τ`

A context is a list of pairs `x : σ`, where `x` is a variable name and `σ` is a type, such that no variable name is duplicated. The typing judgments of terms-in-context are then defined in the usual way, for these syntactical constructs:
- Var: if `x : σ` is in `Γ`, then `Γ ⊢ x : σ`
- App: a term of type `σ → τ` may be applied to a term of type `σ`
- Abs: λ-abstractions
- Y fixpoint combinator makes terms of type `σ` out of terms of type `σ → σ`, 
  `Y : (σ → σ) → σ`
- constant `0 : nat`, `succ` and `pred` operations on `nat`
- conditional `if`

```
Γ, x : σ
---------- [VAR]
Γ ⊢ x : σ


Γ, x : σ ⊢ M : τ    x ∉ FV(M)
------------------------------ [ABS]
Γ ⊢ (λx . M) : σ → τ


Γ, x : σ ⊢ M : σ
----------------- [FIX]
Γ ⊢ μ x . M : σ


Γ ⊢ f : σ → σ    Γ ⊢ fix : (σ → σ) → σ
--------------------------------------- [FIX²]
Γ ⊢ fix f : σ


Γ ⊢ M : σ → τ    Γ ⊢ N : σ
------------------------------ [APP]
Γ ⊢ M N : τ


Γ ⊢ t : nat    Γ ⊢ a : σ    Γ ⊢ b : σ
---------------------------------------- [IF]
Γ ⊢ if(t, a, b) : σ
```

The `nat` is here interpreted as a Boolean with a convention that 'zero' denotes 'true', and any other number denotes 'false'.

PCF postulates the existence of a fixpoint combinator at all types. This is the Y combinator, `Y : (σ → σ) → σ`; above, it has a slightly unusual but equivalent presentation as a binding construct `μ`, similar to the `λ` binding.


## Denotational semantics






## Refs

* PCF Models
https://www.pls-lab.org/Models_of_PCF

* PCF type system
https://www.pls-lab.org/en/PCF

* Models of PCF | PLS Lab
https://www.pls-lab.org/Models_of_PCF


### The Full Abstraction Problem

* Games, Full Abstraction and Full Completeness (Stanford Encyclopedia of Philosophy)
https://plato.stanford.edu/entries/games-abstraction/

* [1002.1833] The Full Abstraction Problem for Higher Order Functional-Logic Programs
https://arxiv.org/abs/1002.1833

* The Full Abstraction Problem | SpringerLink
https://link.springer.com/chapter/10.1007/978-1-4612-0317-9_4?noAccess=true

* The Full Abstraction Problem | Domain-Theoretic Foundations of Functional Programming
https://www.worldscientific.com/doi/10.1142/9789812772596_0006

* msc1400027a
https://depositonce.tu-berlin.de/bitstream/11303/7168/1/full_abstraction_for_expressiveness_history_myths_and_facts.pdf

* Full Abstraction and Semantic Equivalence | The MIT Press
https://mitpress.mit.edu/books/full-abstraction-and-semantic-equivalence

* slides.dvi
http://www.di.unito.it/~paolini/SummerSchool06/slides.pdf

* Abstract reduction system | PLS Lab
https://www.pls-lab.org/en/Abstract_reduction_system


### Lambda Calculus

* Programming with Lambda Calculus
https://hbr.github.io/Lambda-Calculus/lambda2/lambda.html

* Lambda calculus - Lambda Calculus
https://crypto.stanford.edu/~blynn/lambda/

* Lambda Viewer
https://projectultimatum.org

* Lambda: Introduction to Lambda Calculus | Programming Language Foundations in Agda
https://plfa.github.io/19.08/Lambda/

* Lambda calculus - Wikipedia
https://en.wikipedia.org/wiki/Lambda_calculus#.CE.B2-reduction
