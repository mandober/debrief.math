---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506165148/http://www.earlham.edu/~peters/courses/log/forking.htm
article-title:    Peter Suber, "The Short-Cut Method and Forking"
---
# Peter Suber, "The Short-Cut Method and Forking"
The Wayback Machine - https://web.archive.org/web/19990506165148/http://www.earlham.edu:80/%7Epeters/courses/log/forking.htm

**The Short-Cut Truth Table Method**

**and Forking**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

In the full truth table method for testing validity, we must construct all the rows of the table even if only some of them turn out to be relevant for the test of validity. In the short-cut truth table method, we construct only those relevant to testing validity. This is a great savings in time and labor.

In a nutshell, in the short-cut method we try to invalidate the argument we're testing. If we succeed, then it is invalid. If we fail, then it is valid. More precisely, if we fail in a special way, then we can conclude that the argument is valid. We must *necessarily* fail (find our path barred by contradiction); otherwise our failure to invalidate the argument may be due to our lack of ingenuity, not to the actual validity of the argument.

An "invalidating row" of a truth table (also called a "counterexample" to the argument) is a row in which every premise is true and the conclusion false. In the full truth table method, we construct all the possible rows and then look to see whether there are any invalidating rows. (If there is one or more, the argument is invalid; if there are none, it is valid.) In the short-cut method, we try to *make* an invalidating row or counterexample.

The short-cut method is usually simple and easy. It only becomes more difficult when we are unable to finish making the hypothetical invalidating row without experimenting (as Copi puts it at p. 62) with "various 'trial assignments'." This is called *forking*, and Copi does not explain how to make it systematic. The chief purpose of this hand-out is to provide directions for forking.

Forking is easier to describe roughly than with perfect precision and particularity. Here is a rough description. Afterwards I try to give all the precision you might ever need.

**Short description**

> *If assuming invalidity doesn't give you enough information to finish making truth-value assignments to all the simple statements in the argument, then you must fork. Take one of the simple statements to which you have so far assigned no truth-value. Assume it to be true, and write down somewhere that you are doing so. Three outcomes are now possible. (1) If you can finish making truth-value assignments and find a contradiction among them, then try the other fork; that is, assume the statement to be false which you just assumed to be true. (2) If you can finish but find no contradiction, then you may stop without checking the other fork; the argument is invalid. (3) You can't finish; fork again. Keep going until you have found contradictions on both forks of all "forking assumptions" (sign of a valid argument) or until you have found one non-contradictory fork (sign of an invalid argument), whichever comes first.*

**Long description**

If you want more precision, here are the steps to take:

1.  Assume invalidity. That is, make every premise true and the conclusion false.
    -   You must put these truth-value assignments under the main connectives of the premises and conclusion.
2.  Carry out the assumption of invalidity. That is, make other truth-value assignments based on the initial ones.
    -   In this process, never guess. Only make truth-value assignments which are forced by the information you already have.
    -   Let us say that to "finish" this process is either (1) to find a contradiction among your truth-value assignments, or (2) to assign a truth-value to every simple and compound statement.
        -   Since either condition permits you to stop, you may stop when you find a contradiction even if not all the statements have yet been assigned truth-values. If you continue anyway, you are wasting labor, but if you proceed properly you will still come up with the right answer.
    -   Keep going until you are "finished" in this sense, if you can. If you cannot finish, go to step 4.
3.  If you finish, then interpret what you've done.
    -   Remember, to finish means that either you've found a contradiction among your truth-value assignments, or you have assigned truth-values to all simple and compound statements (or both).
    -   Interpret your various truth-value assignments as a row of a truth-table.
        1.  If there is a contradiction among your truth-value assignments, that means the assumption of invalidity has led to a contradiction. You cannot make an invalidating row. *The argument is valid*.
        2.  If there is no contradiction among your truth-value assignments, and all statements have truth-values, then you have successfully constructed an invalidating row. *The argument is invalid*.
