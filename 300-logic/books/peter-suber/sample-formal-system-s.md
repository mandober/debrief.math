---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm
page-title:       Peter Suber, "Sample Formal System S"
article-title:    Peter Suber, "Sample Formal System S"
---
# Peter Suber, "Sample Formal System S"

Comments in blue italics are not part of the system, but tips and reminders to help you fulfill the assignment when writing your own formal system.
**Sample Formal System S**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

-   [Metalanguage][4]
-   [Formal Language][5]
    -   [Alphabet][6]
    -   [Grammar][7]
-   [Deductive Apparatus][8]
    -   [Rules of Inference][9]
    -   [Axioms][10]
-   [Theorems][11]
-   [Metatheory][12]
-   [Checklist][13]
    -   [What to Include][14]
    -   [Warnings][15]
    -   [Tips][16]

*Comments in blue italics are not part of the system, but tips and reminders to help you fulfill the assignment when writing your own formal system.*

*This is a 'toy' formal system. It would fulfill the [formal system assignment][17] except that it does not prove as many theorems or metatheorems as I want you to prove, and it lacks an intended interpretation. Nor until it has an intended interpretation can I "explain what is going on" semantically; but you should do this in good detail.*

**Metalanguage**

The metalanguage to describe S will be English supplemented with the standard symbols for truth-functional propositional logic and predicate logic. In addition, A, B, and C will be metalanguage variables that range over wffs of the formal language of S.

I will put quotation marks around symbols and wffs only when necessary to prevent ambiguity.

*You need a metalanguage to talk about your system and in which to state your metatheorems. It need not be a formal language. It need not share anything with your formal language.*

**Formal Language**

**Alphabet:**

