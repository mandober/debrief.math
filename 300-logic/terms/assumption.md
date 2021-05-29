# Assumption

An assumption is a statement which is introduced into an argument, whose truth value is accepted as true. In mathematics, `let` keyword is an indicator of assumptions.

Assumptions made during the course of proof derivation remain in use only until no longer required, at which point each assumption must be discharged (in the LIFO order). These temporary assumptions are not included in the pool of assumptions on which the conclusion depends. The **pool of assumptions** for a particular conclusion is the set of all the assumptions upon which the concluded formula depends. These consist of premises, possibly some intermediate assumptions, earlier theorems now used as lemmas, and also often rely on the implicit common knowledge, i.e. axioms such as associativity, reflexivity, symmetry, transitivity, and many others. The pooled assumptions at the end of a proof (its conclusion) are thus seen to be the premises and depending on the level of formality they can make quite a long list.




The fundamental rule for deriving any proof in natural deduction is the *assumption*, which allows us to introduce any formula at all.

All assumptions must eventually be discharged, in the reversed (LIFO) order.

Assumption may be formalized as an inference rule, called "assumption (A)" and denoted with nothing above the line and with an arbitrary formula beneath it (where the line means: having proved the content above the line, you may infer the content below it).

An assumption means that any formula entails itself, `φ |- φ`. An assumption is introduced just by extending the context `Γ` without any prerequisites.

```
----- A
Γ, φ
```

Axioms are like privileged assumptions; privileged in a sense that they are given a priori, are "satable" as they reoccur constantly (in that system), but each axiom might as well be stated as an assumption (so repeated every time).

Presented as a sequent, `(a ∧ b) -> c |- a -> (b -> c)`, the antecedent is given and we need to prove the consequent. But being "given" means being assumed, so if the antecedent is assumed anyway, we might as well place it on the right of the turnstile: `|- ((a ∧ b) -> c) -> (a -> (b -> c))`.

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
