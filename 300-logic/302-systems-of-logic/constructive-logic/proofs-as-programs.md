# Proofs as programs

Now we investigate a computational interpretation of constructive proofs and relate it to functional programming. On the propositional fragment of logic this is referred to as the *Curry-Howard isomorphism* [How80]. 

>From the very outset of the development of constructive logic and mathematics, the central idea was that proofs should represent constructions.

The Curry-Howard isomorphism is only a particularly poignant and beautiful realization of this idea. In a highly influential subsequent paper, Martin-Löf [ML80] has developed these notions further, creating a more expressive calculus called *Martin-Löf's type theory*, which due to its computatinal content serves as the foundation of many modern proof assistants.

## Propositions as types

The Curry-Howard isomorphism is almost synonymous, or at least it automatically brings associations, to two other phrases, frequently encountered together in this setting: propositions-as-types and proofs-as-programs.

To illustrate the relationship between proofs and programs, we introduce a new judgment, `M : A`, which says that `M` is a *proof term* for proposition `A`, presupposing `A prop` (that `A` is a proposition). The same judgment is also interpreted to mean that `M` is a program of type `A`. Such interpretations are at the core of the Curry-Howard isomorphism; we think of `M` as a term that represents the proof of `A true`, or we think of `A` as the type of program `M`.

We intend that if `M : A` then `A true`. Conversely, if `A true` then `M : A`.

But we want something more: every deduction of `M : A` should correspond to a deduction of `A true` with an identical structure, and vice versa. To show this clearly we'll annotate inference rules of natural deduction with proof terms.

(...)

## Primitive Recursion

In the preceding sections we have developed an interpretation of propositions as types. This interpretation yields
- function types (from implication)
- product types (from conjunction)
- unit type (from truth)
- sum types (from disjunction)
- empty type (from falsehood)

What is missing for a reasonable programming language are basic data types such as natural numbers, integers, lists, trees, etc. 

There are several approaches to incorporating basic types into this framework.
* One is to add a general definition mechanism for recursive types or inductive types.
* Another option is to specify each type in a way which is analogous to the definitions of the logical connectives via introduction and elimination rules.
* A third way is to use the constructs we already have to define data. This was Church's original approach culminating in the so-called Church numerals.

We'll pursue the second option and introduce types as a first-class notion; this is not strictly necessary, but it avoids the question what, e.g. `nat` means as a proposition.

Accordingly, we have a new judgment `τ type` meaning "τ is a type". To understand the meaning of a type means to understand what elements it has. We therefore need a second judgment `t ∈ τ` (term `t` is an element of type `τ`) that is defined by introduction and elimination rules. As in the case of logical connectives, computation arises from the meeting of elimination and introduction rules.

As a step from propositional logic to first-order logic, we'll introduce new propositions of the form `∀x ∈ τ. A(x)` and `∃x ∈ τ. A(x)`. This logic is called first-order because we can quantify only over elements of data types, but not propositions themselves.

### Natural numbers

The formation rule is trivial: `nat` is a type. Then we state two of Peano's axioms in judgmental form as introduction rules:
- 0 is a natural numbers
- if `n` is a nat then so is its successor `s(n)`

```hs
                                           n nat
--------- nat-F     -------- nat-I-0    ---------- nat-I-s
nat Type             0 nat               s(n) nat
```

The elimination rule is more difficult to construct. Assume we have a natural `n`; we cannot directly take its predecessor, for example, because we don't know which intro rule was used to construct `n`. This is similar to casing a disjunction, so here we do the same: we distinguish naturals by cases. In general, it turns out this is not sufficient, but our first approximation for an elimination rule is:

```hs
                           ------- ˣ
                           x ∈ nat
                              ⁞
n ∈ nat        t₀ ∈ τ       tₛ ∈ τ
---------------------------------- ˣ
case n of 0 => t₀ | s(x) => tₛ ∈ τ
```

Note that `x` is introduced in the third premise; its scope is `tₛ`. First, we rewrite this using our more concise notation for hypothetical judgments. For now, `Γ` contains assumptions of the form `x ∈ τ`. Later, we will add logical assumptions of the form `u : A`.

```hs
Γ          ⊢ n ∈ nat
Γ          ⊢ t₀ ∈ τ
Γ, x ∈ nat ⊢ tₛ ∈ τ
--------------------------------------- nat-E
Γ ⊢ case n of 0    => t₀
            | s(x) => tₛ   ∈ τ
```

This elimination rule is sound, and under the computational interpretation of terms, type preservation holds.

The reductions rules:

```hs
(case 0    of 0 => t₀ | s(x) => tₛ)  -->>  t₀

(case s(n) of 0 => t₀ | s(x) => tₛ)  -->>  [x:=n]tₛ
```


