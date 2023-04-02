---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/deriv2.htm
article-title:    Peter Suber, "Derivations in Predicate Logic"
---
# Peter Suber, "Derivations in Predicate Logic"
The Wayback Machine - https://web.archive.org/web/19990506155921/http://www.earlham.edu:80/%7Epeters/courses/log/deriv2.htm

**Derivations in Predicate Logic**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

1.  All the derivation rules we've learned so far apply in predicate logic: the 9 rules of inference, the 10 rules of replacement, plus conditional and indirect proof. So keep practicing them; you still need them. (For help, see my earlier [hand-out of tips][4].)
2.  Of the four new rules, UI, EI, UG, and EG, two are easy (UI and EG), and two are difficult and become familiar only with practice (EI and UG). (For help, see my earlier [hand-out on these four rules][5].)
3.  Remember that UI, EI, UG, and EG apply only to entire lines of proof, not to components of larger compounds.
4.  The QN rules apply either to whole lines or to components within larger compounds.
5.  The general strategy for predicate logic derivations is to work through these three phases: (1) instantiate the premises, (2) work with what you have then, using the original 19 rules plus CP and IP, and (3) then generalize as needed to put the right quantifiers on the conclusion.
    
    -   If your conclusion is quantified, then the second-to-last step will usually be a generalization (EG or UG) to put the right quantifier on it. So in "thinking backwards" for proof strategy, cut the quantifiers off the conclusion and then look for premises that will give you that unquantified proposition.
    
      
    
6.  One reason why it's usually necessary to instantiate your premises is that the original 9 rules of inference usually do not apply to quantified statements. They only apply to simple statements and truth-functional compounds.
    
    -   For example, *modus ponens* does not apply to this argument: (x)(Ax  Bx), (x)Ax, / (x)Bx. Nor does it apply to this one: (x)(Ax  Bx), Ax, / Bx.
    -   On the other hand, if the conditional statement is not within the scope of a quantifier, and if we have the antecedent exactly (with its quantifiers, if any), then *modus ponens* will apply. Hence, it does apply to this argument: (x)Ax  (x)Bx, (x)Ax, / (x)Bx.
    
      
    
7.  The original 10 rules of replacement apply to components within larger compounds, even components of predicate logic expressions.  
    
8.  Keep some clear statement of UI, EI, UG, and EG at hand when doing derivation exercises, at least at first. (Use the inside back cover of Copi's book, or [my hand-out][6], or your own notes.) Whenever you need to drop a quantifier, look up the relevant instantiation rule to see whether you can comply with all restrictions. Whenever you need to add a quantifier, look up the relevant generalization rule to see whether you can comply with all restrictions. It can help to write down the inference you want to draw (adding or dropping a quantifier) and then look up the relevant rule. After a handful of practice derivations for each rule, you should be able to apply them without the reference sheet.
9.  It is usually helpful to instantiate all quantified expressions to the same variable or constant. Then the instantiated statements are more likely to "bind" with one another under the inference rules.  
    
10.  Instantiate existential quantifiers before universal quantifiers.
    
    -   For example, once you instantiate (x)Ax to Ax, you cannot instantiate (x)Bx to Bx, since x has already occurred freely in the proof. You could instantiate both quantified expressions to x, however, if you did them in the reverse order.
    
      
    
11.  If you have two or more existential quantifiers, realize that you cannot instantiate them to the same variable. Before you instantiate them to different variables, see whether you can do the proof without instantiating one or more of them at all.
12.  Don't instantiate negated quantifiers. Copi forgot to tell you that this is illegal.
    
    -   If it were legal, then (x)~Ax and ~(x)Ax could both be instantiated to ~Ax. Since the latter could be generalized to (x)~Ax, this would enable us to infer "all not" (all snakes are non-poisonous) from "not all" (not all snakes are poisonous), which is invalid.
    -   If you find yourself with a negated quantified statement like ~(x)Ax, then move the negation sign to the right side of the quantifier with the QN rules before you instantiate.
    
      
    
13.  The restriction on UG inside the scope of an assumption should be understood precisely or you will fail to take some permissible inferences.
    
    -   When you are within the scope of an assumption, then you may not generalize universally on a variable that is free in the assumption. But this is *not* a flat ban on UG in arguments with assumptions.
    -   You may use UG before making, or after discharging, an assumption.
    -   You may use UG within the scope of an assumption provided the variable being generalized was not free in that assumption.
    
      
    
14.  When generalizing, the new quantifier goes at the far left of the expression, putting the entirety of the original expression within its scope. (This follows from [rule 3 above][7].)  
    
15.  A special case of the previous rule is that, when generalizing a negated statement, the negation sign stays to the right of quantifier. When you're finished, the negation sign should be inside scope of the quantifier, not vice versa.
    
    -   For example, ~Ax becomes (x)~Ax, not ~(x)Ax.
    
      
    
16.  We now have *three* kinds of assumption, and they all discharge differently. Each can nest inside any combination of the others. So keep track of which is which, and discharge each one properly.
    
    -   CP assumptions discharge with the conditional statement asserting that the assumption implies the last line.
    -   IP assumptions discharge with the negation of the assumption.
    -   EI assumptions discharge with the last line.
    
      
    
17.  In working with polyadic predicates, generally avoid generalizing different variables to the same variable in the same expression.
    -   For example, it is legal to generalize Axy to (x)Axx. But unless the latter is just what you need to finish the proof, it is usually unwise to generalize in this way. The reason is that the convention will prevent you from instantiating (x)Axx to Axy again; you will only be able to instantiate it to Axx, Ayy, Azz and so on.
    -   If the convention gives you little flexibility in instantiating (x)Axx, it gives you unexpected flexibility in generalizing Axx. You may generalize this to (y)Ayx, and then generalize it again to (z)(y)Ayz.
    -   Apart from these obstacles and opportunities, derivations with polyadic predicates are not very different from derivations with monadic predicates.

---

This file is an electronic hand-out for the course, [Symbolic Logic][8].

[1]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/deriv.htm
[5]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/ei-ug.htm
[6]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/ei-ug.htm
[7]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/deriv2.htm#whole-lines
[8]: https://web.archive.org/web/19990506155921/http://www.earlham.edu/~peters/courses/log/loghome.htm
