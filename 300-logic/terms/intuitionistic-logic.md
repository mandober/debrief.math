# Intuitionistic logic

<!-- TOC -->

- [Refs](#refs)
- [Introduction to IL](#introduction-to-il)
  - [Constructive Reasoning](#constructive-reasoning)
  - [Syntax](#syntax)
  - [BHK interpretation](#bhk-interpretation)
    - [Law of Excluded Middle](#law-of-excluded-middle)
    - [Example proofs](#example-proofs)
- [Natural Deduction](#natural-deduction)
  - [Conjunction](#conjunction)
  - [Conditional](#conditional)
  - [Disjunction](#disjunction)
  - [Absurdity](#absurdity)
  - [Negation](#negation)
    - [Examples of derivations](#examples-of-derivations)
- [Axiomatic Derivations](#axiomatic-derivations)
  - [Derivability](#derivability)
  - [Axioms](#axioms)

<!-- /TOC -->


## Refs

https://en.wikipedia.org/wiki/Intuitionistic_logic
https://en.wikipedia.org/wiki/Brouwer-Heyting-Kolmogorov_interpretation

## Introduction to IL

### Constructive Reasoning

Intuitionistic logic is non-classical logic system. Intuitionistic logic is what is left if a proof system for classical logic is restricted in a certain way (no LEM, no DN). Intuitionistic logic is intended to capture a constructive kind of reasoning, characteristic to constructive mathematics. In intuitionistic logic, proving the existence of an `x` that satisfies `P(x)` means that you have to construct a specific `x` along with the proof that it satisfies `P`. This `x` is called a witness, and IL requires that proves have specific witnesses (you cannot even pick an irrational number in IL). Classical logic is non-constructive as it doesn't require witnesses.

### Syntax

Formulas of propositional IL are built up from propositional variables and the propositional constant `⊥` using logical connectives. There are:
1. A denumerable set `At₀` of propositional variables `p₀`, `p₁`, etc.
2. The propositional constant for falsity, `⊥`
3. The logical connectives:
  - `∧` conjunction
  - `∨` disjunction
  - `→` conditional
4. Punctuations: parenthesis and comma
5. Shorthands:
  - negation: `¬p` is allowed shorthand for `p -> ⊥`
  - bijection: `p <-> q` is allowed shorthand for `p -> q ∧ q -> p`


[※.def.formula]    
The set `Frm(L₀)` of formulas of PIL is defined inductively as follows:
  1. `⊥` is an atomic formula
  2. Every propositional variable `pᵢ` is an atomic formula
  3. If p and q are formulas, then `p ∧ q` is a formula
  4. If p and q are formulas, then `p ∨ q` is a formula
  5. If p and q are formulas, then `p → q` is a formula
  6. Nothing else is a formula
  7. Defined symbols (shorthand): `¬` negation, `<->` `biconditional`


### BHK interpretation

There is an informal constructive interpretation of the intuitionist connectives, known as the *Brouwer-Heyting-Kolmogorov interpretation*. It uses the notion of *construction*, which can be thought of as *constructive proof*.

BHK interpretation explains the meanings of the intuitionistic connectives:
1. We assume we know what constitutes a construction of an atomic statement
2. Construction of `p ∧ q` is `⟨M₁,M₂⟩` pair: `M₁` for `p`, `M₂` for `q`
3. Construction of `p ∨ q` is `⟨s,M⟩` pair: `s` is 1 or 2, `M` is p or q
4. Construction of `p → q` is a fn that converts cons of `p` into cons of `q`
5. Construction of `¬p` is a fn that converts constr of `p` into a cons of `⊥`
6. Absurdity i.e. `⊥` cannot be constructed

In general, `¬p` suggests the construction of `p` is impossible.

SUmmary of PIL connectives:
- C of `p ∧ q` is a pair `⟨Cᴘ,Cǫ⟩`
- C of `p ∨ q` is a pair `⟨s,C⟩` where s=(1|2), C=(p|q)
- C of `p → q` is a fn `Cᴘ -> Cǫ`
- `⊥` has no C
- C of `¬p` is `p -> ⊥` is a fn `Cᴘ -> C⊥` (i.e. `p` cannot be constructed)
- `¬` is `(-> ⊥)` so `¬p` is `p -> ⊥`, and `¬¬p` is `(p -> ⊥) -> ⊥`
where:
- C  = construction
- Cᴘ = construction of `p`
- Cǫ = construction of `q`
- C⊥ = construction of `⊥`
- Cᴘ → Cǫ is a function from the construction of p to the construction of q

#### Law of Excluded Middle

The Law of Excluded Middle (LEM) can be expressed through the statement `p ∨ ¬p`. We can prove it for some specific `p` (e.g. `⊥ ∨ ¬⊥`), but not in general. This is because the intuitionistic disjunction requires a construction of one of the disjuncts, but there are statements which currently can neither be proved nor refuted (e.g. Goldbach's conjecture). However, the law of excluded middle cannot be refuted either, so `¬¬(p ∨ ¬p)` holds.


#### Example proofs

[forgetaboutit] Prove that `p -> ¬¬p` for any proposition `p`, i.e. `p -> ((p -> ⊥) -> ⊥)`. The construction should be a function `f` that, given a construction `M` of `p` returns a construction, `f(M)`, of `(p → ⊥) → ⊥`.

Here is how `f` constructs the construction of `(p → ⊥) → ⊥`: we have to define a function `g` which, when given a construction `h` of `p → ⊥` as input, outputs a construction of `⊥`. We can define `g` as follows: apply the input `h` to the construction `M` of `p` (that we received earlier). Since the output `h(M)` of `h` is a construction of `⊥`, then `f(M)(h) = h(M)` is a construction of `⊥` whenever `M` is a construction of `p`.

Using the BHK interpretation to show the intuitionistic validity of formulas quickly becomes cumbersome. Fortunately, there are better derivation systems for intuitionistic logic, and more precise semantic interpretations.


## Natural Deduction

Natural deduction (without the possibility of constructing ⊥) is a standard derivation system for IL. In the rules, in each case, we think of a rule which allows us to conclude that, if the premises have constructions, so does the conclusion.

- Since natural deduction derivations have undischarged assumptions, we should consider such a derivation, e.g. of `p` from undischarged assumptions `Γ`, as a function that turns constructions of all `q ∈ Γ` into a construction of `p`.
- If there is a derivation of `p` from no undischarged assumptions, then there is a construction of `p` in the sense of the BHK interpretation.
- An assumption `p` by itself is a derivation of `p` from the undischarged assumption `p`, which agrees with the BHK-interpretation: the identity function on constructions turns any construction of `p` into a construction of `p`.

¬p: p -> ⊥ ==?== ¬p: p -> F
¬p: p -> F ==>
¬F: F -> ⊥ ==?== ¬F: F -> F
¬F: F -> F ==?==> T: F -> F ==> T: (T -> F) -> F
T: (T -> F) -> F ==?== (T -> ⊥) -> ⊥

¬p: p -> F ==>
¬T: T -> F ==?==> F: T -> F ==> F: (F -> F) -> F (RAA)


https://en.wikipedia.org/wiki/List_of_rules_of_inference

### Conjunction

p   q             p ∧ q        p ∧ q
----- ∧I          ----- ∧E₁    ----- ∧E₂
p ∧ q               p            q


### Conditional

If we get a derivation of `q` from undischarged assumption `p`, then there is a function `f` that turns constructions of `p` into constructions of `q`; that function is a construction of `p -> q`. So, if the premise of `→I` (implication introduction) has a construction dependent on a construction of `p`, then the conclusion `p -> q` has a construction.

 [p]¹
  ⫶
  q               p   p → q
------ →I¹       ----------- →E or MP
p → q                 q


### Disjunction

                                      [p]ⁱ   [q]ⁱ
                                      ⫶        ⫶
  p           q               p ∧ q   r       r
----- ∨I₁   ----- ∨I₂         ------------------- ∨Eᵢ (i = 1|l|eft or 2|r|ight)
p ∨ q       p ∨ q                     r



### Absurdity

  ⊥
----- ⊥I
  p


If we have a derivation of `⊥` from undischarged assumption `p`, then we have a function `p -> ⊥`, i.e. we have proven the negation of `p` (that is, `p` cannot be constructed, aka, `p` is false).


### Negation

Since negation, `¬p`, is defined as `p -> ⊥`, we don't need rules for `¬`. However, if we did, they would be:


 [p]¹
  ⫶
  ⊥               p  ¬p
------ ¬I¹       ------- ¬E
 ¬p                 ⊥



#### Examples of derivations

* example 1: |- `a -> ((a -> b) -> b)`

0 a -> ((a -> b) -> b)       P
1 . a¹                       A¹
2 . . (a -> b)²              A²
3 . . b                      MP 1,2
4 . (a -> b) -> b            ->I 2-3 (A²)
5 a -> ((a -> b) -> b)       ->I 1-4 (A¹)


* example 2: |- `((a ∧ b) -> c)` -> `(a -> (b -> c))` (AKA curry)

0 (a ∧ b) -> c    P
1 . a¹            A¹
2 . . b²          A²
3 . . a ∧ b       ∧i
4 . . c           MP 0,3
5 . b -> c        ->i A²
6 a -> b -> c     ->i A¹


## Axiomatic Derivations

Axiomatic derivations for intuitionistic propositional logic are the conceptually simplest, and historically first, derivation systems. They workthe same as in classical propositional logic.


### Derivability

If `Γ` is a set of formulas of `L` then a derivation from `Γ` is a finite sequence `p₁, p₂, ..., pₙ` of formulas where for each `i <= n` one of the following holds:
1. pᵢ ∈ Γ
2. pᵢ is an axiom
3. pᵢ follows from some pⱼ and pₖ with j,k < i by modus ponens, `pₖ ≡ pⱼ -> pᵢ`


### Axioms

The set of `Ax` of axioms for the intuitionistic propositional logic are all formulas of the following forms:
1. `(a ∧ b) => a`                                 ∧E₁
2. `(a ∧ b) => b`                                 ∧E₂
3. `a -> (b -> (a ∧ b))`                          .
4. `a -> (a ∨ b)`                                 ∨Iʀ
5. `a -> (b ∨ a)`                                 ∨Iʟ
7. `a -> (b -> a)`                                .
6. `(a -> c) -> ((b -> c) => (a ∨ b) -> c))`      .
8. `(a -> (b -> c)) => ((a -> b) -> (a -> c))`    distributivity
9. `⊥ -> p`                                       ENQ (ex nihilo)



### Propositions as types

What types are inhabited? It is easy to find an expression of the type A -> A, but it seems that there is no expression of type A -> B. We can reason that any expression of that type should be able to transform any given input type onto any desired output type, and that such an expression would not be possible.

The rules of lambda calculus are similar to the rules of the intuitionistic propositional logic:

> A type is inhabited iff the type (reading arrows as logical implications) is a tautology of propositional logic.

The axioms of intuitionistic propositional logic:
- every expression implies itself, `I : a -> a`
- we can discard an assumption to arrive at a conclusion `K : a -> b -> a`
- an assumption can be used multiple times to arrive at intermediate conclusions, `S : (a -> b -> c) -> (a -> b) -> a -> c`

And these are precisely the types of the SKI combinators. As any lambda expression can be written in terms of these combinators, every lambda expression of a type is actually a proof of the proposition the type represents.

The Curry-Howard isomorphism not only states the correspondence between types and propositions and between terms and proofs; but a full isomorphism with respect to term evaluation and proof simplification. That is, if a term corresponds to a proof, the fully evaluated term corresponds to a fully simplified proof.

logic                     | program       
--------------------------|---------------
proposition               | type          
proof                     | term          
assumption                | variable      
discharged assumption     | bound variable
non-discharged assumption | free variable 
implication               | function type 
conjunction               | product type  
disjunction               | sum type      
absurdity                 | bottom type   