In order to use this in writing programs independently of the logic developed earlier, we now introduce function types in a way that is isomorphic to implication.

```hs
τ type    σ type
----------------- →F
  τ → σ type


Γ, x ∈ σ ⊢ t ∈ τ
------------------------ →I
Γ ⊢ λ(x ∈ σ). t ∈ σ → τ


Γ ⊢ s ∈ σ → τ     Γ ⊢ t ∈ σ
-------------------------------- →E
        Γ ⊢ s t ∈ τ

--------------------------- →β
(λ(x ∈ σ). s)t -->> [x:=t]s
```

Now we can write a function for truncated predecessor: the predecessor of 0 is defined to be 0; otherwise the predecessor of `s(n)` is simply `n`. We phrase this as a notational definition.

    pred := λ(x ∈ nat). case x of 0 => 0 | s(y) => y

As a next example, we consider a function which doubles its argument. The behavior of the double function on an argument is specified as follows:

    double(0) = 0
    double(s(n)) = s(s(double(n)))

Unfortunately, there is no way to transcribe this definition into an application of the case-construct for naturals, since it is recursive: the rhs contains an occurrence of 'double', the function we are trying to define.

Fortunately, we can generalize the elimination construct for naturals to permit this kind of recursion which is called **primitive recursion**. Note that we can define the value of a function on `s(n)` only in terms of `n` and the value of the function on `n`.

```hs
Γ                   ⊢ n ∈ nat
Γ                   ⊢ t₀ ∈ τ
Γ, x ∈ nat, f x ∈ τ ⊢ tₛ ∈ τ
--------------------------------- nat-E ᶠ ˣ
Γ ⊢ rec t of f 0     => t₀
           | f (s x) => tₛ   ∈ τ
```

Here, `f` may not occur in `t₀` and can only occur in the form `f x` in `tₛ` to denote the result of the recursive call. Essentially, `f x` is just the mnemonic name of a new variable for the result of the recursive call. Moreover, `x` is bound with scope `tₛ`. 

The *reduction rules* are now recursive:

```hs
(rec 0     of f 0     => t₀
            | f (s x) => tₛ)  -->> t₀

(rec (s n) of f 0     => t₀
            | f (s x) => tₛ)  -->>
              [f x:=(rec n of f 0 => t₀ | f (s x) => tₛ)][x:=n]tₛ
```

For example, the 'double' function in notational definition is:

```hs
double = λ(n ∈ nat).
  rec n of d 0     => 0
         | d (s x) => s (s (d x))
```

Now `double (s 0)` can be computed as follows

```hs
(λ(n ∈ nat).
  rec n of d 0     => 0
         | d (s n') => s (s (d n'))
  )(s 0)

-- d = double which is applied to (s 0)

-- bound the arg, n:=s 0
-->> rec (s 0) of d 0     => 0
                | d (s n') => s (s (d n'))

-- s (s (d n')) = s (s (d 0))

-->> s (s (rec 0 of d 0     => 0
                  | d (s n') => s (s (d n'))))

-- d 0 = 0

-->> s (s 0)
```

## List

```hs
-- List formation

τ type
------------ List-F
List τ type


-- List intro

----------------- List-Iⁿ
Γ ⊢ nil ∈ List τ

Γ ⊢ x ∈ τ     Γ ⊢ xs ∈ List τ
------------------------------ List-Iᶜ
Γ ⊢ (x :: xs) ∈ List τ
```

The elimination rule of list implements the *schema of primitive recursion* over lists, specified as follows:

```hs
-- (-)ⁿ is nil
f nil = sⁿ
-- (-)ᶜ is cons
f (x :: xs) = sᶜ x xs (f xs)
```

where we have indicated that `sᶜ` may mention `x`, `xs`, and `f xs`, but no other occurrences of `f`. This *guarantees termination*.

```hs
Γ                               ⊢ t ∈ List τ
Γ                               ⊢ sⁿ ∈ σ
Γ, x ∈ τ, xs ∈ List τ, f xs ∈ σ ⊢ sᶜ ∈ σ
--------------------------------------------- List-E
Γ ⊢ rec t of f nil       => sⁿ
           | f (x :: xs) => sᶜ ∈ σ
```

We have overloaded the `rec` constructor here - from the type of `t` we can always tell if it should recurse over nat or list.

The *reduction rules* for list are recursive, as in the case for nat:

```hs
(rec nil       of f nil       => sⁿ
                | f (x :: xs) => sᶜ)  -->> sⁿ

(rec (h :: t) of f nil       => sⁿ
               | f (x :: xs) => sᶜ)  -->>
            [f xs:=(rec t of f nil => sⁿ | f (x :: xs) => sᶜ)][x:=h][xs:=t]sᶜ
```

(...)

## Predicates on Data Types
