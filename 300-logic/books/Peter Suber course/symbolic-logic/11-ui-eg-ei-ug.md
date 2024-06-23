---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm
article-title:    Peter Suber, "UI, EG, EI, and UG"
---
# Peter Suber, "UI, EG, EI, and UG"
The Wayback Machine - https://web.archive.org/web/19990506163644/http://www.earlham.edu:80/%7Epeters/courses/log/ei-ug.htm

**UI, EG, EI, and UG**

**Strengthened Versions**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

These notes restate the strengthened or final version of the rules of inference for predicate logic that Copi introduces in Section 4.5.

In this hand-out I will dispense with Greek letters. In fact, dispensing with Greek letters is the primary reason for writing this hand-out. If you're comfortable with the use of a new alphabet or font to introduce variables that range over expressions in our default alphabet or font, then Copi's exposition is clear and helpful. But my experience is that most students are not comfortable with that kind of notation.

The price for avoiding Greek letters may be steep. To do without them, you'll have to accept expressions with Roman letters, like "(x)Ax" and "(x)Ax", as standing for an indefinitely large class of expressions. "Ax" may be hiding hideous complexity: a compound proposition with many additional components, quantifiers, variables, and constants; "x" may be a variable other than x.

**The Convention**

A single rule or convention restricts each of the four rules of inference. Therefore it deserves some close study. To state it without the generality permitted by Greek letters, we must introduce some new terms.

First let's introduce an operation similar to instantiation but more limited. Let's call it *decapitation*. When we decapitate a quantified statement, we simply drop one of its quantifiers. That's it. The variables it formerly bound are thereby made free. But in decapitation they are not otherwise changed. By contrast, in full-blooded instantiation, those variable letters might change from one variable letter to another or from variables to constants.

Clearly decapitation is the first step in instantiation. Similarly, "un-decapitation" (adding a quantifier without changing any constants or variables) is the first step in generalization. If an expression has more than one quantifier, we know which one to drop in decapitation only if we have a particular instance of instantiation or generalization in mind. Drop the quantifier that's missing in the instantiation, or the one to be added in the generalization.

When we instantiate, we move from a quantified to an unquantified statement. Let's call the quantified statement we start with the *general statement*, and the unquantified statement we end with the *instantiating* or *instantiated statement*. Similarly, we'll call the variable in the quantified statement the *general* variable, and the variable (if any) in the unquantified statement the *instantiating variable*. The constant (if any) in the unquantified statement will be called the *instantiating constant*.

-   *Example.* In "(x)Ax  Ay", the *general statement* is "(x)Ax" and the *instantiating statement* is "Ay", the *decapitated statement* is "Ax", the *general variable* is "x", and the *instantiating variable* is "y".
-   *Example.* In "(x)Ax  Aa", the *general statement* is "(x)Ax", the *instantiating statement* is "Aa", the *decapitated statement* is "Ax", the *general variable* is "x", and the *instantiating constant* is "a".

When we generalize, we move from an unquantified to a quantified statement. But let's give the statements and their variables and constants the same names we gave them for the purposes of instantiation.

-   *Example.* In "Ax  (y)Ay", the *general statement* is "(y)Ay", the *instantiating statement* is "Ax", the *decapitated statement* is "Ay", the *general variable* is "y", and the *instantiating variable* is "x".
-   *Example.* In "Aa  (x)Ax", the *general statement* is "(x)Ax", the *instantiating statement* is "Aa", the *decapitated statement* is "Ax", the *general variable* is "x", and the *instantiating constant* is "a".

Note that in instantiation, the general statement is the premise and the instantiating statement is the conclusion. In generalization, the instantiating statement is the premise and tahe general statement is the conclusion.

The point of these new terms is to make the following convention as general, and as easy to state and understand, as possible. Our terms allow us to use one version of the convention for both instantiations and generalizations.

***The convention:* The instantiating variable must be free, or the instantiating constant must occur, in the instantiating statement in at least those places where the general variable is free in the decapitated general statement.**

-   *Example.* In instantiating "(x)Ax" to "Ay", "y" must be free in "Ay" in at least those places where "x" is free in "Ax". (Note that we say "in Ax", not "in (x)Ax", because [the convention][4] tells us to look at the decapitated general statement.)
-   *Example.* In generalizing from "Ax" to "(y)Ay", "x" must be free in "Ax" in at least those places where "y" is free in "Ay". (Note that we say "in Ay", not "in (y)Ay".)
-   *Example*. Performing UI on "(x)(y)(Px  ~Py)" to get "(y)(Py  ~Py)" violates [the convention][5]; the instantiating variable "y" is *not* free in the instantiating statement (here, the conclusion) at all, let alone in all the places where the general variable "x" is free in the decapitated general statement (the premise).
-   *Example*. Performing EG on "Px · ~Py" to get "(x)(Px · ~Px)" violates [the convention][6]; the instantiating variable "y" we are choosing to generalize is not free in the instantiating statement, "Px · ~Py", in all the places where "x" is free in the decapitated general statement, "Px · ~Px".
-   *Example*. Performing EI on "(x)(Px · Qx)" to get "Px · Qy" violates [the convention][7]; the instantiating variable "y" is not free in the instantiating statement, "Px · Qy", in all the places where the general variable "x" is free in the decapitated general statement, "Px · Qx".
-   *Example*. Performing UG on "Px  ~Py" to get "(x)(Px  ~Px)" violates [the convention][8]; the instantiating variable we are choosing to generalize, "y", is not free in the instantiating statement in all the places where "x" is free in the decapitated general statement.
-   *Example*. Performing UI on "(x)(Px  Qx)" to get "Pa  Qx" or even "(x)(Pa  Qx)" violates [the convention][9]; the instantiating constant "a" does not occur in the instantiating statement wherever the general variable "x" occurs free in the decapitated general statement, "Px  Qx".

