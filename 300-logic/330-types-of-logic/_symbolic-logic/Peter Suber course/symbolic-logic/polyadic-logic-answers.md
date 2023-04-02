---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm
article-title:    Peter Suber, "Polyadic Logic Answers"
---
# Peter Suber, "Polyadic Logic Answers"
The Wayback Machine - https://web.archive.org/web/20000817232008/http://www.earlham.edu:80/~peters/courses/log/answers4.htm

**Answers to Copi's Translation and Derivation Exercises**

**Polyadic Predicate Logic**

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

-   [Translations at pp. 127-28][4]
-   [Translations at pp. 128-29][5]
-   [Translations at p. 129][6]
-   [Translations at pp. 129-30][7]
-   [Translations at p. 130][8]
-   [Derivations at pp. 132-33][9]
-   [Translations + derivations at pp. 133-34][10]

---

**Translations at pp. 127-28**

Part I

These answers would be more helpful if I also typed in the notation formulas being translated. But that would only be helpful if I also typed in the large dictionary of predicates on p. 127 and I don't have time for that right now. Sorry.

1.  Every dog has his day.
2.  If everything is fair for someone, then everyone is fair for her.
    -   That is, if someone finds every thing fair, then the same person will find every person fair. Is there a traditional apothegm with this meaning?
3.  A rolling stone gathers no moss.
4.  God helps (all) those who help themselves.
5.  All things come to him who waits.
6.  There's no place like home.
7.  Those who don't lose God, don't lose anything.
    -   Is there an old saying to this effect?
8.  If you can't command yourself, then you can't command anyone.
9.  Every cloud has a silver lining.
10.  A person is judged by the company he keeps.
11.  Where there's smoke, there's fire.
12.  A jack of all trades is a master of none.
13.  People who live in glass houses shouldn't throw stones.
14.  People who like everything they say will hear something they don't like.
    -   I'm not terribly confident about this one.
15.  It's an ill wind that blows nobody any good.
16.  Nothing ventured, nothing gained.
17.  Work belonging to all time is being done (at or by) every moment.
    -   Is there a pithy idiomatic version of this that I'm overlooking?
18.  God tempers all winds to the lamb somebody sheared.
    -   I recall a Biblical saying: God looks out for the new-shorn lamb. But Copi's formula stresses that the lamb was shorn by some person.
19.  Everyone borrows something from someone.
20.  Nobody borrows everything from everybody.
    -   Copi lists this as the answer; however I think this English sentence translates problem 21, not problem 20. Problem 20 should be translated: Someone has something that nobody borrowed.
21.  Nobody borrows everything from everybody.
    -   See comment to the previous problem.
22.  There is something that nobody has borrowed from anyone.
23.  All good dogs like their masters.
24.  Everyone has a parent, but some people are not parents of anyone.
25.  If people everywhere who know nothing are blissful, then people everywhere who know everything are fools.

**Translations at pp. 128-29**

Part II

1.  Dead men tell no tales. (x)[(Dx · Mx)  (y)(Ty  ~Txy)]
    -   This is Copi's answer. It is equivalent to (x)(y)[(Mx · Dx · Ty)  ~Txy], which is in a format I find more natural. (I'll use this format rather than Copi's in the following translations. )
    -   Technical aside: the format I prefer is called "prenex normal form". In prenex normal form, all the quantifiers in a formula are stacked at the left end, none is negated, and the scope of each extends to the end of the whole formula.
2.  A lawyer who pleads his own case has a fool for a client. (x)(y)[(Lx · Pxx)  (Cyx · Fy)]
3.  A dead lion is more dangerous than a live dog. (x)(y)[(~Ax · Lx · Ay · Dy)  Dxy]
    -   Paraphrase: All dead lions are more dangerous than all dead dogs.
4.  Uneasy lies the head that wears the crown. (x)(y)[(Hx · Cy · Wxy)  Ux]
    -   Paraphrase: All heads that wear at least one crown lie uneasy.
    -   We use an existential quantifier on crowns ('y') because it is not the first quantifier and we mean "some crown or other" rather than "some crown in particular". (See my translation tips on the order of quantifiers, and on "something" for more details. )
