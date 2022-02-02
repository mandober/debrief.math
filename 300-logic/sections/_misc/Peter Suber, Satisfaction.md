---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060203092937/http://www.earlham.edu/~peters/courses/logsys/satisfac.htm
page-title:       Peter Suber, "Satisfaction"
article-title:    Peter Suber, "Satisfaction"
---
# Peter Suber, "Satisfaction"

The Wayback Machine - https://web.archive.org/web/20060203092937/http://www.earlham.edu:80/~peters/courses/logsys/satisfac.htm
The Wayback Machine - https://web.archive.org/web/20060203092937/http://www.earlham.edu:80/~peters/courses/logsys/satisfac.htm

**Satisfaction**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

> Recall that "truth for I" had to be defined separately for each of three kinds of wff of Hunter's language P (or truth-functional propositional logic, TFPL). The three kinds of wff were A, ~A, and AB. If we know what truth for I means for each of these three kinds of wff, then we can figure it out for any complex wff of language P (or more generally, or TFPL) that we might encounter later, for example, (A~(BB))~A.
> 
> The idea is the same in predicate logic (PL) except that (1) what we're defining separately for each kind of wff is satisfaction, not truth for I, and (2) there are eleven, not just three, basic kinds of wff. However, if we know what satisfaction means for each of these eleven kinds of wff, then we'll know what it means for any complex PL wff.
> 
> It will help to review what sorts of assignments we make when interpreting a PL language such as Hunter's language Q. First we posit a set of objects to be the domain of the interpretation. Then we assign:
> 
> -   to each TFPL atom, a truth-value
> -   to each constant, an object from the domain
> -   to each function symbol, a function such that the domain and range of the function are both subsets of the domain of the interpretation, and
> -   to each predicate symbol, the set of all and only the n-tuples of objects of the domain that make the predicate true for that interpretation.
> 
> (Technically we also assign truth-functions to the connective symbols and quantifiers to the quantifier symbols. But since all the interpretations we will care about give these symbols their usual meanings, we won't pretend that these vary from interpretation to interpretation.)
> 
> Before we introduce the eleven kinds of wff, here are some abbreviations we'll use in the definitions of satisfaction.
> 
> -   Let I be the interpretation in which satisfaction is being tested.
> -   Let D be the domain of I.
> -   Let d1, d2, d3... be the members of D.
> -   Let s be an arbitrary denumerable sequence of objects from domain D.
> -   Let E be an effective enumeration of the variables of language Q, for example <v', v'', v'''...>.
> -   Let S be the set of n-tuples assigned by I to predicate symbol F. (If F is an n-place predicate, then S contains all and only the n-tuples of objects, for example <d1...dn\>, that make Fd1...dn true for that I.)
> -   Let *f* be the function assigned by I to function symbol f.
> 
> To say that a wff is satisfied means that it is satisfied *by some sequence of objects from the domain of some interpretation*. Hence in the eleven cases below, we'll describe when an arbitrary sequence, s, satisfies that type of wff.

**Type of wff**

**Description of wff**

**Definition of satisfaction**

1\. p

TFPL atom

s satisfies wff type #1 iff I assigns *truth* to p

2\. ~A

TFPL or PL wff negated

s satisfies wff type #2 iff I assigns *false* to A

3\. AB

TFPL or PL wffs connected by material implication

s satisfies wff type #3 iff either s does not satisfy A or s does satisfy B, or both

4\. Fc1...cn

n-place predicate whose terms are all constants

let d1...dn be the objects assigned by I to c1...cn; s satisfies wff type #4 iff <d1...dn\>  S, or iff Fd1...dn is true for I

5\. Fv1...vn

n-place predicate whose terms are all variables

if vi is the kth term of E, then I assigns kth term of s (say dk) to vi; let the terms of s assigned to v1...vn be d1...dn; s satisfies wff type #5 iff <d1...dn\>  S, or iff Fd1...dn is true for I

6\. Ft1...tn

n-place predicate whose terms are some combination of constants and variables

if ti is a constant, then it is assigned some object di by I; if it is a variable, then if it is the kth term of E, then I assigns kth term of s (say dk) to vi; let the terms of s assigned to v1...vn be d1...dn; s satisfies wff type #6 iff <d1...dn\>  S, or iff Fd1...dn is true for I

7\. vkB

universal quantifier on variable vk with wff B in its scope

vk is kth term of E; s satisfies wff type #7 iff every denumerable sequence of the members of D which differ from s in at most the kth place satisfy B; or, s satisfies #7 iff s would satisfy B regardless of which di is assigned to vk by I

8\. Wffs with at least one term of form f(c1...cn)

the new term is a function whose terms are all constants

let d1...dn be the objects assigned by I to c1...cn; the object d assigned by I to the new term in #8 is the value of *f*(d1...dn)

9\. Wffs with at least one term of form f(v1...vn)

the new term is a function whose terms are all variables

let d1...dn be the objects assigned by I to v1...vn using the method of #5 above; the object d assigned by I to the new term in #9 is the value of *f*(d1...dn)

10\. Wffs with at least one term of the form f(t1...tn)

the new term is a function whose terms are some combination of constants and variables

let d1...dn be the objects assigned by I to t1...tn using the methods of #8 and #9 above; the object d assigned by I to the new term in #10 is the value of *f*(d1...dn)

11\. Wffs with at least one term of the form f(t1...tn)

the new term is a function at least one of whose terms is another function (which will itself be like that in #8, #9, #10, or even #11)

let d1...dn be the objects assigned by I to t1...tn using the methods of #8, #9, and #10 above; the object d assigned by I to the new term in #11 is the value of *f*(d1...dn)

> Note that in case #1, sequence s is ignored. Wffs of that kind are made true or false by the assignment of truth-values to TFPL atoms. If assigned *true*, for example, then such a wff is true for all sequences of that I. That means it is true for I. For such wffs, then, satisfaction and truth for I are equivalent.
> 
> When A and B in cases #2 and #3 are TFPL wffs, then sequence s is also ignored. However, if they are PL wffs, then sequence s might be consulted. In that case, A and B might be wffs of kinds #4-#11.
> 
> In case #4, sequence s is also ignored. Objects are assigned directly to constants by PL interpretations. Hence the truth-value of predicate expressions with only constant terms will be determined by those assignments, independently of sequence s.
> 
> In the remaining cases #5-#11, sequence s is critical. Whether the wff is satisfied by s or not depends entirely on the internal content of s.
> 
> In this hand-out I used denumerable sequences because Hunter (following Tarski) uses them. But they are not strictly necessary, and avoiding them allows considerable simplification of the definitions. See the hand-out [Three Levels of Truth][4] for a discussion of satisfaction using finite sequences, and a comparison of satisfaction with truth for an interpretation and logical validity.

---

This file is an electronic hand-out for the course, [Logical Systems][5].

Most of the logic symbols in this file are GIFs. See my [Notes on Logic Notation on the Web][6].

[1]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/
[4]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/~peters/courses/logsys/3levels.htm
[5]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/~peters/courses/logsys/lshome.htm
[6]: https://web.archive.org/web/20060203092937/http://www.earlham.edu/~peters/writing/logicsym.htm
