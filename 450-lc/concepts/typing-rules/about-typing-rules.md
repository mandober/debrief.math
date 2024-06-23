# About typing rules

The *Curry-Howard isomorphism* was first recognized as a correspondence between propositional logic and STLC. This is shown in the best light when we consider implication in propositional logic and application in STLC.

In propositional logic, each logical connective comes with a set of introduction and elimination forms, called the *rules of inference*.

The *introduction rule for implication* (⇒I) says that, if we conclude a proposition `Q` starting from an assumption `P`, then we can discharge the assumption and conclude `P ⇒ Q`.

```
  [P]ᵃ
   ⁝
   Q
-------- (⇒I)
Pᵃ ⇒ Q
```

### Example derivations

Proof derivations in Fitch notation.

#### P ⇒ P

Proof derivation of `P ⇒ P`:

```
1 ass P                 AS¹
2   P                   R 1
3 thus P ⇒ P           ⇒I 1-2
```


#### (P ∧ Q) ⇒ P

Proof derivation of `P ∧ Q ⇒ P`.

```
1 ass P ∧ Q              AS
2   P                    ∧E₁ 1
3 thus (P ∧ Q) ⇒ P      ⇒I 1-2
```

#### (P ∧ Q) ⇒ Q

Proof derivation of `P ∧ Q ⇒ Q`.

```
1 ass P ∧ Q              AS
2   Q                    ∧E₁ 1
3 thus (P ∧ Q) ⇒ Q      ⇒I 1-2
```

#### P ∧ Q ⇒ Q ∧ P

Proof derivation of `P ∧ Q ⇒ Q ∧ P`.

```
1 ass P ∧ Q                  AS
2   P                        ∧E₁ 1
3   Q                        ∧E₂ 1
4   Q ∧ P                    ∧I 2,3
5 thus (P ∧ Q) ⇒ (Q ∧ P)     ⇒I 1-4
```

#### P ⇒ Q ⇒ P ∧ Q

Proof derivation of `P ⇒ (Q ⇒ (P ∧ Q))`.

```
1 ass P
2   ass Q
3     P
4     Q
5     P ∧ Q
6   thus Q ⇒ (P ∧ Q)
7 thus P ⇒ (Q ⇒ P ∧ Q)
```

#### P ⇒ Q ⇒ P

Proof derivation of `P ⇒ Q ⇒ P`

```
1 ass P                 AS¹
2   ass Q               AS²
3     P                 R (reiterate) 1
4   thus Q ⇒ P          ⇒I 2-3
5 thus P ⇒ (Q ⇒ P)     ⇒I 1-4
```

#### ((P ⇒ Q) ⇒ P) ⇒ P

For example, the proof derivation of `((P ⇒ Q) ⇒ P) ⇒ P`

```
1 ass P                 AS¹
2   ass Q               AS²
3     P                 R (reiterate) 1
4   thus Q ⇒ P          ⇒I 2-3
5 thus P ⇒ (Q ⇒ P)     ⇒I 1-4


x ass 
x   ass 
x     ass Q
x       ass P
x         Q


x     ass Q

x       ass P
x         Q
x       thus P ⇒ Q
x     thus P ⇒ Q
x   thus (P ⇒ Q) ⇒ P
x thus ((P ⇒ Q) ⇒ P) ⇒ P
```



This has a more succint form in the sequent calculus notation

```
P ⊢ Q
--------- (⇒I)
⊢ P ⇒ Q
```

however, the first form better shows the restrictions.



Compare it with the typing rule for application in STLC:

```
Γ, x ⊢ e
--------- Abs
Γ ⊢ λx.e
```






Curiously, to form an abstraction, we take a (free) variable and an arbitary expression and join them together as a new lambda term called abstraction, by letting the variable capture the same-named occurrences in the expression. That expression then becomes the body of the abstraction and the variable claims its binding role (for its free occurrences in the exp) by being placed next to the lambda binder (`λ`) in the abstraction's head. This is described by the abstraction formation rule (or abs typing rule),

```
Γ, x ⊢ e                   Γ, x : τ ⊢ e : σ
--------- Abs              ----------------- T∙Abs
Γ ⊢ λx.e                   Γ ⊢ λx.e : τ
```

Propositional logic has the same rule, only with terms stripped, called implication introduction (⇒I)

```
  [P]¹
   ⁝
   Q
-------- ⇒I
P¹ ⇒ Q
```

but there is some discrpancy since in PL, `P` may be any proposition 