5.  If a boy tells only lies, none of them will be believed. (x)[[Bx · (y)(Txy  Ly)]  (z)[Txy  (u)~Buz]]
6.  Anyone who consults a psychiatrist ought to have his head examined. (x)(y)[(Px · Sy · Cxy)  Ox]
7.  No one ever learns anything unless he teaches it to himself. (x)(y)[(Px  ~Lxy) Txyx]
8.  Delilah wore a ring on every finger and had a finger in every pie. (x)(y)[(Fxd · Ry)  (Oyx] · (x)(y)[(Fxd · Py)  Ixy]
9.  Any man who hates children and dogs cannot be all bad. (x)(y)(z)[(Mx · Cy · Dz · Hxy · Hxz)  ~Bx]
    -   Paraphrase: No men who hate all children and who hate all dogs are all bad.
    -   "All bad" is built into the predicate Bx, so we need not quantify badness.
10.  Anyone who accomplishes anything will be envied by everyone. (x)[Px  [(y)Axy  (z)(Pz  Ezx)]]
11.  To catch a fish, one must have some bait. (x)(y)(z)[(Px · Fy · Bz · Cxy)  Hxz]
    -   Paraphrase: All persons who catch at least one fish use at least some bait.
    -   Note how the "must" in "must have" is translated by use of the "all. . . do" construction.
12.  Every student does some problems, but no student does all of them. (x)(y)[(Sx · Py)  Dxy] · ~(x)(y)(Sx · Py · Dxy)
    -   The second conjunct could also be translated this way: (x)(y)[(Sx · Py)  ~Dxy]
    -   Paraphrase: All students do at least one problem (some problem or other), but it is false that there is a student who does all problems.
13.  Any contestant who answers all the questions put to him will win any prize he chooses. (x)(y)(z)[[(Cx · Qy · Pz · Pyx)  Axy]  (Cxz  Wxz)]
    -   Paraphrase: For all contestants, if all questions put to them are answered, then if they choose a prize, they win that prize.
    -   If we existentially quantified the prize ('z'), we'd be saying that the winner wins some prize or other, at least one prize, not necessarily the one he chooses.
14.  Every son has a father, but not every father has a son. (x)(y)[(Px · Mx · Py · My)  Pyx] · (x)(y)(Px · Mx · Py · My · ~Pxy)
    -   Paraphrase: For all sons, there is a person who is his father, and there is a father who does not have any sons.
    -   Copi makes this difficult by giving us an austere dictionary. We have no predicate Sxy, "x is the son of y", and no predicate Fxy, "x is the father of y". Instead we have predicates for maleness, personhood, and parenthood. We must describe sons as male persons with parents. We must describe fathers as male persons with children.
15.  A person is maintaining a nuisance if he has a dog that barks at everyone who visits its owner. (x)[Px  [(y)[Dy · Hxy · (z)[(Pz · Vzx)  Byz]]  (u)(Nu · Mxu)]]]
16.  A doctor has no scruples who treats a patient who has no ailment. (x)(y)(z)(w)[(Dx · Sy · Pz · Aw · Txz · ~Hzw)  ~Hxy]
    -   Paraphrase: No doctors who treat at least one patient who does not have at least one ailment have any scruples.
17.  A doctor who treats a person who has every ailment has a job for which no one would envy him. (x)(y)(z)(w)(u)[(Dx · Py · Txy · Az · Hyz · Jw · Pu)  (Hxw · ~Euxw)]
    -   Paraphrase: All doctors who treat at least one person who has every ailment have at least one job such that no person envies those doctors that job.
18.  If a farmer keeps only hens, none of them will lay eggs that are worth setting. (x)(y)(z)[(Fx · Hy · Kxy · Ez)  (Lyz · ~Wz)]
    -   Paraphrase: All farmers who keep only hens, keep hens that lay eggs that are not worth setting.
    -   ". . . x keeps only hens" = "only hens are kept by x" = "all that x keeps are hens".
    -   "no y's will lay eggs with property W" = "all y's will lay eggs without property W".

