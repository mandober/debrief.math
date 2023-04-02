---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990423000407/http://www.earlham.edu/~peters/courses/log/terms2.htm
article-title:    Peter Suber, "Propositional Logic Terms and Symbols"
---
# Peter Suber, "Propositional Logic Terms and Symbols"
The Wayback Machine - https://web.archive.org/web/19990423000407/http://www.earlham.edu:80/%7Epeters/courses/log/terms2.htm

**Propositional Logic Terms and Symbols**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

A ***simple statement*** is one that does not contain any other statement as a part. We will use the lower-case letters, p, q, r, ..., as symbols for simple statements.

A ***compound statement*** is one with two or more simple statements as parts or what we will call ***components***. A component of a compound is any whole statement that is part of a larger statement; components may themselves be compounds.

An ***operator*** (or ***connective***) joins simple statements into compounds, and joins compounds into larger compounds. We will use the symbols, , · , , and  to designate the sentential connectives. They are called *sentential* connectives because they join sentences (or what we are calling statements). The symbol, ~, is the only operator that is not a connective; it affects single statements only, and does not join statements into compounds.

The symbols for statements and for operators comprise our notation or symbolic language. Parentheses serve as punctuation.

***Simple statements***

<table><tbody><tr><td>p</td><td>"p is true"</td><td nowrap="">assertion</td></tr><tr><td>~p</td><td>"p is false"</td><td nowrap="">negation</td></tr></tbody></table>

***Compounds and connectives***

<table><tbody><tr><td>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> q</td><td>"either p is true, or q is true, or both"</td><td nowrap="">disjunction</td></tr><tr><td>p · q</td><td>"both p and q are true"</td><td nowrap="">conjunction</td></tr><tr><td>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/matimp.gif"> q</td><td>"if p is true, then q is true"</td><td nowrap="">implication</td></tr><tr><td>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> q</td><td>"p and q are either both true or both false"</td><td nowrap="">equivalence</td></tr></tbody></table>

Implication statements (p  q) are sometimes called ***conditionals***, and equivalence statements (p  q) are sometimes called ***biconditionals***.

To indicate that a compound is to be taken as a whole or single statement, we put it in parentheses. For example, p  q is a compound. Its negation is ~(p  q). When the negation sign is outside the parentheses, it affects the entire compound, not just the first component, p. Its conjunction with the compound, q  r, would be expressed, (p  q)·(q  r). If we wanted to say that the whole latter statement was false, we would write, ~[(p  q)·(q  r)]. If we wanted to say that either the whole latter statement was true, or that s  t was true, we would write, ~[(p  q)·(q  r)]  (s  t). And so on.

The ***truth value*** of a statement is its truth or falsity. All meaningful statements have truth values, whether they are simple or compound, asserted or negated. That is, p is either true or false, ~p is either true or false, p  q is either true or false, and so on.

A compound statement is ***truth-functional*** if its truth value as a whole can be figured out solely on the basis of the truth values of its parts or components. A connective is truth- functional if it makes only compounds that are truth-functional. For example, if we knew the truth values of p and of q, then we could figure out the truth value of the compound, p  q. Therefore the compound, p  q, is a truth-functional compound and disjunction is a truth-functional connective.

All four of the connectives we are studying (disjunction, conjunction, implication, and equivalence) are truth-functional. Negation is a truth-functional operator. With these four connectives and negation we can express ***all*** the truth-functional relations among statements. (Can you imagine how we would prove this?)

A ***truth table*** is a complete list of the possible truth values of a statement. We use "T" to mean "true", and "F" to mean "false" (though it may be clearer and quicker to use "1" and "0" respectively).

For example, p is either true or false. So its truth table has just 2 rows:

But the compound, p  q, has 2 components, each of which can be true or false. So there are 4 possible combinations of truth values. The disjunction of p with q will be true as a compound whenever p is true, or q is true, or both:

<table><tbody><tr><td><strong>p</strong></td><td><strong>q</strong></td><td><strong>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> q</strong></td></tr><tr><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>T</td></tr><tr><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>F</td></tr></tbody></table>

If a compound has ***n*** distinct simple components, then it will have 2n rows in its truth table.

The truth table columns that define the basic connectives are as follows:

<table><tbody><tr><td><strong>p</strong></td><td><strong>q</strong></td><td><strong>~p</strong></td><td><strong>~q</strong></td><td><strong>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> q</strong></td><td><strong>p · q</strong></td><td><strong>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/matimp.gif"> q</strong></td><td><strong>p <img src="https://web.archive.org/web/19990423000407im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> q</strong></td></tr><tr><td>T</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td></tr></tbody></table>

Most statements will have some combination of T's and F's in their truth table columns; they are called ***contingencies***. Some statements will have nothing but T's; they are called ***tautologies***. Others will have nothing but F's; they are called ***contradictions***. Obviously these three types of propositions exhaust the possibilities for statements that have truth table columns --which means for all truth-functional statements.

In the conditional, p  q, the first statement or "if- clause" (here p) is called the ***antecedent*** and the second statement or "then-clause" (here q) is called the ***consequent***. Of course in more complicated conditionals, the antecedent and consequent could be compounds rather than (as here) simple statements.

Any ***argument*** can be expressed as a ***compound statement*** in the following way. Take all the premises, conjoin them, and make that conjunction the antecedent of a conditional; make the conclusion the consequent. This implication statement is called the ***corresponding conditional*** of the argument. Every argument has a corresponding conditional, and every implication statement has a corresponding argument. Note that because the corresponding conditional of an argument is a statement, it is therefore either a tautology, a contradiction, or a contingency.

An argument is ***valid*** if and only if its corresponding conditional is a tautology. There are other tests for validity using truth tables. The chief alternative test searches for a ***counterexample*** or invalidating row: a possible universe (substitution instance) in which all the premises are true and the conclusion is false. If there are no counterexamples, the argument is valid; if there is even one, it is invalid.

Two statements are ***consistent*** if and only if their conjunction is not a contradiction.

Two statements are ***logically equivalent*** if and only if their truth table columns are identical --if and only if the statement of their equivalence using "" is a tautology.

Obviously truth tables are adequate to test validity, tautology, contradiction, contingency, consistency, and equivalence. This is important because truth tables require no ingenuity or insight, just patience and the mechanical application of rules. No matter how dumb we are, truth tables correctly constructed will always give us the right answer.

Can you see why a truth table can be constructed for every truth-functional statement, and only for truth-functional statements?

---

This file is an electronic hand-out for the course, [Symbolic Logic][4].

[1]: https://web.archive.org/web/19990423000407/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990423000407/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990423000407/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990423000407/http://www.earlham.edu/~peters/courses/log/loghome.htm
