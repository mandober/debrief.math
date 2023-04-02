---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506153221/http://www.earlham.edu/~peters/courses/log/deriv.htm
article-title:    Peter Suber, "Introduction to Derivations"
---
# Peter Suber, "Introduction to Derivations"
The Wayback Machine - https://web.archive.org/web/19990506153221/http://www.earlham.edu:80/%7Epeters/courses/log/deriv.htm

**Introduction to Derivations**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

Derivations can prove but not test validity. They cannot tell you whether or not an argument is valid. They cannot prove that invalid arguments are invalid, and they can only prove that valid arguments are valid if you (the logician) are clever enough. They are not "effective methods" (dumb and infallible) in the mathematical sense; on the contrary, they require ingenuity and insight. This has the disadvantage that we must now be smart, not just patient and legible, in order to succeed. For all these reasons, they are inferior to truth tables.

But derivations are superior to truth tables on several other fronts. Because they require ingenuity and insight, they are more like chess than tic-tac-toe; they are much less boring than truth-tables. They come close to how we actually reason --closer than truth tables at any rate. In addition to proving validity, they can generate valid conclusions from a given set of premises, to see where they lead, or to "unfold" them. Hence they can model exploratory reasoning. Moreover, they can handle any number of propositional variables without clumsiness, unlike truth tables. Finally, they are adequate for predicate logic (our next unit) with only a few additions, while truth tables are useless in predicate logic.

In derivations we use two kinds of rule: rules of inference and rules of replacement. (The term "rule of inference" is sometimes used to cover both types.) The former are tautologous conditionals, and the latter are tautologous biconditionals. The former apply only to entire lines of proof, or whole propositions, while the latter apply to components within compounds as well as to the whole compounds themselves.

Any tautologous conditionals and biconditionals could serve as valid rules of inference; but these are infinite in number. If we let ourselves use any or all of these, then every valid argument could be proved in one step, without further proof. This would be unilluminating. It would also be impractical (actually, impossible) to name each of the rules we were to use. By contrast, then, we use only 19 rules, with two supplementary techniques, that suffice to prove every valid argument valid. And we can call each by name.

Another perspective on the same point. Copi's 19 rules of inference are like the multiplication table. If you memorize a few basic multiplications, then you can use them as tools to compute any complex multiplication. However, if you were superhuman, you could memorize every one of the infinity of correct multiplications so that you would never have to compute any. Similarly, by using a finite set of rules of inference, you prove every complex argument to be valid. However, if you were superhuman, you could memorize every one of the infinity of tautologous conditionals and biconditionals and never have to perform any derivations (of more than one step).

A proof is successful if each step is justified by one of our rules of inference, and if the last step is the proposition to be proven. Everything else (except spelling and neatness) is irrelevant, including the length and niftiness of the proof, and repeated or unnecessary steps. Elegance is desirable, but only validity is essential.

**Strategy tips for constructing proofs**