**Translations at p. 129**

For problems 19-25 (p. 129), Copi asks us to use these abbreviations:

-   Px = x is a person
-   Sx = x is a store
-   Bxyz = x buys y from z

1.  Everyone buys something from some store (or other). (x)(y)(z)[(Px · Sy)  Bxzy].
2.  There is a store from which everyone buys something (or other). (x)(y)(z)[(Sx · Py)  Byzx].
3.  Some people make all their purchases from a single store. (x)(y)(z)[(Px · Sz)  Bxyz].
4.  No one buys everything it [sic] sells from any store. (x)(y)(z)[(Px · Sy)  ~Bxzy].
    -   Paraphrase: No person buys everything whatsoever from any store. This claim is not limited to what a store sells, but refers to everything whatsoever. The English is more particular, but I don't think it can be translated satisfactorily without adding the two-place predicate, Sxy, x sells y. With this predicate, I would translate the sentence thus: (x)(y)(z)[(Px · Sy · Szy)  ~Bxzy]. This translation interprets the English to be saying: No person buys everything a store sells from any store.
5.  No one buys things from every store. (x)(y)(z)[(Px · Sy)  ~Bxyz].
6.  No store has everyone for a customer. (x)(y)(z)[(Sx · Py)  ~Byzx].
    -   We have no customer predicate, so we describe a customer as a person who buys at least one thing from a store.
7.  No store makes all its sales to a single person. (x)[Sx  (y)[Py  (z)[(w)Bwzx · ~Byzx]]]

**Translations at pp. 129-30**

For problems 26-45 (pp. 129-30), Copi asks us to use these abbreviations:

-   Cx = x is a charity
-   Mx = x is money
-   Px = x is a person
-   Bxy = x belongs to y
-   Dxyz = x donates y to z

1.  Nobody donates to every charity. (x)(y)(z)[(Px · Cy)  ~Dxzy].
    -   Paraphrase: all people do not donate even one thing to every charity.
2.  Nobody donates money to every charity. (x)(y)(z)[(Px · My · Cz)  ~Dxyz].
    -   The quantifier on money ('y') is existential, because we mean: nobody donates some money or other. . . . If it were universal, we'd be saying: noboty donates all money. . .
3.  Nobody donates all of his money to charity. (x)(y)(z)[(Px · My · Byx · Cz)  ~Dxyz].
4.  Nobody donates all of his money to any single charity. (x)(y)(z)[(Px · My · Byx · Cz)  ~Dxyz].
5.  Nobody donates all of his belongings to any single charity. (x)(y)(z)[(Px · Byx · Cz)  ~Dxyz].
6.  Nobody gives all of his donations to any single charity. (x)(y)(z)[(Px · Cz)  ~Dxyz].
7.  No charity receives all of its money from any single person. (x)(y)(z)[(Cx · My · Pz · Byx)  ~Dzyx].
8.  No charity receives all of his [sic] money from any single person. (x)(y)(z)[(Cx · My · Pz · Byz)  ~Dzyx].
    -   Insofar as this (horrible) sentence is supposed to differ from that in problem 32, I suppose it means this: no charity receives all the money belonging to any single person. That is the sentence I translated above.
9.  No charity receives all of his [sic] donations from any single person. (x)(y)(z)[(Cx · Pz)  ~Dzyx].
    -   Paraphrase: no charity receives all the donations which any single person donates. No charity is the only recipient to which any single person donates.
10.  No charity receives all of his [sic] donations from any one donor. (x)(y)(z)(Cx  ~Dzyx).
    -   Insofar as this (atrocious) sentence differs from that in problem 34, I suppose it means what 34 means but without the qualification that the donor is a person. No charity receives all the donations which any single donor (who might be a non-person) donates. (Ugh!) That is the sentence I translated above.
