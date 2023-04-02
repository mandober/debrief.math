---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm
article-title:    Peter Suber, "Translation Tips"
---
# Peter Suber, "Translation Tips"
In this hand-out I treat the notation of truth-functional propositional logic and first-order predicate logic as a language, and give guidance on translating from English into this foreign language. In general, "logical" issues, such as methods for making use of the expressions once translated, are omitted here.

References to Irving Copi's *Symbolic Logic* are to the fifth edition, Macmillan, 1979.

-   **Bivalence**. While there are 3-valued and many-valued logics, remember that our logic is 2-valued (or bivalent). Therefore, "She was not unhappy" must be translated as if it were synonymous with "She was happy." If you dislike this restriction, then you dislike bivalence and will have a reason to use a 3-valued or many-valued logic.
-   **Exclusive disjunction**. Remember that "" in our notation expresses *inclusive* disjunction: "p  q" means that either p is true or q is true *or both*. The *exclusive* disjunction of p and q asserts that either p is true or q is true *but not both*. The natural, but long-winded, way to express exclusive disjunction, then, is "(p  q) · ~(p · q)".
    
    Notice, however, that exclusive disjunction is really saying that p and q have different truth-values; if one of them is true, then the other isn't, and *vice versa*. The way to say they have different truth values is to deny their equivalence: "~(p  q)". If you like, you can introduce a symbol for this: "p  q" (this symbol suggested by Geoffrey Hunter).
    
-   **Conjunction**. We express conjunction with many words other than "and", including "but," "moreover," "however," "although", and "even though". In English these expressions sharply contrast the two conjuncts, saying in effect "if you believe the first conjunct, then you will be surprised by the second." But they still assert conjunction. The contrast between the conjuncts is not logically relevant; validity never turns on it.
    1.  Sometimes "and" does not join whole propositions into a compound proposition. Sometimes it simply joins nouns: "Bert and Ernie are brothers" (or are they just room-mates?). This cannot be paraphrased, "Bert is a brother and Ernie is a brother," for that does not assert that they are brothers to each other.
    2.  Sometimes "and" joins adjectives: "The leech was long and wet and slimy." This, however, can be paraphrased, "The leech was long, and the leech was wet, and the leech was slimy."
-   **Unless**. Copi generally translates "unless" as inclusive disjunction. This is often correct. But more often, I think, it should be translated as exclusive disjunction. When we say "p unless q" we mean that we think p is true, but we'll change our minds if it turns out that q is true, hence denying that they can both be true at once. So "p unless q" should be translated either as "p  q" (inclusive disjunction) or as "p  q" (exclusive disjunction). (On the "" symbol, see [Tip 2][1], above.)
-   **And/or**. When people say "and/or", they seem to mean inclusive disjunction. "Bring a scarf and/or a hat" means "bring a scarf or bring a hat or both", and so is translated simply, "S  H".
-   **Neither, nor**. "Neither p nor q" means that both p and q are false. Therefore translate it "~p · ~q" or "~(p  q)". These two formulas are equivalent by DeMorgan's Theorem.
-   **Not both** / **both not**. Many students confuse "not both" with "both not". If p and q are "not both" true, then we are denying their conjunction: "~(p · q)". One of them may be true, just not both. So this is equivalent to "~p  ~q". On the other hand, if p and q are "both not" true, then we are denying each of them; they are both false: "~p · ~q". Neither of them may be true; so this is equivalent to "~(p  q)". The best cure for confusing "not both" with "both not" is familiarity with DeMorgan's Theorems. (For the related distinction between "not all" and "all not", see [Tip 33][2], below.)
-   **Material implication**. "p  q" translates a wide variety of English expressions, for example, "if p, then q"; "if p, q"; "p implies q"; "p entails q"; "p therefore q"; "p hence q"; "since p, q"; "because p, q"; "q if p"; "q provided p"; "q since p"; "q because p"; "q follows from p"; "p is the sufficient condition of q"; "q is the necessary condition of p". The least intuitive is "p only if q". See the next two tips.
-   **Necessary and sufficient conditions**. We say that p is a **sufficient** condition of q when p's truth guarantees q's truth. By contrast, q is a **necessary** condition of p when q's falsehood guarantees p's falsehood. In the ordinary material implication, "p  q", the antecedent p is a sufficient condition of the consequent q, and the consequent q is a necessary condition of the antecedent p.
    
    1.  Satisfy yourself of this by reflecting on *modus ponens* and *modus tollens*. Given "p  q", *modus ponens* tells us that the truth or presence of p suffices to give us q. Hence the antecedent is the sufficient condition of the consequent. Similarly, *modus tollens* tells us that the falsehood of q (the truth of ~q) guarantees us the falsehood of p (the truth of ~p). Hence the consequent is the necessary condition of antecedent.
    2.  Or, satisfy yourself of this by reflecting on an example: "If Socks is a cat, then Socks is a mammal." Being a cat is a sufficient condition of being a mammal. Being a mammal is a necessary condition of being a cat.
    3.  The fact that material implication expresses sufficient and necessary conditions in this way can be a great help in translation. Ask yourself about a difficult English sentence: what is being asserted to be the sufficient condition of what here? What is being asserted to be the necessary condition of what here? When you find the sufficient condition, make it the antecedent. When you find the necessary condition, make it the consequent.
    4.  If p is both necessary and sufficient for q, then we must say "p  q" (material equivalence).
    
-   **Only if**. We translate "p only if q" as "p  q". This is surprising to many people because "if" usually cues the antecedent. Rather than say that "if" sometimes cues the consequent, it is better to say instead that "only if" differs from "if", and "only if" cues the consequent.
    
    If you understand necessary and sufficient conditions, this translation should make more sense: "p only if q" clearly asserts that q is a necessary condition of p. The necessary condition of something is the consequent of that something in a material implication ([Tip 9][3]).
    
    *Modus tollens* assures us that p  q asserts that p is true only if q is true, or that q is the necessary condition of p. For under *modus tollens*, from p  q and ~q we can validly infer ~p.
    
-   **If and only if**. [Tip 10][4] showed why "p only if q" is translated "p  q". It should already be clear why "p if q" should be translated "q  p" ("if" cues the antecedent). So if we say "p if and only if q" we are asserting both "p  q" and "q  p", which amounts to "p  q".
    1.  Remember that "p  q" means that p and q have the same truth-value, not necessarily the same meaning. So it may be correct to translate an English sentence into "p  q" even if its components differ in meaning.
    2.  Many logicians, mathematicians, and philosophers abbreviate "if and only if" as "iff". Hence "p iff q" should be translated as "p  q".
