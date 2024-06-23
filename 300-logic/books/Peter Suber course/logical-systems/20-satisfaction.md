---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990424092726/http://www.earlham.edu/~peters/courses/logsys/satisfac.htm
article-title:    Peter Suber, "Satisfaction"
---
# Peter Suber, "Satisfaction"
The Wayback Machine - https://web.archive.org/web/19990424092726/http://www.earlham.edu:80/%7Epeters/courses/logsys/satisfac.htm

**Satisfaction**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

Recall that "truth for I" had to be defined separately for each of three kinds of wff of truth-functional propositional logic (TFPL). The three kinds of wff were A, ~A, and AB. If we know what truth for I means for each of these three kinds of wff, then we can figure it out for any complex TFPL wff we might encounter later, for example, (A~(BB))~A.

The idea is the same in predicate logic (PL) except that (1) what we're defining separately for each kind of wff is satisfaction, not truth for I, and (2) there are eleven, not just three, basic kinds of wff. However, if we know what satisfaction means for each of these eleven kinds of wff, then we'll know what it means for any complex PL wff.

It will help to review what sorts of assignments we make when interpreting a PL language such as Hunter's language Q. First we posit a set of objects to be the domain of the interpretation. Then we assign:

-   to each TFPL atom, a truth-value
-   to each constant, an object from the domain
-   to each function symbol, a function such that the domain and range of the function are both subsets of the domain of the interpretation, and
-   to each predicate symbol, the set of all and only the n-tuples of objects of the domain that make the predicate true for that interpretation.

