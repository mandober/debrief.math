---
downloaded:       2022-01-24
page-url:         https://plato.stanford.edu/entries/fitch-paradox/
page-title:       Fitch’s Paradox of Knowability (Stanford Encyclopedia of Philosophy)
article-title:    Fitch’s Paradox of Knowability
---
# Fitch’s Paradox of Knowability (Stanford Encyclopedia of Philosophy)

The literature on the knowability paradox emerges in response to a
proof first published by Frederic Fitch in his 1963 paper, “A
Logical Analysis of Some Value Concepts.” Theorem 5, as it was
there called, threatens to collapse a number of modal and epistemic
differences. Let ignorance be the failure to know some truth. Then
Theorem 5 collapses a commitment to contingent ignorance into a
commitment to necessary ignorance. For it shows that the existence of
truths in fact unknown entails the existence of truths necessarily
unknown. Formally,
## 1\. Brief History

The literature on the knowability paradox emerges in response to a proof first published by Frederic Fitch in his 1963 paper, “A Logical Analysis of Some Value Concepts.” Theorem 5, as it was there called, threatens to collapse a number of modal and epistemic differences. Let ignorance be the failure to know some truth. Then Theorem 5 collapses a commitment to contingent ignorance into a commitment to necessary ignorance. For it shows that the existence of truths in fact unknown entails the existence of truths necessarily unknown. Formally,

(Theorem 5)∃p(p∧¬Kp)⊢∃p(p∧¬◊Kp).

The converse of Theorem 5 is trivial (since truth entails possibility), so Fitch goes most of the way toward erasing any logical difference between the existence of contingent ignorance and the existence of necessary unknowability.

It is however the contrapositive of Theorem 5 that is usually referred to as the paradox:

(K Paradox)∀p(p→◊Kp)⊢∀p(p→Kp).

It tells us that if any truth can be known then it follows that every truth is in fact known.

The earliest version of the proof was conveyed to Fitch by an anonymous referee in 1945. In 2005 we discovered that Alonzo Church was that referee (Salerno 2009b). His reports are published in their entirety in Church (2009). Fitch apparently did not take the result to be paradoxical. He published the proof in 1963 to avert a kind of “conditional fallacy” that threatened his informed-desire analysis of value. The analysis roughly says: x is valuable to s just in case there is a truth p such that were s to known p then she would desire x. The existence of unknowable truths ultimately explains why he restricts the propositional variables to knowable propositions. For an unknowable truth provides for an impossible antecedent in Fitch’s counterfactual, and ultimately trivializes the analysis. Since Fitch’s theory of value is not the context in which the paradox is widely discussed, we will say no more about it here.

Rediscovered in Hart and McGinn (1976) and Hart (1979), the result was taken to be a refutation of verificationism, the view that all meaningful statements (and so all truths) are verifiable. After all, if one accepts the knowability principle, ∀p(p→◊Kp), she is committed to the absurd claim that all truths are known. Mackie (1980) and Routley (1981), among others at the time, point to difficulties with this general position but ultimately agree that Fitch’s result is a refutation of the claim that all truths are knowable, and that various forms of verificationism are imperiled for related reasons. Since the early eighties, however, there has been considerable effort to analyze the proof as paradoxical. Why after all should it be that an epistemic theory of truth collapses possible knowledge into actual knowledge? Intuitively, that truth is to be understood in terms of the epistemic capacities of non-omniscient agents is at least a coherent position—a position distinct from and more plausible than the thesis that all truths are known. Moreover, it has been thought strange that sophisticated versions of the epistemic theory of truth should fall prey to such swift deduction. Hence, the Church-Fitch proof has come to be known as the *paradox* of knowability.

There is no consensus about whether and where the proof goes wrong. We use this entry to lay out the proof and explore a range of proposed treatments.

## 2\. The Paradox of Knowability

Fitch’s reasoning involves quantifying into sentence position. Our propositional variables p and q will take declarative statements as substituends. Let K be the epistemic operator ‘it is known by someone at some time that.’ Let ◊ be the modal operator ‘it is possible that’.

Suppose the knowability principle (KP)—that all truths are knowable by somebody at some time:

(KP)∀p(p→◊Kp).

And suppose that collectively we are non-omniscient, that there is an unknown truth:

(NonO)∃p(p∧¬Kp).

If this existential claim is true, then so is an instance of it:

(1)p∧¬Kp.

Now consider the instance of KP substituting line 1 for the variable p in KP:

(2)(p∧¬Kp)→◊K(p∧¬Kp)

It follows trivially that it is possible to know the conjunction expressed at line 1:

(3)◊K(p∧¬Kp)

However, it can be shown independently that it is impossible to know this conjunction. Line 3 is false.

The independent result presupposes two very modest epistemic principles: first, knowing a conjunction entails knowing each of the conjuncts. Second, knowledge entails truth. Respectively,

(A)K(p∧q)⊢Kp∧Kq(B)Kp⊢p

Also presupposed are two modest modal principles: first, all theorems are necessary. Second, necessarily ¬p entails that p is impossible. Respectively,

(C)If ⊢p,then ⊢◻p.(D)◻¬p⊢¬◊p.

Consider the independent result:

(4)K(p∧¬Kp)Assumption \[for reductio\](5)Kp∧K¬Kpfrom 4, by (A)(6)Kp∧¬Kpfrom 5, applying (B) to the right conjunct(7)¬K(p∧¬Kp)from 4-6, by reductio,discharging assumption 4(8)◻¬K(p∧¬Kp)from 7, by (C)(9)¬◊K(p∧¬Kp)from 8, by (D)

Line 9 contradicts line 3. So a contradiction follows from KP and NonO. The advocate of the view that all truths are knowable must deny that we are non-omniscient:

(10)¬∃p(p∧¬Kp).

And it follows from that that all truths are actually known:

(11)∀p(p→Kp).

The ally of the view that all truths are knowable (by somebody at some time) is forced absurdly to admit that every truth is known (by somebody at some time).

## 3\. Logical Revisions

In this section we inspect the prospects for treating Fitch’s reasoning as invalid. Is Fitch’s epistemic reasoning in order? Is the logic of knowability classical logic? More to the point: does the knowability principle carry with it special considerations that warrant the revision of classical logic? If so, does this logical revision invalidate Fitch’s reasoning? And if the reasoning is invalid, are there closely related paradoxes that threaten the knowability principle without violating the relevant logical standards?

### 3.1 Epistemic Revision

The problem with Fitch’s reasoning is not with either of the epistemic inferences A or B. Though some have argued that knowing a conjunction does not entail knowing the conjuncts (Nozick 1981), Williamson (1993) and Jago (2010) have shown that versions of the paradox do not require this distributive assumption. And questions about the factivity of K may be defused rather quickly, since related paradoxes emerge replacing the factive operator “It is known that” with a non-factive operators, such as ‘It is rationally believed that’ (Mackie 1980: 92; Edgington 1985: 558–559; Tennant 1997: 252–259; Wright 2000: 357).

Deep and interesting discussions of the epistemic operators and/or temporal analogs in the context of Fitch’s paradox appear in many papers. Burgess (2009) considers the temporal analogs. van Benthem (2004; 2009), van Ditmarsh, et al. (2012), Berto et al. (forthcoming) and Holliday (2018) explore the problem in dynamic epistemic frameworks. Palczewski (2007), Kelp and Pritchard (2009), Chase et al. (2018), and Heylen (forthcoming) consider non-factive notions of knowledge and knowability. Linsky (2009), Paseau (2008), Jago (2010), Carrara et al. (2011), and Rosenblatt (2014) debate the prospects for typing knowledge.

### 3.2 Intuitionistic Revision

Williamson (1982) argues that Fitch’s proof is not a refutation of anti-realism, but rather a reason for the anti-realist to accept intuitionistic logic. Owing to a verificationist (or constructivist) reading of negation and existential quantification, intuitionistic logic validates neither the elimination of double negation,

¬¬p⊢p,

nor the following quantifier exchange rule:

¬∀xP\[x\]⊢∃x¬P\[x\].

Without double negation elimination one cannot derive Fitch’s conclusion ‘all truths are known’ (at line 11) from ‘there is not a truth that is unknown’ (line 10). Consider line 10,

¬∃p(p∧¬Kp).

From this we may intuitionistically derive

∀p¬(p∧¬Kp).

But notice without double negation elimination,

¬(p∧¬Kp)

does not entail

p→Kp.

Suppose

¬(p∧¬Kp)

and suppose p for conditional introduction. And suppose ¬Kp for *reductio*. We may conjoin p with ¬Kp to get

p∧¬Kp

This contradicts our primary assumption. So, by *reductio*, ¬¬Kp. Without double negation elimination, we cannot conclude Kp, and so, may not introduce the conditional

p→Kp

The intuitionist is however committed, by conditional introduction, to

p→¬¬Kp.

There is some debate about whether this consequence is sufficiently troublesome, but the intuitionistic anti-realist takes solace in the fact that she is not committed to the blatantly absurd claim that all truths are known. Very interesting discussion concerning the hopes and dreams of intuitionistic antrealism in this context appears in Murzi (2010; 2012), Murzi et al. (2009) and Zardini(2015).

### 3.3 Problems for Intuitionistic Revision

Since Fitch’s reasoning is intuitionistically valid through line 10, the intuitionist anti-realist must accept that no truths are unknown: ¬∃p(p∧¬Kp). Arguably this is harmful enough, for it appears that the anti-realist cannot give credence to the truism that (individually and collectively) we are non-omniscient. Williamson responds that the intuitionist anti-realist may naturally express our non-omniscience as “not all truths are known”:

(12)¬∀p(p→Kp)

This claim is classically, but not intuitionistically, equivalent to the non-omniscience thesis,

∃p(p∧¬Kp).

That is because in intuitionistic logic the quantifier exchange rule, ¬∀xP\[x\]⊢∃x¬P\[x\], is not unrestrictedly valid. Importantly the expression of non-omniscience at line 12,¬∀p(p→Kp), is only classically, and not intuitionistically, inconsistent with line 10,¬∃p(p∧¬Kp). So the intuitionist anti-realist can consistently give expression to the truism that we are non-omniscient (with line 12) while accepting the intuitionistic consequence derived at line 10. In effect, the anti-realist admits both that no truths are unknown and that not all truths are known. The satisfiability of this claim on intuitionistic grounds is demonstrated by Williamson (1988, 1992).

### 3.4 The Undecidedness Paradox of Knowability