4.  If you cannot finish, then you must fork.
    -   It doesn't matter whether you can't finish because you lack information or because you lack ingenuity.
        -   If you lack ingenuity, then forking may not really be necessary. To fork under these circumstances increases the risk of error (because forking can be confusing), but will still lead to the correct answer if done properly. You will simply have made more rows of the full table than you had to.
        -   This means that you can practice forking on *any* argument, even arguments that don't require forking. Just pretend that you are stuck at some point, and fork.
    -   To fork, take one of the simple statements without a truth-value. Assume it is true.
        -   It doesn't matter which of the unvalued simple statements you select for this purpose.
        -   Write down somewhere that you are assuming that simple statement to be true. You may have to make the opposite assumption later, and will have to know what you've already done.
        -   Carry out the new assumption you just made. That is, make other truth-value assignments without guessing until you are "finished", if you can.
            -   For each new assumption you make while forking, you should probably make a new row of truth-value assignments. Don't confuse truth-values which belong to one assumption with truth-values which belong to another assumption.
    -   If you "finish" carrying out the forking assumption, then interpret the new row you've made.
        -   If the forking assumption leads to a contradiction, then that row is not an invalidating row. But the opposite assumption might be; hence, you must examine it. So now make the opposite assumption: assign falsehood to the simple statement to which you earlier assigned truth, and carry out that assumption until "finished", forking again if necessary.
        -   If the first fork leads to a contradiction, then you must try the second fork. Only if both are contradictions can you conclude that the argument is valid.
        -   If the first fork is consistent you may stop without trying the second fork, for you have constructed an invalidating row. The argument is invalid.
        -   In short, if either fork is finished and consistent, then the argument is invalid. If both forks are contradictory, then the argument is valid. If either fork cannot be finished, you must fork again.

Since forking always assigns a truth-value to a previously unvalued simple statement, repeated forking will eventually assign truth-values to all the simple (and hence, compound) statements. Hence, this process cannot go on forever; it will always allow you to "finish" and decide the validity of the argument. The maximum amount of work you'll do will be to create all the rows of a full truth-table --plus the overhead of keeping track of your forks. In practice you'll almost never have to fork more than once or twice.

The short-cut truth table method is a direct proof of invalidity, and an indirect proof of validity. It proves invalidity directly because it produces an invalidating row. Or, as logicians would say, it produces a *counterexample* to the argument's validity. The form may appear valid, but the counterexample shows us what kind of statements (by truth-value, not by content) could be substituted for the argument's variables to reveal its invalidity.

It proves validity indirectly by proving that the assumption of invalidity leads to a contradiction. You might ask: is it legitimate to infer validity from the fact that the assumption of invalidity leads to a contradiction? Test this for yourself. Let "V" stand for the proposition, "The argument in question is valid." The short-cut method, then, relies on this principle:

[~V  (A · ~A)]  V

Or: If ~V leads to a contradiction (A · ~A), then ~V is false, which is to say that V is true. If you have any doubts about this principle, construct a truth table for it. You'll see that it is a tautology.

Here are some common pitfalls in using the short-cut truth table method.

1.  To forget how to start, namely, to assume invalidity.
2.  To forget what it means to assume invalidity, namely, make each premise true and the conclusion false.
3.  To assign the the correct truth-value to a statement, but not to put it under the statement's main connective. This might lead you later in the proof to mistake which statement has that truth-value.
4.  Because contradictions are "bad", to infer invalidity from the presence of a contradiction. Remember that contradictions show that the *assumption of invalidity* is bad, not that the *argument* is bad.
5.  To guess at truth-values when you lack information to deduce them.
6.  To carry out forking badly. To stop with the first fork when testing the second fork is necessary.
7.  To overlook contradictory truth-value assignments when they are actually present.

Here are some arguments which require forking, if you want to practice.

1.  p  (q · r)  
    p  (q · r)  
    ------------  
     q · r
2.  p  q  
    q  r  
    r  s  
    --------  
     p · s
3.  ~(p  q)  
    -------------  
     ~(p  q)
4.  p  q  
    q  r  
    --------  
     p · r
5.  p  q  
    q  r  
    -----------  
     p  r
6.  (p · ~q)  (~p · q)  
    --------------------  
     ~(p  q)

*

Here's how to use the short-cut method to test whether a compound statement is a tautology, contradiction, or contingency.

1.  Assume that the statement is false. (Put F under its main connective.) Call this the first assumption.
2.  Carry out the first assumption until finished, if you can.
3.  If the first assumption leads to a contradiction, then the statement cannot be false; it is a tautology.
4.  If the first assumption can be carried out consistently, then reverse it and assume that the statement is true. (Put T under its main connective.) Call this the second assumption.
    -   If the second assumption leads to a contradiction, then the statement cannot be true; it is a contradiction.
    -   If neither the first nor the second assumption leads to a contradiction, then the statement is neither a tautology nor a contradiction. So it is a contingency.
5.  If you cannot finish either the first or second assumptions, then fork.

*

Yes, forking is confusing. A future hand-out on [truth trees][4] will turn adversity to advantage and show us a way to organize forking so that it clarifies the test of validity rather than obstructing and confusing it.

---

This file is an electronic hand-out for the course, [Symbolic Logic][5].

[1]: https://web.archive.org/web/19990506165148/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506165148/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506165148/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506165148/http://www.earlham.edu/~peters/courses/log/treeprop.htm
[5]: https://web.archive.org/web/19990506165148/http://www.earlham.edu/~peters/courses/log/loghome.htm