1.  Be sure that you have translated or copied the problem correctly. If you make a mistake, then you may have written down an invalid argument. If so, you'll never prove it valid!
2.  Similarly, make sure the argument is valid. Don't make up problems at random except for adventure. If your problem is invalid, then (if you make no mistakes) your derivation will trudge on inconclusively forever.
3.  Know the rules of inference and replacement intimately. For this purpose, practice is much more valuable than memorization. You will only see a path from your given premises to your desired conclusion if you know how to walk.
4.  If any of the rules still seem strange (illogical, unwarranted) to you, try to see why they are valid. You can prove them valid or you can work to make their validity familiar and intuitive. But until you get this far, they will be much harder to apply in practice.
5.  Remember that the rules of inference apply to all statements that share their form, even if enormously complicated. For example, *modus ponens* applies to *any* conditional statement no matter how complex, provided it and its antecedent are both given. Recognize huge compounds as cases of your simpler rules. In large, complex compounds, look for the main connective to help you diagnose what rules might apply to it.
6.  Think backwards. Ask yourself what would suffice to prove the conclusion; then ask what would suffice to prove *that*, and so on. Eventually you should reach one of your given premises, or get so close that you can see the bridge from where they are to where you are.
7.  Remember that the different variables in the rules of inference might, in a special case, stand for the same proposition. For example, the rule of material implication tells us that (p  q)  (~p  q). One case of this general truth is (p  p)  (~p  p), which can be very helpful.
8.  Get simple. Derive the simplest propositions you can and use them to build up to a compound conclusion.
9.  If a simple proposition occurs in the premises and not in the conclusion, drop it as soon as you can. Remember which rules (and combinations of rules) allow you to drop components of compounds.
10.  If a simple proposition occurs in the conclusion and not in any or all the premises, add it to the appropriate proposition. Remember which rules (and combinations of rules) allow you to add components to compounds.
11.  Learn how to use the rules to change connectives you don't want into connectives you do want.
12.  Learn how to use the rules to change from a negated compound to an un-negated one. Take negation signs off the outside of compounds whenever you can; only then can you decompose them (pursuant to tip 8 above).
13.  Learn useful "sub-routines" or clusters of rules. For some examples, see below.
14.  Use the methods of conditional and indirect proof when appropriate. Try them whenever you get stuck if only for a change of scenery.
15.  If you get stuck, check to see whether you have made any mistakes to that point. Check each step. Check your original translation or transcription of the problem.
16.  If you are really stuck, make (valid) inferences at random. That is, follow the inference rules but have no particular goal. This is inelegant but perfectly valid. It will enlarge the set of "premises" from which you can draw inferences. At some point you might see a path from where you are to the conclusion. (Keep one eye on tips 8-10 as you go.)

**Useful Sub-Routines**

Come back to these after you have learned Copi's rules of inference for derivations.

**1. Derive any statement you need from a contradiction**

> <table><tbody><tr><td>A · ~A</td><td>given</td></tr><tr><td>A</td><td>simplification</td></tr><tr><td>~A</td><td>simplification</td></tr><tr><td>A <img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> B</td><td>addition; B is any statement we happen to need</td></tr><tr><td>B</td><td>disjunctive syllogism</td></tr></tbody></table>

**2. Move from any B to A  B**

> Along the same lines, do you see how to move from any given ~A to A  B?

**3. Move from A(B · C) to AB**

**4. Move from (AB)C to AC**

> <table><tbody><tr><td>(A<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">B)<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/matimp.gif">C</td><td>given</td></tr><tr><td>~(A<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">B)<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">C</td><td>material implication</td></tr><tr><td>(~A · ~B)<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">C</td><td>DeMorgan's theorem</td></tr><tr><td>C<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">(~A · ~B)</td><td>commutation</td></tr><tr><td>(C<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">~A) · (C<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">~B)</td><td>distribution</td></tr><tr><td>C<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">~A</td><td>simplification</td></tr><tr><td>~A<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/disjunct.gif">C</td><td>commutation</td></tr><tr><td>A<img src="https://web.archive.org/web/19990506153221im_/http://www.earlham.edu/~peters/writing/matimp.gif">C</td><td>material implication</td></tr></tbody></table>

**5. Move from A  ~A to ~A**

**6. Move from ~A  A to A**

**7. Add any tautology to any proof**

> You know that the negation of a tautology is a contradiction. Hence, assume the negation of the tautology desired. This will be a contradiction, and it will be your fault if you cannot, eventually, derive an explicit contradiction from it (the conjunction of some statement with its negation). When you do, discharge your assumption with the (unnegated) tautology, by Indirect Proof.

Can you see how to move from [A  (B  C)] to [B  (A  C)] using only exportation and commutation?

---

This file is an electronic hand-out for the course, [Symbolic Logic][4].

[1]: https://web.archive.org/web/19990506153221/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506153221/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506153221/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506153221/http://www.earlham.edu/~peters/courses/log/loghome.htm