A deeper problem is said to remain for the intuitionist anti-realist. Fitch’s paradox rests on the assumption that there are unknown truths. But consider the intuitionistically weaker assumption that there are undecided statements, that is, some p, such that p is unknown and ¬p is unknown. Formally,

(Und)∃p(¬Kp∧¬K¬p)

If (Und) is true, then so is an instance of it:

(i)¬Kp∧¬K¬p.

And notice that the intuitionistically acceptable conclusion at line 10,¬∃p(p∧¬Kp), is intuitionistically equivalent to the universal claim,

(ii)∀p(¬Kp→¬p).

Deriving ¬Kp→¬p and ¬K¬p→¬¬p from (ii), and applying the conjuncts of (i), respectively, gives us the contradiction ¬p∧¬¬p. The intuitionist anti-realist is forced to admit absurdly that there are no undecided statements:

(iii)¬∃p(¬Kp∧¬K¬p)

The above argument is given by Percival (1990: 185). Since it is intutionistically acceptable, it is meant to show that the intuitionist anti-realist is still in trouble.

In reply, the anti-realist again may utilize Williamson’s strategy jointly to revise logic and reconstruct an expression of the epistemic truism. Embrace only the intuitionistic consequences of KP (in this case, that there are no undecided statements), and give expression to the truism about undecidedness by claiming that not all statements are decided:

(iv)¬∀p(Kp∨K¬p).

The reinterpretation of the undecidedness intuition at line (iv) gives us a claim that is classically, but not intuitionistically, equivalent to Und. And so, it is only classically, and not intuitionistically, inconsistent with the inference at line (iii).

Related undecidedness paradoxes of knowability are discussed in Wright (1987: 311), Williamson (1988: 426) and Brogaard and Salerno (2002: 146–148). The undecidedness paradoxes give the anti-realist even further reason to revise classical logic in favor of intuitionistic logic. When accompanied by a reconstrual of our epistemically modest intuitions, logical space for anti-realism is reclaimed.

What all this suggests is that intuitionist anti-realism is coherent. But is the approach well motivated? Is either the revision of classical logic or the clever reconstrual of our epistemic intuitions *ad hoc*?

The anti-realist’s purported right to give up classical logic in favor of intuitionistic logic has been defended independently. The argument finds its roots in Dummett (1976, and elsewhere). More recent interpretations of the anti-realist’s argument for logical revision appear in Wright (1992: Chp. 2), Tennant (1997: Chp. 7), and Salerno (2000). The details and success or failure of the arguments for logical revision is a topic for another time. For now it is enough to point out that the threat of Fitch’s paradox is not the anti-realist’s sole motivation for favoring a non-classical logic.

What about the reconstrual of our epistemic intuitions? Is it well motivated? According to Kvanvig (1995) it is not. Why should we grant that the intuitionistic treatments of non-omniscience and undecidedness are better than our initial common-sense treatments? And how is the anti-realist to explain away the apparent triviality of these common-sense treatments? These questions have not been answered.

Moreover, some of the intuitionistic consequences of KP are thought to be bad enough. Even if ‘there are no unknown truths’ or ‘there are no undecided statements’ are intuitionistically tolerable, the following appears not to be: If p is unknown then ¬p. Formally, ¬Kp→¬p. This claim follows intuitionistically from p→¬¬Kp, which we have already established as an intuitionistic consequence of KP. But ¬Kp→¬p appears to be false for empirical discourse. Why should the fact that nobody ever knows p be sufficient for the falsity of p? See Percival (1990) and Williamson (1988) for further discussions of this and related problems surrounding the application of intuitionist anti-realism to empirical discourse. DeVidi and Solomon (2001) disagree. They argue that the intuitionistic consequences are not unacceptable to one interested in an epistemic theory of truth—indeed they are central to an epistemic theory of truth.

For these reasons an appeal to intuitionist logic, by itself, is generally taken to be unsatisfying in dealing with the paradoxes of knowability. Exceptions include Burmüdez (2009), Dummett (2009), Rasmussen (2009) and Maffezioli, Naibo & Negri (2013).

### 3.5 Paraconsistent Revision

Another challenge to the logic of Fitch’s paradox is mentioned in Routley (1981) and defended by Beall (2000). The thought is that the correct logic of knowability is paraconsistent. In a paraconsistent logic contradictions do not trivialize a theory, because they do not ‘explode’. That is, in a paraconsistent logic the inference from p∧¬p to an arbitrary conclusion r is not valid. Owing to this consideration some contradictions are permitted and thought to be possible.

Beall contends that (1) Fitch’s proof turns on the assumption that, for all statements p, the contradiction Kp∧¬Kp is impossible and (2) we have independent evidence for thinking Kp∧¬Kp, for some p. The independent evidence lies in the [paradox of the knower][1] (not to be mistaken with the paradox of knowability). The relevant version of the knower paradox may be demonstrated by considering the following self-referential sentence:

(k)k is unknown.

Assume for the sake of argument that k is known. Then, presuming that knowledge entails truth, k is true. But k says that k is unknown. So k is unknown. Consequently, k is both known and unknown. But then our assumption (i.e., that k is known) is false, and provably so. And, granting that a proven falsehood is known to be false, it follows that it is known that k is unknown. That is to say, it is known that k. But we have already shown that if it is known that k then k is both known and unknown. So it is proven that k is both known and unknown. It is provably the case that the full description of our knowledge includes both K(k) and ¬K(k). That is the knower paradox.

