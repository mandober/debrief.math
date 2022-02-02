# System L

https://en.wikipedia.org/wiki/System_L

System L represents natural deduction proofs as sequences of justified steps. Proofs are presented in a tabular form due to Suppes and Lemmon.

System L is a predicate calculus with equality, so its description can be separated into two parts: *the general proof syntax* and *the context specific rules*.

## General Proof Syntax

A proof is a table with 4 columns and unlimited ordered rows. From left to right the columns hold:
1. Assumption number, possibly empty
2. Line number
3. A well-formed formula (wff)
4. Reference to the previous lines, a rule, justification

Example derivation of Modus Tollendo Tollens (MTT): `p → q, ¬q ⊢ ¬p`

AS   | Ln | WFF   | Rule and Justification | As a sequent
-----|----|-------|------------------------|--------------------------
1    | 1  | p → q | Assumption             |        p → q |- p → q
2    | 2  | ¬q    | Assumption             |           ¬q |- ¬q
3    | 3  | p     | Assumption (for RAA)   |            p |- p
1,3  | 4  | q     | MP 1,3                 |     p, p → q |- q
1,2,3| 5  | q ∧ ¬q| ∧I 2,4                 | p → q, ¬q, p |- q ∧ ¬q
1,2  | 6  | ¬p    | RAA 3,5                |    p → q, ¬q |- ¬p


The first column represents the line numbers of the assumptions the wff rests on, determined by the application of the cited rule in context. The third column holds a wff, which is justified by the rule held in the fourth along with the justification.

Any line of any valid proof can be converted into a sequent (given in the fifth column) by listing the wffs at the cited lines as the premises and the wff at the line as the conclusion. Analogously, they can be converted into conditionals where the antecedent is a conjunction.

## Rules of Predicate Calculus with Equality

The above proof is a valid one, but proofs don't need to be to conform to the general syntax of the proof system. To guarantee a sequent's validity, however, we must conform to carefully specified rules.

The rules can be divided into 4 groups:
* the propositional rules (1-10)
* the predicate rules (11-14)
* the rules of equality (15-16)
* the rule of substitution (17)

<code>AS</code>
<code>MP a,b</code>
<code>CP a,b</code>
<code>DN a</code>
<code>∧I a,b</code>
<code>∧E a</code>
<code>∨I a</code>
<code>∨E a,b,c,d,e</code>
<code>RAA a,b</code>
<code>MT a,b</code>

<code>∀I a</code>
<code>∀E a</code>
<code>∃I a</code>
<code>∃E a,b,c</code>

<code>\=I a</code>
<code>\=E a,b</code>

<code>SI(S) X a,b</code>

Adding these groups in order allows one to build a *propositional calculus*, then a *predicate calculus*, then a *predicate calculus with equality*, then a *predicate calculus with equality allowing for the derivation of new rules*.Some of the propositional calculus rules, like MTT, are superfluous and can be derived from other rules.

### The propositional rules

<code>AS</code>
<code>MP a,b</code>
<code>CP a,b</code>
<code>DN a</code>
<code>∧I a,b</code>
<code>∧E a</code>
<code>∨I a</code>
<code>∨E a,b,c,d,e</code>
<code>RAA a,b</code>
<code>MT a,b</code>

1. __The Rule of Assumption (A)__: _"A"_ justifies any wff. The only assumption is its own line number.

2. **Modus Ponendo Ponens (MPP)**: If there are lines `a` and `b` previously in the proof containing `P → Q` and `P` respectively, _"a,b MPP"_ justifies `Q`. The assumptions are the collective pool of lines `a` and `b`.

3. **The Rule of Conditional Proof (CP)**: If a line with proposition `P` has an assumption line `b` with proposition `Q`, _"b,a CP"_ justifies `Q → P`. All of `a`'s assumptions aside `b` are kept. This rule is also known as the implication introduction, →I.

4. **The Rule of Double Negation (DN)**: _"a DN"_ justifies adding or subtracting two negation symbols from the wff at a line `a` previously in the proof, making this rule a biconditional. The assumption pool is the one of the line cited.

