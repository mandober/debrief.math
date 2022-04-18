---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm
page-title:       Peter Suber, "Gödel's Proof"
article-title:    Peter Suber, "Gödel's Proof"
---
# Peter Suber, "Gödel's Proof"

Hunter's proof of Gödel's first incompleteness theorem differs from Gödel's in several ways.  Here is a sketch of Gödel's own method.
-   [Preliminaries][1]
-   [Gödel's Proof][2]
-   [Eligibility][3]
-   [Gödel's Second Theorem][4]
-   [Reminders][5]

Hunter's proof of Gödel's first incompleteness theorem differs from Gödel's in several ways. Here is a sketch of Gödel's own method.

We'll prove Gödel's theorem for a system S of formal arithmetic. S is "respectable" in Hunter's sense (hence consistent and powerful), and "well-made" in the sense that its sets of wffs, axioms, and transformation rules are all decidable. If these sets are decidable, then the set of proofs is also decidable. That is, for S there is an effective test for proofhood. (Don't confuse this with an effective test for theoremhood, or the decidability of the system, which is usually lacking in systems of S's power.)

Hunter's proof omits the technique that made Gödel's proof so ingenious, elegant, and influential. Gödel found a way in a system of arithmetic, whose domain is limited to natural numbers, to express the metatheory of the system. Natural numbers look like the last things in the world to possess this self-reflective power, but they acquire it by Gödel numbering. Given the power to express the metatheory, statements about numbers (on the standard interpretation) can become statements about incompleteness (on a non-standard interpretation). Individual wffs can be made to make assertions about themselves.

**Preliminaries**

We need only three preliminary notions.

1.  ***Gödel numbering***. We have used Gödel numbering throughout the term under the name of "arithmetization". For example, we used it to set an upper bound (0) on the cardinality of the sets of wffs, descriptions, and effective methods. Here we strike off in a new direction and use it to permit wffs and systems to talk about themselves. In particular we will use it to permit a system to express its metatheory (its proof theory), and to make wffs that talk about what is provable in the system. The discovery of Gödel numbering, and this application of this discovery, are two of Gödel's great achievements.
    
    The essence of Gödel numbering is to assign numbers to the symbols of a formal language. If the original symbols are arbitrary and conventional, then the numbers we have assigned to them do not merely "code" the original language, but replicate it in another "medium". In the numbering scheme that Gödel used to prove his incompleteness theorem, numbers were assigned to (1) the symbols, (2) finite strings of symbols (wffs and nonwffs), and (3) finite sequences of strings (proofs and nonproofs) of the formal language. Moreover, one could tell simply from inspecting the number whether it corresponded to a symbol, a string of symbols, or a sequence of strings. There was a one-to-one correspondence between Gödel's numbers and their correlates, and simple, effective methods for translating from one to the other.
    
2.  ***Proof pairs***. If some Gödel numbers correspond to sequences of strings, then some correspond to proofs. If n is the Gödel number of some sequence of strings, and m is the Gödel number of some wff (string), then we can define the two-place predicate, Pnm, to mean that n proves m. If n really does prove m, then Pnm is true. Let us say that any pair of numbers <x,y> for which Pxy is true is a "proof pair" for S.
    
    With the predicate Pxy we can also say that some wff A is *not* a theorem, or is not provable in S. Let the Gödel number of A be a. Then ~(x)Pxa says that there is no sequence that proves A, or that there is no proof pair with a as its second member, or simply that ~A. We could also say (x)~Pxa.
    
    These expressions are about numbers in one interpretation, but they are about the proof theory of S in another. We cannot say that the number theory interpretation is "primary" and the metatheory interpretation "secondary" or nonstandard except in reference to human intentions. As meanings supported by the syntax, they are on a par.
    
3.  ***Self-Reference***. If a wff has only one free variable, and we instantiate that variable to the wff's own Gödel number, then in an indirect way we've made the wff talk about itself. Say the Gödel number of Nx is n. To assert Nn on the one hand says that some number n has the property N. But it equally says that the wff with Gödel number n (namely, Nx) has property N, since n is just a coded reference to Nx. This double-meaning and indirect self-reference are essential to Gödel's proof.
    
    Of coures the closed wff, Nn, is talking about the open wff, Nx, which makes the self-reference even more oblique.
    
    For convenience let us say that the wff represented by Gödel number n is wff(n). If we want wff(n) to speak indirectly about itself (if we want one of its closures to speak about it), and if it has exactly one free variable, then we substitute n for that variable. Let us define the one-place predicate, Qn, to be the wff that results from that substitution. Hence, Qn is wff(n) whose only free variable has been instantiated to n, or a wff applying some predicate to itself. If Px has Gödel number p, then Qp and Pp are synonymous. ("Qx" captures what Hofstadter means by the "arithmoquinification" of x.) Since Qn itself has a Gödel number, we can also define the two-place predicate, Qxy, to mean that y is the Gödel number of Qx. Therefore, Qxy says that y is the Gödel number of the result of instantiating wff(x) to its own Gödel number. (If you are starting to get dizzy, then you're doing it right.)
    

**Gödel's Proof**

Gödel's proof in a nutshell is to create a wff that says in one interpretation, "This wff cannot be proved in S", then to prove that it is undecidable in S, and thereby to prove that it is true. In one interpretation this wff will say something about numbers; in the alternative interpretation used in the proof, it makes an assertion about its own provability. This crucial wff is usually called G, for Gödel.

I will break the proof into four steps: (1) formulating G and understanding how it can simultaneously make an assertion about numbers and about its own provability, (2) showing that G is undecidable, (3) showing that G is true, and (4) drawing the consequences for the incompleteness of S.

**Formulating G**

Hunter gives only an "existence proof", showing that S must have undecidable wffs. By contrast Gödel gave a "constructive proof" which actually produced an example of such an undecidable wff, namely, G. (As we will see, Gödel did better still, giving a method for constructing an infinite series of G's to diagonalize, or outflank, any system that made any number of them decidable.)

Here's how to construct G. First we make the following wff:

F: ~(x)(y)(Pxy · Qzy)

We'll call it F, since it will immediately precede G. Let its Gödel number be f. In English F says that there is no proof pair <x,y> when y is the Gödel number of Qz. In short, wff(y) is unprovable in S, so Qz is unprovable in S.

Now if F could assert this unprovability about itself, then we would have G. To make F speak about itself we instantiate F's only free variable, z, to F's Gödel number, f. This gives us Qf or

G: ~(x)(y)(Pxy · Qfy)

> One more time in case you missed it. The "f" in the second to last position of formula G instantiates the "z" in that position in formula F. This instantiation is the only difference between F and G.

Though it looks prosaic enough, this is the famous G. Let's slowly reason out what G means.

1.  First it should be clear that G = Qf (F referring to itself), by construction. We began with F and instantiated its free variable to its own Gödel number, which creates Qf by definition. We call it G as a nickname.
2.  In English G says that there is no proof pair <x,y> when y is the Gödel number of Qf. But Qf is G.
3.  Or, there is no proof in S of the wff whose Gödel number is y.
4.  But the unprovable wff represented by Gödel number y is Qf (by the definition of Qfy in G) or G (by step 1).
5.  Therefore, G is not provable in S, or ~G.

So G says that G is not provable in S!

**G is Undecidable**

Formulating G is one thing; proving its undecidability is another. Remember that a wff is undecidable in some system S iff neither it nor its negation is provable in S. (Do not confuse the undecidability of a wff with the undecidability of a system; a system is undecidable iff it has no effective test of theoremhood.)

First we show that G is not provable in S. We use an indirect proof. Suppose that G were provable in S. Then G. But the very meaning of G is that ~G. We encounter a contradiction, so our hypothesis (that G is provable) must be denied.

It is important to note that while the hypothesis that G is provable leads to a contradiction, the hypothesis that G is not provable does not lead to a contradiction. If we suppose that G is not provable, then we suppose ~G, which is exactly what G says of itself. This is the important difference between G and the liar paradox: the liar's statement leads to contradiction whether we affirm it or deny it. G leads to contradiction only if we suppose it is provable, not if we suppose it is not. This is enough to show that it is not provable.

Second we show that the negation of G is not provable in S, again using an indirect proof. Suppose that ~G were provable, or ~G. Recalling that G is the same proposition as ~G, we obtain by substitution ~(~G). This reduces to G, which contradicts our hypothesis. Actually, it contradicts our hypothesis only on the assumption that S is consistent and does not contain both G and ~G as theorems. (Try this proof in full English. The negation of G is "It is not the case that 'this proposition cannot be proved'." Hence we can prove 'this proposition cannot be proved', which is to prove G.)

We do assume that S is consistent, since if it is not, then G and its negation and all other wffs will be provable. There is no point asking about the completeness of an inconsistent system. Gödel's theorem only shows a limitation for consistent systems.

So, if neither G nor ~G is provable in S, then G and ~G are undecidable in S.

**G is True**

By showing that G is undecidable in S, Gödel has already done enough to show that there are ineliminable "holes" in the fabric of S. This is enough to show the incompleteness of S that the theorem asserts. But Gödel puts the icing on the cake by showing that G is true. Not only are some propositions beyond the power of S to prove or disprove, but some knowably *true* propositions are beyond its power.

We have shown that G is unprovable in S. Since this is exactly what G says of itself, we know immediately that it is true. This is to prove its truth from its unprovability. Nothing could show more clearly the separability of truth and provability, one of the fundamental consequences of Gödel's theorem.

We can reverse the process and prove G's unprovability from its truth. If G is true and says that it is unprovable, then it is true that it is unprovable. For this to work we need independent knowledge of G's truth, which we can get by another indirect argument, appealing to the semantics of truth rather than the syntax of provability. For suppose G is false. Then G would be provable. Then G would be a theorem. But G says that it is not provable, or not a theorem. This is a contradiction. More technically, if G were false, hence provable, then in every model of S it would be true that there was no proof pair <x,y> when y is the Gödel number of Qf or G; then it be true that G would not be provable, i.e. a theorem. This contradicts our supposition that G is provable, i.e. a theorem. Alternately, if G were false, hence provable, then S would contain a false theorem, but this contradicts the assumption of S's consistency.

If we assume that G is false, we reach a contradiction. But if we assert G's truth, we encounter no contradiction at all. We have only the puzzling and wonderful realization that G is simultaneously true and unprovable in S.

Notice that we "prove" that G is true by metatheoretical reasoning, not within S. This is very important to many philosophers pondering the significance of Gödel's theorem and proof. It means that Gödel did something that the system S is demonstrably incapable of doing, namely, prove that G is true. Since formal systems are isomorphic with computers, and since the deficiency proved for S is proved for all systems above a certain threshold of power, one reading of the situation is that Gödel did something that no computer above a certain threshold of power could do. If so, there is something about human intelligence that can never be attained by any computer even in principle. How justified is this reading? Knowledgeable people differ sharply on this question.

**Three Kinds of Incompleteness for S**

G is undecidable. Hence there is some wff of S (namely, G) such that neither it nor its negation is a theorem. This is the definition of negation incompleteness. To say that S is negation-incomplete is to say that it has "holes" that cannot be plugged by its deductive apparatus.

To prove negation incompleteness it suffices to prove there is at least one undecidable wff. This was Hunter's approach. Gödel did this and more: he actually produced such a wff, and moreover, he proved that it was true. This makes S's incompleteness much more interesting and important.

Predicate logic is also negation incomplete, but that is good, for it does not desire negation completeness. Formal systems of arithmetic, however, do desire negation completeness (most systems with proper axioms do). We should not let our familiarity with predicate logic underestimate the loss to arithmetic represented by negation incompleteness. It means that infinitely many arithmetical wffs like "1 + 2 = 3" and "1 + 2 = 666" can neither be proved nor disproved.

There is also an important kind of semantic incompleteness in the fact that some of the wffs undecidable in S are *true*. We must be careful in how we state this, for Gödel himself proved in 1930 that first order predicate logic was (in one sense) "semantically complete", namely, AA (see Hunter 46.1). We should also remember that the completeness of predicate logic is a very different thing from the completeness of a system of arithmetic. Because systems of arithmetic contain proper axioms, they "intend" to capture more than logically valid wffs; hence "semantic completeness" in the ordinary sense (containing all logically valid wffs of the language as theorems) is less complete than arithmetic systems intend to be.

A third kind of incompleteness that G proves about S is more important but more difficult to explain. It is called *omega incompleteness*. Suppose we added G to the axiom set of S. Then G would become provable, since all axioms are provable by definition. Gödel proved that if we do this, creating S', then we could always construct another undecidable wff, G', which asserted that it could not be proved in S'. Of course we could then add G' to S', creating S'', but then we could construct G'', and so on *ad infinitum*. By an abstract use of diagonalization, Gödel showed that every system of S's power will be negation incomplete. G is not a special wff; it represents a class of undecidable wffs which cannot be conquered by making any set of them provable by the tactic of converting them to axioms.

This is the beginning of omega-incompleteness, but not the whole story. Let's make the story to this point explicit using the notation introduced earlier. G says ~(x)(y)(Pxy·Qfy). This says essentially that G cannot be proved, but it says it by denying that there is any x such that x is the Gödel number of the proof of G. So we can "instantiate" G with the series:

> ~(y)(P0y·Qfy)  
> 
> ~(y)(P1y·Qfy)  
> 
> ~(y)(P2y·Qfy)  
> 
> ~(y)(P3y·Qfy) ... and so on.

Here, instead of saying that there is no number which is the Gödel number of the proof of G, we are making the separate denials for each natural number: wff-sequence(0) is not the proof of G, wff-sequence(1) is not the proof, wff-sequence(2) is not the proof, and so on. Each of these statements can be a theorem of S; at least there is no contradiction in supposing that they are provable. Yet the statement that summarizes them by quantification, ~(x)(y)(Pxy·Qfy), is G, and we know it is not provable in S. 

This is omega-incompleteness: when all wffs in a certain infinite series are theorems, while the summarizing quantified statement is not a theorem.

(A system is omega-*inconsistent* when all wffs in a certain infinite series are theorems while the *negation* of the summarizing quantified statement *is* a theorem. Historical note: Gödel actually proved that if S is omega-consistent, then it is omega-incomplete. The "modern" formulation that if S is simply consistent, then it is omega-incomplete is due to John Barkley Rosser. Hunter's metatheorem 51.13 asserts that if S is simply consistent, then it is negation incomplete.)

Omega is the last letter of the Greek alphabet. "Omega incompleteness" expresses the sense that everything about an infinite series of wffs can be proved inside a system except the very last wrap-up statement. In our case, G, G', G'', ..., can each be proved by insertion into the axiom set. Despite the fact that this means that any and every single undecidable wff can be proved by this method, the quantified statement *saying that* every one can be proved cannot be added to the system without inconsistency.

It should be clear that the series ~G, ~G', ~G'', ..., is subject to the same liabilities as G, G', G'', .... Hence, some variant of G remains not only unprovable, but undecidable in every system of a certain strength.

It may help to think of omega-incompleteness as incurable negation-incompleteness. If negation-incompleteness simply turns on the existence of undecidable wffs, or holes, then it can be cured, or a system's holes can be plugged, by adding the undecidable wffs to the axiom set. Even if there are infinitely many such holes, this creates no problems so long as there remains some effective test of axiomhood. But if by diagonalization we know that the ability to create (discover?) a new hole outpaces this hole-plugging, then the negation-incompleteness is incurable. There are many conditions which would lead to this result, but omega-incompleteness is the most important of them.

If we say that adding an undecidable wff to the axiom set is an "ordinary" enhancement of the system, then Gödel's diagonal argument shows that ordinary enhancements of S will not complete it. However, there are at least two "extraordinary" enhancements of S which will complete it. (1) S can become inconsistent, in which case it will contain every wff of its language as a theorem. This plugs all the holes at once. (2) Or S can cease to be "well-made" by having (say) an undecidable set of axioms. In Gödel's terms, this is enough to make the relation of proof-pairhood undecidable by making the set of proofs an undecidable set. Or as Hunter puts it, one could then guarantee completeness by enhancing S with this set of axioms: "all the truths of number theory". (Hofstadter makes the same point at p. 215.)

G thus creates two dilemmas for formal systems of arithmetic. First, they must choose between consistency and completeness. Second, if they choose consistency, then they must choose between the incompleteness of being too weak to express G (incomplete by not "representing" all decidable sets of natural numbers) and the incompleteness of expressing G (incomplete by abstract diagonalization, creating undecidable wffs).

**Eligibility**

Remember that Gödel's theorem does not apply to all systems of arithmetic, only to those that are "sufficiently powerful". This is what creates the dilemma of incompleteness: either a system is incomplete because it is too weak for Gödel's theorem to apply, or it is incomplete because the theorem does apply. Hofstadter uses a good analogy here: if we imagine a thief who only robs the "sufficiently rich" and who accosts all travelers on a certain road, then we know that travelers on that road will always be poor: either because they are not sufficiently rich, or because they have been robbed. Here in summary are the conditions of eligibility that describe when a system is "sufficiently powerful" —or when it is rich enough to be robbed by G.

1.  It must be a formal system of arithmetic.
    
    1.  On its intended interpretation, some of its theorems must express truths of arithmetic.
    2.  The formal language of the system is capable of naming each of the natural numbers, and does so on its intended interpretation.
    3.  The formal language of the system has a finite alphabet, and all wffs are only finitely long.
    
      
    
2.  It must be a "respectable" system of arithmetic.
    
    1.  It must be consistent.
    2.  It must represent (in the technical sense) every decidable set of natural numbers.
    3.  It must be the case that each of its wffs with free variables is a theorem iff some closure of it is a theorem.
    
      
    
3.  It must be a "well-made" system of arithmetic.
    1.  Its set of axioms must be decidable.
    2.  Its set of rules of inference must be decidable.

The first wave of conditions means that the system must be a system of finitary polyadic predicate logic, extended with proper (as opposed to logical) axioms so that it is capable of proving at least some arithmetical wffs as theorems. The second wave of conditions makes it powerful. The third wave ensures that its set of proofs is decidable, which gives it an effective test of proofhood, which allows the predicate for proof-pairhood to be decidable.

**Gödel's Second Theorem**

Gödel's second theorem is as revolutionary as his first one. We don't have time here to give it the detailed treatment we gave to his first theorem. But it is important to know what it says, and how it follows from the first theorem.

Roughly, it says that no system of a certain strength can prove its own consistency unless it is inconsistent. It applies to the same respectable and well-made systems of arithmetic as his first theorem. The wff which asserts that the system is consistent can be proved to be unprovable in the system, on the assumption that the system is consistent.

This proof depends on the fact that one premise implies both G and ~G (steps 1 and 3). This is due, however, to the oddity of G rather than the premise.

Hence, if arithmetic is consistent, then its consistency cannot be established by arithmetical reasoning or by any metamathematical reasoning that can be represented in the formalism of arithmetic. By Gödel numbering, this covers a lot of ground.

By showing that systems of arithmetic cannot prove their own consistency, the second theorem forces us to prove the consistency of system A either informally or by by reasoning from system B. If we appeal to another system B in this way, then we have provided only a "relative consistency proof" and its validity depends entirely on the merits, including the consistency, of that second system B. But if B's consistency is in doubt, then we must make appeal to system C, and so on *ad infinitum*.

If Gödel's first theorem showed that systems of arithmetic cannot be complete, and that some truths of number theory can never be proved or disproved regardless of how much time and ingenuity we spend on them, then the second theorem shows that our confidence in the arithmetic we do have can never be perfect. It is not an exaggeration to say that the two theorems permanently destroyed two ideals of mathematics at the heart of its glory and prestige for millenia. Gödel published both theorems in 1931 at age 25.

**Reminders**

There are several qualifications or subtleties that are frequently omitted in popular expositions of the proof. They weren't omitted here, but it is worth pointing out what they are:

1.  The "incompleteness theorem" proves three kinds of incompleteness: (a) negation-incompleteness, which means that the system contains undecidable wffs, (b) a weak kind of semantic incompleteness, which means that some of the wffs undecidable in the system are true for the intended arithmetical interpretation, and (c) omega-incompleteness, which means that diagonalization dooms the system to negation-incompleteness. Plugging "undecidability-holes" by the device of converting G (or other undecidable wffs) into axioms does make G (or the undecidable wff) provable but does not make S complete. The method of converting the undecidable wff to an axiom works —oddly enough— for each undecidable wff but not for all of them.
2.  Because S is omega-incomplete, and not merely negation-incomplete, it is essentially or incurably incomplete. No enhancement that preserves its "threshold" conditions of respectability and well-madeness can render it complete.
3.  Despite these kinds of incompleteness, the system can be made complete if it is rendered inconsistent or ill-made. If it is inconsistent, all wffs of the language become theorems, giving instant completeness. If it is ill-made, then the set of axioms need not be decidable; hence we can say that our axioms are "all truths of arithmetic", again giving us instant completeness.
4.  No particular truth of number theory (or version of G) is absolutely unprovable, since any one you like can be added to the axiom set. But there will always be some unprovable truth for such systems. So every truth is provable, just not in the same system.
5.  The statement G is true, not just unprovable or undecidable in the system.
6.  Gödel didn't prove the undecidability of any system, only the undecidability of a wff (namely, G). Because systems strong enough to be vulnerable to Gödel's theorem are also undecidable (see Hunter's 51.10), these two results are often confused.
7.  G's truth is proved by informal or metamathematical reasoning. If "proof" is limited to derivations from axioms, then G's truth is never "proved"; it is shown or established.
8.  The theorem only applies to sufficiently powerful systems. Many weak and all inconsistent systems are immune to Gödel's theorem.
9.  Similarly, the theorem is not provable in some non-standard logics specifically designed to block it.
10.  Gödel's second incompleteness theorem follows as a corollary from the first.

[1]: https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm#preliminaries
[2]: https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm#proof
[3]: https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm#eligibility
[4]: https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm#second
[5]: https://web.archive.org/web/20060108111323/http://www.earlham.edu/~peters/courses/logsys/g-proof.htm#reminders