Beall suggests that the knower gives us some independent evidence for thinking Kp∧¬Kp, for some p, that the full description of human knowledge has the interesting feature of being inconsistent. With a paraconsistent logic, one may accept this without triviality. And so it is suggested that one go paraconsistent and embrace Kp∧¬Kp as a true consequence of the knowability principle. Beall concludes that Fitch’s reasoning, without a proper reply to the knower, is ineffective against the knowability principle. For Fitch’s reasoning allegedly turns on the assumption that, for all p, it is impossible that Kp∧¬Kp.

Notice that our presentation of Fitch’s reasoning makes no explicit mention of the assumption that Kp∧¬Kp is impossible. So here we attempt to pinpoint exactly where Fitch’s reasoning goes wrong on the above account. It is claimed at line 9 (in the first section of this entry) that K(p∧¬Kp) is impossible. Of course K(p∧¬Kp) entails the contradiction Kp∧¬Kp. And so, if the reasoning is that K(p∧¬Kp) is impossible because contradictions are impossible, then Beall would be directly attacking the argument presented herein. But notice the argument here is subtly different. It goes like this. K(p∧¬Kp) entails the contradiction Kp∧¬Kp. So, by *reductio*, K(p∧¬Kp) is false. By necessitation, it follows that K(p∧¬Kp) is necessarily false. Depending on the paraconsistent logic, the paraconsistist may object to use of reductio, or may object to other inferences. The claim that K(p∧¬Kp) is impossible (at line 9) is inferred from this claim that K(p∧¬Kp) is necessarily false. This may trouble the paraconsistentist. By the lights of one living with contradiction, it may not follow that an inconsistent statement is impossible even if it is necessarily false. After all, on this account a necessarilly false statement may be both false and true at some world, in which case the statement is both necessarily false and possible. If this is right then the inference from ◻¬p to ¬◊p has counterexamples and may not be employed to infer ¬◊K(p∧¬Kp) from ◻¬K(p∧¬Kp).

Beall’s insights turn on a number of things: (1) the strength of the independent evidence for true epistemic contradictions, (2) the adequacy of the proposed resolutions to the knower paradox, (3) the question of whether Fitch’s reasoning is ineffective without a resolution to the knower and (4) an interpretation for ◻ and ◊ that invalidates the relevant inference (from ◻¬p to ¬◊p) while remaining true to the role played by ◊ in the knowability principle. We leave these problems for further debate. But compare with Wansing (2002), where a paraconsistent constructive relevant modal logic with strong negation is proposed to block the paradox.

More recent developments of the paraconsistent approach appear in Beall (2009) and Priest (2009).

## 4\. Semantic Restrictions

The remainder of proposals are restriction strategies. They reinterpret KP by restricting its universal quantifier. In effect, the restriction strategies invalidate Fitch’s reasoning by prohibiting the substitution-instances of KP that lead to paradox. In this section we examine semantic reasons for restricting the universal quantifer in KP.

### 4.1 Situations and Rigid Operations

Edgington (1985) offers a situation-theoretic diagnosis of Fitch’s paradox. She claims that the problem lies with the failure to distinguish between ‘knowing in a situation that p’ and ‘knowing that p is the case in a situation’. In the latter case, the situation is (at least in part) that which the knowledge is about. In the former case, the situation is that in which the knowledge is had. For instance, I may know in my actual situation that I would be in pain in a counterfactual situation where my tooth is pulled. Importantly, the situation in which the knowledge takes place may be different from the situation that my knowledge is about. In a situation in which my tooth is *not* pulled, I may know things that are about a situation in which my tooth is pulled.

What are situations? The above example seems to suggest that situations are worlds. But situations may be less complete than worlds. That is, they need not have truth-values fixed for statements that are irrelevant to the context. Consider an example by Linstöm: I may know in a given perceptual situation s that John (one of the participants of a card game) has the best hand and that none of the participants knows this. In this case my knowledge is of one situation s∗, the card game, but my knowledge is acquired in a different situation s, my perceptual situation. Situation s∗ is not only determined, but its relevant information is limited, by the context of the card game. And s is fixed and limited by the context of the perceptual situation. Edgington prefers talk of situations rather than worlds, because knowledge of non-actual situations, unlike knowledge of non-actual worlds, does not require knowledge of an infinite amount of detail.

Making explicit the situation-theoretic distinction between ‘knowing in’ and ‘knowing about’, we may reinterpret the knowability principle: for each statement p and situation s, if p is true in s then there is a situation s∗ in which it is known that p is true in s. Edgington requires of knowability the less general thesis: if p is true in an actual situation s then there is a possible situation s∗ in which it is known that p is true in s. Call this E-knowability or EKP:

(EKP)Ap→◊KAp,

where A is the actuality operator which may be read ‘In some actual situation’, and ◊ is the possibility operator to be read ‘In some possible situation’.

As we see, EKP restricts the knowability principle to actual truths, by saying p is actually true only if there is a possible situation in which it is known that p is actually true.

The important suggestion is this. Just as there may be actual knowledge of what is counterfactually the case, there may be counterfactual knowledge of what is actually the case. In fact, in light of Fitch’s proof, E-knowability requires the existence of such non-actual knowledge. Let us see why.

