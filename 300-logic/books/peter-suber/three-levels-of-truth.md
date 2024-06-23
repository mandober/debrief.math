---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm
page-title:       Peter Suber, "Three Levels of Truth"
article-title:    Peter Suber, "Three Levels of Truth"
---
# Peter Suber, "Three Levels of Truth"

Predicate logic has at least three levels of truth:  satisfaction, truth for an interpretation, and logical validity.  (Propositional logic has the second and third but not the first.)
**Three Levels of Truth**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

-   [Satisfaction][4]
-   [Truth for an Interpretation][5]
-   [Logical Validity][6]
-   [k-Validity][7]
-   [In General][8]
-   [How True Is "1 + 2 = 3"?][9]
-   [Satisfiability is NP-Complete][10]

Predicate logic has at least three levels of truth: satisfaction, truth for an interpretation, and logical validity. (Propositional logic has the second and third but not the first.)

Truth for an interpretation and logical validity are familiar concepts; we used them in truth-functional propositional logic (TFPL). However, they have to be redefined for predicate logic (PL).

Like Hunter, we will assume that our formal language for predicate logic is called Q (for quantification theory), and that QS is a formal system of predicate logic.

**Satisfaction**

Suppose we interpret Px to mean "x is purple". Let's instantiate x to the constant a, yielding "Pa". Now we have a closed wff that can bear a truth-value. Is it true or false? We can't say. It depends on the assignment we make to the individual constant "a". If "a" stands for Amy, then Pa will be false because Amy is not purple. If "a" stands for Astorix, a purple resident of the planet Lavender Earth, then Pa will be true. (Note that I haven't said "false for I" and "true for I".)

In interpreting a formal language for predicate logic, like Q, we don't simply assign a truth-value to the wff "Pa", as we did when interpreting simple propositions in TFPL. We assign a meaning to the predicate and an object to the constant. That gives the wff a determinate meaning; its truth-value is then ascertainable by *extra-logical* methods, which we leave to empirical scientists and private detectives. Someone has to look and see whether Amy or Astorix is purple; that question is not decided by the logician in the act of interpreting the wff.

Part of the business of interpreting a language like Q is to assign objects to individual constants like "a". The set of objects eligible for such assignment is called the *domain* of the interpretation.

"Pa" is a monadic or 1-place wff. Polyadic or many-place wffs behave similarly. In a 2-place wff, like "Pab", we could decide that the predicate P means "pardons" so that Pab means "a pardons b". If "a" and "b" stand for Amy and Bob, then Pab means "Amy pardons Bob".

Order matters in the arguments to a predicate. The propositions, "Amy pardons Bob" and "Bob pardons Amy", may have different truth-values. While Amy and Bob may make Pab true, they may do so only in the order <Amy,Bob> and not in the order <Bob,Amy>. Therefore, it is not the *set* of objects alone that makes wff true; it is the *sequence* of objects that does so.

If we liked, we could say that many-place predicates actually take only one argument, namely, a *sequence* of terms. (For the same reason, many-place *functions* take a sequence of terms.) On this view, we don't assign objects from the domain to constants; we assign a sequence of objects from the domain to the sequence of terms in the wff.

Now we are in a position to define satisfaction, the first and weakest level of truth. In predicate logic, a wff A is satisfied iff there is some sequence of objects from the domain of some interpretation that makes A come out true.

Since PL wffs come in many sorts, they can be satisfied in many ways. That is, sequences of objects from the domain can make them true in many ways. For these purposes, the important kinds of PL wff are:

-   naked propositional symbols.
-   atomic wffs (no quantifiers or connectives)
-   unquantified wffs compounded with the various connectives of the language
-   quantified wffs
-   wffs of the previous three sorts in which the subjects of predication are all variables, or all constants, or all functions, or some combination of these; and wffs with at least one function as a subject of predication in which the arguments of the function are all variables, or all constants, or all functions, or some combination of these.

Among atomic wffs, satisfaction is defined differently depending on whether the arguments of the predicate are constants, variables, or functions, and in the last case, whether the arguments of the functions are constants, variables, or functions.

Hence the concept of satisfaction cannot be made more precise without giving each of roughly a dozen precise tests for a dozen different kinds of wff. If you want to slog through the detail of such a precise definition, see my hand-out on [satisfaction][11].

We say that a wff is *satisfiable* iff there is some interpretation in which it is satisfied. If so, and the interpretation is I, we say that the wff is satisfiable for I.

We say that a set of wffs is *simultaneously satisfiable* iff there is an interpretation in which each member of the set is satisfied. Each member may be satisfied by a different sequence from that interpretation, but all must be satisfiable for the same interpretation.

By courtesy we say that the empty set of wffs is satisfied by every sequence.

To satisfy a wff is to make it true, but not "true for I" or "logically valid". To make clear that we mean satisfaction rather than these other levels of truth, we can say that a wff is *true for s* when s is some sequence of objects from the domain.

**Truth for an Interpretation**

An arbitrary wff A is true for some interpretation I iff every sequence of I satisfies A.

Note the distinction. Wff A is satisfiable if there is *at least one* sequence in at least one interpretation that makes A true. Wff A is true for I when *all* sequences in at least one interpretation satisfy A.

**Logical Validity**

An arbitrary wff A is logically valid iff it is true for all interpretations.

In standard predicate logics, we stipulate that interpretations have non-empty domains and that the quantifiers and connectives take their standard meanings. So by "all interpretations" we mean all interpretations of that sort. (No wff is true for all interpretations whatsoever.)

Notation: A is logically valid: A.

Wff A is logically valid when it is true for every I, not merely satisfiable in every I. A logically valid wff is true for every s in every I.

Whether a wff A is logically valid is a function of the language independently of the deductive apparatus. If A is a wff of language Q, and is logically valid, we sometimes write: QA. The subscript names the language, not the system

Logically valid formulas (LVF's) are wffs that are true in every interpretation. For an LVF, all interpretations are models. If ~A has no model, then A is logically valid. LVF's are sometimes called *logical truths*.

In TFPL, all LVF's are tautologies and *vice versa*. In predicate logic, tautologies are a proper subset of LVF's. Tautologies in PL can be expressed in TFPL or PL notation. For example, p  p is a wff of PL as well as of TFPL; it is a tautology in each. (x)Px  (x)Px is a wff of PL, not TFPL, but what makes it a LVF is due entirely to structural features belonging to TFPL: namely, that a proposition is said to materially imply itself. So it is also a tautology.

In PL, all tautologies are LVF's, but not all LVF's are tautologies. LVF's that are not tautologies owe their logical truth to structural features beyond the scope of TFPL. For example, (x)Px  (x)Px is a LVF of PL; its logical truth depends on features of quantification.

Systems of logic are semantically complete iff they contain all LVF's, and consistent iff they contain only LVF's, as theorems. For systems of TFPL, this means tautologies. For systems of PL, it means tautologies plus non-tautological LVF's.

**A Fourth Level: k-Validity**

It is often useful to recognize a fourth level of truth: k-validity. Wff A is k-valid iff it is true for every interpretation that has a domain of exactly k members.

Truth for s; satisfaction

Truth for I

k-Validity

Logical truth or logical validity

  

  

  

K-validity is like logical validity in which we put additional restrictions on what counts as an interpretation in the phrase "all interpretations". In addition to requiring that the domain be non-empty and that the quantifiers and connectives take their standard meanings, for k-validity we require the cardinality of the domain to be exactly k.

In strength, k-validity is the the second strongest of the four levels.

There is an effective method for determining whether an arbitrary wff is k-valid for any finite k. (See Hunter's metatheorem 40.22.) This simply reflects the fact that operations on the finite can always be effective. But this does not mean that there is an effective method for determining logical validity. The reason is that there are wffs that are k-valid for every finite k that are *not* logically valid. (Unnumbered metatheorem in Hunter at p. 165.) This shows, in effect, that we can get very close to decidability for systems of polyadic PL, but can't quite get there. (Church's theorem proves the undecidability of polyadic PL; see Hunter's metatheorem 57.2.) In monadic PL things are more tractable; the Bernays-Schönfinkel theorem tells us that, in some circumstances, we can infer logical validity from k-validity. (See Hunter's metatheorem 50.8.)

**In General**

1\. **Models**. In PL, a model is an interpretation I in which a wff is true for that I. It is not enough for the wff to be satisfied or satisfiable for that I.

Similarly, a model of a set  of wffs is an interpretation I in which every wff in  true for that I. A formal system has a model when the set of its theorems has a model.

These terms permit subtle distinctions. For example, a set  of wffs can be simultaneously satisfiable and still lack a model. When a set has a model, there is an interpretation I such that every member of the set is true for that I; each member of the set is satisfied by every sequence of I, not merely (as in simultaneous satisfiability) by some sequence in I.

2\. **Examples**. Here are some worked examples. Let our domain be the set of human beings.

-   *Satisfaction*. Pab (a pardons b) is satisfied by <Amy,Bob>. Because it's not satisfied by <Bob,Amy>, it is not true for *all* s in even one I, let alone all I. Hence it is merely satisfiable, not true for I or logically valid.
-   *Truth for I*. What satisfies Mx (x is mortal)? Since all human beings are mortal, Mx is satisfied by every sequence of our domain. Since there is at least one interpretation in which the wff is satisfied by every sequence of the domain, it is true for I.
-   *Logical validity*. What satisfies Ax  Ax (when A is an arbitrary predicate)? Answer: not just all human beings, but everything whatsoever. Hence this wff is true for *all* I, hence for all domains, whether they contain human beings or not. This is how we define logical validity. (Recall the two restrictions noted above: we mean all interpretations with non-empty domains and in which quantifiers and connectives take their standard meanings.)

3\. **Visualizing the differences**. This chart may help clarify the differences among these three levels of truth.

  

true for  
some s,  
some I

true for  
all s,  
some I

true for  
all s,  
all I

satisfaction

\*

  

  

truth for I

\*

\*

  

logical validity

\*

\*

\*

Clearly, logical validity implies satisfaction (but not *vice versa*) and truth for I (but not *vice versa*), and truth for I implies satisfaction (but not *vice versa*).

All four kinds of truth are preserved by *modus ponens*. (This is proved for all but k-validity in metatheorems 40.2-4.)

4\. **Semantic consequence for Q:** AQB. In TFPL we said that AB when it was never the case that A was true and B false. In PL we mean the same thing, but have to specify what sort of truth is relevant. The answer is: AQB iff for every interpretation of Q, every sequence that satisfies A also satisfies B; or, there is no sequence in any I that satisfies A but not B.

It follows that if no sequences at all satisfy A, then all wffs are semantic consequences of A; in other words, all wffs follow from a contradiction.

Semantic consequence may involve a set of premises, for example, A. A set of wffs semantically implies some wff A iff for every interpretation of Q, every sequence that satisfies every member of the set also satisfies A

Note how semantic consequence for language P differs from semantic consequence for language Q. In Q, "" refers to satisfaction, while in P it refers to truth for I.

The importance of keeping these levels of truth distinct is shown by the pair of wffs, Fx and (x)Fx (see Hunter at 149). There is no interpretation of Q in which the former is true and latter false; yet it is *not* the case that Fx(x)Fx or Fx(x)Fx or Fx(x)Fx, for the simple reason that universal generalization is invalid unless restricted. Without restrictions, seldom will every sequence that satisfies Fx also satisfy (x)Fx. 

5\. **Levels of truth in TFPL**. When we use the new PL definition of truth for I, then it turns out that, for TFPL, satisfaction is the same as truth for I. Here's why. Recall that TFPL wffs can occur in langauge Q; the reason is that PL is a superset or extension of TFPL. These TFPL wffs, say, p  q, or ~p  ~q, can take only two sorts of assignment: truth-values to the propositional symbols and truth-functions to the connectives. Nothing in them can be assigned a sequence of objects from the domain. Hence the wff is true or false regardless of any sequences of the domain; hence it is true (if it is true at all) for all sequences. But that is how we define truth for I.

Some logicians speak of satisfiable wffs in TFPL. When they do, they mean that a wff is either a tautology or contingency anything but a contradiction. This usage allows us to say that simultaneously satisfiable wffs are consistent, both in TFPL and PL.

**How True is "1 + 2 = 3"?**

As a PL wff, "1 + 2 = 3" would look something like this

Ef(a,b),c

when Exy is a the two-place predicate "x equals y", and f(x,y) is the function of addition applied to its two arguments. This function with its arguments is the first argument (term) of the Equals predicate.

The wff is satisfied in our intended interpretation in which the domain consists of natural numbers and the constants <a,b,c> are taken to refer to the natural numbers <1,2,3>. Hence the wff is at least satisfiable. But it cannot be satisfied by <3,2,1>, or <13,432,9>, or by many other sequences of objects from the domain. Hence it is *not* true for *all* sequences in any I; hence it is *not* true for I, and hence *not* logically valid.

The surprising conclusion is that truths of arithmetic possess only the weakest sort of truth.

One consequence of logical importance is that formal systems of arithmetic that are semantically complete (contain all truths of arithmetic as theorems), will have theorems that are not logically valid. So for such systems, if consistent, we could have A  A, but never A  A.  

**Satisfiability is NP-Complete**

This isn't the place for a complete introduction to the theory of NP-completeness. But a brief introduction will help us make an important point.

First we must understand that problems have sizes. Since the problem we're interested in is simultaneous satisfiability, let's talk about its size. To test a set  of wffs for simultaneous satisfiability, we must somehow test each member of  for "co-satisfiability" with the rest. The size of the problem, then, is a function of the cardinality of the set .

If you wrote a computer program to solve a problem, then it would take more steps (hence more time) to run as the problem's size increased. When *n* is the size of the problem, the program might take (say) *n* steps, or 2*n* steps, or *n*2 steps.

When the program takes 2n steps, then the amount of time the computation takes increases prodigiously as the size of the problem increases. (If you've forgotten your algebra, you might not appreciate that, as *n* increases, 2n grows *much* faster than *n*2.) Such problems cannot as a class be solved in reasonable times say, the lifetime of the human researcher, or the life of the universe, even for relatively small *n*'s. Even if there is an *effective* method for solving such problems, there is no *tractable* or *feasible* method for solving them. These are the NP-complete problems.

(Explaining why we call these problems "NP-complete" would require the fuller introduction to the theory that we don't have time for here.)

Testing a set  of PL wffs for simultaneous satisfiability is NP-complete. That means that if we want to test a set of arbitrary cardinality, then while there is an effective method for determining the simultaneous satisfiability of its members, there is no feasible or tractable method. As the size of the candidate-set grows, the number of steps (and hence the time) required to test for simultaneous satisfiability grows exponentially.

The reason is that, if the cardinality of  is *n*, then the number of steps required to test  for simultaneous satisfiability is proportional to 2n. This is not obvious to many people, so it is worth a closer look.

Someone might say that we merely have to test every pair of wffs in  to determine their simultaneous satisfiability. This view is based on the recognition that testing for simultaneous satisfiability is equivalent to testing for consistency. So far, so good. The view is also based on the intuition that inconsistency only befalls pairs of propositions, like p and ~p. But this intuition is incorrect. Some particular wff may be consistent with every other single wff in the set, every pair, every 3-tuple, every 4-tuple...and so on, *but* contradict some larger n-tuple.

For example, let wff k be "No A's are B's".

1.  k is consistent with each of the following taken one at a time,
    1.  All A's are C's.
    2.  All C's are B's.but inconsistent with the pair (2-tuple), i-ii.
2.  k is consistent with each of the following taken one or two at a time,
    1.  All A's are C's.
    2.  All C's are D's.
    3.  All D's are B's.but inconsistent with the 3-tuple, i-iii.
3.  k is consistent with each of the following taken one, two, or three at a time,
    1.  All A's are C's.
    2.  All C's are D's.
    3.  All D's are E's.
    4.  All E's are B's.but inconsistent with the 4-tuple, i-iv.
4.  And so on. The method for continuing the series is obvious.

The lesson of these examples is that to test wff k for consistency with a set of *n* statements requires that we check its consistency *with every subset*; it's not enough to test every pair. But a set of *n* members has 2n subsets. Hence we will need 2n tests for problems of size *n*.

For more on the NP-completeness of satisfiability, see Michael R. Garey and David S. Johnson, *Computers and Intractability: A Guide to the Theory of NP-Completeness*, W.H. Freeman and Co., 1979, at pp. 13, 38f, 48f, 259f; and William Poundstone, *Labyrinths of Reason: Paradox, Puzzles and The Frailty of Knowledge*, Anchor Press, 1988, at pp. 22f, 180f.

NP-complete problems can be solved in useful time if the size of the problem is very small. They are only intractable when considered as a class of problems: we can't solve them in useful times when they are arbitrarily large. We can't find a method of solution that is both general (applicable to the entire class) and tractable (able to deliver solutions in useful times).

Poundstone summarizes the work of Larry Stockmeyer and Albert Meyer who asked the question: how big a set of wffs can we test for simultaneous satisfiability in the time available in the history of the universe? First Stockmeyer and Meyer posit the biggest and fastest computer the universe could support. Since parallelism increases speed, they suppose that all the space in the physical universe is densely packed with CPU's (the processors that do the computations). To maximize this number, they suppose that each CPU is the size of one neutron, and that they are packed with no empty space between them. Stockmeyer and Meyer calculate that the universe has room for 10126 such processors. Then they suppose that these processors communicate with one another at the speed of light. If this maximally large and fast computer were set to work testing a large set of wffs for simultaneous satisfiability at the time of the Big Bang, how many would it have tested by today? Their answer: 558. (See Poundstone at 183-88.)

Only 558! This is NP-completeness at work. There is no question of the effectiveness of the method of testing the wffs for simulataneous satisfiability. It is simply intractable.

We can appreciate why testing 558 wffs is such a large job if we take the thought experiment one step further. Suppose that the algorithm running on the maximally large and fast computer to test the set of 558 wffs for simultaneous satisfiability is of maximum efficiency. This means the algorithm requires only one step per test. There are 2558 subsets of the set to test. At one step per test, the machine must perform

>  94,349,060,620,538,533,806,038,864,524,706,722,272,923,  
> 030,510,411,010,709,405,157,506,140,604,059,803,730,215,  
> 316,812,944,146,918,853,670,937,576,909,612,249,426,461,  
> 574,811,981,581,403,585,628,581,740,109,148,831,744  

tests. If the machine performed one test per second (very slow), this would take 2.99 x 10160 years. Speed up the processor by tens of orders of magnitude and we still have a period of years many times longer than the current age of the universe.

NP-completeness is clearly important for computer science, since it marks the realistic (as opposed to theoretical) boundary of computability. But it is also important for logical theory. Since testing simultaneous satisfiability is the way to test the consistency of PL wffs, it is the way to test for hidden contradiction or paradox. Since most of the logical advances of the 20th century were motivated by the desire to expose or expunge contradiction and paradox, the discovery that satisfiability is NP-complete must rank as one of the fundamental limitative results, along with Gödel's incompleteness theorems. Gödel's second incompleteness theorem tells us that we cannot use the methods of reasoning in a sufficiently powerful system to prove its own consistency unless it is inconsistent. The NP-completeness result tells us that brute force computation, checking each theorem for consistency with the rest, cannot help either; even if the number of theorems in, say, set theory, were finite (which it isn't), the universe is too small to perform the tests. We owe this result to Stephen A. Cook in his important paper, "The Complexity of Theorem-Proving Procedures," *Proceedings of the Third ACM Symposium on Theory of Computing*, Association for Computing Machinery, 1971, pp. 151-58.

[1]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/
[4]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#satisfaction
[5]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#truthfori
[6]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#logicalvalidity
[7]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#kvalidity
[8]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#general
[9]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#123
[10]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/3levels.htm#npcom
[11]: https://web.archive.org/web/20060206052247/http://www.earlham.edu/~peters/courses/logsys/satisfac.htm