5. **The Rule of ∧-introduction (∧I)**: If propositions `P` and `Q` are at lines `a` and `b`, _"a,b ∧I"_ justifies `P ∧ Q`. The assumptions are the collective pool of the conjoined propositions.

6. **The Rule of ∧-elimination (∧E)**: If line `a` is a conjunction `P ∧ Q`, one can conclude either `P` or `Q` using _"a ∧E"_. The assumptions are line `a`'s.

> ∧I and ∧E allow for _monotonicity of entailment_, as when a proposition `P` is joined with `Q` by ∧I, and separated by ∧E, it retains `Q`'s assumptions.

7. **The Rule of ∨-introduction (∨I)**: For a line `a` with proposition `P` one can introduce `P ∨ Q` citing _"a ∨I"_. The assumptions are `a`'s.

8. **The Rule of ∨-elimination (∨E)**: For a disjunction `P ∨ Q`, if one assumes `P` and `Q` and separately comes to the conclusion `R` from each, then one can conclude `R`. The rule is cited as _"a,b,c,d,e ∨E"_, where line `a` has the initial disjunction `P ∨ Q`, lines `b` and `d` assume `P` and `Q` respectively, and lines `c` and `e` are `R` with `P` and `Q` in their respective assumption pools. The assumptions are the collective pools of the two lines concluding `R` minus the lines of `P` and `Q`, `b` and `d`.

9. **Reductio Ad Absurdum (RAA)**: For a proposition `P ∧ ¬P` on line `a` citing an assumption `Q` on line `b`, one can cite _"b,a RAA"_ and derive `¬Q` from the assumptions of line `a` aside from `b`.

10. **Modus Tollens (MTT)**: For propositions `P → Q` and `¬Q` on lines `a` and `b` one can cite _"a,b MTT"_ to derive `¬P`. The assumptions are those of lines `a` and `b`. This rule can be derived from other rules.


### The predicate rules

<code>∀I a</code>
<code>∀E a</code>
<code>∃I a</code>
<code>∃E a,b,c</code>

11. **Universal Introduction (∀I)**: For a predicate `R(a)` on line `n`, one can cite _"n UI"_ to justify a universal quantification, `∀x.R(x)`, provided none of the assumptions on line `n` have the term `a` in anywhere. The assumptions are those of line `n`.

12. **Universal Elimination (∀E)**: For a universally quantified predicate `∀x.R(x)` on line `n`, one can cite _"n UE"_ to justify `R(a)`. The assumptions are those of line `n`.

> ∀E is a duality with ∀I in that one can switch between quantified and free variables using these rules.

13. **Existential Introduction (∃I)**: For a predicate `R(a)` on line `n` one can cite _"a ∃I"_ to justify an existential quantification, `∃x.R(x)`. The assumptions are those of line `n`.

14. **Existential Elimination (∃E)**: For an existentially quantified predicate `∃x.R(x)` on line `n`, if we assume `R(a)` to be true on line `m` and derive `P` with it on line `o`, we can cite _"n,m,o EE"_ to justify `P`. The term `a` cannot appear in the conclusion `P`, in any of its assumptions (aside from line `m`) or on line `n`. For this reason ∃E and ∃I are in duality, as one can assume `R(a)` and use ∃I to reach a conclusion from `∃x.R(x)`, as the ∃I will rid the conclusion of the term `a`. The assumptions are the assumptions on line `n` and any on line `o` aside from `b`.


### The rules for equality

<code>\=I a</code>
<code>\=E a,b</code>


15. **Equality Introduction (=I)**: At any point one can introduce `a = a` by citing __"=I"__ with no assumptions.

16. **Equality Elimination (=E)**: For propositions `a = b` and `P` on lines `n` and `m`, one can cite _"n,m =E"_ to justify changing any `a` terms in `P` to `b`. The assumptions are the pool of `n` and `m`.


### The rule for substitution

<code>SI(S) X a,b</code>

