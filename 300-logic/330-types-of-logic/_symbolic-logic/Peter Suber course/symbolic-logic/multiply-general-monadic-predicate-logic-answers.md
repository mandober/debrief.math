---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/courses/log/answers3.htm
article-title:    Peter Suber, "Multiply General Monadic Predicate Logic Answers"
---
# Peter Suber, "Multiply General Monadic Predicate Logic Answers"
The Wayback Machine - https://web.archive.org/web/20001218054000/http://www.earlham.edu:80/~peters/courses/log/answers3.htm

**Answers to Copi's Translation and Derivation Exercises**

**Predicate Logic: Multiply General Monadic**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

> References to Irving Copi, *Symbolic Logic*, are to the fifth edition, Macmillan, 1979.
> 
> I include the translation exercises, but not the derivation exercises, that Copi answers himself in the back of the book.
> 
> Remember that there are many ways to prove a valid argument valid with a derivation. If my way differs from your way, yours may still be perfectly good.
> 
> I welcome corrections.
> 
> If the steps of a proof are too long for their box and wrap to a second line, then the justifications to their right may become out of step with the lines they justify. To fix this, widen your browser window with your mouse.
> 
> Proofs with more than one nested box sometimes have "white-space problems" especially at the top and bottom of the outermost box. This is a problem with the way many browsers implement the HTML table standard, not a problem with the table standard itself. The problem, then, is not with the source code and cannot be cured until at least the next generation of browsers.

---

**Table of Contents**

-   [Translations at pp. 88-89][4]
-   [Derivations at pp. 103-04][5]
-   [Translations + derivations at pp. 104-05][6]

---

**Translations at pp. 88-89**

1.  If anything is damaged, someone will be blamed. (x)[Dx  (y)(Py · By)]
2.  If anything is damaged, the tenant will be charged for it. (x)(Dx  Cx)
3.  If nothing is damaged, nobody will be blamed. (x)~Dx  (y)(Py  ~By)
4.  If something is damaged, but nobody is blamed, the tenant will not be charged for it. (x)[[Dx · (y)(Py  ~By)]  ~Cx]
    -   See comment to exercise 2, above. Here the "if something" initially pushes us to use an existentially quantified conditional; but since such expressions don't mean what we want them to, we retreat to a universal quantifier. Hence the paraphrase underlying our translation is: All things that are damaged when nobody is blamed will not be charged to the tenant. Or: Nothing which is damaged when nobody is blamed will be charged to the tenant.
5.  If any bananas are yellow, they are ripe. (x)[(Bx · Yx)  Rx]
    -   Paraphrase: All yellow bananas are ripe.
    -   See comments to exercises 2 and 4, above.
6.  If any bananas are yellow, then some bananas are ripe. (x)(Bx · Yx)  (y)(By · Ry)
    -   Note this is *not* an existentially quantified conditional. It is an unquantified conditional with an existentially quantified antecedent and consequent.
7.  If any bananas are yellow, then if all yellow bananas are ripe, they are ripe. (x)[(Bx · Yx)  [(y)[(By · Yy)  Ry]  Rx]]
    -   Paraphrase: All yellow bananas if all yellow bananas are ripe are ripe.
    -   See comments to exercises 2 and 4, above. Making the x quantifier existential is tempting, but then we'd have an existentially quantified conditional.
8.  If all ripe bananas are yellow, some yellow things are ripe. (x)[(Bx · Rx)  Yx]  (y)(Yy · Ry)
9.  If all officers present are either captains or majors, then either some captains are present or some majors are present. (x)[(Ox · Px)  (Cx  Mx)]  [(y)(Cy · Py)  (z)(Mz · Pz)]
10.  If any officer is present, then either no majors are present or he is a major. (x)[(Ox · Px)  [(y)(My  ~Py)  Mx]]
    -   Paraphrase: For all present officers, either none are majors or that one is a major.
    -   See comments to exercises 2 and 4, above. The x quantifier cannot be existential, for then we'd have an existentially quantified conditional.