> { !, #, &, \*, (, ) }

**Grammar:**

2.  \* is a wff.
3.  ! is a wff.
4.  () and )( are wffs.
5.  If A is a wff, then A!, (A), \*A, AA, and AAA are each wffs.
6.  If (A) is a wff, then A, #A, and A# are each wffs.
7.  If A and B are wffs, then A&B is a wff.
8.  Nothing else is a wff.

*The formal language has two parts: the alphabet and the grammar. The alphabet is just a set of symbols. It should contain all and only the symbols to be used in the axioms and theorems. In this case, it includes none of the standard logic symbols I said I'd need in the metalanguage; this is permissible because the formal language and the metalanguage may be very different. Please limit yourself to symbols that your printer can print, for the sake of legibility.*

*For every symbol in the alphabet, there is at least one rule of grammar explaining how to make wffs with that symbol. Note that the alphabet and rules of grammar are purely syntactic and make no reference to my intended interpretation.*

*Having laid out my formal language, I would now proceed (in my metalanguage) to explain how the wffs of my formal language help me represent the domain of my intended interpretation. This semantic interlude could take a few sentences or many pages.*

**Deductive Apparatus**

**Rules of Inference:**

2.  If A and B are theorems, then \*AB is a theorem.
3.  If \*\*A and A are theorems, then !A is a theorem.
4.  If (A) is a theorem, then A is a theorem.
5.  If ABC is a theorem, then C is a theorem.

**Axioms:**

2.  (\*\*\*)
3.  !!!

*The deductive apparatus has two parts: the rules of inference and the axioms. The rules of inference are stated in the metalanguage. They are syntactic string-transformation rules that take theorems as input and produce a theorem as output. The axioms are wffs of the formal language or (not illustrated here) schemata that instantiate to wffs. Note that the rules of inference and axioms are purely syntactical and make no reference to my intended interpretation.*

*Here I would give the English (or metalanguage) translations of these axioms under the intended interpretation. I would also explain the semantic motivation for my rules of inference.*

**Theorems**

**Theorem 1**. "!"  
Proof:

**Theorem 2**. "!!"  
Proof:

> 1\. (\*\*\*)
> 
> [Axiom 1][18]
> 
> 2\. \*\*\*
> 
> Step 1, [Rule 3][19]
> 
> 3\. \*
> 
> Step 2, [Rule 4][20]
> 
> 4\. !
> 
> [Theorem 1][21]
> 
> 5\. \*\*!
> 
> Steps 3, 4, [Rule 1][22]
> 
> 6\. !!
> 
> Steps 4, 5, [Rule 2][23]

**Theorem 3**. "!!!!"  
Proof:

> 1\. !!!
> 
> [Axiom 2][24]
> 
> 2\. \*!!!!!!
> 
> Step 1 (used twice), [Rule 1][25]
> 
> 3\. !!!!
> 
> 4\. Step 2, [Rule 4][26] when A is "\*!" (a wff), B is "!" (a wff), and C is "!!!!" (a wff)

*And so on for a handful of other theorems. Note that the theorems are actually proved, not merely asserted. And a proof, recall, is a finite non-empty sequence of wffs in which the last wff is the theorem to be proved and all the others are either axioms or follow from axioms by the rules of inference. In short, each step of each proof is not only a wff, but a theorem. After each theorem is proved, I would explain in my metalanguage what the theorem asserts in my intended interpretation. I would work hard to set up the system so that each theorem would be true for that interpretation.*

**Metatheory**

*Here I frame and prove several metatheorems about system S. These describe provable properties of S. Initially I define some terms.*

**Absolute consistency**. A system is absolutely consistent iff at least one wff of its language is not a theorem.

**Exclamatory completeness**. A system is exclamatorily complete iff every finite string of !'s (exclamation points) is a theorem.

**Cheesiness**. A system is cheesy iff it is absolutely inconsistent and exclamatorily complete.

> The semantic motivation of this concept is that such a system will have every finite string of !'s as theorems only because all its wffs are theorems. It's as if a country bragged about having all the Olympic gold-medal squamish players when in fact squamish is played nowhere else. Or as Dan Quayle once promised (9/21/1988), "We're going to have the best-educated American people in the world." Cheesy.

**Metatheorem 1**. S is absolutely consistent.  
Proof:

> The wff ")(" is not a theorem. No rule of inference allows adding the ")" or "(" symbols, or any combination of them, to any string. No rule of inference allows ")(" as output from any input. Hence if ")(" does not occur among the axioms, it cannot occur later in, or as, a theorem. It does not occur among the axioms. Therefore, ")(" is not a theorem. Yet ")(" is a wff (by [Rule 3][27] of the grammar). Therefore, system S contains a wff that is not a theorem.

**Metatheorem 2**. S is exclamatorily complete.  
Proof:

> Let a string of *n* !'s be called an *n* string.
> 
> First it should be clear from [Rules 2][28] and [4][29] of the grammar that all finite *n* strings will be wffs.
> 
> **Lemma**. If the *j* string is a theorem and the *k* string is a theorem, when *j* and *k* are natural numbers greater than 0, then the *j*+*k*\-2 string is a theorem.
> 
> Proof of the lemma: join the *j* and *k* strings under [Rule 1][30], creating a new string, which is also a theorem, starting with \* and followed by *j*+*k* !'s. Apply [Rule 4][31] to the result when A is "\*!" and B is "!", yielding another theorem. This removes the \* and two of the !'s, leaving *j*+*k*\-2 !'s. For an example, see the proof of [Theorem 3][32] above.
> 
> Rather than prove the metatheorem by mathematical induction, I will sketch an effective method for generating each of the posited theorems and their proofs.
> 
> Under the [lemma][33], the 3 string (used twice) yields the 4 string as a theorem (again, see [Theorem 3][34] above); the 3 and 4 strings yield the 5 string as a theorem; the 4 and 4 strings yield the 6 string as a theorem; the 4 and 5 strings yield the 7 string as a theorem. And so on.
> 
> This method requires only the 3 string to build up all the strings for *n* > 3, and we have the 3 string in [Axiom 2][35]. But the metatheorem makes the stronger claim that *all* finite *n* strings are theorems. To meet its terms we must prove separately that the 1 string and 2 string are theorems. For these proofs, see [Theorems 1][36] and [2][37].

**Metatheorem 3**. S is not cheesy.  
Proof:

> While S is exclamatorily complete (by [Metatheorem 2][38]), it is also absolutely consistent (by [Metatheorem 1][39]).

*Note that the metatheorems are stated in the metalanguage, not in the formal language, and are proved with metatheoretic reasoning, not necessarily with the forms of reasoning represented by the system's rules of inference. Metatheorems may be proof-theoretic or model-theoretic or both. They may use classic concepts (like absolute consistency) or new ones you invent to suit your purposes (like cheesiness).*

***Checklist For Your Own Formal System***

***What to Include***

-   *An alphabet of symbols*.
-   *Rules of grammar for recognizing wffs*.
-   *An explicit metalanguage, at least if you are using metalanguage variables in grammatical rules, axiom schemata, or rules of inference*.
-   *Axioms and/or axiom schemata. (It's legal to have zero axioms if at least one of your rules of inference can take zero premises.)*
-   *Rules of inference. (It's legal to have zero rules of inference if the axioms are the only theorems you want.)*
-   *At least one intended interpretation*.
-   *A handful of theorems (say, 5-10) with full proofs*.
-   *Formal, that is, syntactic development of the system*.
    -   *The alphabet, grammar, rules, axioms, and theorems should make no reference to the intended interpretation*.
    -   *Each axiom, each theorem, and each step of each proof should be a wff or wff-schema*.
    -   *The rules of inference should be syntactic string-transformation rules; they should depend solely on what is already a theorem, not on (say) general mathematical computations or decisions (say, game moves) of human beings*.
    -   *Generating theorems from the axioms under the rules should be performable by a dumb syntax machine utterly ignorant of your intended interpretation*.
-   *A handful of metatheorems (say, 5-10) with full proofs*.
-   *Adequate informal English explanations of everything*.
    -   *Translate each axiom and theorem into an English-language sentence about the intended domain*.
    -   *After introducing your alphabet and grammar syntactically, explain what sort of statements your wffs will be when interpreted in your intended interpretation, and explain how such wffs will help you capture your intended domain*.
    -   *After introducing your rules of inference syntactically, explain what they do in light of your intended interpretation*.
    -   *If a rule of grammar, rule of inference, axiom, theorem, proof, or other feature of your system is particularly important for your intended interpretation, or for the success of your system, point that out and explain why. If you don't, it might go unnoticed by a person (like me) who is not clued in*.
    -   *Err on the side of explaining more rather than less. Don't put your reader in the position of deciphering unknown hieroglyphics*.
-   *Proofs of theorems must be rigorous; every step of every proof must not only be a wff, but a theorem, and every step must be stated and justified by explicitly citing the relevant rule of inference..*
-   *Proofs of metatheorems must also be rigorous, but are not constrained to your system's language, axioms, and rules of inference, as the proofs of theorems are.*

***Warnings***

-   *One common syndrome: insufficient informal English account of what's going on. Your uninterpreted syntax will be at least as hard as Egyptian hieroglyphics to crack, and I won't have a Rosetta stone unless you give me one*.
-   *Another common syndrome: loose proofs. Come on! This is a logic course.*
-   *Another common syndrome: not to live up to the technical definition of a formal system, for example by using rules of grammar that are not merely syntactical, rules of inference that do not syntactically transform input theorems into an output theorem, or axioms or theorems that are not wffs. I will give no grade higher than a 'C' to systems that do not conform to technical definition of a formal system. Living up to the definition is the **minimum** for this assignment.*
-   *Another common syndrome: to have a good idea, together with good technical knowledge of how to program the idea (if only this were a programming course), but little or no notion of how to represent the idea in a formal system. You may know that formal systems and programs are isomorphic, and you may know how to program your idea, but don't underestimate the difficulty of finding the formal system that is isomorphic to the program you have in mind.*
-   *Another common syndrome: to make a game, heedless of the difficulty. Games are possible, but very difficult. You should at least understand that games are interactive, while formal systems are not. There are many ways around this problem, but don't be surprised if they make the result look less like the game you intended than a mathematical study of the game. You can make each permissible move a permissible instantiation of axiom schemata. You can batch all the moves of a particular game and make them axioms of a system. You can make a series of systems corresponding to all possible legal moves and games. Theorems can describe individual moves, or entire board configurations, or entire games. Many other variations are possible. But don't make your system interactive; then it will not be a formal system in our technical sense. One year, 80% of the class chose independently to simulate games, and all but one student failed. Stern warnings before the core was turned in, and stern comments on the core, did not stop most students from turning in something that did not conform to the technical definition of a formal system. My advice: don't make a game.*
-   *Another common syndrome: to try to force inferences that are merely permissible. Rules of inference tell us what can be inferred from axioms and other theorems. They do not tell us what must be inferred. However, for metatheoretical purposes we can posit the set of all theorems, as if all permissible inferences were actually made. But even then we cannot say, or pretend, that some inferences were made immediately after other ones. Even when theorem A must be proved before theorem B, because A is a necessary premise for B, there may be many other theorems proved in between A and B. If you have more than one rule of inference, then they can be applied in any order; and if you have only one rule of inference, but many available premises (theorems, after a certain point), then it can apply to any of the available premises. If you find yourself needing a certain theorem to be followed immediately by another certain theorem, then back up and start again; what you need cannot be had within a formal system.*

***Tips***

-   *Many students with good ideas are stumped at some point because they haven't decided what their theorems should look like. This should be one of your first decisions. When interpreted, what should your theorems assert? All and only tautologies of TFPL? All and only truths about shadow-casting? All and only legal tic-tac-toe boards in some code? Decide what your theorems should be, and then work backwards to pick axioms and rules that generate those theorems, and to make a language to accomodate your axioms and theorems.*
-   *Be adventuresome. Logic is only a well-developed science because logicians before you have played.*

[1]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/
[4]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#metalanguage
[5]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#language
[6]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#alphabet
[7]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#grammar
[8]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#apparatus
[9]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[10]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#axioms
[11]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#theorems
[12]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#metatheory
[13]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#checklist
[14]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#include
[15]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#warnings
[16]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#tips
[17]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-asst.htm
[18]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#axioms
[19]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[20]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[21]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#thm1
[22]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[23]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[24]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#axioms
[25]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[26]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[27]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#grammar
[28]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#grammar
[29]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#grammar
[30]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[31]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#rules
[32]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#thm3
[33]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#lemma
[34]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#thm3
[35]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#axioms
[36]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#thm1
[37]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#thm2
[38]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#metathm2
[39]: https://web.archive.org/web/20051216183142/http://www.earlham.edu/~peters/courses/logsys/sys-xmpl.htm#metathm1