17. **Substitution Instance, SI(S)**: For a sequent `P,Q |- R` proved in proof `X` and substitution instances of `P` and `Q` on lines `a` and `b`, one can cite _"a,b SI(S) X"_ to justify introducing a substitution instance of `R`. The assumptions are those of lines `a` and `b`. A derived rule with no assumptions is a theorem, and can be introduced at any time with no assumptions; some cite that as "TI(S)", for "theorem" instead of "sequent". Additionally, some cite only "SI" or "TI" in either case when a substitution instance isn't needed, as their propositions match the ones of the referenced proof exactly.


## Examples

### Proof of LEM

An example of the proof of a sequent (a theorem in this case): `|- p ∨ ¬p`

AS  | Ln| WFF                  | Rule and Justification
----|---|----------------------|-------------------------
1   | 1 | ¬(p ∨ ¬p)            | A (for RAA)
2   | 2 | p                    | A (for RAA)
2   | 3 | (p ∨ ¬p)             | ∨Iʟ 2
1,2 | 4 | (p ∨ ¬p) ∧ ¬(p ∨ ¬p) | ∧I 3,1
1   | 5 | ¬p                   | ¬I 2,4 RAA
1   | 6 | (p ∨ ¬p)             | ∨Iʀ 5
1   | 7 | (p ∨ ¬p) ∧ ¬(p ∨ ¬p) | ∧I 1,6
    | 8 | ¬¬(p ∨ ¬p)           | ¬I 1,7 RAA
    | 9 | (p ∨ ¬p)             | ¬¬E 8  DN


As sequents: `|- p ∨ ¬p`

1    ¬(p ∨ ¬p) |- ¬(p ∨ ¬p)
2            p |- p
3            p |- p ∨ ¬p
4 p, ¬(p ∨ ¬p) |- (p ∨ ¬p) ∧ ¬(p ∨ ¬p)
5    ¬(p ∨ ¬p) |- ¬p
6    ¬(p ∨ ¬p) |- p ∨ ¬p
7    ¬(p ∨ ¬p) |- (p ∨ ¬p) ∧ ¬(p ∨ ¬p)
8              |- ¬¬(p ∨ ¬p)
9              |- p ∨ ¬p


### Proof of EFQ

A proof of the principle of explosion, `p, ¬p ⊢ q`, using monotonicity of entailment. Some have called the following technique, demonstrated in lines 3-6, the *Rule of (Finite) Augmentation of Premises*.

`p, ¬p ⊢ q`

AS   | Ln| WFF            | Rule and Justification
-----|---|----------------|-------------------------
1    | 1 | p              | A (for RAA)
2    | 2 | ¬p             | A (for RAA)
1,2  | 3 | p ∧ ¬p         | ∧I 1,2
4    | 4 | ¬q             | A (for DN)
1,2,4| 5 | (p ∧ ¬p) ∧ ¬q  | ∧I 3,4
1,2,4| 6 | p ∧ ¬p         | ∧Eʟ 5
1,2  | 7 | ¬¬q            | RAA 4,6
1,2  | 8 | q              | DN 7


In sequents: `p, ¬p |- q`

1          p |- p
2         ¬p |- ¬p
3      p, ¬p |- p ∧ ¬p
4         ¬q |- ¬q
5  p, ¬p, ¬q |- (p ∧ ¬p) ∧ ¬q
6  p, ¬p, ¬q |- p ∧ ¬p
7      p, ¬p |- ¬¬q
8      p, ¬p |- q



### Substitution example

An example of substitution and ∨E: `(p ∧ ¬p) ∨ (q ∧ ¬q) ⊢ r`


AS| Ln| WFF                 | Rule and Justification
--|---|---------------------|-------------------------
1 |1  | (p ∧ ¬p) ∨ (q ∧ ¬q) | A
2 |2  | p ∧ ¬p              | A (for ∨E)
2 |3  | p                   | ∧E 2
2 |4  | ¬p                  | ∧E 2
2 |5  | r                   | SI(S) 3,4 (see above proof)
6 |6  | q ∧ ¬q              | A (for ∨E)
6 |7  | q                   | ∧E 6
6 |8  | ¬q                  | ∧E 2
6 |9  | r                   | SI(S) 7,8 (see above proof)
1 |10 | r                   | ∨E 1,2,5,6,9
