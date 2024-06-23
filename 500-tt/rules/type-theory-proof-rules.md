# Type theory proof rules

* {conjunction,disjunction,implication,negation,truth,falsity,forall,exists}
* {formation,introduction,elimination,computation}

There are (at least) 5 kinds of *proof rules*
- formation
- introduction
- elimination
- computation
- cohesion

Logical forms
- conjunction
- disjunction
- implication
- negation
- truth, tautology
- falsity, contradiction
- universal quantification
- existential quantification


The rules, like logical rules, are used to produce derivations of judgements: a rule is applied to derivations of the judgements above the line to produce a derivation of the judgement below the line.

Note that this is a change of terminology from earlier - before, we used inference rules to give proofs of judgements - here we use rules to derive judgements which themselves contain proof objects or constructions.

Proofs and propositions form the object language; derivations are a means by which we infer judgements concerning the object language. Derivations are built inductively by applying the deduction rules.


## Conjunction

The 4 rules for conjunction formation, introduction and elimination, and the computation rules.


```js
// Conjunction formation rule, ∧F

A is a type    B is a type             A : Type    B : Type
-------------------------- (∧F)       ---------------------- (∧F)
      (A ∧ B) is a type                    A ∧ B : Type

// Conjunction introduction rule, ∧I

p : A    q : B
--------------- (∧I)
(p,q) : A ∧ B

// Conjunction elimination rules, ∧E₁ and ∧E₂

r : (A ∧ B)                       r : (A ∧ B)
------------ (∧E₁)                ----------- (∧E₂)
fst r : A                         snd r : B

// Conjunction computation rules, fst and snd

fst (p,q) -->> p
snd (p,q) -->> q
```

The *introduction rule* states that all pairs of proofs are proofs of the conjunction, but leaves open the possibility of other kinds of proof. However, the two *elimination rules* exclude any other sort of proof of the conjunction, since they state that we can extract two component proofs from any proof of the pair. In other words we can read the elimination rule as a *closure rule*. This duality is often encountered with introduction-elimination pairs of rules.


Some rules will involve another judgement, which asserts that a particular sequence of symbols is a type (formula, proposition) - these are called the **formation rules** since they explain the circumstances under which a particular type can be formed. We can't just list the formation rules separately because some types are only well-formed if certain judgements are derivable, linking syntax and derivations inextricably.

Each connective shall have 4 different kinds of rule: introduction and elimination rules are used to introduce and eliminate types involving the particular connective, and formation rules are the rules of syntax for the language of propositions.

**Computation rules** tell us how proofs of types can be *simplified*.

If `p` is a proof of `A` and `q` a proof of `B`, 
then `(p,q)` is a proof of `A ∧ B`.

Now, given a proof `r` that proves `A ∧ B`, 
we can extract the proof of `A` and the proof of `B` 
by applying `fst` and `snd` to the proof `r`.

The operations `fst` and `snd` 
extract the first and the second component (proof) 
out of a pair of proofs 
(i.e. out of a proof of the pair).

```hs
fst (p, q) -->> p
snd (p, q) -->> q
```

It is this computational information about the operations `fst` and `snd` which appears in the computation rules.

The symbol `-->` is read "reduces to", and the symbol `-->>` is also used for the same purpose, although it is perhaps more often used to denote the closure of the reduces-to relation.

## Implication

```js
// Implication formation, →F

A is a Type    B is a Type
-------------------------- (→F)
    (A → B) is a Type


// Implication introduction, →I

          [x : A]
             ⋮
           e : B
-------------------------- (→I)
(λx : A) . e : (A → B)


// Implication elimination

q : (A → B)         a : A
--------------------------(→E)
        (q a) : B

// Implication computation

((λx : A) . e) a -->> e[a ⟼ x]
```

A proof of an implication is a function transforming an arbitrary proof of `A` into a proof of `B`. 

Implication *introduction* is formed by transformation that builds a proof `e` of `B`, assuming that we have an (arbitrary) proof, `x` say, of `A`. The function itself is formed by lambda abstraction over the variable, producing: `(λx : A) . e`. This expression is independent of the variable `x`, since this is bound, reflecting the discharge of the assumption `x : A`.

In the dual case, we *eliminate* an implication by supplying a proof of the hypothesis. The proof of the implication is applied to the proof of the hypothesis to give a proof of the consequent. The elimination rule can also be read as saying that all proofs of `A → B` are functions, since they can all be applied (to the proofs of the appropriate type `A`).

What happens when we apply the proof `(λx : A) . e` of `A → B` to the proof that says that `a : A`? Recall that `e` is a proof of `B`, on the assumption that `x` was a proof of `A`. Now, we have such a proof, `a`, and so we get a proof of `B` by

>substituting `x` with `a` in `e`

where the notation `e[a/x]` or `e[a ⟼ x]` means the expression `e`, in which every free occurrence of `x` is replaced by `a`, where this is done in a way as to avoid free variables becoming bound.
