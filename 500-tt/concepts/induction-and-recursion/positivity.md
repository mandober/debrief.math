# Positivity

https://counterexamples.org/strict-positivity.html#positivity-strict-and-otherwise

## Curry's paradox
https://counterexamples.org/currys-paradox.html

In the simply-typed lambda calculus (which has only function types and a base type), infinite loops are impossible and all programs halt. Surprisingly, this stops being true once recursive types are added, even if no recursive functions or loops are present in the language.

In most languages, there are plenty of ways to write programs that do not terminate, and finding one more is not a soundness issue. However, in total languages (ones in which all programs halt), this does present a soundness issue and the allowable forms of recursive types must be restricted.

The recursive types in question are those that contain a function or method which takes the same type as an argument, which can be used to build a nonterminating computation as follows:

In a total language, type definitions that refer to themselves must be restricted:

```hs
-- Curry's paradox
newtype Curry = Curry { r :: Curry -> Int }

f c = r c c
loop = f (Curry f)
```

In logic, this is known as Curry's paradox. Under the propositions-as-types viewpoint, it causes inconsistency: by replacing `Int` above with any proposition `P` (including `False`), the loop function above proves `P` (ex falso).

To avoid this problem, languages that aim for logical consistency (proof assistants Coq and Agda) ban recursive types that take themselves as arguments to functions or methods (aka *negative recursion*), avoiding Curry's paradox.

In fact, due to a different issue, banning negative recursion is often not enough, and recursive types must be restricted further to *strictly positive recursion* to remain consistent.

## Positivity, strict and otherwise

In a total language, type definitions that refer to themselves must be restricted:

```hs agda coq
-- Agda: rejected
data Bad : Set where
  r : (Bad → ℕ) → Curry
--    ^^^^ negative position

-- Coq: rejected
Inductive bad := r (c : bad -> nat).
```

Here, the type `bad` is defined recursively as consisting of a function that accepts `bad` as the arg. Allowing these negative definitions leads to Curry's paradox, and breaks totality.

The situation is more complicated if the recursive reference is underneath two function arrows:

```hs agda coq
-- also rejected by Coq
Inductive bad2 := r (c : (bad2 -> nat) -> nat).

-- also rejected by Agda
data Bad2 : Set where
  r : ((Bad2 → ℕ) → ℕ) → Bad2
```

This time, however, this is not negative recursion: `bad2` is not defined in terms of functions that accept `bad2` values as an arg, but in terms of functions that may provide `bad2` values to their argument.

This is an instance of **positive recursion** since all recursive references to `bad2` occur to the left of an even number of function arrows.

However, it is not an instance of **strictly positive recursion** in which recursive references are prohiobited to occur on the left side of function arrows.

Recursive definitions which are positive but not strictly positive can cause issues:

```hs agda coq
(* Counterexample by Thierry Coquand and Christine Paulin
   Translated into Coq by Vilhelm Sjöberg *)

(* Phi is a positive, but not strictly positive, operator. *)
Definition Phi (a : Type) := (a -> Prop) -> Prop.

(* If we were allowed to form the inductive type
     Inductive A: Type :=
       introA : Phi A -> A.
   then among other things, we would get the following. *)
Axiom A : Type.
Axiom introA : Phi A -> A.
Axiom matchA : A -> Phi A.
Axiom beta : forall x, matchA (introA x) = x.

(* In particular, introA is an injection. *)
Lemma introA_injective : forall p p', introA p = introA p' -> p = p'.
Proof.
  intros.
  assert (matchA (introA p) = (matchA (introA p'))) as H1 by congruence.
  now repeat rewrite beta in H1.
Qed.

(* However, ... *) 

(* Proposition: For any type A, there cannot be an injection
   from Phi(A) to A. *)

(* For any type X, there is an injection from X to (X->Prop),
   which is λx.(λy.x=y) . *)
Definition i {X:Type} : X -> (X -> Prop) := 
  fun x y => x=y.

Lemma i_injective : forall X (x x' :X), i x = i x' -> x = x'.
Proof.
  intros.
  assert (i x x = i x' x) as H1 by congruence.
  compute in H1.
  symmetry.
  rewrite <- H1.
  reflexivity.
Qed.  

(* Hence, by composition, we get an injection f from A->Prop to A. *)
Definition f : (A->Prop) -> A 
  := fun p => introA (i p).

Lemma f_injective : forall p p', f p = f p' -> p = p'.
Proof.
  unfold f. intros.
  apply introA_injective in H. apply i_injective in H. assumption.
Qed.

(* We are now back to the usual Cantor-Russel paradox. *)
(* We can define *)
Definition P0 : A -> Prop
  := fun x => 
       exists (P:A->Prop), f P = x /\ ~ P x.
  (* i.e., P0 x := x codes a set P such that x∉P. *)

Definition x0 := f P0.

(* We have (P0 x0) iff ~(P0 x0) *)
Lemma bad : (P0 x0) <-> ~(P0 x0).
Proof.
split.
  * intros [P [H1 H2]] H.
    change x0 with (f P0) in H1.
    apply f_injective in H1. rewrite H1 in H2.
    auto.
  * intros.
    exists P0. auto.
Qed.

(* Hence a contradiction. *)
Theorem worse : False.
  pose bad. tauto.
Qed.
```

This counterexample uses 3 ingredients:
- non-strictly-positive definitions
- impredicativity: the ability for definitions of terms in `Prop` 
  to quantify over all of `Prop`
- a universe type: the ability to refer to `Prop` itself as a type 

It appears that all three are necessary:
* The Calculus of Inductive Constructions, upon which Coq is based, is total, and has an impredicative `Prop` and a universe type for `Prop`, but requires all inductive definitions to be strictly positive.
* System F is impredicative, and can encode (or be extended with) non-strictly-positive inductive types while remaining total, but lacks a universe type.
* The combination of non-strictly-positive inductive types and universe types is an unusual one, but poses no theoretical problems in the absence of impredicativity.

## Refs

* Why must inductive types be strictly positive? - Vilhelm Sjöberg, 2015
  http://vilhelms.github.io/posts/why-must-inductive-types-be-strictly-positive/

* Martin Hofmann's Case for Non-Strictly Positive Data Types - 
  Ulrich Berger, Ralph Matthes and Anton Setzer, 2018
  https://hal.archives-ouvertes.fr/hal-02365814

* A Semantic Analysis of Structural Recursion - Andreas Abel, 1999
  http://www.cs.cmu.edu/~abel/publications.html

* Inductive types in the Calculus of Algebraic Constructions - 
  Frédéric Blanqui, 2006
  https://arxiv.org/abs/cs/0610070
