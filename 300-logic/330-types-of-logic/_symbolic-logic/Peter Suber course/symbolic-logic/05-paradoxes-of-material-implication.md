---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506171059/http://www.earlham.edu/~peters/courses/log/mat-imp.htm
article-title:    Peter Suber, "Paradoxes of Material Implication"
---
# Peter Suber, "Paradoxes of Material Implication"
The Wayback Machine - https://web.archive.org/web/19990506171059/http://www.earlham.edu:80/%7Epeters/courses/log/mat-imp.htm

**Paradoxes of Material Implication**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

There are many kinds of implication. We may use the "if..., then..." construction to indicate definitional, causal, or logical relations. Even among the logical relations that could go under the name of implication, not all are equivalent. We name the kind we use "material implication". Material implication is just one of many sorts of implication, and for that reason does not conform exactly to the English "if...then" or "implies". (For the same reason, no other *specific* version of implication would do so either.) However, it turns out that when we translate the English "if...then" or "implies" with material implication, nothing of logical importance is lost. More precisely, the validity of valid arguments in which implications occur is not lost in the translation.

The truth-table for material implication looks like this:

<table><tbody><tr><td><strong>p</strong></td><td><strong>q</strong></td><td><strong>p <img src="https://web.archive.org/web/19990506171059im_/http://www.earlham.edu/~peters/writing/matimp.gif"> q</strong></td></tr><tr><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>T</td></tr></tbody></table>

There are two paradoxes of material implication. Both are evident from its truth-table column.

1.  Whenever the antecedent is false, the whole conditional is true (rows 3 and 4).
2.  Whenever the consequent is true, the conditional is true (rows 1 and 3).

For example, the first type is illustrated by: "If the moon is made of green cheese, then life exists on other planets." The second is illustrated by: "If life exists on other planets, then life exists on earth." Strange as it may seem, as compounds both these statements are true, the first because its antecedent is false and the second because its consequent is true.

These are paradoxes in the ancient sense, violations of intuition. They are not contradictions. But, you may well ask, why would we adopt a type of implication with such counter-intuitive results?

**The price of truth-functionality**

Primarily, the answer is that we want a truth-functional kind of implication. Remember that a connective is truth-functional if we can figure out the truth-value of the statement solely on the basis of the truth-values of its components. If we use a truth-functional form of implications, then we can construct truth-tables for our implication statements. That means we can use the several truth-table methods of analysis to determine the validity of arguments that contain implication statements, and to determine whether certain implication statements are tautologies. That is a substantial benefit.

But to get truth-functionality we have to pay a big price. If the truth-value of a conditional compound is to be a function of the truth-values of its antecedent and consequent alone, then it will look only to the *truth-values*, not to the *content*, of the antecedent and consequent. So far this is consistent with our general desire to disregard content and represent only the logical form of statements and arguments. But if the content of the antecedent and consequent is irrelevant, then they may be utterly unrelated to one another. We have abandoned the requirement of ordinary implication that antecedent and consequent be mutually relevant or somehow connected. Truth-functionality requires the loss of relevancy.

The paradoxes disturb us because the truth-value of one component can determine the truth-value of the whole compound, regardless of the truth-value or content of the other. That is, they disturb us precisely because of this loss of mutual relevancy.

This state of affairs disturbs some logicians too. They have developed so-called "relevance logics" in which the antecedent and consequent of conditionals must somehow bear on the same subject. The word "entailment" is used instead of "implication" to describe this connective. Entailment is not truth-functional, and we will not deal with it in this course. (If you're interested, see Alan Ross Anderson and Nuel D. Belnap, Jr., *Entailment: The Logic of Relevance and Necessity*, Princeton University Press, Vol. 1, 1975, Vol. 2 (with J. Michael Dunn), 1993.)

**Only somewhat counter-intuitive**

After saying all this, it is important to note that material implication *does* conform to some of our ordinary intuitions about implication. For example, take the conditional statement, "If I am healthy, I will come to class." We can symbolize it, H  C. The question is: when is this statement *false*? When will I have broken my promise?

There are only four possibilities:

<table><tbody><tr><td><strong>H</strong></td><td><strong>C</strong></td><td><strong>H <img src="https://web.archive.org/web/19990506171059im_/http://www.earlham.edu/~peters/writing/matimp.gif"> C</strong></td></tr><tr><td>T</td><td>T</td><td>?</td></tr><tr><td>T</td><td>F</td><td>?</td></tr><tr><td>F</td><td>T</td><td>?</td></tr><tr><td>F</td><td>F</td><td>?</td></tr></tbody></table>

-   In case #1, I am healthy and I come to class. I have clearly kept my promise; the conditional is *true*.
-   In case #2, I am healthy, but I have decided to stay home and read magazines. I have broken my promise; the conditional is *false*.
-   In case #3, I am not healthy, but I have come to class anyway. I am sneezing all over you, and you're not happy about it, but I did not violate my promise; the conditional is *true*.
-   In case #4, I am not healthy, and I did not come to class. I did not violate my promise; the conditional is *true*.

But this is exactly the outcome required by the "paradoxical" material implication. The compound is only false when the antecedent is true and the consequence is false (case #2); it is true every other time.

Many people complain about case #4, when a false antecedent and a false consequent make a true compound. Why should this be the case? If the promise to come to class didn't persuade you, here's an example from mathematics. "If *n* is a perfect square, then *n* is not prime." I hope you'll agree that this is a true statement for any *n*. Now substitute 3 for *n*: "If 3 is a perfect square, then 3 is not prime." As a compound, it is still true; yet its antecedent and consequent are both false. (I got this elegant example from a posting years ago on [sci.logic][4]; I'm sorry that I did not write down the name of its author.)

Another way to show that the paradoxes are acceptable to some of our intuitions about implication is to consider statements like, "If Congress passes serious campaign finance reform, then I'm a monkey's uncle!" Or, "...I'm a Dutchman!" Or, "...I'm the Pope!" These expressions are flamboyant ways of asserting the antecedent to be false. But note how we do it. We say that if this falsehood is allowed to stand, then anything follows —even the absurdity that I'm the Pope. And this sarcasm exactly follows the logic of material implication. False antecedents create true conditionals.

At least take comfort from this. (1) The perversity of material implication is deliberate, for it is the only way to get truth-functionality. (2) But the perversity violates only our ordinary expectations, not any logical principles. (3) For material implication, despite its perversity, suffices to capture the logically essential core of meaning in ordinary uses of implication. The nuances of English that it does not translate do not affect validity (in standard logic). (4) Hence, the price is worth paying, for the counter-intuitive material implication distorts nothing essential and, because it is truth-functional, allows us to test the validity of arguments that contain implication statements.

**Application to arguments**

Conditional statements have corresponding arguments, just as arguments have corresponding conditionals. How far do the paradoxes of material implication carry over to the corresponding arguments?

The answer is that they carry over only in a special sense, and not in a simple or straightforward way.

If there was a simple carry-over, then we would expect (1) that arguments with at least one false premise would be valid, and (2) that arguments with true conclusions would be valid. But neither of these propositions is true in general.

We must make the transition from contingent to necessary truth (and falsehood) to make the carry-over. These propositions *do* hold in general: (1) If the conjunction of the premises of an argument is a *contradiction*, then the argument will be valid, and (2) If the conclusion is a *tautology*, then the argument will be valid. These are different ways of saying, (1) if the premises are necessarily false, then the argument will be valid, and (2) if the conclusion is necessarily true, then the argument will be valid.

[1]: https://web.archive.org/web/19990506171059/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506171059/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506171059/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506171059/news:sci.logic
