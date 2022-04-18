---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Corresponding_conditional
page-title:       Corresponding conditional - Wikipedia
article-title:    Corresponding conditional - Wikipedia
---
# Corresponding conditional - Wikipedia

In logic, the corresponding conditional of an argument (or derivation) is a material conditional whose antecedent is the conjunction of the argument's (or derivation's) premises and whose consequent is the argument's conclusion. An argument is valid if and only if its corresponding conditional is a logical truth. It follows that an argument is valid if and only if the negation of its corresponding conditional is a contradiction. Therefore, the construction of a corresponding conditional provides a useful technique for determining the validity of an argument.
In [logic][1], the __corresponding conditional__ of an [argument][2] (or derivation) is a [material conditional][3] whose [antecedent][4] is the [conjunction][5] of the argument's (or derivation's) [premises][6] and whose [consequent][7] is the argument's conclusion. An argument is [valid][8] [if and only if][9] its corresponding conditional is a [logical truth][10]. It follows that an argument is valid if and only if the negation of its corresponding conditional is a [contradiction][11]. Therefore, the construction of a corresponding conditional provides a useful technique for determining the validity of an argument.

## Example\[[edit][12]\]

Consider the argument __A__:

> Either it is hot or it is cold  
> It is not hot  
> Therefore it is cold  

This argument is of the form:

The corresponding conditional __C__ is:

> IF ((P or Q) and not P) THEN Q
> 
> or (using standard symbols):
> 
> ((P ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) Q) ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad)P)![\to ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1daab843254cfcb23a643070cf93f3badc4fbbbd) Q

and the argument __A__ is valid just in case the corresponding conditional __C__ is a logical truth.

If __C__ is a logical truth then ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad)__C__ entails Falsity (The False).

Thus, any argument is valid if and only if the denial of its corresponding conditional leads to a contradiction.

If we construct a [truth table][13] for __C__ we will find that it comes out __T__ (true) on every row (and of course if we construct a truth table for the negation of __C__ it will come out __F__ (false) in every row. These results confirm the validity of the argument __A__

Some arguments need [first-order predicate logic][14] to reveal their forms and they cannot be tested properly by truth tables forms.

Consider the argument __A1__:

> Some mortals are not Greeks  
> Some Greeks are not men  
> Not every man is a logician  
> Therefore Some mortals are not logicians  

To test this argument for validity, construct the corresponding conditional __C1__ (you will need first-order predicate logic), negate it, and see if you can derive a contradiction from it. If you succeed, then the argument is valid.

## Application\[[edit][15]\]

Instead of attempting to derive the conclusion from the premises proceed as follows.

To test the validity of an argument (a) translate, as necessary, each premise and the conclusion into sentential or predicate logic sentences (b) construct from these the negation of the corresponding conditional (c) see if from it a contradiction can be derived (or if feasible construct a truth table for it and see if it comes out false on every row.) Alternatively construct a truth tree and see if every branch is closed. Success proves the validity of the original argument.

In case of the difficulty in trying to derive a contradiction, one should proceed as follows. From the negation of the corresponding conditional derive a theorem in [conjunctive normal form][16] in the methodical fashions described in text books. If, and only if, the original argument was valid will the theorem in conjunctive normal form be a contradiction, and if it is, then that it is will be apparent.

## Further reading\[[edit][17]\]

-   Cauman, Leigh S. (1998). *First-order Logic: An Introduction*. Walter de Gruyter. p. 19. [ISBN][18] [3-11-015766-7][19].

-   Skorupski, John (1998). [*The Cambridge Companion to Mill*][20]. Cambridge University Press. p. [40][21]. [ISBN][22] [0-521-42211-6][23].

-   Guttenplan, Samuel D. (1997). *The Languages of Logic: An Introduction to Formal Logic*. Blackwell Publishing. p. 90. [ISBN][24] [1-55786-988-X][25].

-   Kvanvig, Jonathan L. (2003). *The Value of Knowledge and the Pursuit of Understanding*. Cambridge University Press. p. 175. [ISBN][26] [0-521-82713-2][27].

-   Tomassi, Paul (1999). *Logic*. Routledge. p. 153. [ISBN][28] [0-415-16696-9][29].

## External links\[[edit][30]\]

-   [Corresponding conditional from the Free On-line Dictionary of Computing][31]
-   [https://books.google.com/books?id=TQlvJJgUiVoC&pg=PA19][32]
-   [https://books.google.com/books?id=BVHwg\_qNxosC&pg=PA40][33]
-   [http://www.earlham.edu/~peters/courses/log/terms2.htm][34]
-   [http://www.csus.edu/indiv/n/nogalesp/SymbolicLogicGustason/SymbolicLogicOverheads/Phil60GusCh2TruthTablesSemanticMethods/TTValidityCorrespondingConditional.doc][35]
-   [https://books.google.com/books?id=xfOdpyj1bSIC&pg=PA90][36]
-   [https://books.google.com/books?id=OxXopc5AjQ0C&pg=PA175][37]
-   [https://books.google.com/books?id=tb6bxjyrFJ4C&pg=PA153][38]

[1]: https://en.wikipedia.org/wiki/Logic "Logic"
[2]: https://en.wikipedia.org/wiki/Argument "Argument"
[3]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[4]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[5]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[6]: https://en.wikipedia.org/wiki/Premise "Premise"
[7]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[8]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[9]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[10]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[11]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[12]: https://en.wikipedia.org/w/index.php?title=Corresponding_conditional&action=edit&section=1 "Edit section: Example"
[13]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[14]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[15]: https://en.wikipedia.org/w/index.php?title=Corresponding_conditional&action=edit&section=2 "Edit section: Application"
[16]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[17]: https://en.wikipedia.org/w/index.php?title=Corresponding_conditional&action=edit&section=3 "Edit section: Further reading"
[18]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[19]: https://en.wikipedia.org/wiki/Special:BookSources/3-11-015766-7 "Special:BookSources/3-11-015766-7"
[20]: https://archive.org/details/cambridgecompani0000unse_z7h9/page/40
[21]: https://archive.org/details/cambridgecompani0000unse_z7h9/page/40
[22]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[23]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-42211-6 "Special:BookSources/0-521-42211-6"
[24]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[25]: https://en.wikipedia.org/wiki/Special:BookSources/1-55786-988-X "Special:BookSources/1-55786-988-X"
[26]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[27]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-82713-2 "Special:BookSources/0-521-82713-2"
[28]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[29]: https://en.wikipedia.org/wiki/Special:BookSources/0-415-16696-9 "Special:BookSources/0-415-16696-9"
[30]: https://en.wikipedia.org/w/index.php?title=Corresponding_conditional&action=edit&section=4 "Edit section: External links"
[31]: https://web.archive.org/web/20070221225317/http://www.swif.uniba.it/lei/foldop/foldoc.cgi?corresponding+conditional
[32]: https://books.google.com/books?id=TQlvJJgUiVoC&pg=PA19
[33]: https://books.google.com/books?id=BVHwg_qNxosC&pg=PA40
[34]: http://www.earlham.edu/~peters/courses/log/terms2.htm
[35]: http://www.csus.edu/indiv/n/nogalesp/SymbolicLogicGustason/SymbolicLogicOverheads/Phil60GusCh2TruthTablesSemanticMethods/TTValidityCorrespondingConditional.doc
[36]: https://books.google.com/books?id=xfOdpyj1bSIC&pg=PA90
[37]: https://books.google.com/books?id=OxXopc5AjQ0C&pg=PA175
[38]: https://books.google.com/books?id=tb6bxjyrFJ4C&pg=PA153
