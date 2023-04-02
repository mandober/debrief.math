---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990423210807/http://www.earlham.edu/~peters/courses/logsys/math-ind.htm
article-title:    Peter Suber, "Mathematical Induction"
---
# Peter Suber, "Mathematical Induction"
The Wayback Machine - https://web.archive.org/web/19990423210807/http://www.earlham.edu:80/%7Epeters/courses/logsys/math-ind.htm

**Mathematical Induction**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

In ordinary induction, we examine a certain number of particular cases and then generalize.

> Coffee shop burger #1 was greasy.  
> Coffee shop burger #2 was greasy.  
> Coffee shop burger #3 was greasy....  
> Coffee shop burger #100 was greasy.  
> *Therefore*, all coffee shop burgers are greasy. (Or: The next coffee shop burger will be greasy.)

Strong inductions differ from valid deductions in one important way: in the induction, the conclusion contains information that was not contained in the premises. This is the source of the uncertainty of inductions. (Conversely, it tells us that deductions are certain because they tautologously restate their premises.) Inductions are strengthened as confirming instances pile up. But they can never bring certainty unless every possible case is actually examined in which case they become deductions. Despite our experience with 100 greasy coffee shop burgers, the next one might be dry and rubbery.

"Mathematical induction" is unfortunately named, for it is unambiguously a form of deduction. However, it has certain similarities to induction which very likely inspired its name. It is like induction in that it generalizes to a whole class from a smaller sample. In fact, the sample is usually a sample of *one*, and the class is usually *infinite*. Mathematical induction is deductive, however, because the sample plus a rule about the unexamined cases actually gives us information about every member of the class. Hence the conclusion of a mathematical induction does not contain more information than was latent in the premises. Mathematical inductions therefore conclude with deductive certainty.

You are probably quite sure that every even number is divisible by 2. But you have never examined every even number, and nobody else has either. So how do you know that some very big even number won't violate this rule? Why isn't the situation analogous to the coffee shop burgers? In both cases, aren't we moving from known cases to unknown cases?

The reason the even numbers are decisively different from coffee shop burgers lies in the logic of mathematical induction. We can prove that the smallest even number (namely, 2) is divisible by 2. This is our very small sample. And we can prove that the next even number after every number divisible by 2 will also be divisible by 2. This is our rule about the unexamined cases. That is enough to imply that the successor of 2, namely 4, will be divisible by 2, and its successor, 6, and its successor 8... and so on *ad infinitum*. This is how a small sample and a rule about unexamined cases can give us information about every case. This is how our knowledge of an infinite set of unexamined cases can be as certain as the conclusion of a valid deduction, quite unlike the conclusion of an ordinary induction.

The large-scale structure of a proof by mathematical induction is fairly simple.

1.  The theorem is true of the sample. (This requires a separate proof.)
2.  A rule tells us that if it is true of the sample, then it is true of the unexamined members of a certain class. (This rule requires a separate proof.)
3.  Therefore, the theorem is true of all the members of a certain class.

Here's how the inference looks when described in the special terminology of mathematical induction.

1.  ***Basis***. Prove that the theorem holds for the minimal case.
2.  ***Induction step***. Prove that the property of complying with the theorem is "hereditary" and extends to all the successors of the minimal case.
    -   If the rule of heredity tells us that the theorem is true of "descendant" cases if it is true of the "ancestor" cases, then the claim that it is true of the ancestor cases is called the ***induction hypothesis***.
3.  ***Conclusion***. Together, #1 and #2 imply that the theorem holds for all possible cases, i.e., the minimal case and all its successors. If you didn't use the true minimal case in step #1, then you prove only that the theorem holds for that case and its successors, not for all possible cases.

The induction step is the part that causes the most difficulties. It can take two forms which correspond to two forms of mathematical induction:

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

---

This file is an electronic hand-out for the course, [Logical Systems][4].

[1]: https://web.archive.org/web/19990423210807/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990423210807/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990423210807/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990423210807/http://www.earlham.edu/~peters/courses/logsys/lshome.htm