Actual truths of the form p∧¬Kp will have to be E-knowable. But p∧¬Kp cannot be actually known to be actually the case. The reasoning here is exactly analogous to Fitch’s reasoning.

The lesson is this. Since, for some p,p∧¬Kp is actually the case, E-knowability commits us to possible knowledge that p∧¬Kp is actually the case. Since this knowledge cannot be actual, E-knowability requires non-actual knowledge of what is actually the case. E-knowability then denies the following assumption: given a statement p, if it is known that p in s, then in s it is known that p. By Edgington’s analysis it is exactly this implicit assumption that leads Fitch’s reasoning astray. The paradox is blocked without it.

### 4.2 Problems for Situations

Since the actuality operator *rigidly* designates actual situations, the truth-value of statements of the form Ap will not vary across possible situations. ‘Ap’ entails ‘in every situation Ap’. Thus, as Edgington is aware, if Ap then it is necessary that Ap. This by itself poses a problem for EKP. The criticism is that Edgington’s approach is not general enough. Anyone who is likely to endorse the knowability principle is likely to think that it holds of all truths, not just those necessary truths involving the actuality operator. EKP appears to be a very limited thesis failing to specify an epistemic constraint on contingent truth (Williamson 1987a).

Further criticisms emerge when we attempt to say something informative about what constitutes non-actual knowledge of what is actually the case. If there is such non-actual knowledge, there is non-actual thought about an actual situation. So the non-actual thinker somehow has a concept of an actual situation. But how is it possible for a non-actual thinker to have a concept that is specifically about situations in this the actual world. It will not do for the thinker to express the thought ‘actually p’, since ‘actually’ will designate rigidly only situations in her own world. Moreover, since there is no causal link between the actual world w1 and the relevant non-actual world w2, it is unclear how non-actual thought in w2 can be uniquely about w1 (Williamson, 1987a: 257–258). Therefore, it is unclear how there might be non-actual knowledge about what is actually the case.

Of course actual knowledge about the non-actual is no better at singling out worlds. The special problem for the non-actual knower is that the content of her thought must be precisely the content that we grasp when we consider the truth of Ap. Being in the actual world we are able to single out this world uniquely. When we consider the truth of Ap our context fixes the content of A specifically. So if it really is Ap that is knowable by a non-actual knower, then it must be Ap that she grasps—that is, it must be the very same concept that we grasp. But how this is possible is precisely the problem.

Related and additional criticisms of Edgington’s proposal appear in Wright (1987), Williamson (1987b; 2000b) and Percival (1991). Formal developments on the proposal, including points that address some of these concerns appear in Rabinowicz and Segerberg (1994), Lindström (1997), Rückert (2003), Edgington (2010), Fara (2010), Proietti and Sandu (2010), and Schlöder (forthcoming).

### 4.3 Modal Fallacies and Non-Rigid Statements

Kvanvig (1995) accuses Fitch of a modal fallacy. The fallacy is an illicit substitution into a modal context. Consider a familiar modal fallacy. For all persons x, there is a possible world in which x is not the inventor of bifocals. (Even Ben Franklin, the actual inventor of bifocals, might not have invented them.) Therefore, there is a possible world in which the inventor of bifocals is not the inventor of bifocals. We can represent the argument formally. Let our quantifiers range over persons, and let ‘i’ be the non-rigid designator ‘the inventor of bifocals’. Consider the argument:

∀x◊¬(x\=i)Therefore,◊¬(i\=i)

Although anyone might not have been the inventor of bifocals, it does not follow (in fact it is false) that it is possible that the inventor of bifocals is not identical to the inventor of bifocals. After all, it is necessary that the inventor of bifocals is the inventor of bifocals.

The lesson is that we may not substitute unrestrictedly into modal contexts. Substitution into modal contexts, we might say, is permitted only if the substituting terms are rigid designators. In the case of Fitch’s result, our terms are sentences. The knowability principle, ∀p(p→◊Kp), apparently allows us to substitute any sentence whatsoever for p. But notice that our quantifier has wide scope relative to ◊. We would expect that the lessons of quantified modal logic carry over to quantified propositional modal logic. If so, then we may not substitute for p any statement that does not designate rigidly.

On Kvanvig’s diagnosis, the problem with Fitch’s reasoning is that when he substituted the conjunction p∧¬Kp for p in KP (at line 2 of the result), he did not stop to determine whether p∧¬Kp is rigid. Kvanvig maintains that p∧¬Kp is not rigid. So Fitch’s result is fallacious owing to an illicit substitution into a modal context. But we may reconstrue p∧¬Kp as rigid. And when we do, the paradox evaporates.

Kvanvig proposes that quantified expressions are non-rigid. The reason he gives is that quantifiers designate different objects in different possible worlds. “Everyone in Jon’s Logic class must take the final” is about different students in different possible worlds. Were Sussie to have taken the class, the expression would have been about her. But she decided not to take the class, so actually it is not about her. Kp is an abbreviation for ‘it is known by somebody at some time that p.’ So, Kp is implicitly quantified. Explicitly it reads ∃x∃t(Kxpt), which says there is a being x and a time t such that x knows that p at t. Accordingly, on this account, the quantified expression that Kp abbreviates is non-rigid. ∃x∃t(Kxpt) is about different beings and times in different modal contexts. For instance, the expression ∃x∃t(Kxpt) is about actual beings and times. But embedded in a modal context, e.g., ◊∃x∃t(Kxpt), the expression is about possible beings and times. It says, ‘there is a possible world in which there is a being x and time t such that x knows that p at t.’

