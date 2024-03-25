# Sequent Calculus :: Exploration of rules

Rules of inference are often writen in their *shorthand forms*: 
concatenation of the operator in its symbolic form (¬,∧,∨,→,∀,∃) 
with the side of the sequent it is related to (either L or R). 

A rule is cited next to each inference line:
- in the definition of a rule, the rule ID is unparenthesized, e.g. `→R`
- the use of a rule (a reference to it) is parenthesized, e.g. `(→R)`

The rule IDs:
- from axioms to goals: `{Ax,CUT}` ⋃ `{¬,∧,∨,→,∀,∃}{L,R}` ⋃ `{W,C,P}{L,R}`
  - Ax    axiom (assumption)
  - CUT   the cut rule
  - WL    weakening left
  - WR    weakening right
  - CL    contraction left
  - CR    contraction right
  - PL    permutation left
  - PR    permutation right
  - ¬L    negation left        *friendly*
  - ¬R    negation right       *friendly*
  - ∧L    conjunction left
  - ∧R    conjunction right
  - ∨L    disjunction left
  - ∨R    disjunction right
  - →L    implication left
  - →R    implication right
  - ∀L    forall left         *friendly*
  - ∀R    forall right
  - ∃L    exists left
  - ∃R    exists right        *friendly*

- from goals to axioms: `{L,R}{∧,∨,→,¬}` ⋃ `{Ax}`
  - L∧    left conjunction     *friendly*
  - R∧    right conjunction    **split**
  - L∨    left disjunction     **split**
  - R∨    right disjunction    *friendly*
  - L→    left implication     **split**
  - R→    right implication    *friendly*
  - L¬    left negation        *friendly*
  - R¬    right negation       *friendly*
  - Ax    axiom




## The axiom

The only axiom in the system kicks in (finishing the current sequent branch) when some atomic clause appears on both sides of the turnstile. That is, an atomic clause is *axiomatically true* iff it appears on both sides of the turnstyle (even if accompanied by other atomic clauses, on either side). A logical statement (in the form of a sequent) is true when all sequents are shown to be axiomatically true.

```hs
-- Γ AND A prove A (Γ may contain other hypotheses)

--------- Ax
Γ, A ⊢ A

-- A proves A OR Δ (Δ may contain other conclusions)

--------- Ax
A ⊢ A, Δ
```

## Rules about connectives

When a sequent contains a logical operator, the rules generate one or more further goals to prove.

For example, in order to show `A ∨ B ⊢ A, B` is true, we need to show that both generated sequents are true: `A ⊢ A, B` AND `B ⊢ A, B`, thus eliminating a disjunction.

