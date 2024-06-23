---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm
article-title:    Peter Suber, "Singly General Monadic Predicate Logic Answers"
---
# Peter Suber, "Singly General Monadic Predicate Logic Answers"
The Wayback Machine - https://web.archive.org/web/20000817231957/http://www.earlham.edu:80/~peters/courses/log/answers2.htm

**Answers to Copi's Translation and Derivation Exercises**

**Predicate Logic: Singly General Monadic**

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

-   [Translations at pp. 69-70][4]
-   [Translations at p. 70][5]
-   [Translations at p. 71][6]
-   [Derivations at p. 76][7]
-   [Translations + Derivations at pp. 76-78][8]

---

**Singly-General Monadic Predicate Logic Translations at pp. 69-70**

1.  Snakes are reptiles. (x)(Sx  Rx)
2.  Snakes are not all poisonous. (x)(Sx · ~Px)
3.  Children are present. (x)(Cx · Px)
    -   My translation says that at least one child is present, which seems more accurate than (x)(Cx  Px), all children in the universe [of discourse] are present.
4.  Executives all have secretaries. (x)(Ex  Sx)
5.  Only executives have secretaries. (x)(Sx  Ex)
    -   Compare the answers to 4 and 5; note how the 'all' and 'only' propositions are the converse of one another.
6.  Only property owners may vote in special municipal elections. (x)(Vx  Px)
    -   If you wrote (x)(Px  Vx), then you'd be saying that *all* (not *only*) property owners may vote.
7.  Employees may use only the service elevator. (x)(Ux  Sx)
    -   Paraphrase: All elevators which employees may use are service elevators.
8.  Only employees may use the service elevator. (x)(Ux  Ex)
    -   Paraphrase: All those who may use service elevators are employees.
    -   Note that in problem #7, Ux referred to elevators, and in problem #8, Ux refers to employees.
9.  All that glitters is not gold. (x)(Gx  ~Ax)
10.  None but the brave deserve the fair. (x)(Dx  Bx)
    -   This means: *only* the brave deserve the fair, which is the converse of *all* the brave deserve the fair. It is equivalent to saying: All those who deserve the fair are brave.
11.  Not every visitor stayed for dinner. (x)(Vx · ~Sx)
12.  Not any visitor stayed for dinner. (x)(Vx  ~Sx), or ~(x)(Vx · Sx)
    -   'Not any' = none = all did not = false that at least one did.
13.  Nothing in the house escaped destruction.
14.  Some students are both intelligent and hard workers. (x)(Sx · Ix · Hx)
    -   There is at least one thing possessing these three properties: being a student, being intelligent, being a hard worker. (This notation is a natural for poetry!)
15.  No coat is waterproof unless it has been specially treated. (x)[Cx  (~Wx  Sx)]
    -   If something is a coat, then it's either not waterproof or specially treated. This is an accurate translation; you'll have to get used to turning sentences inside out like this on occasion.
    -   Here I translated "unless" as inclusive disjunction. If you want to use exclusive disjunction, then say this: (x)[Cx  (~Wx Sx)]
16.  Some medicines are dangerous only if taken in excessive amounts. (x)[Mx · (Dx  Ex)]
17.  All fruits and vegetables are wholesome and delicious. (x)[(Fx  Vx)  (Wx · Dx)]
    -   Note how the "and" between fruits and vegetables is translated as a disjunction.
18.  Everything enjoyable is either immoral, illegal, or fattening. (x)[Ex  (~Mx  ~Lx  Fx)]
19.  A professor is a good lecturer if and only if he is both well-informed and entertaining. (x)[Px  [Gx  (Wx · Ex)]]
    -   My translation is not equivalent to this attractive possibility: (x)[(Px · Gx)  (Wx · Ex)]. Mine says that all professors are good iff they are well-informed and entertaining. The equivalence is only asserted to hold for professors. The latter says that something is a good professor iff it is well-informed and entertaining; the equivalence is asserted to hold in general, implying that the puerile weather person on the local news is a 'good professor'.