11.  No charity receives only money as donations. (x)(y)(z)(Cz · ~Mx · Dyxz).
    -   Paraphrase: Not all that is donated to any charity is money. Something which is donated to every charity is not money.
    -   Donors are not mentioned in the English, but must be included in the Dxyz predicate. The English clearly means that something which is donated by someone or another. . . , rather than something which is donated by everyone. . . . So the donors are existentially quantified.
12.  Somebody gives money to charity. (x)(y)(z)(Px · My · Cz · Dxyz).
    -   All quantifiers are existential. The first one means "some person in particular". The second and third mean, respectively, "some money or other" and "some charity or other". See my translation tips on quantifier order and on "something".
13.  Somebody donates all of his money to charity. (x)(y)(z)(Px · My · Byx · Cz · Dxyz).
14.  At least one person donates all of his belongings to a single charity. (x)(y)(z)(Px · Byx · Cz · Dxyz).
15.  At least one person gives all of his donations to a single charity. (x)(y)(z)(Px · Cz · Dxyz).
16.  Some charities receive donations from everybody. (x)(y)(z)(Cx · Pz · Dzyx).
    -   The English is saying that some charities receive some donation or other from everybody, so the donations ('y') are existentially quantified.
17.  Some charities receive donations from every donor. (x)(y)(z)(Cx · Dzyx).
    -   This is the same as problem 41 except that the donors are not restricted to persons.
18.  Some donations are not given to a charity. (x)(y)(z)(~Cz · Dyxz).
    -   Paraphrase: There is something which is not a charity which receives some donation or other from some donor or other.
19.  Some donors donate to every charity. (x)(y)(z)(Cz · Dxyz).
    -   Paraphrase: At least one donor donates something or other to every charity.
20.  Every charity receives donations from at least one donor. (x)(y)(z)(Cx  Dzyx).
    -   Paraphrase: every charity receives some donation or other from some donor or other.

**Translations at p. 130**

Part III

1.  Whoso sheddeth man's blood, by man shall his blood be shed. (x)[[Px · (y)[My · (z)(Bz · Bzy · Sxz)]]  (u)[Mu · (w)(Bw · Bwx · Suw)]]
2.  His hand will be against every man, and every man's hand against him. (x)(y)(z)[(Px · Hy · Mz · Byx)  Ayz] · [(Px · Hy · Mz · Byz)  Ayx]
    -   Px = x is a person; Hx = x is a hand; Bxy = x belongs to y; Mx = x is a man; Axy = x is against y
    -   Paraphrase: There is a person at least one of whose hands is against every man, and at least one hand of every man is against that person.
3.  The sun shall not smite thee by day, nor the moon by night. ~Sstd · ~Smtn
    -   s = the sun; m = the moon; t = thee; d = day; n = night; Sxy = x smites y by z
    -   We could avoid 's' as a constant for the sun, and introduce the predicate Sx = "x is the sun", and so on for m, t, d, and n. We can always replace individuals with suitable predicates because to be a particular individual (e. g. the sun) is equivalent to being an arbitrary individual, x, with the attribute of being that particualr individual (e. g. the attribute of being the sun). But to treat individuals in that way would add complexity to the translation without improving its accuracy.
4.  A wise son maketh a glad father. (x)(y)[(Mx · Wx)  (Mxy · Fyx · Gy)]
    -   Mx = x is male; Fxy = x is y's father; Wx = x is wise; Gx = x is glad; Mxy = x maketh y
    -   Paraphrase: All wise males make their fathers glad.
5.  He that spareth his rod hateth his son. (x)[[Mx · (y)[(Ry · Byx)  Sxy]]  (z)[(Mz · Pxz)  Hxz]]
    -   This is Copi's answer. I prefer this format: (x)(y)(z)[(Mx · Ry · Byx · Sxy · Mz · Pxz)  Hxz]
    -   Mx = x is male; Rx = x is a rod; Bxy = x belongs to y; Sxy = x spareth y; Hxy = x hateth y; Pxy = x is the parent of y
    -   Paraphrase: All men who spare their rods hate their sons.
