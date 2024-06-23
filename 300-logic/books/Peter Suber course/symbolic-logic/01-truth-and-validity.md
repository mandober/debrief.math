---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm
article-title:    Peter Suber, "Truth and Validity"
---
# Peter Suber, "Truth and Validity"
The Wayback Machine - https://web.archive.org/web/19990506181412/http://www.earlham.edu:80/%7Epeters/courses/log/tru-val.htm

**Truth of Statements, Validity of Reasoning**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

<table>
  <tbody>
    <tr>
      <td colspan="3">
      <a name="case0"></a>
      <a name="case1"></a>
      <strong>True Premises, False Conclusion</strong>
    </td></tr>
    <tr>
      <td>0.</td>
      <td>Valid</td>
      <td><em>Impossible: no valid argument can have true premises and a false conclusion.</em>
      </td>
      </tr>
    <tr><td>1.</td><td>Invalid</td><td>Cats are mammals.<br>Dogs are mammals.<br>Therefore, dogs are cats.</td></tr>
    <tr><td colspan="3"><a name="case2"></a><a name="case3"></a><strong>True Premises, True Conclusion</strong></td></tr>
    <tr><td>2.</td><td>Valid</td><td>Cats are mammals.<br>Tigers are cats.<br>Therefore, tigers are mammals.</td></tr>
    <tr><td>3.</td><td>Invalid</td><td>Cats are mammals.<br>Tigers are mammals.<br>Therefore, tigers are cats.</td></tr><tr><td colspan="3"><a name="case4"></a><a name="case5"></a><strong>False Premises, False Conclusion</strong></td></tr>
    <tr><td>4.</td><td>Valid</td><td>Dogs are cats.<br>Cats are birds.<br>Therefore, dogs are birds.</td></tr>
    <tr><td>5.</td><td>Invalid</td><td>Cats are birds.<br>Dogs are birds.<br>Therefore, dogs are cats.</td></tr><tr><td colspan="3"><a name="case6"></a><a name="case7"></a><strong>False Premises, True Conclusion</strong></td></tr>
    <tr><td>6.</td><td>Valid</td><td>Cats are birds.<br>Birds are mammals.<br>Therefore, cats are mammals.</td></tr>
    <tr><td>7.</td><td>Invalid</td><td>Cats are birds.<br>Tigers are birds.<br>Therefore, tigers are cats.</td></tr></tbody></table>




The distinction between truth and validity is the fundamental distinction of formal logic. You cannot understand how logicians see things until this distinction is clear and familiar.

The seven sample arguments above help us establish the following general principles of logic:

-   **True premises do not guarantee validity.**
    
    > (Proved by cases [#1][4] and [#3][5] in the table above.)
    
-   **A true conclusion does not guarantee validity.**
    
    > (Proved by cases [#3][6] and [#7][7].)
    
-   **True premises and a true conclusion together do not guarantee validity.**
    
    > (Proved by case [#3][8].)
    
-   **Valid reasoning does not guarantee a true conclusion.**
    
    > (Proved by case [#4][9].)
    
-   **False premises do not guarantee invalidity.**
    
    > (Proved by cases [#4][10] and [#6][11].)
    
-   **A false conclusion does not guarantee invalidity.**
    
    > (Proved by case [#4][12].)
    
-   **False premises and a false conclusion together do not guarantee invalidity.**
    
    > (Proved by case [#4][13].)
    
-   **Invalid reasoning does not guarantee a false conclusion.**
    
    > (Proved by cases [#3][14] and [#5][15].)
    

Note that in arguments 4-7, not all the premises are true. This is weaker than saying that all of the premises are false, but it suffices for the purposes of these principles of logic. Incidentally, can you see which premise in arguments 4-7 is actually true and why?

Therefore, while the truth of propositions and the validity of reasoning are distinct, the relationship between them is not at all straightforward. We cannot say that truth and validity are utterly independent because the impossibility of "case zero" (a valid argument with true premises and false conclusion) shows that one combination of truth-values is an absolute bar to validity. When an argument has true premises and a false conclusion, it *must* be invalid. In fact, this is how we define invalidity.

On the other hand, this partial reliance of validity on truth-value only exists for what logicians call the *semantic* concept of validity. In a few weeks we'll encounter a *syntactic* concept of validity which makes no reference to truth at all.

Despite these wrinkles, we should never be misled by true premises or true conclusions to suppose (automatically) that an argument is valid. Nor should we be misled by false premises or false conclusions to suppose that it is invalid. Nor should we be misled by valid reasoning to suppose that statements are true, or by invalid reasoning to suppose that statements are false. If we recognize this, then we have already far surpassed "common sense" in protecting ourselves from deception.

Truth and validity are combined in the concept of *soundness*. An argument is sound if (and only if) all its premises are true *and* its reasoning is valid; all others are unsound. It follows that all sound arguments have true conclusions.

Here's another version of our table, this time showing that only one of the argument types is sound.

<table><tbody><tr><td><strong>Type</strong></td><td><strong>All premises true?</strong></td><td><strong>Conclusion true?</strong></td><td><strong>Reasoning valid?</strong></td><td><strong>Possible?</strong></td><td><strong>Sound?</strong></td></tr>

<tr><td>0</td><td>yes</td><td>no</td><td>yes</td><td>IMPOSSIBLE</td><td>N/A</td></tr>

<tr><td>1</td><td>yes</td><td>no</td><td>no</td><td>possible</td><td>unsound</td></tr>

<tr><td>2</td><td>yes</td><td>yes</td><td>yes</td><td>possible</td><td>SOUND</td></tr>

<tr><td>3</td><td>yes</td><td>yes</td><td>no</td><td>possible</td><td>unsound</td></tr>

<tr><td>4</td><td>no</td><td>no</td><td>yes</td><td>possible</td><td>unsound</td></tr>

<tr><td>5</td><td>no</td><td>no</td><td>no</td><td>possible</td><td>unsound</td></tr>

<tr><td>6</td><td>no</td><td>yes</td><td>yes</td><td>possible</td><td>unsound</td></tr>

<tr><td>7</td><td>no</td><td>yes</td><td>no</td><td>possible</td><td>unsound</td></tr></tbody></table>

Empirical scientists and private detectives tell us whether statements are true. Logicians tell us whether reasoning is valid.

How do logicians test validity? Basically, they test for *in*validity. We know exactly what invalidity in an argument is: to have true premises and a false conclusion. An argument is valid in a weak sense if it simply is not invalid. This weak sense of validity turns out to suffice for all the purposes of rigorous reasoning in science, mathematics, and daily life.

But to test for invalidity, we must know when we are dealing with true premises and a false conclusion. However, logicians do not know whether statements are true or false. (They are not empirical scientists or private detectives.) But despite this ignorance, logicians can still test validity. One way is to *assume* that an argument's premises are all true and the conclusion false (i.e. assume invalidity) and see whether we can get away with it. Another way is to *make all possible assumptions* about the truth and falsity of those statements. If there is a "possible universe" in which the premises are all true and the conclusion is false, then the argument is invalid for all universes. (Can you see why?)

[1]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case1
[5]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case3
[6]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case3
[7]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case7
[8]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case3
[9]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case4
[10]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case4
[11]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case6
[12]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case4
[13]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case4
[14]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case3
[15]: https://web.archive.org/web/19990506181412/http://www.earlham.edu/~peters/courses/log/tru-val.htm#case5
