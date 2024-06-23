# 1.1 Propositional logic

Propositional logic formalises arguments which involve the *logic connectives* such as 'and', 'or', 'not', 'implies' and so on.

Using these connectives we build *complex propositions* starting from the *propositional variables* or *atomic propositions*.

The formal syntax is given by stating that a formula is either
- a *propositional variable* X₀, X₁, X₂, ...
- a *compound formula* of the forms (where A and B are *formulas*):
  - A ∧ B
  - A ⇒ B
  - A ∨ B
  - ⊥
  - A ⇔ B
  - ¬A


These variables (A, B, etc.) are in the *metalanguage* which is used to discuss the *object language* introduced by the syntax definition above.


There are two parts to the description of a logical system:
1. We introduce language in which the assertions or *propositions* are written
2. We must than describe what are the *valid arguments*

**Valid arguments** are called the *proofs* or *derivations* of the system.

The general **form of an argument** is to *infer a conclusion* on the basis of some (or possibly no) *assumptions*.

Larger *derivations* are built up *inductively* from smaller ones by the application of deduction rules.

## Deduction rules of propositional logic

Deduction rules
- Assumption rule
- Conjunction introduction, `∧I`
- Conjunction introduction, `∧E₁` and `∧E₂`
- Implication introduction, `⇒I`
- Implication elimination, `⇒E`
- Disjunction introduction, `∨I₁` and `∨I₂`
- Disjunction elimination, `∨E`
- Falsum elimination, `⊥E`
- Negation, `¬A` ≡ `A -> ⊥`
- Biconditional, `A ⇔ B` ≡ `(A ⇒ B) ∧ (B ⇒ A)`


### Assumption

The simplest derivations are introduced by *the rule of assumptions*, which states that

>any formula `A` can be derived from the assumption of `A` itself.

The proof `A` is a proof of the formula `A` from the assumption `A`.


### Conjunction introduction

From proofs of `A` and `B` we can infer `A ∧ B` by **the rule of conjunction introduction**.

A   B
----- (∧I)
A ∧ B

* The assumptions upon which the proof of `A ∧ B` depends are those of the proofs of `A` and `B` combined.

The rule states that we can introduce a conjunction when we have proofs of its two component halves.

### Conjunction elimination

Conversely, we have a rule which states what we can infer on the basis of a conjunction; in other words it tells us when we can eliminate a conjunction.

From a proof of `A ∧ B` we can infer both `A` and `B` by the two rules of conjunction elimination.

A   B               A   B
----- (∧E₁)         ----- (∧E₂)
  A                   B

The assumptions upon which the proofs of `A` and `B` depend are those of
the proof of `A ∧ B`.

### Implication

The `A ⇒ B` means that expressing `A` implies `B`, or that we can deduce `B` from `A`. We can conclude `A ⇒ B` when we have a *deduction of `B` assuming `A`*.

The assumptions upon which this new proof of `A ⇒ B` depends are all those on which the proof of `B` depends, *except the assumption `A` itself* (which we discharge). 
The reason that we no longer depend on `A` is that `A` has become the *hypothesis* in the formula `A ⇒ B`. This expresses with a logic formula that we can deduce `B` from `A`. 
This is reinforced by the elimination rule for implication which states that given both, the proof of `A`, as well as the proof of `A ⇒ B`, we can infer `B`.

#### Implication introduction

From a proof of the formula `B`, 
which may depend upon the assumption `A` (amongst others), 
we can infer the formula `A ⇒ B` 
from the same set of assumptions 
but with `A` removed.

```
  [A]¹
   ⋮
   B
------ (⇒I)¹
A -> B
```

The square brackets around `A` indicate that all occurrences of the assumption `A` in the proof of `B` must be *discharged*.

When there's more than one of these rules, superscript enumerates assumptions,
indicating the link between the discharged assumption and the instance of the rule discharging it.

It should be stressed that the proof of formula `B` need not contain the assumption `A` for this rule to be applied, ie. `B ⇒ (A ⇒ B)` is not needed.


#### Implication elimination

From proofs of the formulas `A` and `A ⇒ B` we can infer the formula `B`.

The assumptions upon which the proof of `B` depends are 
those of the proof of `A` and 
those of the proof of `A ⇒ B` 
combined.

```
A   A ⇒ B
---------- (⇒E)
    B
```


### Disjunction introduction

We can introduce `A ∨ B` if we have either a proof of `A` or a proof of `B`. 
The assumptions of the proof of `A ∨ B` are those of the proof of `A`, or of the proof of `B`.

We write the rules thus:

```
A               B
----- ∨I₁  ------- ∨I₂
A ∨ B       A ∨ B
```

### Disjunction elimination

Suppose we know that a particular formula `C` is a consequence of `A` *and*
is a consequence of `B` - it should then be a consequence of `A ∨ B`.

`(A -> C) ∧ (B -> C) <=> (A ∨ B) -> C`

This gives the law of *∨-elimination*:

```
        [A]   [B]
         ⁞     ⁞
A ∨ B    C     C
------------------- ∨E
        C
```

If we have all these 3 proofs, then we can infer `C`:
1. a proof of `A ∨ B`
2. a proof of `C` from `A` (a proof of C that may incl A amongst assumptions)
3. a proof of `C` from `B` (a proof of C that may incl B amongst assumptions)

That is, these 3 proofs:
- `A ∨ B`
- `A -> C`
- `B -> C`
allows us to infer `C`.