6.  The borrower is servant to the lender. (x)(y)(Bxy  Sxy)
    -   Bxy = x borrows from y; Sxy = x is servant to y
    -   Paraphrase: All who borrow are servants to those from whom they borrow. (I tightened up the original, which is vague on the question whether borrowers are servants to their own lenders or to any old lenders. )
7.  Whose diggeth a pit shall fall therein: and he that rolleth a stone, it will return upon him. (x)(y)[(Px · Hy · Dxy)  Fxy] · [(x)(y)(Px · Sy · Rxy)  Byx]
    -   Px = x is a person; Hx = x is a hole (pit); Dxy = x diggeth y; Fxy = x falls into y; Sx = x is a stone; Rxy = x rolleth y; Bxy = x returns (back) upon y.
    -   Paraphrase: All persons who dig at least one pit will fall into that pit, and all persons who roll at least one stone will have that stone return (back) upon them.
8.  The fathers have eaten sour grapes, and the children's teeth are set on edge. (x)(y)(z)(w)[(Fxy · Gz · Sz · Exz · Tw)  (Bwy · Ew)]
    -   Fxy = x is the father of y; Gx = x is a grape; Sx = x is sour; Exy = x eats y; Tx = x is a tooth; Bxy = x belongs to y; Ex = x is set on edge
    -   Paraphrase: At least some fathers have eaten at least some sour grapes, and all the teeth of the children of those fathers are set on edge.
9.  The foxes have holes, and the birds of the air have nests; but the Son of man hath not where to lay his head. (x)(y)[(Fx · Hy)  Hxy] · (x)(y)[(Bx · Ny)  Hxy] · (x)(y)(z)[(Sx · Cy · Byx)  ~Pzxy]
    -   Fx = x is a fox; Hx = x is a hole; Hxy = x has y; Bx = x is a bird of the air; Nx = x is a nest; Sx = x is a son of man; Cx = x is a cranium (head); Bxy = x belongs to y; Pxyz = x is a place for y to lay z
    -   Paraphrase: All foxes have at least one hole, and all birds of the air have at least one nest, and all the sons of man lack even one place to lay their craniums.
    -   We could have packed some of this detail into jumbo predicates, e. g. Pxy = x is a place for y to lay its head.
10.  the good that I would, I do not; but the evil which I would not, that I do. (x)[(Gx · Wix)  ~Dix] · (y)[(Ey · ~Wiy)  Diy]
    -   Gx = x is a good thing; Ex = x is an evil thing; i = I; Wxy = x would (wish to) do y; Dxy = x does y
    -   Paraphrase: All good things I would wish to do, I do not do, and all evil things I would not wish to do, I do.

**Derivations at pp. 132-33**

Part I, exercise 2 (p. 132)

Once we discover that we must instantiate 'x' to 'z', and 'z' to 'y', the trick here was to instantiate the 'z' quantifier before the 'x' quantifier. Otherwise we'd get something like (z)Bzz and have to instantiate it to something like Bzy, which would violate the convention.

Part I, exercise 3 (p. 133)

Part I, exercise 4 (p. 133)

Part I, exercise 6 (p. 133)

Part I, exercise 7 (p. 133)

The use of UG in line 14 is permissible because we are generalizing on 'y' which is not free in either of our assumptions.

Part I, exercise 8 (p. 133)

The trick here is to resist the temptation to use the Vx in line 7 in order to build up to the conclusion; rather, use the Vy in line 16. The use of EI is permissible in line 13 because we are instantiating to 'y', which is not yet free in the proof at that point.

Part I, exercise 9 (p. 133)

The trick here is instantiate 'x' in lines 1 and 2 to one letter (here 'y' in lines 7 and 8) and later in lines 4, 5, 6, and 9, to instantiate 'x' to a different letter (here 'x' in lines 9, 10, 11, and 12), even though it would have been legal to instantiate them all to the same letter. This is a case when we have to violate the rule of thumb to instantiate to the same letter whenever we can. Incidentally, it's permissible to discharge our EI assumption at line 20 because, although line 20 has a free 'x' in it, there is no free 'x' in the EI assumption itself (line 6).

Part I, exercise 10 (p. 133)

