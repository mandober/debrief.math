---
downloaded:       2022-01-22
page-url:         https://www.csm.ornl.gov/~sheldon/ds/sec1.7.html#Univers
page-title:       Predicates and Quantified Statements II
article-title:    Predicates and Quantified Statements II
---
# Predicates and Quantified Statements II

More Quantified Statements
**More Quantified Statements**

**[Statements With Multiple Quantifiers][1] |** **[Negating Statements With Multiple Quantifiers][2]**  

**[Universal Conditional Statements: Contrapositive, Converse, Inverse,Sufficient & Necessary Conditions, Iff][3]**

---

**Statements With Multiple Quantifiers**

While it would be convenient if the world in general (and discrete mathematics in particular) consisted only of simple *if-then* statements, the reality is that much of the logic that must be contended with is made up of multiple events strung together by various conditions and quantifiers. For example:

**You can fool some of the people all of the time.**

Written formally, this sentence can be expressed as:

people ***p*** such that time ***t***, you can fool ***p***.

The above sentence contains *multiple quantifiers*. Furthermore, the order in which the quantifiers appear will greatly affect the meaning of the sentence.

Except for the order of quantifiers, both formal sentences are the same, yet the meaning of these two sentences is very different.

---

**Negating Statements With Multiple Quantifiers**

Recall that, in the last review, [the negation][4] of a "for all" statement is a "there exists" statement, and vice versa. Then how do you negate a statement with more than one quantifier? Try treating the statement like an algebraic expression:  break it down into manageable, logical components and use what you have already learned to derive the negation. For instance, using an earlier example:  *You can fool some of the people all of the time,* start by deriving a formal logic expression.

people ***p*** | time ***t***, you can fool ***p***.

Breaking it down into component parts and negating the sentence as a whole should give you something that looks like this:

~(people ***p*** (time ***t*** (you can fool ***p***)))

Now negate the outside "there exists" quantifier (remember, the negation of a "there exists" statement is a "for all" statement) producing:

people ***p*** ~(time ***t*** (you can fool ***p***))

Do the same thing again, this time to the inside quantified statement.

people ***p***, time ***t ~***(you can fool ***p***)

---

**Universal Conditional Statements:**

Using the statement form

> ***x*** D, if P(***x***) then Q(***x***)

the following are examples of other forms of universal conditional statements:

> **Contrapositive form**

> > ***x*** D, if ~Q(***x***) then ~P(***x***)

> **Converse form**

> > ***x*** D, if Q(***x***) then P(***x***)

> **Inverse**

> > ***x*** D, if ~P(***x***) then ~Q(***x***)

Like the conditional statements presented in [section 1.2][5], a universal conditional statement is logically equivalent to its contrapositive, but not to its converse or inverse forms.

> **Sufficient Condition**

> > "***x*** , m(***x***) is a **sufficient condition** for n(***x***)" means "*x*, if m(***x***) then n(***x***)".  
> > (If m(***x***) occurs, then n(***x***) will happen.)

> **Necessary Condition**
> 
> > "***x***, m(***x***) is a **necessary condition** for n(***x***)" means "***x***, if ~m(***x***) then ~n(***x***)".  
> > (If m(***x***) does not occur, then n(***x***) cannot happen.)

> **Only If**
> 
> > "***x***, n(***x***) **only if** m(*x*)" means "***x***, if ~m(*x*) then ~n(***x***)" or "*x*, if n(***x***) then m(***x***)".  
> > (m(***x***) is a necessary condition for n(***x***).)

[1]: https://www.csm.ornl.gov/~sheldon/ds/sec1.7.html#Statements
[2]: https://www.csm.ornl.gov/~sheldon/ds/sec1.7.html#Neg
[3]: https://www.csm.ornl.gov/~sheldon/ds/sec1.7.html#Univers
[4]: https://www.csm.ornl.gov/~sheldon/ds/sec1.6.html#Negating%20Quantified%20Statements
[5]: https://www.csm.ornl.gov/~sheldon/ds/sec1.2.html#DEF