20.  Only policemen and firemen are both indispensable and underpaid. (x)[(Ix · Ux)  (Px  Fx)]
    -   Paraphrase: All who are indispensable and underpaid are either policemen or firemen. Note how the "and" between policemen and firemen is translated as a disjunction.
21.  Not every actor is talented who is famous. (x)(Ax · Fx · ~Tx)
    -   At least one actor who is famous is not talented.
22.  Any girl is healthy if she is well nourished and exercises regularly. (x)[Gx  [(Wx · Ex)  Hx]
    -   This is equivalent to (x)[(Gx · Wx · Ex)  Hx] by exportation.
23.  It is not true that every watch will keep good time if and only if it is wound regularly and not abused. ~(x)[Wx  [(Rx · ~Ax)  Kx]] or (x)~[Wx  [(Rx · ~Ax)  Kx]]
    -   See comment to exercise 19.
    -   Note that this is not an existentially quantified conditional, but an existentially quantified negation of a conditional.
24.  Not every person who talks a great deal has a great deal to say. (x)(Px · Tx · ~Hx)
    -   At least one person who talks a great deal does not have a great deal to say.
25.  No automobile that is over ten years old will be repaired if it is severely damaged. (x)[(Ax · Ox)  (Dx  ~Rx)]  
    
    **Translations at p. 70**
    
    For problems 26-46 we are to use this dictionary:
    
    -   Hx = x is a horse.
    -   Gx = x is gentle.
    -   Tx = x has been well-trained.
    
      
    
26.  Some horses are gentle and have been well trained. (x)(Hx · Gx · Tx)
27.  Some horses are gentle only if they have been well trained. (x)[Hx · (Gx  Tx)]
    -   Don't forget that "p  q" translates "p only if q".
28.  Some horses are gentle if they have been well trained. (x)[Hx · (Tx  Gx)]
29.  Any horse is gentle that has been well trained. (x)[Hx  (Tx  Gx)]
    -   Paraphrase: All well trained horses are gentle.
    -   This is equivalent to (x)[(Hx · Tx)  Gx] by exportation
30.  Any horse that is gentle has been well trained. (x)[Hx  (Gx  Tx)]
    -   Paraphrase: All gentle horses are well trained.
    -   This is equivalent to (x)[(Hx · Gx)  Tx]
31.  No horse is gentle unless it has been well trained. (x)[Hx  (Gx  Tx)]
32.  Any horse is gentle if it has been well trained. (x)[Hx  (Tx  Gx)]
    -   Or by exportation: (x)[(Hx · Tx)  Gx].
33.  Any horse has been well trained if it is gentle. (x)[Hx  (Gx  Tx)]
    -   Or by exportation: (x)[(Hx · Gx)  Tx].
34.  Any horse is gentle if an only if it has been well trained. (x)[Hx  (Gx  Tx)]
35.  Gentle horses have all been well trained. (x)[Hx  (Gx  Tx)]
    -   Or by exportation: (x)[(Hx · Gx)  Tx].
    -   Note that this is the same formula used in exercise 33.
36.  Only well trained horses are gentle. (x)[Hx  (Gx  Tx)]
    -   Or by exportation: (x)[(Hx · Gx)  Tx].
    -   Note that this is the same formula used in exercises 33 and 35.
37.  Only gentle horses have been well trained. (x)[Hx  (Tx  Gx)]
    -   Or by exportation: (x)[(Hx · Tx)  Gx].
    -   Note that this is the same formula used in exercise 32.
38.  Only horses are gentle if they have been well trained.
39.  Some horses are gentle even though they have not been well trained. (x)(Hx · Gx · ~Tx)
40.  If something is a well trained horse, then it must be gentle. (x)[(Hx · Tx)  Gx]
    -   Despite the 'some' in 'something', we need the universal quantifier here. The speaker clearly means that every well trained horse is gentle, not that at least one well trained horse is gentle.
    -   Note that this is the same formula used in exercises 32 and 37.
41.  Some horses that are well trained are not gentle. (x)(Hx · Tx · ~Gx)
42.  Some horses are neither gentle nor well trained. (x)(Hx · ~Gx · ~Tx)
43.  No horse that is well trained fails to be gentle. (x)(Hx  (Tx  Gx)]
    -   Paraphrase: All well trained horses are gentle.
    -   Or by exportation: (x)[(Hx · Tx)  Gx].
    -   Note that this is the same formula used in exercises 32, 37, and 40.
44.  A horse is gentle only if it has been well trained. (x)[Hx  (Gx  Tx)]
    -   On 'only if', see comment to exercise 27.
    -   Note that the indefinite article takes the universal quantifier here.
    -   Or by exportation: (x)[(Hx · Gx)  Tx].
    -   Note that this is the same formula used in exercises 33, 35, and 36.
45.  If anything is a gentle horse, then it has been well trained. (x)[(Hx · Gx)  Tx]
    -   Note that this is the same formula used in exercises 33, 35, 36, and 44.
46.  If any horse is well trained, then it is gentle. (x)[(Hx · Tx)  Gx]
    -   Note that this is the same formula used in exercises 32, 37, 40, and 43.

**Translations at p. 71**

1.  Blessed is he that considereth the poor. (x)(Cx  Bx)
2.  He that hath knowledge spareth his words. (x)(Hx  Sx)
    -   Paraphrase: All who hath, spareth.
3.  Whoso findeth a wife findeth a good thing. (x)(Wx  Gx)
    -   Paraphrase: All who find wives, find good things.
4.  He that maketh haste to be rich shall not be innocent. (x)(Rx  ~Ix)
    -   Paraphrase: None who make haste to be rich are innocent.
5.  They shall sit every man under his vine and under his fig-tree. (x)[Mx  (Vx · Fx)]
    -   Paraphrase: If one is a man, they shall sit one under one's vine and they shall sit one under one's fig-tree.
    -   It doesn't matter who 'they' are; that can be built into the V and F predicates. Vx = 'they' shall sit x under his/her vine; Fx = 'they' shall sit x under his/her fig-tree. If it looks like 'they' are the subjects of these sentences, whereas x ought to represent the subject, then we restate: Vx = x shall be sat under his/her vine by them; Fx = x shall be sat under his/her fig-tree by them.
6.  He that increaseth knowledge increaseth sorrow. (x)(Kx  Sx)
    -   Paraphrase: All who increase knowledge, increase sorrow.
7.  Nothing is secret which shall not be made manifest. (x)(Sx  Mx)
    -   Paraphrase: All that is secret shall be made manifest.
8.  Whom The Lord loveth He chasteneth. (x)(Lx  Cx)
    -   Paraphrase: All who are loved by the lord are chastened by the lord.
9.  If a man desire the office of a bishop, he desireth a good work. (x)(Ox  Wx)
    -   Paraphrase: All who desire the office of a bishop desire a good work.
10.  He that hateth dissembleth with his lips, and layeth up deceit within him. (x)[Hx  (Dx · Lx)]
    -   Paraphrase: All who hate dissemble and lay up deceit.

**Derivations at p. 76**

Since CP and IP were introduced before any of these exercises were assigned, I will feel free to use them.

Part I, exercise 2 (p. 76)

Part I, exercise 3 (p. 76)

Part I, exercise 4 (p. 76)

I hope you noticed that you must instantiate 2 to an ordinary constant (like 'a'), but cannot universally generalize from an ordinary constant (like 'a'). So if you instantiate 2, you won't be able to generalize in the way needed to get the conclusion. The trick here is to notice that the premises are inconsistent. We get the conclusion because we can derive anything from a contradiction.

Part I, exercise 6 (p. 76)

Part I, exercise 7 (p. 76)

Part I, exercise 8 (p. 76)

Part I, exercise 9 (p. 76)

Part I, exercise 10 (p. 76)

<table><tbody><tr><td>1. (x)[(Bx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Cx) · (Dx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ex)]<br><und>2. (x)[(Cx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> Ex) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> {[Fx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Gx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Fx)] <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Bx · Dx)}]</und><br>3. (By <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Cy) · (Dy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ey)<br>4. (Cy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> Ey) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> [[Fy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Gy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Fy)] <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (By · Dy)]<br>5. By <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Cy<br>6. Dy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ey<br>16. Fy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Gy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Fy)<br>23. By <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Dy<br>31. Dy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> By<br>32. (By <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Dy) · (Dy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> By)<br>33. By <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Dy<br>34. (x)(Bx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Dx)<br></td><td><br>/<img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (x)(Bx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Dx)<br>1 UI<br>2 UI<br>3 simp<br>3 simp<br><p>ass, IP<br>7 imp<br>8 DeM<br>9 simp<br>9 simp<br>11 imp<br>12 DeM<br>13 simp<br>10,14 conj<br></p>7-15 IP<br><p>ass, CP<br>5,17 MP<br>18 add<br>4,19 MP<br>16,20 MP<br>21 simp<br></p>17-22 CP<br><p>ass, CP<br>6,24 MP<br>25 add<br>26 con<br>4,27 MP<br>16,28 MP<br>21 simp<br></p>24-30 CP<br>23,31 conj<br>32 equiv<br>33 UG<br></td></tr></tbody></table>