**The Four Rules of Inference**

<table><tbody><tr><td></td><td colspan="2"><strong>Generalization</strong> (adding quantifiers)</td></tr><tr><td></td><td>From constants</td><td>From variables</td></tr><tr><td><strong>UG</strong></td><td><center><strong>Illegal</strong></center></td><td><strong>Ax<br><img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (y)Ay</strong><p><em>Restrictions:</em><br>1. must generalize from a variable (here "x")<br>2. x must not be free in (y)Ay<br>3. not within scope of an assumption in which x occurs freely<br>4. <a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a></p></td></tr><tr><td><strong>EG</strong></td><td><strong>Aa<br><img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (<img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/existq.gif">x)Ax</strong><p><em>Restriction:</em><br><a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a></p></td><td><strong>Ax<br><img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (<img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/existq.gif">y)Ay</strong><p><em>Restriction:</em><br><a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a></p></td></tr></tbody></table>

<table><tbody><tr><td></td><td colspan="2"><strong>Instantiation</strong> (removing quantifiers)</td></tr><tr><td></td><td>To constants</td><td>To variables</td></tr><tr><td><strong>UI</strong></td><td><strong>(x)Ax<br><img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/therefor.gif"> Aa</strong><p><em>Restriction:</em><br><a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a></p></td><td><strong>(x)Ax<br><img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/therefor.gif"> Ay</strong><p><em>Restriction:</em><br><a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a></p></td></tr><tr><td><strong>EI</strong></td><td><center><strong>Illegal</strong></center></td><td><strong>(<img src="https://web.archive.org/web/19990506163644im_/http://www.earlham.edu/~peters/writing/existq.gif">x)Ax<br>...<br><p><strong>Ay<br>...<br>p</strong> (where p is any statement with no free "y" in it)<br></p>p</strong><p><em>Restrictions:</em><br>1. must instantiate to a variable (here "y")<br>2. must instantiate to an assumption<br>3. y must not be free in the proof prior to the assumption (unless it was free in the scope of an assumption since discharged)<br>4. y must not be free in p<br>5. <a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention">the convention</a><br>6. <a href="https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#converse">the converse of the convention</a></p></td></tr></tbody></table>

> *NB. I haven't yet figured out a good way to represent the scope of an assumption in HTML. I can't use the high-ASCII "line-drawing" characters because they are not supported. So in the lower right cell of the last table, I represented the scope of an assumption with a light yellow box. "Ay" is the assumption, "p" is the last statement inside the scope of the assumption, and we discharge with "p", so it is also the first statement after the scope comes to an end.*

In the last restriction to EI we refer to **the converse of the convention** —namely: *the general variable must be free in the decapitated general statement in at least those places where the instantiating variable is free in the instantiating statement.*

Together, [the convention][17] and its [converse][18] say that in the instantiating statement and the decapitated general statement, the instantiating and general variables must be free in exactly the same places.

[The convention][19] says the instantiating variable must be free in *at least* those places where the general variable is free. Except in EI where [the converse of the convention][20] restrains us, [the convention][21] permits the instantiating variable to be free in *more* places than the general variable.

For example, in UI:

Or again,

These rules are more complex than the rules we are used to. Moreover, there are eight possibilities to think about: four rules and two situations for each rule (constants and variables). But not all eight possibilities are equally difficult. Here is a tally. Of the eight possible cases:

-   2 are illegal: UG from constants and EI to constants.
-   4 are easy: EG from constants or variables, UI to constants or variables. These are easy in the sense that they are unrestricted except for [the convention][22].
-   Only 2 are complex: UG from variables, and EI to variables. These are the only two with restrictions beyond [the convention][23].

[1]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[5]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[6]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[7]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[8]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[9]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[10]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[11]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[12]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[13]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[14]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[15]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[16]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#converse
[17]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[18]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#converse
[19]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[20]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#converse
[21]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[22]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
[23]: https://web.archive.org/web/19990506163644/http://www.earlham.edu/~peters/courses/log/ei-ug.htm#convention