When `A ∨ B` is on the lhs in a sequent (in its unnatural position, since the lhs contains conjunctions), we cannot just move `A` or `B` to the other side (we could move the whole disjunction, but then we'd get `¬(A ∨ B)` on the right, which is no progress). Instead, in order to eliminate the lhs disjunction, 2 new goals (sequents) are created - one new sequent for each disjunct - and in both subgoals, each disjunct is still on the left.

In sequent calculus, we use *backwards deduction* (from goals to axioms; bottom up) to get rid of logical operators until we are left with only atomic clauses.

For each logical operator, there are exactly 2 inference rules which state new goals: one when the operator is on the lhs (premises), and one when it is on the rhs (conclusions).

```hs
-- the statement of the rule ∨L
Γ, A ⊢ Δ    Γ, B ⊢ Δ
--------------------- ∨L
Γ, A ∨ B ⊢ Δ

-- an example using the rule ∨L
A ⊢ A, B    B ⊢ A, B
--------------------- (∨L)
A ∨ B ⊢ A, B


-- example for rhs implication

--------------------- (Ax)
A ⊢ B, A
--------------------- (→r)
⊢ A → B, A
--------------------- (∨r)
⊢ (A → B) ∨ A

-- or, alternatively:

--------------------- (Ax)
A ⊢ B, A
--------------------- (¬r)
⊢ ¬A, B, A
--------------------- (∨r)
⊢ ¬A ∨ B, A
--------------------- (since A → B ≡ ¬A ∨ B in classic logic)
⊢ A → B, A
--------------------- (∨r)
⊢ (A → B) ∨ A
```

## Quantifier rules

- The rule `∀L` handles universally quantified variable on the left
- The rule `∀R` handles universally quantified variable on the right
- The rule `∃L` handles existentially quantified variable on the left
- The rule `∃R` handles existentially quantified variable on the right

```hs
Γ, A[x:=t] ⊢ Δ                         Γ ⊢ A[x:=y'], Δ
--------------- ∀L                     --------------- ∀R
Γ, ∀x.A ⊢ Δ                            Γ ⊢ ∀x.A, Δ


Γ, A[x:=y'] ⊢ Δ                        Γ ⊢ A[x:=t], Δ
--------------- ∃L                     --------------- ∃R
Γ, ∃x.A ⊢ Δ                            Γ ⊢ ∃x.A, Δ
```

The rules `∀L` and `∃R` are "friendly" because we get to choose what we instantiate the quantified variable with; moreover, we can even pick an already existing name.

The rules `∃L` and `∀R` are "unfriendly" because they both have the same restriction: the instantiated name (represented above by `y'`) must be fresh, i.e. different from all the other existing names in a sequant. This means we canot pick the name, but one is forced onto us.

### Examples with quantifier rules

Consider these examples involving the friendly `∀L` and `∃R` rules:

```hs
Γ, P(a) ⊢ P(a), Δ
--------------------- (∀L)
Γ, ∀x.P(x) ⊢ P(a), Δ


Γ, P(a) ⊢ P(a), Δ
--------------------- (∃R)
Γ, P(a) ⊢ ∃x.P(x), Δ
```

We can easily prove the sequent `Γ, ∀x.P(x) ⊢ P(a), Δ` by instantiating the var `x` to the same name as the indivudual present on the right (`a`). It's that easy because our friendly rule `∀L` permits us to pick any name to instantiate the variable with, so we pick the name `a` to match the constant on the other side; we get `P(a)` on both sides, thus finishing the proof. This sequent is very intuitive anyway: if property `P` holds for the entire domain, `∀x.Px`, then it certainly holds for any individual in that domain, `P(a)`.

The other example, with the sequent `Γ, P(a) ⊢ ∃x.P(x), Δ`, is similary proven thanks to another friendly rule `∃R`. This example is also intuitive: if the property `P` holds of an individual in the domain, `P(a)`, then we can confidently say that there exists at least one member of that domain for which that property holds, `∃x.P(x)`.


Now consider these examples involving the unfriendly `∃L` and `∀R` rules:

```hs
Γ, P(a) ⊢ P(b), Δ
---------------------- (∀R)
Γ, P(a) ⊢ ∀x.P(x), Δ


Γ, P(b) ⊢ P(a), Δ
---------------------- (∃L)
Γ, ∃x.P(x) ⊢ P(a), Δ
```

In the first example, in the sequant `Γ, P(a) ⊢ ∀x.P(x), Δ`: as soon as we instantiate the var `x`, we get a fresh term for the whole sequent, e.g. `b`, so then we cannot match `P(a)` on the left with `P(b)` on the right.

It's similar in the second example: the existentially quantified `x` on the left is instantiated with a fresh name `b`, so `P(b)` on the left cannot be matched with `P(a)` on the right.

This is often referred to as the *no free occurrence* rule. The intuition for why this happens is to consider that it's generally harder to prove something for all individuals, than it is for just one.

In practice, this means is that *the order we apply tactics (instantiate vars) is important*:

```hs
P(a) ⊢ P(a)
--------------------- (∀l)
∀x.P(x) ⊢ P(a)
--------------------- (∀r)
∀x.P(x) ⊢ ∀x.P(x)
```

In general, we should first instantiate the vars in the rules `∃r` and `∀l` because these names are forced (fresh). Only then should we deal with the `∃l` and `∀r` rules.











## Refs

http://logitext.mit.edu/logitext.fcgi/tutorial