**Translations + Derivations at pp. 76-78**

  
Part II, exercise 2 (p. 76)

Part II, exercise 3 (p. 76)

Part II, exercise 4 (p. 77)

Part II, exercise 6 (p. 77)

Part II, exercise 7 (p. 77)

Part II, exercise 8 (p. 77)

Part II, exercise 9 (p. 77)

Part II, exercise 11 (p. 77)

Part II, exercise 12 (p. 77)

Part II, exercise 13 (p. 77)

Part II, exercise 14 (p. 77)

Part II, exercise 16 (p. 77)

Part II, exercise 17 (p. 77)

Part II, exercise 18 (p. 77)

Part II, exercise 19 (p. 77)

I hope you noticed that you can't instantiate 3 and 4 to the same constant (such as 'a'). The trick here is to recognize that you don't need to instantiate 3 at all; it's not needed in the proof.

Part II, exercise 21 (p. 77)

Yes, the premises are inconsistent.  
The argument is also valid (and the premises are still inconsistent) if step 1 is translated (x)[(Ax  Sx)  Wx].

Part II, exercise 22 (p. 77)

See comment to Part II, exercise 19, above. In this case we needn't instantiate step 3. (For that matter, we needn't instantiate step 1 either. )

Part II, exercise 23 (p. 77)