<table><tbody><tr><td>1. (x)[[Bx · (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">y)[Cy · Dyx · (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">z)(Ez · Fxz)]] <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">w)Gxwx]<br>2. (x)(y)(Hxy <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Dyx)<br>3. (x)(y)(Fxy <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Fyx)<br><und>4. (x)(Ix <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ex)</und> 34. Bx <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> [[(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(Cy · Hxy) · (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">z)(Iz · Fxz)] <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">u)(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">w)Gxwu]<br>35. (x)[Bx <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> [[(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(Cy · Hxy) · (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">z)(Iz · Fxz)] <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">u)(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">w)Gxwu]]<br></td><td><p>/<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (x)[Bx <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> [[(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(Cy · Hxy) ·<br>(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">z)(Iz · Fxz)] <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"><br>(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">u)(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">w)Gxwu]]</p><div>ass. CP<br><div>ass. CP<br>6 simp<br>6 simp<br><div>7 EI, ass.<br><p>8 EI, ass.<br>1 UI<br>11 simp<br>2 UI<br>13 UI<br>3 UI<br>15 UI<br>4 UI<br>9 simp<br>9 simp<br>14,19 MP<br>10 simp<br>17,21 MP<br>10 simp<br>22,23 conj<br>24 EG<br>18,20 conj<br>26,25 conj<br>27 EG<br>28,12 MP<br>29 EG<br></p>8,10-30 EI<br></div>7,9-31 EI<br></div>6-32 CP<br></div>5-33 CP<br>34 UG<br></td></tr></tbody></table>

The hardest trick here was to see that we could perform step 30: generalize one of the x's in step 29 without generalizing the other one. The convention permits this, although it is only rarely useful to do.

**Translations + derivations at pp. 133-34**

Part II

Part II, exercise 1 (p. 133)

Translating the second premise is difficult. Paraphrase: Anderson will vote for x only if x is a friend of Harris. If Anderson will vote for x, then x is a friend of Harris. Translating the third premise is also difficult. I'm assuming that in Fxy, x is the active befriender and y is the passive befriended. Paraphrase: no active befriender of Kelly is passively befriended by Jones. However, the English also supports, though not quite as well, this reading: no active befriender of Kelly is an active befriender of Jones.

Part II, exercise 2 (p. 133)

Part II, exercise 3 (p. 133)

Part II, exercise 5 (p. 133)

(1) The second premise, paraphrase: At least one member of the Country Club is not wealthier than at least one non-member. At least one non-member is wealthier than at least one member. (2) The conclusion, paraphrase: At least one person belongs to neither the Country Club nor the Elks Lodge.

Part II, exercise 7 (pp. 133-34)

<table><tbody><tr><td>1. (x)(Dx <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Mx)<br>2. (x)(y)[(Px · My · Wxy) <img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Gx]<br>3. (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(Px · Ox · Ny · Dy · Wxy)<br>19. (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(Px · Ox · Gx)<br></td><td><p>/<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (<img src="https://web.archive.org/web/20000817232008im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(Px · Ox · Gx)</p><div>3 EI, ass.<br><p>4 EI, ass.<br>1 UI<br>4 simp<br>6,7 MP<br>5 simp<br>5 simp<br>9,8,10 conj conj<br>2 UI<br>12 UI<br>11,13 MP<br>5 simp<br>9,15,14 conj conj<br>16 EG<br></p>4,5-17 EI<br></div>3,4-18 EI<br></td></tr></tbody></table>

I haven't had time to finish this set of exercises. I hope to do so soon. . . .

Part II, exercise 8 (p. 134)

Part II, exercise 10 (p. 134)

Part II, exercise 11 (p. 134)

Part II, exercise 12 (p. 134)

---

This file is an electronic hand-out for the course, [Symbolic Logic][11].

[1]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/
[4]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#127-28
[5]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#128-29
[6]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#129
[7]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#129-30
[8]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#130
[9]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#132-33
[10]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/answers4.htm#133-34
[11]: https://web.archive.org/web/20000817232008/http://www.earlham.edu/~peters/courses/log/loghome.htm