Now consider the relevant instance of Fitch’s non-omniscience thesis: p∧¬Kp. Unabbreviated it reads, p∧¬∃x∃t(Kxpt), which says p is true but nobody ever knows that p. The quantified expression is, on this view, a non-rigid designator. Uttered in the actual world, it is about actual beings and times. But, it is argued, embedded within the scope of a possibility operator the designation varies to be about possible beings and times. When Fitch substituted the true conjunction, p∧¬∃x∃t(Kxpt), for p in the knowability principle, he substituted for p a non-rigid designator, thereby altering the reference of the conjunction and perpetrating a modal fallacy.

Alternatively, Kvanvig suggests, we may characterize Kp rigidly to say, ‘there is an actual being x and actual time t such that it is known by x at t that p.’ Since this expression designates rigidly (i.e., it makes reference to the actual world regardless of the modal context in which it appears), it may be substituted for p in the knowability principle. The reinterpreted conjunction does not change its designation when embedded within the scope of ◊. Moreover, on this reading of the conjunction, the paradox dissolves. It is possible to know that the reinterpreted conjunction is true. There is no contradiction in supposing that some possible being at some possible time knows that p is true but never known by an actual being at an actual time. The paradox dissolves.

Further discussion of modal fallacies and non-rigid statements appears in Brogaard and Salerno (2008) and Kennedy (2014).

### 4.4 Problems for Non-Rigidity

Williamson (2000b) defends Fitch’s reasoning against Kvanvig’s charge. He suggests that Kvanvig has no grounds for thinking that Fitch’s conjunction p∧¬∃x∃t(Kxpt) does not designate rigidly. The reason Williamson gives is this. An expression is non-rigid if, when uttered in a fixed context, it varies its reference with the circumstances under which it is evaluated. But Kvanvig gives no convincing reason for thinking that Fitch’s conjunction, as uttered in a fixed context, varies its reference in this way. At best Kvanvig has shown that the conjunction varies its reference when uttered in *varying* contexts, since his argument is that a quantified sentence, when uttered at different worlds, will be about different objects. To think that this is sufficient for non-rigidity, Williamson complains, is to confuse non-rigidity for indexicality. Importantly, indexicality does not imply non-rigidity. For instance, ‘I am tired’ is about me, and continues to be about me when I evaluate its truth-value in counterfactual circumstances. The sentence might have been false. Had I gotten enough sleep, I would not be tired. Uttered in a fixed context, ‘I’ rigidly designates, even though it is an indexical. That is, even though, had it been uttered in a different context by somebody else, it would have been about somebody other than me. Analogously, even if quantified expressions are indexicals, it does not follow that they are non-rigid. And so, even if Fitch’s conjunction is an indexical expression, we have not been given a reason to think that it is non-rigid. If this is correct, then we have no grounds for thinking that Fitch has committed the modal fallacy in question.

Kvanvig (2006) replies and develops other interesting themes in the *Knowability Paradox*, which is the only monograph to date dedicated to the topic.

## 5\. Syntactic Restrictions

The foregoing restriction strategies involved semantic reasons for limiting universal quantification. In those cases, KP was restricted in light of considerations about situations, possible worlds, or rigid designation. Another kind of restriction strategy is syntactic. It limits the scope of universal quantification to those formulas that have a certain logical form or stand in a certain provability relation. Most generally,

p→◊Kp, where p haslogical property F.

F should then be a logical property that restricts the quantifier in some principled way.

### 5.1 Cartesian Statements

Tennant (1997) focuses on the property of being Cartesian: A statement p is Cartesian if and only if Kp is not provably inconsistent. Accordingly, he restricts the principle of knowability to Cartesian statements. Call this restricted knowability principle T-knowability or TKP:

(TKP)p→◊Kp, where p is Cartesian.

Notice that T-knowability is free of the paradoxes that we have discussed. It is free of Fitch’s paradox and the related [undecidedness paradox][2]. For both results substitute the problematic Fitch conjunction, p∧¬Kp, for the variable in p→◊Kp, giving us (p∧¬Kp)→◊K(p∧¬Kp). That is, they require that p∧¬Kp be knowable if true (line 2 of Fitch’s result). But p∧¬Kp is not Cartesian, since K(p∧¬Kp) is provably inconsistent (entailing the contradiction at line 6 of Fitch’s result). In effect, TKP offers the most tolerant restriction needed to prohibit the bothersome substitution. For it only prohibits substituting those statements for which it is logically impossible to know.

### 5.2 Basic Statements

Dummett (2001) agrees that the knowability theorist’s error lies in providing a blanket, rather than a restricted, knowability principle. And he agrees that the restriction should be syntactic. Dummett restricts the principle of knowability to “basic” statements and characterizes truth inductively from there. For Dummett,

piff ◊Kp, where p is basic.p and qiff p∧q;p or qiff p∨q;if p then qiff p→q;it is not the case that piff ¬p;F\[Something\]iff ∃xF\[x\];F\[Everything\]iff ∀xF\[x\],