The assumption of `A` in the first proof of `C`, 
and the assumption of `B` in the second proof of `C` 
are discharged.

This is called *case analysys* because we must analyse both cases, `A` and `B`, in `A ∨ B`, in order to infer `C`.


A further example is given by the following derivation in which we see discharge of assumptions due to both (⇒ I) and (∨E).

We look at a proof in which we have a disjunctive assumption `A ∨ B`. 
The elimination rule is one way to use the assumption: 
we prove a result assuming `A` and we prove a result assuming `B`, 
then from these proofs we get the proof of `A ∨ B`.

```
0 A ∨ B
1   assume A
2     assume (A -> C) ∧ (B -> C)
3       (A -> C)                       ∧E₁ 2
4       C                              ⇒E 3,1
5     thus A ⇒ C                       ⇒I 1-4
6   assume B
7     assume (A -> C) ∧ (B -> C)
8       (B -> C)                        ∧E₂ 7
9       C                               ⇒E 8,6
10    thus B ⇒ C                       ⇒I 6-9
11  thus C                             ∨E 0,5,10
```


### Falsum

The final connective we introduce is falsum, `⟘`, i.e. absurdity, or the false proposition.

The fact that `⊥` means contradiction suggests that there is no way of introducing the proposition, and so it has no introduction rule.

#### ⊥ Elimination

From a proof of `⟘` we can infer any formula `A`, `⟘ -> A`.

The assumptions of the latter proof, `⟘ -> A`, are those of the former, `⟘`.

```
  ⟘
------- ⊥E
  A
```

If `⊥` does occur, then we have a contradiction, which means that any formula `A` can be derived, i.e. "ex falso quodlibet". And the system can be officially declared as unsound like the initial version of the λ-calculus.


### Negation

Using falsum we can define negation in terms of it.

We define the negation of any formula `A` by `A -> ⟘`:

>`¬A` := `A ⇒ ⊥`

#### Negation introduction

```
 [A]   [A]
  ⁞     ⁞
  B    ¬B
----------- ¬I
    ¬A
```

#### Negation elimination

```
A   ¬A
------- ¬E
  B
```

If we have both `A` amd `¬A` then we can derive any formula `B`.

### Biconditional

Bi-implication is defined as a shorthand: `⇔` is defined in terms of implication and conjunction:

`A ⇔ B` ≡ `(A ⇒ B) ∧ (B ⇒ A)`

and we can derive the rules for `A ⇔ B` by decomposing the shorthand.

### From intuitionistic to classical logic

The system introduced above is intuitionistic and constructive. 
Some rules of classical logic are not admited here. 

>There are ways to embedd classical into the system of intuitionistic logic.

Classical logic is based on a truth-functional theory of meaning, and every proposition is considered to be either true or false as established by the law of the excluded middle (LEM), `P` or `¬P`. This means that it is accepted as a general truth in the system that, for every proposition `P`, `P ∨ ¬P`, is true.

To put this in the form of the rules of IL, we can introduce a rule with no assumptions (hypotheses) - *the rule for the law of the excluded middle*:

```
------- EM
P ∨ ¬P
```

Alternative rules which characterise classical logic (as an extension of the intuitionistic logic above) are *the rule of double negation*:

```
¬¬P
------- DN
  P
```

and *the rule of proof by contradiction*:

```
[¬A]  [¬A]
  ⁞     ⁞
  B    ¬B
----------- (CC)
     A
```


### Examples

Now we can consider some examples:

```
A   B
------- ∧I
A ∧ B          (A ∧ B) ⇒ C
---------------------------- ⇒E
             C
```

This derivation has 3 assumptions, `B`, `A` and `(A ∧ B) ⇒ C`, 
but we can discharge them all to get 
the formula `((A ∧ B) ⇒ C) ⇒ (A ⇒ (B ⇒ C))`.

```
1 assume A
2   assume B
3     A ∧ B                 by ∧I 1,2
4     assume (A ∧ B ⇒ C)
5     C                     by ⇒E 4,3
6   thus (B ⇒ C)            by ⇒I 2,5
7 thus A ⇒ (B ⇒ C)         by ⇒I 1,6


So (A ∧ B) ⇒ C) |- (A ⇒ (B ⇒ C)
```

In this example, we see how a deduction can be free of assumptions. As the deduction proceeds, we eliminate all the assumptions we have introduced.

Other formulas we can derive in this way include `A ⇒ A`, derived thus:

```
1 assume A
2   A           by retort 1
3 thus A ⇒ A    by ⇒I 1,2
```

and the formula `B ⇒ (A ⇒ B)`, "if B is true then it is a consequence of any
formula A", which is deduced as follows:

```
1 assume A
2   assume B
3     A               by restate 1
4   thus B ⇒ A        by ⇒I 2,3
5 thus A ⇒ (B ⇒ A)    by ⇒I 1,4
```

Observe that in describing the introduction rule, we said that the deduction of `B` from `A` *may involve* the assumption `A`. It is not forced to, and we can infer `A ⇒ B` from a proof of `B` not involving `A`. In proving `B ⇒ (A ⇒ B)` we first introduce the assumption `B`, then discharge the assumption `A`, and finally discharge the assumption `B`.


### Exercises

Using one of the classical systems, give a derivation of the formula 
`((A ⇒ B) ⇒ A) ⇒ A` aka the *Pierce's Law*.