Yes, the premises are inconsistent.

Part II, exercise 24 (p. 78)

Yes, the premises are inconsistent.

Part II, exercise 25 (p. 78)

<table><tbody><tr><td>1. (x)[(Mx · Cx) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Gx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> ~Dx)]<br>2. (x)[Mx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Rx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Cx)]<br>3. (x)[Cx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (~Dx <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ex)]<br><und>4. (x)[(Mx · Ex) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Gx]</und><br>5. (My · Cy) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Gy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> ~Dy)<br>6. My <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Ry <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Cy)<br>7. Cy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (~Dy <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Ey)<br>8. (My · Ey) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Gy<br>26. (My · Ry) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Ey <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Gy)<br>27. (x)[(Mx · Rx) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Ex <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Gx)]<br></td><td><p>/<img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/therefor.gif"> (x)[(Mx · Rx) <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matimp.gif"> (Ex <img src="https://web.archive.org/web/20000817231957im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Gx)]<br>1 UI<br>2 UI<br>3 UI<br>4 UI</p><div>ass, CP<br>6 exp<br>9,10 MP<br>7,11 MP<br>9 simp<br>13,11 conj<br>5,14 MP<br><p>ass, CP<br>13,16 conj<br>8,17 MP<br></p>16-18 CP<br><p>ass, CP<br>15,20 MP<br>12,21 MP<br></p>20-22 CP<br>19,23 conj<br>24 equiv<br></div>9-25 CP<br>26 UG</td></tr></tbody></table>

---

This file is an electronic hand-out for the course, [Symbolic Logic][9].

[1]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/
[4]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm#69-70
[5]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm#70
[6]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm#71
[7]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm#76
[8]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/answers2.htm#76-78
[9]: https://web.archive.org/web/20000817231957/http://www.earlham.edu/~peters/courses/log/loghome.htm