11.  If some officers are present, then if all officers present are captains, then some captains are present. (x)(Ox · Px)  [(y)((Oy · Py)  Cy)  (z)(Cz · Pz)]
    -   Note that this is *not* an existentially quantified conditional; it is an unquantified conditional with an existentially quantified antecedent.
    -   If we wanted to say "Cx" at the end of this formula, instead of introducing the new quantifier on "z", then we'd have to extend the scope of the first (x) quantifier to the end of the formula. *That* would turn the whole thing into an existentially quantified conditional, which is a good reason not to do it.
    -   If we make the x quantifier universal, then we could put the rest of the formula within its scope, drop the z quantifier, and change Cz and Pz at the end to Cx and Px. The only problem with this approach is a slight clash with the English meaning. It wouldn't say that all officers were present, but it would say that, for all officers that are present, then (if all officers present are captains) they are captains.
12.  If some officers are present, then if all officers present are captains, then they are captains. (x)[(Ox · Px)  [(y)[(Oy · Py)  Cy]  Cx]]
    -   Paraphrase: All present officers if all present officers are captains are captains.
    -   The syntax of this sentence, hence its translation, is identical to that in exercise 7.
    -   Here we sorely want to use an existential quantifier: (x)[(Ox · Px)  [(y)[(Oy · Py)  Cy]  Cx]]. The trouble with this, however, is that creates an existentially quantified conditional. This is not one of the rare cases where we really mean what an existentially quantified conditional would say, however. It would say (after a few transformations that preserve equivalence) that there is something that is either not a present officer or that has the property of being a captain if all present officers are captains. But this sentence is satisfied by my chalk, since my chalk is not a present officer.
    -   Another tempting solution would be to retain the existential quantifier but let its scope stop after the antecedent, and not envelope the whole conditional: (x)(Ox · Px)  [(y)[(Oy · Py)  Cy]  Cx]]. The problem with this is that the "x" in the final Cx is free; hence we will have produced a propositional function (lacking a truth-value), while the English sentence was a proposition (bearing a truth-value).
    -   Notice that both my translation and the English sentence are non-committal on the existence of present officers. This supports the decision to use a universal quantifier.
    -   Also notice how the particular-seeming "they" does not compel an existential quantifier. This is true even of the "he" in exercise 20, below. Recall this usage in other, more familiar English sentences. "The horse is a noble animal; *she* swats flies with her tail. " This is clearly a statement about all horses that would take a universal quantifier.
13.  If all survivors are fortunate and only women were survivors, then if there are any survivors, then some women are fortunate. (x)[(Sx  Fx) · (Sx  Wx)]  [(y)(Sy)  (z)(Wz · Fz)]
14.  If any survivors are women, then if all women are fortunate, they are fortunate. (x)[(Sx · Wx)  [(y)(Wy  Fy)  Fx]]
    -   Paraphrase: All women survivors if all women are fortunate are fortunate.
    -   See comment to exercise 12, above.
15.  If there are any survivors and only women are survivors, then they are women. (x)[[(Sx) · (y)(Sy  Wy)]  Wx]
    -   Paraphrase: All survivors if all survivors are women are women.
    -   See comment to exercise 12, above.
16.  If every position has a future and no employees are lazy, then some employees will be successful. [(x)(Px  Fx) · (y)(Ey  ~Ly)]  (z)(Ez · Sz)
17.  If any employees are lazy, then if some positions have no future, then they will not be successful. (x)[(Ex · Lx)  [(y)(Py · ~Fy)  ~Sx]]
    -   Paraphrase: All lazy employees if some positions have no future will be unsuccessful.
    -   See comment to exercise 12, above.
18.  If any employees are lazy and some positions have no future, then some employees will not be successful. [(x)(Ex · Lx) · (y)(Py · ~Fy)]  (z)(Ez · ~Sz)
    -   Note that this is *not* an existentially quantified conditional. It is an unquantified conditional. Not even the antecedent is quantified; rather it is an unquantified conjunction whose conjuncts are existentially quantified.
19.  If any husband is unsuccessful, then if all wives are ambitious, then some wives will be disappointed. (x)(Hx · ~Sx)  [(y)(Wy  Ay)  (z)(Wz · Dz)]
    -   Note that this is *not* an existentially quantified conditional; it is an unquantified conditional whose antecedent is existentially quantified.
20.  If any husband is unsuccessful, then if some wives are ambitious, he will be unhappy. (x)[(Hx · ~Sx)  [(y)(Wy · Ay)  Ux]]
    -   Paraphrase: All unsuccessful husbands if some wives are ambitious will be unhappy.
    -   See comment to exercise 12, above.

I omit the exercises on pp. 92, 100-01, because they are neither translations nor derivations.

**Derivations at pp. 103-04**

Part I, exercise 2 (p. 103)

Part I, exercise 3 (p. 103)