where the logical constant on the right-hand side of each biconditional clause is understood as subject to the laws of intuitionistic logic.

Dummett’s knowability principle or DKP, like Tennant’s, is not threatened by the knowability paradoxes, and for the same reason. It restricts the class of statements that are subject to knowability. For Dummett’s case, the problematic Fitch conjunction, p∧¬Kp, being compound, and so not basic, cannot replace the variable in p→◊Kp. The paradox is consequently averted.

### 5.3 Problems for the Syntactic Restrictions

The relative merits of these two restrictions are weighed by Tennant (2002). Tennant’s restriction is the less demanding of the two, since it bars only the substitution of those statements that are logically unknowable, and so, only those statements that are responsible for the paradoxes. Dummett’s restriction, by comparison, bars not only the substitution of these propositions, but also the substitution of logically complex proposition that are clearly knowable. Tennant also points out, if the knowability principle is the primary anti-realist motivation for revising classical logic, restricting that principle to basic statements can undermine arguments against a classical treatment of complex statements.

The main objections to the restriction strategies fall into two camps. In the first camp we find the charge that a given syntactic restriction on the knowability principle is not principled. From the second camp arise formulations of Fitch-like paradoxes that are not averted by the syntactic restrictions on knowable truth.

From the first camp Hand and Kvanvig (1999) protest that TKP has not been restricted in a principled manner—in effect, that we have been given no good reason, other than the threat of paradox, to restrict the principle to Cartesian statements. (An analogous claim may be made of Dummett’s DKP.) Tennant (2001b) replies to Hand and Kvanvig with general discussion about the admissibility of restrictions in the practice of conceptual analysis and philosophical clarification. By drawing analogies between his own restriction and others that are clearly admissible, he maintains that the Cartesian restriction is not *ad-hoc*. He also points out that TKP, rather than the unrestricted KP, serves as the more interesting point of contention between the semantic realist and anti-realist. The realist believes that it is possible for truth to be unknowable in principle. Fitch’s reasoning, at best, shows us that there is structural unknowability, that is, unknowability that is a function of logical considerations alone. But is there a more substantial kind of unknowability, for instance, unknowability that is a function of the recognition-transcendence of the non-logical subject-matter? A realist decrying the *ad hoc* nature of TKP (or DKP) fails to engage the knowability theorist at the heart of the realism debate.

Other complaints that Tennant’s restriction strategy is not principled appear in DeVidi and Kenyon (2003) and Hand (2003). Hand offers a way of restricting knowability in a principled manner.

These concerns may be waived upon noticing versions of the paradox that do not violate the proposed restrictions on the knowability principle. Williamson (2000a) asks us to consider the following paradox. Let p be the decidable sentence ‘There is a fragment of Roman pottery at that spot.’ Let n rigidly designate the number of books actually now on my desk. Let E be the predicate ‘is even.’ Williamson constructs the conjunction,

p∧(Kp→En),

and contends that it is Cartesian. Knowing it, apparently, does not entail a contradiction. If he is right, we can apply to it TKP, giving

1.  (p∧(Kp→En))→◊K(p∧(Kp→En)).

Additionally, if p is true and Kp is false, then Williamson’s conjunction is true. So,

2.  (p∧¬Kp)→(p∧(Kp→En)).

Lines (1) and (2) yield

3.  (p∧¬Kp)→◊K(p∧(Kp→En)).

Accepting the modest epistemic resources found in Fitch’s reasoning, one can prove the following theorem:

4.  K(p∧(Kp→En))→En.

Here is why. A conjunction is known only if its conjuncts are known. So, if K(p∧(Kp→En)), then Kp. And only truths can be known. So, if K(p∧(Kp→En)), then Kp→En. Of course, Kp and Kp→En jointly entail En. So theorem 4 is valid, if Fitch’s epistemic resources are. Now, 4 is a theorem, and so, holds in all possible worlds. So its consequent is possible if its antecedent is possible:

5.  ◊K(p∧(Kp→En))→◊En.

From lines 3 and 5 we derive

6.  (p∧¬Kp)→◊En.

Since n designates rigidly, it is not contingent whether n is even. It follows then that line 6 yields

7.  (p∧¬Kp)→En.

An analogous argument replacing ‘odd’ for ‘even’ gives us

8.  (p∧¬Kp)→¬En.

But then we have a contradiction resting on TKP and Fitch’s conjunction, p∧¬Kp. The result involves substitutions of p∧(Kp→En) and p∧(Kp→¬En) for p in TKP, but Williamson maintains that neither violate the Cartesian restriction. Paradox regained.

Tennant (2001a) takes issue with Williamson’s claim that p∧(Kp→En) is Cartesian. In the case where n is odd, En expresses a necessary falsehood (for instance, ‘13 is even’). But then, line 4 tells us that K(p∧(Kp→En)) implies something that is necessarily false. And if the falsity of ‘13 is even’ is a matter of *logical* necessity, then p∧(Kp→En) cannot be consistently known and therefore is not Cartesian. Hence, when n is odd, the first part of Williamson’s proof (involving the predicate ‘is even’) does in fact violate the Cartesian restriction. By contrast, Williamson’s conjunction is Cartesian when En is true. But, analogously, if the truth of En is a matter of logical necessity, then p∧(Kp→¬En) cannot be consistently known and is therefore not Cartesian. Hence, when n is even, the second part of Williamson’s proof (involving the predicate ‘is odd’) violates the Cartesian restriction. Either way, Tennant argues, Williamson has not shown that TKP is an inadequate treatment of Fitch’s paradox.

