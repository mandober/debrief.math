# Mathematical induction

# Inductive and deductive resoning

The **induction** is the method of *inductive reasoning* that names the process in which we make generalizations from a small number of occurrences. After examining a boring number of particular cases and understanding the pattern according to which they change, induction usually allows us to get tired and proclaim a generalized statement about an entire class of things based on a relatively small sample. Statistics often relies on inductive reasoning.

Induction is different from deduction in one crucial way: the conclusion of an induction contains more information then what was contained in the initial premises. This is the main source of uncertainty of inductions. Conversely, this means that *deductions are certain because they merely tautologously restate their premises*.

An inductive argument is strengthened as confirming instances pile up, but its conclusion can never be absolutely certain unless every possible case is actually examined - which would make it a **deduction**. No matter how many confirming cases we experince, there's always a possibility that the next case will refute the whole thing (for a long time, swans were inductively white).

The subject of black swans (sheep) presents the opportunity to compare the levels of rigor in logical reasoning: 3 scientists on a train that have just entered Scotland. The statistician pointed at the window, "Look! Scottish sheep are black!". The mathematician, waving his hands, "Wrong! Some Scottish sheep are black". The logician quipped, "Wrong! There is at least one field, with at least one sheep, of which at least one side is black."

flâneur /flaˈnəː/ a man who saunters around observing society.
saunter /ˈsɔːntə/ walk in a slow, relaxed manner.

## Mathematical induction

Mathematical induction is a misnomer because it is unambiguously a form of deduction. It does, however, have some similarities to inductive resoning which have inspired the name; the most important one being that it also takes a fairly small sample and generalizes it to a whole class. In fact, the size of the sample is usually 1, while the size of the class is infinite.

Mathematical induction is deductive, however, because, the sample plus a rule about the unexamined cases, actually yields information about every member of the class. *A conclusion of mathematical induction doesn't contain more information than what was latent in the premises*. Hence, mathematical induction derives the conclusion with deductive certainty.

### Even numbers

You are probably quite sure that every even number is divisible by 2, even though you have never examined every even number. So how can you be sure you won't encounter a very big number that's an exception to the rule? And why isn't this situation analogous to an inductive conclusion - in both inductive and deductive reasoning, aren't we moving from known to unknown cases? The reason deduction is decisively different from induction lies in the logic of mathematical induction.

First, we define the natural numbers using the two most important Peanos axioms as inference rules:

```
           n : ℕ                           P n
----- 1  --------- 2        ----- (B)   --------- (R)
0 : ℕ     S n : ℕ            P 0         P (S n)
```

This form can be generalized so it becomes about a predicate P that may hold for all natural numbers. For example, `P n` can stand for any statement, e.g. `n` is a natural number (`n ∈ ℕ`), or `n` is even, or `n` is odd, or `n` is larger then 0, or any other 1-place predicate. Expressing these different statements in terms of a predicate over ℕ, we can unify them as the induction principle over ℕ:

```hs
∀ n : ℕ . (P 0 ∧ (P n -> P (S n))) -> P n
-- due to currying:
∀ n : ℕ . P 0 -> (P n -> P (S n)) -> P n
```

A predicate P holds for all naturals 
if it holds in the base case with `n = 0`, 
  and if, assuming it holds for `P n`, 
  then it also holds for the successor of n, `P (S n)`, 
then P holds for all natural numbers, `P n`.





We can prove that the smallest even number (namely, 0) is divisible by 2. This is our very small sample. And we can prove that the next even number after a number that is divisible by 2 will also be divisible by 2. This is our rule about the unexamined cases.

That is enough to imply that the successor of successor of 0, namely 2, will be divisible by 2, and its successor of successor, 4, as well, and so on ad infinitum.



This is how a small sample and a rule about unexamined cases can give us information about every case. This is how our knowledge of an infinite set of unexamined cases can be as certain as the conclusion of a valid deduction, quite unlike the conclusion of an ordinary induction.


The large-scale structure of a proof by mathematical induction is fairly simple.

1. The theorem is true of the sample (requires a separate proof)
2. A rule tells us that if it is true of the sample, then it is true of the unexamined members of a certain class (requires a separate proof)
3. Therefore, a theorem is true of all the members of a certain class.