-   **Just when**. Sometimes in English we say that p is true "just when" q is true. (Or perhaps this locution is only common among logicians and mathematicians.) This means that p is true when and only when q is true, or that p if and only if q, and should be translated "p  q".
-   **Even if**. "P even if q" means "p whether or not q" or "p regardless of q". Therefore one perfectly acceptable translation of it is simply "p". If you want to spell out the claim of "regardlessness", then you could write "p · (q  ~q)". The two translations are equivalent. (A proposition conjoined to any tautology has the same truth-value as the original proposition.)
-   **Truth-functionality**. All our operators are truth-functional. So if an operator in English is not truth-functional, don't translate it with one of our operator symbols. If the English operator has multiple meanings, one truth-functional and others not, then only translate it with one of our operator symbols if you want the truth-functional core of meaning and are willing to discard the rest. Two examples:
    
    1.  "And" in English sometimes expresses temporal succession, not just conjunction. "She cursed like a sailor and hung up." Here the "and" should be translated as " · " because it does express conjunction; but our translation will no longer make it clear which act was performed first. One function of the "and" in English is to do so, but that function is not truth-functional and cannot be captured by our operators. "And" sometimes also functions as a slovenly substitute for the infinitive, as in "Try and make me." Here the meaning is even further from truth-functional conjunction.
    2.  Conditional statements in English (if..., then...) often express *causation* or *definition* rather than implication. For example, we use "if..., then..." to express a definition when we say, "if it's ice, then it's frozen", and to express causation when we say, "if we put ice in boiling water, then it will melt". But the horseshoe operator expresses neither definition nor causation, only implication. Moreover, not all senses of logical implication in English are truth-functional. In particular, implications in which the antecedent and consequent must be "relevant" to one another are not truth-functional. The horseshoe only expresses truth-functional implication. (For more on what the horseshoe operator expresses, see [Tips 8-10][5], above.)
    
-   **Punctuation**. Parentheses and brackets are the punctuation marks of our logical language. With a few exceptions, whenever you have two or more operators in a single compound expression, you will need parentheses in order to prevent ambiguity. For example, "p  q  r" is ambiguous. It could mean "(p  q)  r", or "p  (q  r)", which are not equivalent.
    
    1.  Negation is the only one of our operators with a pre-defined scope: namely, the first meaningful proposition (simple or compound) to its right. Hence "~p  q" is *not* ambiguous; it means "(~p)  q", not "~(p  q)".
        
        Similarly, "~(p  q)  r" is not ambiguous; it means "(p  q)  r", not "[(~p)  q]  r", nor "~[(p  q)  r]", nor any of several other variations.
        
    2.  Disjunction is both commutative and associative. So "(p  q)  r" is equivalent to "(q  p)  r" and "p  (q  r)". As a result, omitting parentheses from disjunctive strings does not create ambiguity. One may write "p  q  r". The same is true of conjunctive strings. (However, strings that *mix* disjunctions and conjunctions require parentheses to prevent ambiguity.)
    3.  We could prevent this kind of ambiguity if we stipulated a hierarchy of operators in which higher operators override lower ones. In computer programming languages this is called "operator precedence". There are customary rules of operator precedence in algebra, but none in logical notation. Hence, we must use parentheses.
    4.  Unnecessary parentheses are inelegant but not illogical. When you mean "p", you could write "(p)" or "((p))" without affecting the truth-value of the statement or the validity of any argument in which the statement occurred. The same is true with "p  q", "(p  q)", "((p)  (q))", and so on.
    5.  Omitting necessary parentheses is a common mistake in translation. Make one last check before you think your translation is finished.
    
-   **Specific form**. Any list of three English sentences could be translated by three proposition symbols: p, q, r. But if the original sentences had some common structure, showing perhaps that one of them followed deductively from the other two, then this translation would obscure that fact. So we follow the rule to reveal as much structure as our notation permits. In propositional logic, this means never to use simple variables to translate compound sentences.
    
    Our translations will give us a formal representation of the original English whether we follow this rule or not, but only when we follow this rule will our translation give us the *specific form* of the original.
    
    In propositional logic, a translation yields the specific form of the original when we can restore the original by substituting *simple* statements for each distinct propositional variable in the translation. If we must substitute compound statements for symbols to get the original, then we know we have left some structure untranslated.
    
    Sometimes an argument does not use all the structure we can express with our notation. In those cases, we could omit some in our translation and still capture all that on which validity depends. For this sort of exception to the rule, see [Tips 49][6] and [50][7] below.
    
    ---
    
    **Predicate Logic: Singly General Monadic**
    