(Technically we also assign truth-functions to the connective symbols and quantifiers to the quantifier symbols. But since all the interpretations we will care about give these symbols their usual meanings, we won't pretend that these vary from interpretation to interpretation.)

Before we introduce the eleven kinds of wff, here are some abbreviations we'll use in the definitions of satisfaction.

-   Let I be the interpretation in which satisfaction is being tested.
-   Let D be the domain of I.
-   Let d1, d2, d3... be the members of D.
-   Let s be an arbitrary denumerable sequence of objects from domain D.
-   Let E be an effective enumeration of the variables of language Q, for example <v', v'', v'''...>.
-   Let S be the set of n-tuples assigned by I to predicate symbol F. (If F is an n-place predicate, then S contains all the n-tuples of objects, for example <d1...dn>, that make Fd1...dn true for that I.)
-   Let *f* be the function assigned by I to function symbol f.

To say that a wff is satisfied means that it is satisfied *by some sequence of objects from the domain of some interpretation*. Hence in the eleven cases below, we'll describe when an arbitrary sequence, s, satisfies that type of wff.

<table><tbody><tr><td><strong>Type of wff</strong></td><td><strong>Description of wff</strong></td><td><strong>Definition of satisfaction</strong></td></tr><tr><td>1. p</td><td>TFPL atom</td><td>s satisfies wff type #1 iff I assigns <em>truth</em> to p</td></tr><tr><td>2. ~A</td><td>TFPL or PL wff negated</td><td>s satisfies wff type #2 iff I assigns <em>false</em> to A</td></tr><tr><td>3. A<img src="https://web.archive.org/web/19990424092726im_/http://www.earlham.edu/~peters/writing/matimp.gif">B</td><td>TFPL or PL wffs connected by material implication</td><td>s satisfies wff type #3 iff either s does not satisfy A or s does satisfy B, or both</td></tr><tr><td>4. Fc<sub>1</sub>...c<sub>n</sub></td><td>n-place predicate whose terms are all constants</td><td>let d<sub>1</sub>...d<sub>n</sub> be the objects assigned by I to c<sub>1</sub>...c<sub>n</sub>; s satisfies wff type #4 iff &lt;d<sub>1</sub>...d<sub>n</sub>&gt; <img src="https://web.archive.org/web/19990424092726im_/http://www.earlham.edu/~peters/writing/setmemb.gif"> S, or iff Fd<sub>1</sub>...d<sub>n</sub> is true for I</td></tr><tr><td>5. Fv<sub>1</sub>...v<sub>n</sub></td><td>n-place predicate whose terms are all variables</td><td>if v<sub>i</sub> is the kth term of E, then I assigns kth term of s (say d<sub>k</sub>) to v<sub>i</sub>; let the terms of s assigned to v<sub>1</sub>...v<sub>n</sub> be d<sub>1</sub>...d<sub>n</sub>; s satisfies wff type #5 iff &lt;d<sub>1</sub>...d<sub>n</sub>&gt; <img src="https://web.archive.org/web/19990424092726im_/http://www.earlham.edu/~peters/writing/setmemb.gif"> S, or iff Fd<sub>1</sub>...d<sub>n</sub> is true for I</td></tr><tr><td>6. Ft<sub>1</sub>...t<sub>n</sub></td><td>n-place predicate whose terms are some combination of constants and variables</td><td>if t<sub>i</sub> is a constant, then it is assigned some object d<sub>i</sub> by I; if it is a variable, then if it is the kth term of E, then I assigns kth term of s (say d<sub>k</sub>) to v<sub>i</sub>; let the terms of s assigned to v<sub>1</sub>...v<sub>n</sub> be d<sub>1</sub>...d<sub>n</sub>; s satisfies wff type #6 iff &lt;d<sub>1</sub>...d<sub>n</sub>&gt; <img src="https://web.archive.org/web/19990424092726im_/http://www.earlham.edu/~peters/writing/setmemb.gif"> S, or iff Fd<sub>1</sub>...d<sub>n</sub> is true for I</td></tr><tr><td>7. <img src="https://web.archive.org/web/19990424092726im_/http://www.earlham.edu/~peters/writing/uniq3.gif" width="13" height="19">v<sub>k</sub>B</td><td>universal quantifier on variable v<sub>k</sub> with wff B in its scope</td><td>v<sub>k</sub> is kth term of E; s satisfies wff type #7 iff every denumerable sequence of the members of D which differ from s in at most the kth place satisfy B; or, s satisfies #7 iff s would satisfy B regardless of which d<sub>i</sub> is assigned to v<sub>k</sub> by I</td></tr><tr><td>8. Wffs with at least one term of form f(c<sub>1</sub>...c<sub>n</sub>)</td><td>the new term is a function whose terms are all constants</td><td>let d<sub>1</sub>...d<sub>n</sub> be the objects assigned by I to c<sub>1</sub>...c<sub>n</sub>; the object d assigned by I to the new term in #8 is the value of <em>f</em>(d<sub>1</sub>...d<sub>n</sub>)</td></tr><tr><td>9. Wffs with at least one term of form f(v<sub>1</sub>...v<sub>n</sub>)</td><td>the new term is a function whose terms are all variables</td><td>let d<sub>1</sub>...d<sub>n</sub> be the objects assigned by I to v<sub>1</sub>...v<sub>n</sub> using the method of #5 above; the object d assigned by I to the new term in #9 is the value of <em>f</em>(d<sub>1</sub>...d<sub>n</sub>)</td></tr><tr><td>10. Wffs with at least one term of the form f(t<sub>1</sub>...t<sub>n</sub>)</td><td>the new term is a function whose terms are some combination of constants and variables</td><td>let d<sub>1</sub>...d<sub>n</sub> be the objects assigned by I to t<sub>1</sub>...t<sub>n</sub> using the methods of #8 and #9 above; the object d assigned by I to the new term in #10 is the value of <em>f</em>(d<sub>1</sub>...d<sub>n</sub>)</td></tr><tr><td>11. Wffs with at least one term of the form f(t<sub>1</sub>...t<sub>n</sub>)</td><td>the new term is a function at least one of whose terms is another function (which will itself be like that in #8, #9, #10, or even #11)</td><td>let d<sub>1</sub>...d<sub>n</sub> be the objects assigned by I to t<sub>1</sub>...t<sub>n</sub> using the methods of #8, #9, and #10 above; the object d assigned by I to the new term in #11 is the value of <em>f</em>(d<sub>1</sub>...d<sub>n</sub>)</td></tr></tbody></table>

Note that in cases #1, sequence s is ignored. Wffs of that kind are made true or false by the assignment of truth-values to TFPL atoms. If assigned *true*, for example, then such a wff is true for all sequences of that I. That means it is true for I. For such wffs, then, satisfaction and truth for I are equivalent.

When A and B in cases #2 and #3 are TFPL wffs, then sequence s is also ignored. However, if they are PL wffs, then sequence s might be consulted. In that case, A and B might be wffs of kinds #4-#11.

In case #4, sequence s is also ignored. Objects are assigned directly to constants by PL interpretations. Hence the truth-value of predicate expressions with only constant terms will be determined by those assignments, independently of sequence s.

In the remaining cases #5-#11, sequence s is critical. Whether the wff is satisfied by s or not depends entirely on the internal content of s.

In this hand-out I used denumerable sequences because Hunter (following Tarski) uses them. But they are not strictly necessary, and avoiding them allows considerable simplification of the definitions. See the hand-out [Three Levels of Truth][4] for a discussion of satisfaction using finite sequences, and a comparison of satisfaction with truth for an interpretation and logical validity.

---

This file is an electronic hand-out for the course, [Logical Systems][5].

[1]: https://web.archive.org/web/19990424092726/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990424092726/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990424092726/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990424092726/http://www.earlham.edu/~peters/courses/logsys/3levels.htm
[5]: https://web.archive.org/web/19990424092726/http://www.earlham.edu/~peters/courses/logsys/lshome.htm