Here's how the inference looks when described in the special terminology of mathematical induction.

1. ***Basis***. Prove that the theorem holds for the minimal case.
2. ***Induction step***. Prove that the property of complying with the theorem is "hereditary" and extends to all the successors of the minimal case.
    -   If the rule of heredity tells us that the theorem is true of "descendant" cases if it is true of the "ancestor" cases, then the claim that it is true of the ancestor cases is called the ***induction hypothesis***.
3. ***Conclusion***. Together, #1 and #2 imply that the theorem holds for all possible cases, i.e., the minimal case and all its successors. If you didn't use the true minimal case in step #1, then you prove only that the theorem holds for that case and its successors, not for all possible cases.


The induction step is the part that causes the most difficulties. 
It can take two forms which correspond to two forms of mathematical induction:

> ***Weak***: prove that *if* the theorem holds for all cases *at* some arbitrary point *n*, *then* it holds for all cases at point *n+1*.
> 
> ***Strong***: prove that *if* the theorem holds for all cases *up to* some arbitrary point *n*, *then* it holds for all cases at point *n+1*.

Or, If Tn means that the theorem holds for case *n*, then the induction hypothesis for weak mathematical induction asserts

Tn

while that for strong mathematical induction asserts

(T0 · T1 · T2 · ... · Tn).

Notice that the induction step is to prove a conditional statement, of which the induction hypothesis is the antecedent. For example, in the weak form, we need not prove that the theorem really holds for arbitrary case *n*, merely that *if* it holds for *n*, *then* it also holds for *n+1*.

Or, we needn't prove Tn, merely Tn  Tn+1.

This makes the proof a lot easier. For to prove a conditional statement, we can *assume* the antecedent (induction hypothesis) and derive the consequent. We can complete the induction step by assuming Tn and deriving Tn+1 from it.

Here, then, is a schematic outline of a typical proof by mathematical induction.

1.  The theorem holds for the minimal case.
    -   This is the basis; we'll assume that it has already been proved.
2.  The theorem holds for arbitrary case *n*.
    -   This is the induction hypothesis. It is assumed for the sake of a conditional proof; we don't have to prove it.
3.  Intervening steps ...
4.  The theorem holds for case *n+1*.
    -   Not assumed but derived from steps ##2-3.
5.  *If* the theorem holds for *n*, *then* it holds for *n+1*.
    -   This is the induction step; step #2 is its antecedent, #4 its consequent. It follows by "conditional proof" from steps ##2-4. We made an assumption in #2, derived a sub-conclusion in #4, and now discharge the assumption by asserting that the assumption implies the sub-conclusion.
6.  Therefore, the theorem holds for all possible cases.
    -   By mathematical induction. The base case was proved in #1 and the induction step in #5.

Perhaps it does not go without saying that if we are to use mathematical induction to prove that some theorem applies to "all possible cases", then those cases must somehow be enumerable and tightly linked to successive integers. We have to be able to speak about the *minimal* case, the *nth* case, the *successor* of a given case, and so on. So it is perfect for proving theorems about integers themselves. The theorem that all even numbers are divisible by 2 clearly has a minimal case, namely 2, and each case (even number) clearly has a successor (the next even number). We could not use mathematical induction to prove that all hackers smell like pizza.

Sometimes it takes ingenuity to see how mathematical induction might apply to a subject. If you wanted to prove that certain kinds of results cannot be proved, then it's not immediately clear whether mathematical induction could help; but it can. The minimal case of a proof is a 1-step proof. The induction step would prove that if the results in question cannot be proved in *n*-step proofs, then they cannot be proved in *n+1*-step proofs. The conclusion is that such results cannot be proved in any kind of proof.

On second thought, perhaps we *could* prove that all hackers smell like pizza. In the base case we prove that all hackers with an IQ of zero (the minimal case) smell like pizza. The induction hypothesis asserts that *if* a hacker with an IQ of *n* smells like pizza, then a hacker with an IQ of *n+1* smells like pizza. If the induction step in this form is too hard to prove, we could shift from IQ to pens in the pocket protector, bytes used in their mainframe account, Star Trek tapes owned, inches of pant leg above the ankle anything in integers that characterizes the members of the class.