Part I, exercise 4 (p. 103)

Part I, exercise 6 (p. 103)

Part I, exercise 7 (p. 103)

Part I, exercise 8 (p. 103)

There were several tricks here. (1) Premise 2 is very similar to the conclusion. It is tempting to instantiate it, transform it again and again, hoping to get the conclusion. But this is hopeless because of restrictions on EI. The two conjuncts of premise 2 cannot be instantiated to the same term. If you nested an EI assumption inside another, and used two different variables, your life would be made much more complicated and you still wouldn't get the conclusion. You are saved from this red herring when you realize that the second conjunct of premise 2 is not needed for the proof. Instead of transforming premise 2 into the conclusion, use premise 1 and the first conjunct of premise 2. (2) Premises 1 and 2 are both existentially quantified, and so cannot be instantiated to the same term. But fortunately, the first premise does not have to be instantiated at all.

Part I, exercise 9 (p. 104)

Note how we instantiated premise 2 twice. This can often be useful with existentially quantified statements. (It wasn't necessary here, but I wanted to make a point. ) Also note that the second time we used EI, we instantiated to x, even though x was free earlier in step 3. But the earlier occurrence was an assumption, since discharged; hence we may legally use x again for EI in step 8. (It wasn't necessary to use x here, but I wanted to make a point. )

Part I, exercise 11 (p. 104)  
I cannot do this proof without using the QN rules, which Copi has not introduced at this point (see p. 109). Can you? Here is my proof using QN.

Part I, exercise 12 (p. 104)

Part I, exercise 13 (p. 104)

Part I, exercise 14 (p. 104)

Part I, exercise 16 (p. 104)

Part I, exercise 17 (p. 104)

Note that UG in step 23 is legal, even though we are in the scopes of three assumptions. The reason is that we are generalizing on 'u', which is not free in any of those assumptions. In fact, we instantiated to 'u' in steps 6 and 7 (instead of the 'w' which at first appeared to be more convenient) precisely to make this UG possible. This proof shows that the rule of thumb to instantiate to the same letter has exceptions.

Part I, exercise 18 (p. 104)

Note that UG in step 5 is legal, even though we are in the scope of an assumption. We are generalizing on 'x', which is not free in the assumption. Also note that we followed the rule of thumb to instantiate existentially first; we did not have to instantiate the leftmost quantifier in our premise before the inner quantifier.

Part I, exercise 19 (p. 104)

We could have performed the UG in step 6 inside the scope of the assumption, since we were generalizing on 'y', which was not free in the assumption. However, the order of generalizations could not have been changed. Since generalization (whether EG or UG) puts the new quantifier on the far left, the leftmost quantifier of the desired conclusion must be added last, and the rightmost first.

Part I, exercise 20 (p. 104)

**Translations + derivations at pp. 104-05**

Part II, exercise 1 (p. 104)

Part II, exercise 2 (p. 104)

Part II, exercise 3 (p. 104)

Part II, exercise 5 (p. 104)

Part II, exercise 6 (p. 104)

Part II, exercise 7 (pp. 104-05)

The trick here is to avoid performing EI on both steps 3 and 4, since then we'd have to instantiate to different variables. It turns out that the existential quantifier in step 3 need never be instantiated.

Part II, exercise 9 (p. 105)

The hardest part of this problem was to translate the first premise correctly. Twice in lines 9-15 I used an old trick with logical addition and material implication to derive A  B when we are given only B. Translating the conclusion is also a challenge. I believe this is one of the very rare occasions when an existentially quantified conditional may be justified by the English. 

Part II, exercise 10 (p. 105)

It is tempting, but incorrect, to translate the first premise and the conclusion as existentially quantified conditionals. Note that the existential quantified antecedent of the second premise never needs to be instantiated.

Part II, exercise 11 (p. 105)

The trick here was to repeat lines 7 and 8 outside the scope of the EI assumption so they could be used in the rest of the proof. We had to discharge this EI assumption in mid-proof, not at the end, so that we could perform UG in line 18. That UG had to be outside the scope of the EI assumption.

---

This file is an electronic hand-out for the course, [Symbolic Logic][7].

[1]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/
[4]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/courses/log/answers3.htm#88-89
[5]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/courses/log/answers3.htm#103-04
[6]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/courses/log/answers3.htm#104-05
[7]: https://web.archive.org/web/20001218054000/http://www.earlham.edu/~peters/courses/log/loghome.htm