The debate continues in Williamson (2009) and Tennant (2010).

Brogaard and Salerno (2002) develop other Fitch-like paradoxes against the restriction strategies. Note that Dummett’s knowability principle is a biconditional: p↔◊Kp, where p is basic. Tennant (2002) agrees that the knowability principle should preserve the factive nature of ◊K. So Brogaard and Salerno begin with the following strengthened knowability principle:

(SKP)p↔◊Kp,where p satisfies therelevant syntactic condition

Moreover, pending further discussion of the logic of K, it is not implausible that the intuitionist knowability theorist wishes to validate the KK-principle:

(KK)◻(Kp→KKp).

The principle says, necessarily, if p is known then it is known that p is known. One other resource is used, namely, the closure principle which says that the antecedent of a necessary conditional is possible only if the consequent is possible.

If these commitments are granted, one can derive Fitch’s result without violating Tennant’s Cartesian restriction:

1.p∧¬KpAssumption (Fitch conjunction)2.Kp→KKpfrom KK3.p→◊Kpfrom SKP (left-to-right)4.◊Kpfrom 1 and 35.◊KKpfrom 4 and 2, by closure6.◊KKp→Kpfrom SKP (right-to-left)7.Kpfrom 5 and 68.Kp∧¬Kpfrom 1 and 7

SKP is applied at lines 3 and 6 to p and Kp, respectively. And these substituends do not violate the Cartesian restriction. Neither Kp, nor KKp, is self-contradictory. Nonetheless, the anti-realist is forced absurdly to admit that no truth is unknown.

Arguably, this result threatens Dummett’s restricted knowability principle as well. But that depends on whether we have applied the principle to basic statements only. p is basic, but Dummett’s characterization of truth underdetermines the status of Kp. Perhaps it is basic, since Kp is not truth-functionally complex. Nonetheless, the issue cannot be resolved without a discussion of K.

Brogaard and Salerno demonstrate other paradoxes against the restriction strategies. Those further results do not presuppose a commitment to the KK-principle. They hinge ultimately on the knowability theorist’s interpretation of ◊. When ◊ is metaphysical possibility or governed by a logic at least as strong as S4, the strong knowability principle (appropriately restricted), and taken as a necessary thesis, entails that there are no unknown truths. When ◊ is epistemic possibility, and the knowability principle is treated as a necessary thesis that is known, the knowability principle entails that, necessarily, there are no undecided statements. Unlike the undecidedness paradoxes of Wright (1987), Williamson (1988), and Percival (1990), the reasoning provided by Brogaard and Salerno does not violate Tennant’s Cartesian restriction. A response to Brogaard and Salerno appears in Rosenkranz (2004). Further discussion of the Cartesian restriction appears in Brogaard and Salerno (2006, 2008). Tennant (2009) is a further development and defense of the Cartesian strategy. A defense of the restriction strategy appears in Fischer (2013).

Much of what has been written on the knowability paradox comes in the form of attempts to express the relevant form of anti-realism without paradox. Proposals include Chalmers (2012), Dummett (2009), Edgington (2010), Fara (2010), Hand (2009, 2010), Jenkins (2005), Kelp and Pritchard (2009), Linsky (2009), Hudson (2009), Restall (2009), Tennant (2009), Alexander (2013), Dean & Kurokawa (2010), Proietti (2016).

Chalmers (2002, 2012: chap. 2), for instance, defends the idea that given enough qualitative information about the world we could in principle know the truth value of any claim. More specifically, his *scrutability thesis* says, if D is a complete qualitative description of the world, then for all T, it is knowable a priori that D (materially) implies T. Importantly, the knowability paradox does not threaten the claim that true Fitch-conjunctions are derivable a priori from a complete description of the world.

Dummett takes ∀p(p→¬¬Kp) to be the best expression of his brand of anti-realism and embraces its intuitionistic consequences with open arms. Edgington defends her knowability principle (viz., if actually p then it is possible to know that actually p) by making the case for some transworld knowability—specifically, in those cases where the merely possible knower shares the relevant causal history with the actual world. Hand defends anti-realism by pointing to the distinction between a verification-type and its token performances, and argues that the existence of a verification-type doesn’t entail its performability. The lesson there is that the anti-realist should think about truth less in terms of the performability of verification procedures and more in terms of the existence of verification-types. And Linsky regiments the epistemic principles and reasoning with a theory of types. The debates surrounding the proper characterization of semantic anti-realism go far beyond the scope of this entry. As for the knowability proof itself, there continues to be no consensus on whether and where it goes wrong.

Niche discussions of the paradox that don’t fit well into any of the above sections include Salerno’s (2018) new paradox of happiness; Kvanvig’s (2010) argument that the paradox threatens Christianity itself owing to its doctrine of the incarnation of Christ; and Cresto’s (2017) argument that the knowability paradox raises doubts about Reflection Principle as a requirement on rationality.

[1]: https://plato.stanford.edu/entries/epistemic-paradoxes/#KnoPar
[2]: https://plato.stanford.edu/entries/fitch-paradox/#UndParKno