-   **Play**. More than in propositional logic, in predicate logic the best tip for translating from English into notation is to play with the English sentence, and then to play with your notation proposals.
    
    1.  **Paraphrase**. Play with different paraphrases of the English until you have one that is (1) equivalent to the original and (2) easier to translate than the original. In paraphrasing, remember that we have only three quantities: all, some, and none. Try to restate the sentence using one of these words explicitly.
        
        For examples in which successive paraphrases of the English help us translate, see [Tips 26][8], [27][9], [28][10], [29][11], [37][12], [38][13], and [39][14], below.
        
    2.  **Transform**. After you have a string in logical notation that *might* be a good translation, use the second 10 rules Copi introduced (the rules of replacement or tautologous biconditionals, e.g. material implication, DeMorgan's theorems, exportation) to transform it into other strings equivalent to it. As you look at your proposal "from different points of view", ask yourself whether you are still satisfied with its accuracy. If your translation is inaccurate when transformed into an equivalent, then it is inaccurate.
        
        For examples in which transformations help us decide on the accuracy of a translation, see [Tips 29][15], [32.i][16], [32.ii][17], [33.i][18], and [33.ii][19], below.
        
    
-   **Canonical quantitative propositions**. Here are some often recurring expressions (most of which are annotated in separate tips below):
    
    <table><tbody><tr><td>All A's are B's</td><td>(x)(Ax <img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/matimp.gif"> Bx)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27">Tip 27</a></td></tr><tr><td>No A's are B's</td><td>(x)(Ax <img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/matimp.gif"> ~Bx)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip32">Tip 32</a></td></tr><tr><td>Some A's are B's</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(Ax · Bx)</td><td><br></td></tr><tr><td>Some A's are not B's</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(Ax · ~Bx)</td><td><br></td></tr><tr><td>All and only A's are B's</td><td>(x)(Ax <img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> Bx)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip35">Tip 35</a></td></tr><tr><td>Only A's are B's</td><td>= All B's are A's (above)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip34">Tip 34</a></td></tr><tr><td>Not all A's are B's</td><td>= Some A's are not B's (above)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33">Tip 33</a></td></tr><tr><td>All A's are not B's</td><td>= No A's are B's (above)</td><td><a href="https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33">Tip 33</a></td></tr></tbody></table>
    
    If you know these canonical forms, and if you can paraphrase the English until it resembles one of these, then you will be able to translate more quickly and reliably.
    
-   **Quantifier scope**. The scope of a quantifier is like the scope of a negation sign: the first whole proposition (simple or compound), or propositional function, to its right.
    
    1.  Hence, "(x)Ax  Bx" is **not** ambiguous. It means "[(x)Ax]  Bx", not "(x)(Ax  Bx)".
    2.  It follows that the way to put a long compound in the scope of a quantifer is: "(x)[ . . . ]", not: "[(x) . . . ]".
    
-   **Some**. Like the word "or", the word "some" is ambiguous in English, although most people don't notice its ambiguity. Just as "or" can signify inclusive or exclusive disjunction, let us distinguish the inclusive and exclusive senses of the word "some". Inclusively, it means "at least one, possibly all". Exclusively, it means "not all, possibly none". We use it inclusively in sentences like, "Some of you will earn an A on the final exam." We want to leave the door open to the possibility that all will earn A's, and close the door on the possibility that none will. We use it exclusively when we pass a bowl of M&M;'s to a guest and say, "Please take some." We mean take a few, or none, but don't take them all.
    
    (For an ambiguity in words like "something", "somebody", "sometime", and "somewhere", see [Tip 54][26], below.)
    
    1.  Remember that the existential quantifier expresses the *inclusive* sense of "some".
    2.  As its name implies, the existential quantifier is more a way of asserting existence than a way of asserting plurality. It means "more than zero, at least one", not "more than one, at least two". Don't let the word "some", which usually translates this quantifier, and which usually suggests plurality, mislead you.
    3.  The exclusive sense of "some" should be translated as "not all". (See [Tips 18][27], [33][28].) For example, "(x)(Mx · ~Ex)" says that there is at least one M&M; that she does not eat. We should resist the temptation to conjoin to this the inclusive "some" (asserting that there is also at least one M&M; that she does eat); for then we will have ruled out the possibility that she selected none at all, which we don't want to rule out.
-   **Only some**. In the sentence, "All even numbers are divisible by 2, but only some are divisible by 4", the phrase "only some" means "more than one and less than all" or "neither none nor all". Hence it is not equivalent to either the inclusive or the exclusive sense of "some" (Tip 20), although it is equivalent to their conjunction. We should translate the second half of our example sentence, "only some even numbers are divisible by four", thus: "(x)(Ex · Fx) · (y)(Ey · ~Fy)" —essentially, "some are and some aren't".
    
    The word "some" should be translated as "only some" when used in a sentence whose other parts explicitly or implicitly rule out the inclusive sense. For example, are all the M&M;'s poisoned? "No, but some are." The "no" rules out the claim that all are poisoned, so the "some" clearly says "not none and not all", which is what "only some" asserts.
    
-   **Which quantifier?** In deciding between quantifiers, ask yourself whether the English sentence commits itself to the existence of something or whether it remains non-committal. In the former case, use an existential quantifier; in the latter, use a universal quantifier.
    
    1.  Sometimes a proposition which commits itself to the existence of something ("UFO's exist") is made the antecedent of a conditional ("If UFO's exist, then our ammonia supplies are in jeopardy"). The "if" in front of the antecedent suspends our commitment to the existence of whatever the antecedent, by itself, may have asserted to exist. The result is that the compound proposition is non-committal on the existence of what the antecedent asserts to exist. In these cases we should still use an existential quantifier for the antecedent: "(x)(Ux)  (y)(Ay  Jy)".
    2.  In our example, the antecedent took an existential quantifier, and the overall compound was a conditional. In such cases be sure that the scope of the existential quantifier only extends to the end of the antecedent; otherwise you'll have an existentially quantified conditional, which is rarely what you want. See [Tip 29][29], below.
    
-   **Avoid the negative**. Translate into affirmative propositions when you can, not negated ones. They are not just easier to read. Negated quantified statements cannot be instantiated by UI or EI until the negation sign is removed. For example, "We have no bananas" can be translated as "(x)(Bx  ~Hx)" or "~(x)(Bx · Hx)" (they are equivalent). But the former is much easier to use in with our rules of interence.
-   **Universe of discourse**. Remember that quantifiers implicitly refer to the universe of discourse. The universal quantifier doesn't strictly say, "for all things", but more precisely, "for all things in the universe of discourse". Similarly, the existential quantifier does not merely say, "for at least one thing", but "for at least one thing in the universe of discourse".
    1.  Remember our convention that the universe of discourse is unlimited unless we stipulate otherwise.
    2.  Read statements with universal quantifiers as if the subject were "everything whatsoever" [in the universe of discourse]. After a little practice, you'll discover how to make ordinary assertions in this unusual idiom. "Everything whatsoever, if it's your finger, is stuck in my eye." "Everything whatsoever, if it's a cop, will be called by me if you don't stop."
-   **Limiting the universe of discourse**. From the previous tip ([24.ii][30]), notice how the "if-clause" (antecedent) in a universally quantified conditional functions to limit the universe of discourse. It carves out the subset of things, or the individual thing, that we want to talk about. We say something about it in the "then-clause" (consequent).
    
    Another example: All humans are mortal. "(x)Mx" says that everything whatsoever [in the universe of discourse] is mortal. That is much too strong. We want to limit the universe to humans and make our claim only about the members of that subset. We put the limitation in the antecedent of a conditional: "(x)(Hx  Mx)": all things, *if* they are human, are mortal. (Also see [Tip 27][31] below.)
    
-   **Translating "and" as "or"**. Be prepared to translate "and" as "or". For example: "Men and women are welcome to apply." It's tempting to translate the "and" here as a conjunction: "(x)[(Mx · Wx)  Ax]". But this actually says that everything that is *both* a man and a woman is welcome to apply. But we mean that everything that is *either* a man *or* a woman (or both) is welcome to apply: "(x)[(Mx  Wx)  Ax]".
    
    1.  Another perspective on this: We want to limit the universe of discourse to the subset of things that are either men *or* women (or both), not to the subset of things that are both men *and* women.
    2.  We can avoid using "" if we translate the original sentence thus: "(x)(Mx  Ax) · (y)(Wy  Ay)" (men are welcome to apply and women are welcome to apply). This, however, is equivalent to our translation containing "". We can prove this equivalence using the techniques Copi gives us in sections 3.6 and 4.7 of his book, or we can gain a sense of it from the tautologousness of "[(A  B)  C]  [(A  C) · (B  C)]".
    
-   **Universal quantifiers typically take conditionals**. All humans are mortal: "(x)(Hx  Mx)". To see this, note that statements about "all" things of a certain kind (e.g. all humans) contain an implicit "if, then" structure: For all things in the universe, *if* they are humans, *then* they are mortal.
    
    2.  To appreciate why universal quantifiers usually take conditionals, try a conjunction to see how absurd it would be. "(x)(Hx · Mx)" says that everything in the universe is both human and mortal —including my chalk.
    3.  Sometimes we want to limit the universe of discourse to things with two or more properties. We indicate this limitation with conjunction. Feel free to use conjunctions in this way even if the main connective is material implication. For example, "All fat bats are mammals": "(x)[(Fx · Bx)  Mx]". Here the universal quantifier still takes a conditional; but the antecedent of that conditional is a conjunction. If we want to limit the universe to things with three or more properties, we just enlarge the conjunctive string, e.g. "All old, intellectual, tenured, rabid bats are mammals": "(x)[(Ox · Ix · Tx · Rx · Bx)  Mx]". (Because conjunction is associative and commutative, we can omit parentheses inside the conjunctive string. See [Tip 15.ii][32].)
    4.  Remember the rule of exportation. When the antecedent of a conditional is a conjunction, you can export conjuncts outside the conjunction. The last formula is equivalent to "(x)[(Ox · Ix · Tx · Rx)  (Bx  Mx)]" and to "(x)[(Ox · Ix · Tx)  [Rx  (Bx  Mx)]]", and so on. Use the version most natural for you.
    5.  Universal quantifiers should generally *not* take *negated* conditionals, since they are equivalent to conjunctions (conjunction of the antecedent and the negation of the consequent) —and you rarely want to universally generalize a conjunction. See [Tip 27.i][33].
    
-   **Existential quantifiers typically take conjunctions**. "Some humans are inhumane": "(x)(Hx · Ix)". To see this, paraphrase the original thus: some things have two properties, namely, being human *and* being inhumane. For the error of using a conditional here, see the [Tip 29][34], next.
-   **Avoid existentially quantified conditionals**. This is only a rule of thumb, not a flat ban. Existentially quantified conditionals are "grammatical" in our notational language, but are almost never good translations of English language conditionals. For example, "If something falls into a black hole, then it will be lost forever," reads at first as if it takes an existential quantifier: "(x)(Bx  Lx)". But this formula is equivalent to "(x)(~Bx  Lx)", and "(x)~(Bx · ~Lx)" which are not conditionals. They are far from what the speaker of the original English sentence probably meant: there is something which is either not in a black hole or not lost forever, or something that is not both in a black hole and not lost. The English speaker was non-committal on the existence of things that might fall into black holes; these formulas commit themselves to the existence of something. Moreover, these formulas are made true by the existence of my chalk, since it has not fallen into a black hole. The original English speaker did not intend that result.
    1.  When we notice that our translation is an existentially quantified conditional, "(x)(Bx  Lx)", then we should either change the implication to a conjunction, "(x)(Bx · Lx)" to suit the quantifier, or change from an existential to a universal quantifier, "(x)(Bx  Lx)" to suit the operator. The first solution won't work; it commits us the existence of things in a black hole that are lost forever; the English does not. The second one, however, is accurate, contrary to first impression. To see this, paraphrase the English as "Everything that falls into a black hole will be lost forever."
    2.  Note that existentially quantified **negated** conditionals are acceptable, because they are disguised conjunctions. "(x)~(Bx  Lx)" is equivalent to "(x)(Bx · ~Lx)", which says that there is something in a black hole that is not lost forever. This is not what the original example said, of course, but it would be a good translation of the negation of the English original.
    3.  By the same token, existentially quantified negated *conjunctions* are usually inaccurate translations, since they are equivalent to conditionals (one conjunct as the antecedent, the other conjunct, negated, as the consequent).
    4.  Don't mistake existentially quantified conditionals (which you should generally avoid) for existentially quantified antecedents to conditionals (which are perfectly acceptable). An example of the latter is "If there is a God, then I'm in trouble": "(x)Gx  Ti". The scope of the existential quantifier only extends to the antecedent, not the entire conditional. Expressions like this help us translate sentences that say, in effect "we are non-committal on the existence of x, but *if* we do commit ourselves to the existence of x, *then*..."
    5.  It follows that there are *two* ways to be non-committal about the existence of something: (1) use a universal quantifier, or (2) use an existential quantifier in the antecedent of a conditional.
-   **Names**. Names should be translated as constants. "Elvis is alive" is simply "Ae". If you forget this, you are likely to make Elvis into a predicate, "(x)(Ex · Ax)", or into a variable, "(e)Ae".
-   **Bind all your variables**. If you don't, you have translated the English into a propositional function rather than a proposition. Since propositional functions are neither true nor false, the chances are very slim that the English sentence was a propositional function. In English we sometimes say "Somebody slept in my bed!" when we don't know who it was. This is an existentially quantified statement: "(x)Sx". We almost never say, " (blank) slept in my bed!". This is a propositional function with a free variable: Sx.
-   **No A's are B's**. We translate this as "(x)(Ax  ~Bx)". By transposition, this is equivalent to "(x)(Bx  ~Ax)"; hence in translation, use either one. If no A's are B's, then no B's are A's. (See also [Tip 33][35], next.)
    
    2.  It may be tempting to translate "No A's are B's" as "(x)~(Ax  Bx)". But this is equivalent to "(x)~(~Ax  Bx)" (by material implication) which is equivalent to "(x)(Ax · ~Bx)" (by DeMorgan's theorem) which asserts the much stronger claim that everything whatsoever is an A, and nothing whatsoever is a B.
    3.  It may also be tempting to translate "No A's are B's" as "~(x)(Ax  Bx)" or, in English, "it's false that all A's are B's." But this is equivalent to "(x)~(Ax  Bx)" which is equivalent to "(x)~(~Ax  Bx)" which is equivalent to "(x)(Ax · ~Bx)" which asserts the much weaker claim that there is at least one thing that is an A but not also a B.
    
-   **Not all** / **all not**. English speakers frequently mix these up; hence you might do so too. For example, if you want to warn people that glittering things are sometimes gold, but sometimes not gold, then you should say "**Not all** that glitters is gold." Despite this, the proverb says "**All** that glitters is **not** gold," which is absurd; it says that no glittering things are gold, not even gold.
    
    (The "not all" / "all not" mistake is similar to the "not both" / "both not" mistake; see [Tip 7][36], above.)
    
    2.  There are two natural but non-equivalent ways to translate "all not" statements, e.g. "All bats are not feathered." First, "(x)~(Bx  Fx)", and second, "(x)(Bx  ~Fx)". In the first, we are negating the conditional; this is equivalent to "(x)~(~Bx  Fx)", which is equivalent to "(x)(Bx · ~Fx)", which says that everything in the universe is an unfeathered bat —including my chalk. But this is absurd. The second says that no bats are feathered (all bats are unfeathered). Virtually every "all not" statement will take the second form. Remember: "All A's are not B's" is equivalent to "No A's are B's."
    3.  There are two natural ways to translate "not all" statements, and it turns out that they are equivalent. For example, "Not all cars are lemons" could be translated "~(x)(Cx  Lx)", or "(x)(Cx · ~Lx)". The former says that it's false that all cars are lemons; the latter says that at least one car is not a lemon. Applying the rules QN, mat. imp., and DeM can transform either of these into the other. It would be inaccurate to translate into the formula, "(x)~(Cx  Lx)", which is equivalent to "(x)(Cx · ~Lx)", which says that everything whatsoever is both a car and not a lemon —including my chalk.
    4.  When you want to say "all are not", then say that "none is". It's equivalent and less confusing.
    5.  When you want to say "not all are", then say "some are not". It's equivalent and less confusing.
    
-   **Only**. Translating "only" sentences can be very counter-intuitive at first, but a simple rule makes them easy. The rule is this: "Only B's are A's" is equivalent to "All A's are B's". Hence it should be translated "(x)(Ax  Bx)".
    
    1.  The expression, "(x)(Ax  Bx)", in short, accurately translates *both* the following English sentences: (1) All A's are B's, and (2) Only B's are A's. Or both (1) All ax-murderers are bad, and (2) Only bad people are ax-murderers.
    2.  This Venn or Euler diagram of the situation may make it more intuitive.
        
        All A's are B's.  
        Only B's are A's.  
        (x)(Ax  Bx)
        
        It often helps to draw a diagram of the English sentence, and then translate the diagram into notation. The antecedent in "(x)(Ax  Bx)" refers to the inner circle (subset), and the consequent to the outer circle (superset). You should be able to figure this out when you need it so that you don't have to memorize it.
        
    
-   **All and only**. If "all" sentences and "only" statements are conditionals that reverse each other ([Tips 18][37], [27][38], [34][39]), then "all and only" statements conjoin such conditionals; they are biconditionals. For example, "She picked out all and only the bad grapes": "(x)(Px  Bx)".
-   **None but**. We can paraphrase "None but ripe bananas are edible" in many equivalent ways. No bananas except ripe ones are edible. Only ripe bananas are edible. A banana is edible only if it is ripe. All edible bananas are ripe. "(x)((Bx · Ex)  Rx)". Don't let these many forms confuse you.
-   **Indefinite articles**. The articles "a" and "an" sometimes take existential, sometimes universal, quantifiers. "A bat is a mammal" really means "All bats are mammals": "(x)(Bx  Mx)". "A bat is in my room" means "There exists a bat in my room": "(x)(Bx · Rx)". Because there is no hard and fast rule, paraphrase the English before translating.
-   **Definite articles**. "The" sometimes takes existential, sometimes universal, quantifiers. "The horse is a noble animal" really means "All horses are noble animals": "(x)(Hx  Nx)". "The horse in the winner's circle is on drugs" really means "There exists a horse (namely, the one in the winner's circle) who is on drugs": "(x)(Hx · Wx · Dx)". Because there is no hard and fast rule, paraphrase the English before translating.
    
    In section 5.4, Copi introduces a more sophisticated way to translate "the" when it picks out a unique individual. (We usually don't reach section 5.4 in this course.)
    
-   **Any**. "Any" sometimes takes existential, sometimes universal, quantifiers. "Any bat is a mammal" really means "All bats are mammals": "(x)(Bx  Mx)". "If any bats are in the room, then I'm outtahere" means "If there exists a bat in the room...": "(x)(Bx · Rx)  Oi". Because there is no hard and fast rule, paraphrase the English before translating. 
-   **Punctuation**. As in propositional logic, a common translation mistake is to omit necessary parentheses. But in predicate logic, there are two reasons to insert parentheses, not just one:
    
    1.  **To resolve ambiguities of operator precedence**. See [Tip 15][40], above.
    2.  **To mark the scopes of quantifiers**. Make sure that each quantifier has the scope it needs. Is every variable inside the scope of some quantifier? Is every variable inside the scope of the right quantifier?
    3.  If you understand the role of parentheses, then you should understand that these two expressions are *not* equivalent: "(x)Ax  (x)Bx", and "(x)(Ax  Bx)". If our universe contains some things that are A's but not B's, and other things that are B's but not A's, and nothing that is neither, then the first of these expressions will be false and the second true. Moreover, the first is truth-functional compound, while the second is not.
        
        For example, if Ax means that x is living, and Bx means that x is dead, then in the universe of people, "(x)Ax  (x)Bx" asserts that either everyone is living or everyone is dead, which is false. By contrast, "(x)(Ax  Bx)" asserts that everyone is either living or dead, which is true.
        
    
    ---
    
    **Predicate Logic: Multiply General Monadic**
    
-   **When do you need more than one quantifier?** The answer is not simple. You will not err if, in translating compound statements, you add a new quantifier for every component which would need a quantifier if you were to translate it as an entire statement unto itself. But on the other hand, sometimes you will not need to introduce that many quantifiers.
    
    2.  For example, "All cats are mammals, but no cats are birds". Each component of this compound would require a quantifier if translated separately. Hence, you will not err if you use two quantifiers: "(x)(Cx  Mx) · (y)(Cy  ~By)". But on the other hand, the second quantifier is unnecessary in this case, provided the second component uses the variables of the first and is put within the scope of the first quantifier: "(x)[(Cx  Mx) · (Cx  ~Bx)]". We can prove that these two translations are equivalent by deriving each from the other.
    3.  The two translations in [41.i][41] are equivalent, not because the subject of the two components is the same (cats), but because the quantifier appropriate to each component is the same (universal) and the operator joining the components is conjunction. For example: "All cats are mammals, but no dogs are birds". In this sentence, the two components no longer share a common subject, but they still require the same kind of quantifier and are still joined by conjunction. As before, you will not err if you use two quantifiers: "(x)(Cx  Mx) · (y)(Dy  ~By)". But we can still dispense with the second: "(x)[(Cx  Mx) · (Dx  ~Bx)]". These two translations are also provably equivalent.
    
-   **When do you need a new variable letter?** The answer is simple: (1) logically, never, but (2) for clarity, whenever you introduce a new quantifier into the same statement.
    
    1.  If you are using prenex normal form (introduced in [Tip 43][42], below), then you must use a new variable letter for each new quantifier. But the "logically never" part of the rule in [Tip 42][43] still stands, because you need not ever use prenex normal form.
    2.  In an expression like "(x)Ax  (x)Bx", each quantifier governs the expression within its own scope. The two don't interfere with each other. Hence they may use the same variable letter without ambiguity. But it is confusing to readers to see the same letter when it may not refer to the same objects. We might mistakenly infer that the things that are A's are the same things that are B's; but that would not be warranted. To prevent such mistakes, make it a habit to use new variable letters with each new quantifier in the same statement: "(x)Ax  (y)By".
    3.  Even when quantifier scopes nest inside each other, the quantifiers do not interfere with each other and may unambiguously use the same letter: "(x)(Ax  (x)Bx)". We can (and should) parse such expressions under the rule that inner quantifiers should be read (have their scopes settled, variables bound) before outer quantifiers. But for the sake of poor humans who must read these, use new letters with new quantifiers: "(x)(Ax  (y)By)".
    
-   **Prenex normal form**. A predicate logic expression is in prenex normal form if (1) all its quantifiers are clustered at the left, (2) no quantifier is negated, (3) the scope of each quantifier extends to the right end of the expression, (4) no two quantifiers use the same variable, (5) every letter used by a quantifier is used later in the expression as a bound variable. Every predicate logic expression can be cast in prenex normal form.
    
    Translating English sentences into prenex normal form is easier and more natural for most people than using any other format.
    
    For example, "(x)[Ax  (y)(By  Cy)]" can be restated in prenex normal form as "(x)(y)[Ax  (By  Cy)]".
    
-   **Repeating a reference, with constants**. To refer to the same object more than once in an expression, with constants, you must use the same constant in each reference. "If Socrates is human, then Socrates is mortal" becomes "Hs  Ms" (using the same letter "s" in each case).
    
    If we had said "Hs  Hp", then the "s" and "p" might be two names for the same object, but they might not. The only way to enforce univocity of reference with constants is to use the same letter.
    
-   **Repeating a reference, with variables**. To refer to the same object more than once in an expression, without constants, two conditions must be met: (1) you must use the same variable in each reference, and (2) each occurrence of that variable intended to refer to the same object must be bound by the same quantifier. For example, "If all dancers are human, then they are mortal" becomes "(x)[(Dx  Hx)  Mx]". Here the "they" refers back to the dancing humans; we use the same variable "x" and put it in the scope of the same quantifier as the component about dancing humans. The formula, "(x)[(Dx  Hx)  My]", fails by using a different variable, and this formula, "(x)(Dx  Hx)  Mx", fails by leaving the final x outside the scope of the first quantifier. (In addition both the latter two expressions fail by leaving the final occurrence of the final variable free, creating a propositional function instead of a proposition; see [Tip 31][44], above.)
    1.  There is another way to repeat a reference with variables that violates both the conditions stated in the previous rule. For example, "If all dancers have knee injuries, then they will be frustrated," can be translated under the rule in [Tip 15][45] as "(x)[(Dx  Kx)  Fx]". But it could also be translated as "(x)(Dx  Kx)  (y)(Dy  Fy)". Requantifying on dancers in the second clause doesn't mean we are talking about a different group of people. On the contrary, the fact that we repeat the predicate D, and quantify universally both times, guarantees that we're talking about the same group. All references to "all dancers" refer to the same group.
    2.  We can modify the second technique above to work even when we can't use universal quantifiers in both clauses. For example, "If all dancers have knee injuries, then some of them will be frustrated," can be translated as "(x)(Dx  Kx)  (y)(Dy · Ky · Fy)". Even though we requantified in the consequent, we are referring to a subset of the same group described in the antecedent. To make sure we're referring not just to some dancers, but to the ones with knee injuries, we repeat those predicates in the scope of the new quantifier. The consequent does not mention knee injuries, but we must mention them in our translation to assure that we are referring to the right group of dancers.
-   **The same thing may have more than one name or description.** Even when different variables are used, they *may or may not* refer to the same thing.
    1.  For example, in "(x)Hx · (y)My", we assert that some things are human and some other things (not necessarily the same things) are mortal. The existence of human mortals, or the possibility that the x and y refer to the same objects, is neither asserted nor precluded.
    2.  In this expression, "(x)(Hx · Lx) · (y)(Ly  Fy)", we are saying that some humans are logicians and that all logicians are high on the food chain. Here, the second component's universal claim about logicians guarantees that it covers the creatures referred to by the first component's existential claim, even though different variables and quantifiers are used. See [Tip 16][46].
    3.  If you want to insure that a component of a compound refers to the very same objects as another component of the same compound, see [Tips 44][47] and [45][48] above.
-   **Quantifier exchange, by negation**. Let us say that to *exchange* quantifiers is to convert a universal quantifier to an existential quantifier, or *vice versa*. If we are willing to add or subtract negation signs appropriately, then any quantifier can be exchanged without changing the meaning of the expression in which it occurs. This is done in accordance with the four quantifier negation rules which Copi introduces in section 4.7.
    
    For the task of translation, this means that we can choose any quantifier we like if we are willing to live with the needed negation signs. It also means that we can always translate into affirmative rather than negative propositions ([Tip 23][49]) if we are willing to use the quantifier that makes that possible.
    
-   **Quantifier exchange, by reassociation**. With some types of expression, we can exchange quantifiers *without* adding or subtracting negation signs if we reassociate or rebracket appropriately. One family of such expressions is based on the logical truth, "(x)(Fx  Q)  [(x)Fx  Q]", when Q is any statement with no free occurrence of x. Copi proves this logical truth informally at p. 96, and asks you to prove it formally at p. 115, exercise 3. For our purposes here, let us take it as proved.
    
    "If there are any tarantulas in the car, then I'm walking." The logical truth above tells us that we can translate this sentence with equal accuracy using a universal quantifier, "(x)(Tx  Wi)", or an existential quantifier, "(x)Tx  Wi", provided we are careful with our parentheses. This is at first a surprising result. But it begins to make sense when we translate the two formulas back into English. "Given any x, if x is a T, then..." and "If there is at least one x that is a T, then...". Both say, "if there are any T's, then...".
    
    For other logical truths which support this kind of quantifier exchange, see Copi's exercises 7, and 15-19, at p. 115.
    
-   **The principle of least analysis**. If an argument's validity depends only on propositional logic relations —structure between, not within, propositions— then don't bother translating it into predicate notation. Take this argument, for example: "If all cats are mammals, then all tigers are mammals; All cats are mammals; Therefore, all tigers are mammals." This argument is a simple *modus ponens*. We capture everything relevant to its validity if we translate it thus: "C  T, C,  T". Opening up propositions C and T in order to see their internal subject-predicate structure would be unnecessary, even distracting, although it would not make the argument invalid: "(x)(Cx  Mx)  (y)(Ty  My), (x)(Cx  Mx),  (y)(Ty  My)".
    
    The principle of least analysis is an exception to general rule to translate English sentences into their specific form. See [Tip 16][50], above.
    
-   **Variant of least analysis**. You can define predicate constants to suit yourself. To translate "All the Martian students did well", you could use two predicates, Mx (x is a Martian) and Sx (x is a student) to indicate who did well: "(x)[(Mx · Sx)  Wx]". Or you could use just one predicate to indicate who did well, and pack two pieces of meaning into it, e.g. Mx (x is a Martian student): "(x)(Mx  Wx)". Unless you are doing a textbook exercise in which you are constrained to use the predicates explicitly listed for you, you are free to choose whether to lump many properties into a single predicate or to assign separate predicates to separate properties.
    
    Use jumbo predicates like the latter if revealing the internal structure of that predicate is not necessary for validity. It probably *will* be necessary for validity if another premise separates what this one has joined together, by speaking e.g. of non-Martian students or Martian non-students —for example, "The Martian *teachers* were not surprised" or "The *Venusian* students flunked miserably".
    
-   **Punctuation again**. When you have more than one quantifier, it is easier than ever to fail to give each one the right scope ([Tip 40][51]). Check this before considering your translation finished. Moreover, parentheses can mean the difference between a universal and an existential quantifier ([Tip 48][52]).
    
    ---
    
    **Predicate Logic: Polyadic**
    
-   **Implicit and explicit relations**. Many propositions assert relations implicitly that sometimes must be made explicit in translation: "Martha's paper had been graded" tacitly asserts that "Martha's paper had been graded *by the underpaid teacher*." We could translate the sentence
    
    <table><tbody><tr><td>monadically</td><td>Gp</td><td>Gx = the teacher graded Martha's x</td></tr><tr><td>dyadically</td><td>Gtp</td><td>Gxy = x graded Martha's y</td></tr><tr><td>triadically</td><td>Gtmp</td><td>Gxyz = x graded y's z</td></tr></tbody></table>
    
    In the first case, we pack both the teacher and Martha into the G predicate. In the second case we pack just Martha into it. In the third case, we pack neither of these people into the G predicate, and use it only to denote the act of grading, which involves three individual objects (teacher, student, assignment). How much we make explicit with our notation, and how much we pack away, is entirely up to us. For the sake of proofs, we should make explicit all the structures on which validity depends ([Tip 50][53]), but no more than that ([Tip 49][54]).
    
-   **Order of quantifiers**. If an expression with all its quantifiers stacked at the left side (e.g. in prenex normal form, [Tip 43][55]), contains more than one quantifier, then does it matter in what order they appear? If it does matter, which quantifier goes first and when?
    
    1.  When the quantifiers are of the same type, then their order does not matter. For example:
        
        But when the quantifiers are of different types, then their order does matter. We will soon see the rule telling us which order to use. But first a note on what this rule corresponds to in English:
        
    2.  **Grammatical interlude**. In English, "John loves Mary" and "Mary is loved by John" express the same proposition. One is in the active voice, the other in the passive. In English we use voice and word order as clues to determine who is the lover and who is the beloved —or, in a many-place predicate, which individual occupies which position in the relation. We need a comparable clue in our formal language.
    3.  When quantifiers are of different types, their order matters. Follow this rule: when order matters, the first quantifier quantifies the subject of the sentence; the others quantify the objects of the verb.
        
        For example, let our universe of discourse be human beings, and let Lxy mean x loves y.
        
        For the sake of further analysis, take the second example above, (y)(x)Lxy: Somebody (a particular person) is loved by everyone; everyone has the same beloved. By putting the "y" quantifier first, we are making the individual in the "y" position —the beloved, not the lover— the subject of the sentence. We now have a choice. We can make the beloved the subject of the sentence, which requires the passive voice, "Someone is loved by everyone." Or we can shun the passive voice by reassigning the beloved to the object position, "Everyone loves the same person." So we can say that the "y" individual is only the subject of the sentence if we are willing to use the passive voice.
        
    4.  Here are 10 of Copi's examples from pp. 119-20. Let Axy mean that x attracts y.
        
        <table><tbody><tr><td>1</td><td>Everything attracts everything.</td><td>(x)(y)Axy</td></tr><tr><td>2</td><td>Everything is attracted by everything.</td><td>(y)(x)Axy</td></tr><tr><td>3</td><td>Something attracts something.</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">y)Axy</td></tr><tr><td>4</td><td>Something is attracted by something.</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)Axy</td></tr><tr><td>5</td><td>Nothing attracts anything.</td><td>(x)(y)~Axy</td></tr><tr><td>6</td><td>Nothing is attracted by anything.</td><td>(y)(x)~Axy</td></tr><tr><td>7</td><td>Everything attracts something.<br>(Here "something" = "something or other".)</td><td>(x)(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">y)Axy</td></tr><tr><td>8</td><td>Something is attracted by everything.<br>(Here "something" = "something in particular".)</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">y)(x)Axy</td></tr><tr><td>9</td><td>Everything is attracted by something.<br>(Here "something" = "something or other".)</td><td>(y)(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)Axy</td></tr><tr><td>10</td><td>Something attracts everything.<br>(Here "something" = "something in particular".)</td><td>(<img src="https://web.archive.org/web/20000816142317im_/http://www.earlham.edu/~peters/writing/existq.gif">x)(y)Axy</td></tr></tbody></table>
        
        Note that pairs 1-2, 3-4, and 5-6 are equivalent.
        
        On the distinction between "something or other" and "something in particular" see [Tip 54][56], next.
        
        Here are some other members of the same family. What do they mean?
        
    
-   **Something**. "Something" and similar words like "somebody", "sometime", and "somewhere" are ambiguous. To illustrate, let us use one of Copi's examples from pp. 119-20. Let Axy mean that x attracts y. In the sentence, "Everything attracts something", the word "something" is ambiguous. It could mean (1) something in particular, or (2) something or other. For later reference, let us say that the former is the *definite* and the latter the *indefinite* sense of the word "something". (Logicians have no terms for this important distinction, so I've had to introduce some.) If we read "Everything attracts something" in its definite sense, it asserts that everything attracts one and the same attractee; if we read it in the indefinite sense, it asserts that everything attracts at least one attractee, not necessarily the same one. These are clearly not equivalent and must be translated differently, but how?
    
    From [Tip 53][57] we learned the rule that order matters for quantifiers of different types, and that the first is regarded as quantifying the subject of the sentence. We will use that rule here, but it is not enough. We must add a new rule: that when an existential quantifier comes first, or applies to the subject of a sentence, it is to be understood in the definite sense, and when it does not come first, or applies to an object of the verb, then it is to be understood in the indefinite sense.
    
    With this understanding, then our sentence in its definite sense would be translated, "(y)(x)Axy". This says that something in particular is attracted by everything, which is the same as saying that everything attracts some particular thing. In its indefinite sense, it would be, "(x)(x)Axy". This says that everything attracts something or other, which is the same as saying that something or other is attracted by everything.
    
    1.  One more example to clarify the rule. "Something attracts everything" in its definite sense says that something in particular, some one thing, attracts everything, or everything is attracted by something in particular; it should be translated, "(x)(y)Axy". In its indefinite sense it says that something or other attracts everything, or everything is attracted by something or other; it should be translated, "(y)(x)Axy".
    2.  Although I've said "something in particular, some one thing" for simplicity and clarity, the definite sense of "something" could signify a plurality of particular things. So "(y)(x)Axy" could mean that some particular set of things attracts everything. Similarly, the indefinite sense of "something" could signify a plurality of things. So "(x)(x)Axy" could mean that everything attracts some plural number of things, but not necessarily the same plurality or set of things.
    3.  For other examples, see [Tip 53.iv][58]. For a related ambiguity in the word "some", see [Tip 20][59], above.
    
-   **Temporal relations**. The word "sometimes" can refer to the existence of some times at which a predicate is true of certain objects. "Sometimes John loves Mary" would be translated "(x)(Tx · Ljmx)" —there is an x such that x is a time and John loves Mary at that time. "Once upon a time John loved Mary" would be translated the same way. "John will always love Mary," would be translated "(x)(Tx  Ljmx)". "John never loved Mary": "(x)(Tx  ~Ljmx)".
-   **Spatial relations**. The word "somewhere" can refer to places where a predicate is true of certain objects. "Somewhere a wild boar is enjoying sunlight" would be translated "(x)(y)(z)(Px · By · Sz · Eyzx)" —there is a place x, a boar y, and some sunlight z such that that boar enjoys that sunlight at that place.  
-   **Numerical expressions**. We can go beyond the crude quantities of *all*, *some*, and *none* to express more precisely how many things have a certain property. We can express the natural numbers as adjectives ("three blind mice"), if not as nouns ("one, two, three").
    1.  **Zero**. We can already express zero: zero things are human, nothing is human, all things are not human: "(x)~Hx", or "~(x)Hx".
    2.  **Introducing identity**. To express natural numbers in predicate notation, we must introduce a predicate to express identity, that is, to do the work that the "=" symbol does in arithmetic. Let the two-place predicate, Ixy, mean that x is identical to y.
        
        Now let's abbreviate "Ixy" as "x = y". This kind of abbreviation is no different from introducing the "" symbol so that "p  q" can abbreviate "~p  q".
        
        Similarly, let "x  y" abbreviate "~(x = y)" and "~Ixy".
        
    3.  **Adjectival natural numbers**. Exactly one thing is human: "(x)(y)[Hx · (Hy  (x = y))]": there is at least one thing, x, such that x is human, and if there is anything else, y, that is human, then it is the same as the first.
        
        Exactly two things are human: "(x)(y)(z)[[(Hx · Hy · x  y · [Hz  ((z = x)  (z = y))]]": there is at least one thing, x, that is human, and another thing, y, that is human, and x is not the same as y, and if there is another thing, z, that is human, then it is either the same as x or the same as y. And so on for three, four, five...things.
        
        Note that these formulas could have been expressed with our original identity predicate, Ixy, rather than with our abbreviation for it, x = y. We introduced the "=" symbol simply for convenience.
        
    4.  **At least**. At least one thing is human: "(x)Hx". This is the unadorned existential quantifier.
        
        At least two things are human: "(x)(y)[(Hx · Hy) · (x  y)]". There is a human x, and a human y, and x is not the same thing as y.
        
        At least three things are human: "(x)(y)(z) [(Hx · Hy · Hz) · (x  y) · (y  z) · (x  z)]".
        
    5.  **At most**. At most one thing is human: "(x)(y)[Hx  (Hy  (x = y))]". For all x and for all y, if x is human, then if y is human too, then x is the same thing as y. By avoiding the existential quantifier in this expression, we are non-committal on the question whether there are any humans.
        
        At most two things are human: "(x)(y)(z) [[(Hx · Hy) · (x  y)]  [Hz  [(z = x)  (z = y)]]]".
        
    6.  **"Only [name]" and "All but [name]" expressions**. Only Socrates is human: "Hs · (x)[(x  s)~Hx]". Socrates is human, and for all things x, if x is not Socrates, then x is not human.
        
        Only Socrates and Plato are human: "Hs · Hp · (x) [[(x  s) · (x  p)]  ~Hx]".
        
        All but Socrates are human: "~Hs · (x)[(x  s)  Hx]". Socrates is not human, and for all things x, if x is not Socrates, then x is human.
        
        All but Socrates and Plato are human: "~Hs · ~Hp · (x)[[(x  s) · (x  p)]  Hx]". 
        

[1]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip2
[2]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33
[3]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip9
[4]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip10
[5]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip8
[6]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip49
[7]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip50
[8]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tup26
[9]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27
[10]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip28
[11]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip29
[12]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip37
[13]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip38
[14]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip39
[15]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip29
[16]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip32.1
[17]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip32.2
[18]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33.1
[19]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33.2
[20]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27
[21]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip32
[22]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip35
[23]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip34
[24]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33
[25]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33
[26]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip54
[27]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip18
[28]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33
[29]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip29
[30]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip24.2
[31]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27
[32]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip15.2
[33]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27.1
[34]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip29
[35]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip33
[36]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip7
[37]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip18
[38]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip27
[39]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip34
[40]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip15
[41]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip41.1
[42]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip43
[43]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip42
[44]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip31
[45]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip15
[46]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip16
[47]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip44
[48]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip45
[49]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip23
[50]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip16
[51]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip40
[52]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip48
[53]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip50
[54]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip49
[55]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip43
[56]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip54
[57]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip53
[58]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip53.iv
[59]: https://web.archive.org/web/20000816142317/http://www.earlham.edu/~peters/courses/log/transtip.htm#tip20
