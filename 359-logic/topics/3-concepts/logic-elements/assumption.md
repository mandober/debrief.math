# Assumption

https://en.wikipedia.org/wiki/Assumption


An **assumption** (premise, hypothesis) is a statement introduced into an argument, whose truth value is accepted as true.

Assumptions are essential for the proof derivation procedure in natural deduction because they provide a way for us to introduce new statements into the argument. We can always introduce an assumption `φ` because, for all formulas, `φ` entails `φ`, that is `φ |- φ`.

```js
------ AS¹
φ |- φ
```


Making an assumption `p` puts us in the subproof contextofthederivationprocedure. Within the nested scope, we can refer to the statements from the outer scopes (but not the other way around) as we work toward deriving a conclusion. That conclusion we derive, call it `q`, permits us to discharge the corresponding assumption, `p`, introducing a new formula, `p -> q`. This inference rule is called *implication introduction* and scematically it looks like this:

```js
   [p]ⁱ
    ⋮
    q
---------- →I
[p]ⁱ -> q
```

We can make any number of assumptions, nesting assumptions within the context of other assumptions as needed. However, it is very important to keep track of the nested scopes, as well as to make sure that each assumption is discharged by a corresponding conclusion, thereby decreasing the level of nesting and introducing the new implication formula in the enclosing scope.

The arguments commonly take the form of the [sequent calculus](./sequent-calculus.md), that presents each argument as an entailment, `Γ |- Δ`.

The proof procedure itself is commonly performed using the [Fitch-style diagram](./fitch-notation.md) that arranges the arguments in a table with enumerated rows.


```js
01 assume ((((a -> b) -> r) -> r) -> ((a -> r) -> r) -> ((b -> r) -> r))
02   assume ((((a -> b) -> r) -> r) -> ((a -> r) -> r))
03     assume (((a -> b) -> r) -> r)
04       assume ((a -> b) -> r)
05         assume (a -> b)
06           assume (a)
07             b
08             r
00             b
00           thus (a -> b)
00           r
00         thus ((a -> b) -> r)
00       thus
00     thus
00   thus
00 thus
```



* Given a formula, we can classify its subformulas into propositions that are given, and the conclusion that we need to derive. However, these "given" propositions are the same thing as assumptions, only privided in advance.

* Assumptions made during the course of proof derivation remain in use only until no longer required, at which point each assumption must be discharged (in the LIFO order).

* In mathematics, `let` keyword is an indicator of assumptions.


These temporary assumptions are not included in the pool of assumptions on which the conclusion depends. The **pool of assumptions** for a particular conclusion is the set of all the assumptions upon which the concluded formula depends. These consist of premises, possibly some intermediate assumptions, earlier theorems now used as lemmas, and also often rely on the implicit common knowledge, i.e. axioms such as associativity, reflexivity, symmetry, transitivity, and many others. The pooled assumptions at the end of a proof (its conclusion) are thus seen to be the premises and depending on the level of formality they can make quite a long list.





Assumption may be formalized as an inference rule, called "assumption (A)" and denoted with nothing above the line and with an arbitrary formula beneath it (where the line means: having proved the content above the line, you may infer the content below it).

An assumption means that any formula entails itself, `φ |- φ`. An assumption is introduced just by extending the context `Γ` without any prerequisites.

```
----- A (assumption)
Γ, φ
```

*Axioms are privileged assumptions* in the sense that axioms are given a priori as the "stable" formulas that reoccur all the time (in a given system). Each axiom can also be introduced as a distinct assumption, but that would only increase verbosity and repetition, with the semantics remaining the same.

In a sequent, `(a ∧ b) -> c |- a -> (b -> c)`, we may consider the antecedent `(a ∧ b) -> c` as a given statement, i.e. as an assumption.

 is considered as a given formula, and we need to prove the consequent. But being "given" means being assumed, so if the antecedent is assumed anyway, we might as well place it on the right of the turnstile: `|- ((a ∧ b) -> c) -> (a -> (b -> c))`.

```
1 assume ((a ∧ b) -> c)                           A¹
2   assume a                                      A²
3     assume b                                    A³
4       a ∧ b                                     ∧I 2,3
5       c                                         MP 1,4
6     therefore (b -> c)                          =>I 3-5 (discharge A³)
7   therefore (a -> (b -> c))                     =>I 2-6 (discharge A²)
8 therefore ((a ∧ b) -> c) -> (a -> (b -> c))     =>I 1-7 (discharge A¹)
```
