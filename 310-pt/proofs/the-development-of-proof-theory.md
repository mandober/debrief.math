---
downloaded:       2021-11-03
author:           von Plato, Jan
page-url:         https://plato.stanford.edu/entries/proof-theory-development/
page-title:       The Development of Proof Theory (Stanford Encyclopedia of Philosophy)
article-title:    The Development of Proof Theory
article-length:   45664
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# The Development of Proof Theory (Stanford Encyclopedia of Philosophy)

The development of 
 proof theory
 can be naturally divided into: the prehistory of the notion of proof 
in ancient logic and mathematics; the discovery by 
 Frege
 that mathematical proofs, and not only the propositions of 
mathematics, can (and should) be represented in a logical system; 
 Hilbert's old axiomatic proof theory;
 failure of the aims of Hilbert through Gödel's incompleteness 
theorems; Gentzen's creation of the two main types of logical systems
of contemporary proof theory, natural deduction and sequent calculus 
(see the entry on 
 automated reasoning);
 applications and extensions of natural deduction and sequent 
calculus, up to the computational interpretation of natural deduction
and its connections with computer science.
The development of proof theory can be naturally divided into: the prehistory of the notion of proof in ancient logic and mathematics; the discovery by [Frege][1] that mathematical proofs, and not only the propositions of mathematics, can (and should) be represented in a logical system; [Hilbert's old axiomatic proof theory][2]; failure of the aims of Hilbert through Gödel's incompleteness theorems; Gentzen's creation of the two main types of logical systems of contemporary proof theory, natural deduction and sequent calculus (see the entry on [automated reasoning][3]); applications and extensions of natural deduction and sequent calculus, up to the computational interpretation of natural deduction and its connections with computer science.

## 1\. Prehistory of the notion of proof

Proof theory can be described as the study of the general structure of mathematical proofs, and of arguments with demonstrative force as encountered in logic. The idea of such demonstrative arguments, i.e., ones the conclusion of which follows necessarily from the assumptions made, is central in Aristotle's *Analytica Posteriora*: a deductive science is organised around a number of basic concepts that are assumed understood without further explanation, and a number of basic truths or axioms that are seen as true immediately. Defined concepts and theorems are reduced to these two, the latter through proof. Aristotle's account of proof as demonstrative argument fits very well to the structure of ancient geometry as axiomatized in Euclid. The specific form of [Aristotle's logic][4], the theory of syllogism has instead, so it seems, almost nothing to do with proofs in Euclidean geometry. These proofs remained intuitive for more than two thousand years.

Before the work of Frege in 1879, no one seems to have maintained that there could be a complete set of principles of proof, in the sense expressed by Frege when he wrote that in his symbolic language,

> all that is necessary for a correct inference is expressed in full, but what is not necessary is generally not indicated; nothing is left to guesswork. (*Begriffsschrift*, p. 3)

(One might contend that Boole is an exception as far as classical propositional logic is concerned.) Frege's step ahead was decisive for the development of logic and foundational study. The contrast to the ancients is great: Aristotle gave a pattern for combining arguments, but the idea of a finite closed set of rules was, philosophically, beyond the dreams of anyone before Frege, with the possible exception of Leibniz.

As we know today, Frege's principles of proof are complete for classical predicate logic.

Around 1890, Giuseppe Peano gave a formalization of logical inference, with the aim of representing formally proofs in arithmetic. His seminal paper *Arithmetices principia, nova methodo exposita*, written originally in Latin, is included in English translation in the collection *From Frege to Gödel* (1967) that Jean van Heijenoort edited. Unfortunately, the editor failed to recognize what Peano did with formal inference, and the view spread that Peano formalized only the language of logic and arithmetic, not its principles of proof. If Peano's proofs are read with even a little care, it transpires that they are purely formal derivations that use two principles:

1.  Axioms imply their instances. Such implications can be written as lines in proofs.
2.  An implication and its antecedent imply together the consequent.

Peano is very careful to list, on every line of his derivations, what the formal ground for writing the line is.

[Russell][5] took up Frege's logic, but used the notation and formal rules of proof of Peano, in a paper of 1906 with the title “The theory of implication.” Its formal machinery is exactly the same as Peano's. In later work, Russell changed the axiomatic system and the one of *Principia Mathematica* (Whitehead and Russell 1910–13) became standard. Russell's philosophical idea, and here he followed Frege, was that the axioms express basic logical truths, and other logical truths are derived from these through modus ponens and universal generalization, the two principles Frege had identified. Mathematics was to be reduced to logic, so that its proofs would become presented in the same axiomatic pattern.

Frege's and Peano-Russell's approach to logic became the universally accepted one, especially through the influence of Hilbert and his co-workers in the 1920s. In the 19th century, Frege was a marginal figure, and the algebraic approach to logic, as in Boole and especially Ernst Schröder, was the dominant one. It is clear that there was a good understanding of the principles of predicate logic in this tradition, for how could there have been a Löwenheim-Skolem theorem otherwise? Skolem found out about Frege's logic through *Principia Mathematica* only after having worked out the theorem in his paper of 1920. The first section of that paper, widely read because of the English translation in Van Heijenoort's *From Frege to Gödel*, marks the end of the algebraic tradition of logic that merged silently with lattice theory. Other sections of the paper contain a remarkable beginning of the analysis of proofs in lattice theory and in projective geometry: Skolem considered the axioms of a mathematical theory from a purely combinatorial and formal point of view, as means for producing derivations of a formula from given formulas used as assumptions. It was found out in the early 1990s that the part on lattice theory contains the solution of a decision problem, called the word problem for freely generated lattices, the known solution of which stemmed from 1988! Skolem's terminology and notation in lattice theory are those of Schröder and that is part of the reason why his work was a lost opportunity for proof theory.

## 2\. Hilbert's old axiomatic proof theory

Hilbert's book *Grundlagen der Geometrie* of 1899 set the stage for the central foundational problems of mathematics of the early decades of the 20th century. We can list these problems as follows:

1.  The formalization of a mathematical theory. This includes a choice of its basic objects and relations, and a choice of the axioms.
2.  A proof of the consistency of the axioms.
3.  The question of the mutual independence and completeness of the axioms.
4.  The decision problem: is there a method for answering any question that could be raised within the theory?

As to Hilbert's geometry, its attempted formalization fell short of the ideal to which it gave birth. Hilbert found a much more important field to which his “metamathematics” was to be applied, namely arithmetic and analysis. The groundwork was a study of the four foundational problems in axiomatic formulations of pure logic. Propositional logic was thus formalized, found to be consistent and complete, and decidable. The first results about predicate logic are from 1915, when Leopold Löwenheim gave his version of what later became the Löwenheim-Skolem theorem for predicate logic (see the entry on [classical logic][6]). He also solved special cases of the decision problem. This development was independent of the Frege-Russell tradition, and was instead based on the algebraic approach to logic of Ernst Schröder. Around 1920, the “Hilbert style” axiomatic approach, as it is often called, was known to everyone and dominated the logical scene; the algebraic approach merged almost without notice with lattice theory. By 1928, in Hilbert and Ackermann's *Grundzüge der theoretischen Logik*, an axiomatic formal system for predicate logic was presented, together with the problem of its completeness. The latter was solved by Gödel in 1929, published a year later (Gödel 1930). The fourth foundational problem, the decision problem for predicate logic, was shown to have a negative solution in a short paper by Church in 1936 as a corollary to Gödel's incompleteness theorem.

Hilbert and his school, with Bernays, Ackermann and von Neumann as foremost, as well as young Herbrand in France, pursued the metamathematical study of arithmetic in the latter part of the 1920s. Hilbert developed a method for the study of consistency problems, called the [epsilon substitution method][7], to deal with the quantifiers. He felt that indirect inferences with quantifiers in cases with an infinity of objects were the crucial point of consistency proofs and needed a justification. Say, if the assumption that all natural numbers have the property *P* leads to an impossibility, the existence of a number with the contrary property not-*P* can be inferred. The central problem was thus to justify the use of classical logic in mathematical proofs, arithmetical ones in the first place. Ackermann was very close to a solution towards the end of the 1920s and optimism reigned in the Hilbert school. Then, of course, the unexpected happened when Gödel proved the impossibility of a complete formalization of elementary arithmetic, and, as it was soon interpreted, the impossibility of proving the consistency of arithmetic by finitary means, the only ones judged “absolutely reliable” by Hilbert.

## 3\. The unprovability of consistency

After Gödel had made public the incompleteness of arithmetic in September 1930, von Neumann found that the consistency of arithmetic would be among the Gödelian unprovable propositions. Alas, Gödel had made the same discovery so von Neumann never published his proof. He did, however, conjecture in correspondence with Gödel the unprovability of the consistency of arithmetic and therefore of mathematics as a whole, in some absolute sense. Von Neumann was the key character in the reception of Gödel's results: He interrupted his lectures on Hilbert's proof theory in Berlin in the fall of 1930 to explain the new discoveries. These events created an enormous excitement among the mathematicians, as witnessed by Carl Hempel's testimony:

> I took a course there with von Neumann which dealt with Hilbert's attempt to prove the consistency of classical mathematics by finitary means. I recall that in the middle of the course von Neumann came in one day and announced that he had just received a paper from… Kurt Gödel who showed that the objectives which Hilbert had in mind and on which I had heard Hilbert's course in Göttingen could not be achieved at all. Von Neumann, therefore, dropped the pursuit of this subject and devoted the rest of the course to the presentation of Gödel's results. The finding evoked an enormous excitement. (Hempel 2000, p. 13)

In 1932–33, Gödel and Gentzen found independently of each other a translation from classical Peano arithmetic to [intuitionistic Heyting arithmetic][8]. Specifically, it shows that if a contradiction is provable in the former, it is provable in the latter. Then the consistency of intuitionistic arithmetic would guarantee also the consistency of classical arithmetic. This result was a surprise: as mentioned, Hilbert had thought that the “transfinite” indirect existence proofs would be the part of arithmetic that needs to be secured of contradiction. By Gödel's and Gentzen's result, already intuitionistic arithmetic contained principles that went beyond finitary reasoning. A letter Gentzen wrote to Heyting on 25 February 1933 summarizes the situation as follows:

> A consistency proof by finite means has … not succeeded so far, so that this original aim of Hilbert has not been achieved. If, on the other hand, one admits the intuitionistic position as a secure basis in itself, i.e., as a consistent one, the consistency of classical arithmetic is secured by my result. If one wished to satisfy Hilbert's requirements, the task would still remain of showing intuitionistic arithmetic consistent. This, however, is not possible by even the formal apparatus of classical arithmetic, on the basis of Gödel's result in combination with my proof. Even so, I am inclined to believe that a consistency proof for intuitionistic arithmetic, from an even more evident position, is possible and also desirable. (Menzler-Trott 2007, p. 38)

The last-mentioned was the goal Gentzen had set to himself early in 1932, when in a letter to his old teacher Hellmuth Kneser he wrote:

> I have set as my specific task to find a proof of the consistency of logical deduction in arithmetic… The task becomes a purely mathematical problem through the formalization of logical deduction. The proof of consistency has been so far carried out only for special cases, for example, the arithmetic of the integers without the rule of complete induction. I would like to proceed further at this point and to clear at least arithmetic with complete induction. I am working on this since almost a year and hope to finish soon, and would then present this work as my dissertation (with Prof. Bernays). (Menzler-Trott 2007, p. 31)

## 4\. Natural deduction and sequent calculus

In pursuing his consistency program, Gentzen set as his first task the analysis of purely logical deduction, to be extended later to arithmetic and analysis. In his thesis (1934–1935), Gentzen states that he set as his task the analysis of mathematical proofs as they occur in practice. The first observation is that actual proofs are not based on axioms expressed in a logical language, as in Hilbert's axiomatic proof theory. The most typical feature is instead that theorems make their claims under some assumptions. The assumptions are analyzed into parts and the conclusion is also analyzed into parts until these two analyses meet and a proof can be synthesized. The latter analysis proceeds by what Gentzen called introduction rules: they give sufficient conditions for deriving a proposition of a given form. For example, to derive a conjunction *A* & *B*, it is sufficient to derive the conjuncts *A* and *B* separately. The inference is given formally as in the rule

Assumptions, instead, are analyzed into their components through elimination rules that give, by and large, immediate consequences of the assumptions. For example, a conjunction used as an assumption can be decomposed into its constituents, as in the rules

Gentzen developed and studied the system of natural deduction during 1932, and had arrived by September 1932 at a calculus of natural deduction (ND for short) that is standard today. By this time, he had noticed that if an introduction, say a derivation of *A* & *B* from *A* and *B* separately, is followed by the corresponding elimination, say a derivation of *A*, the formula *A* & *B* constitutes a local maximum, a “hillock”, that can be eliminated. He also called such hillocks “detours”, and what is now called a detour conversion removes such unnecessary pairs of introduction-elimination steps. The result of the steps of “normalization” is a derivation in “normal form”.

Implication is perhaps more typical of ND than conjunction: to derive *A* ⊃ *B*, one temporarily assumes *A*, then tries to derive *B*. If this succeeds, the temporary assumption is closed or “discharged” when the conclusion to *A* ⊃ *B* is made, as in the schematic derivation

In the other direction, *A* ⊃ *B* can be eliminated if a derivation of *A* has been found, for then *B* can be concluded:

If rule ⊃I is followed by ⊃E, there is a non-normality that is removed by a detour conversion: a derivation of *B* (and what follows after it) is constructed by taking the derivation of the minor premiss *A* of the elimination rule and the derivation of *B* from the assumption *A* in the introduction. These two pieces are combined together into a derivation of *B* that does not have the detour formula *A* ⊃ *B*. In Gentzen's thesis, all assumptions are in the end closed by implication introductions, but nowadays one considers also derivations that leave a collection of formulas as open assumptions.

Looking at the rules of conjunction and implication, one notes that the premisses (the formulas immediately above the inference line) are subformulas of the conclusion in the *I*\-rules, whereas it is the other way around in the *E*\-rules. Gentzen noticed that in normal derivations, this property of single steps is inherited by the whole derivation, in the sense that all formulas are subformulas of the conclusion. This result gave as a byproduct a decision method for [intuitionistic propositional logic][9]. Another corollary was a syntactic proof of consistency: if a contradiction is provable, anything is provable, but an atomic formula, say, has no proof: if it has a proof, it has a normal proof, but no *E*\-rules apply to an atomic formula, and no *I*\-rule concludes it either.

Gentzen's idea was to extend natural deduction to a system of arithmetic by the addition of a rule that corresponds to the principle of complete induction. Consistency would then follow from the normalization of derivations and the subformula property. By early 1933, Gentzen realized that this proof strategy would not go through: the induction rule is schematic and has an infinity of instances, with no bound on the complexity of the induction formulas. It would be impossible to restrict these formulas in advance, thus no subformula property can hold. After this failure, Gentzen took verbatim out of his early thesis manuscript the translation from classical to intuitionistic arithmetic and submitted it as a paper in March 1933, but withdrew the paper after hearing of Gödel's publication of the result.

Gentzen wrote that he was unable to prove a normalization theorem for a classical system of ND. He therefore invented another logical calculus that he called sequent calculus (*Sequenzenkalkul*, literally “calculus of sequences”) and made it the central topic of his thesis. The name of the calculus comes from the representation of assumptions of a derivation as a list. The word “sequent” used as a noun is a suggestion of Kleene's in his *Introduction to Metamathematics* (1952: 441), taken up in many languages in the form of purely invented words.

Sequent calculus, SC for short, can be seen as a formal representation of the derivability relation in natural deduction. A sequent consists of a list Γ of formulas, an arrow (in Gentzen, later also other markers have been used), and one formula as a conclusion. The list gives the assumptions the conclusion depends on in a derivation, in a local notation where in ND they are found in the leaves of a derivation tree. Gentzen also generalized sequents so that they have, instead of one conclusion, a list of possible cases after the arrow. This novelty led to the first satisfactory formulation of a proof system for classical logic. Gentzen's SC rules for conjunction and implication are, with commas separating elements in lists:

__Conjunction__

Γ __→__ Δ, *A*   Γ → Δ, *B*

 R&

Γ __→__ Δ, *A* & *B*

*A*, Γ __→__ Δ

 L&1

*A* & *B*, Γ __→__ Δ

*B*, Γ __→__ Δ

 L&2

*A* & *B*, Γ __→__ Δ

__Implication__

*A*, Γ __→__ Δ, *B*

 R⊃

Γ __→__ Δ, *A* ⊃ *B*

Γ __→__ Θ, *A*   *B*, Δ __→__ Λ

 L⊃

*A* ⊃ *B*, Γ, Δ __→__ Θ, Λ

This is not the place to explain the details of ND and SC (but see the entry on [automated reasoning][10]). Gentzen formulated the latter, denoted LK, so that it gave an intuitionistic calculus, denoted LJ, as a special case, the one in which the conclusion is a list of at most one case. He then proved the analogue of the normalization theorem for the classical calculus, the calculus and the proof carefully formulated so that the result for the intuitionistic calculus was a special case of the one for the classical calculus. In LJ and LK, L stands for “logistic”, a term by which Gentzen refers to the axiomatic calculi of logic of Frege, Russell, and Hilbert and Bernays. In such calculi, each line in a derivation is correct in itself, i.e., a logical truth, whence the term. The letters K and J come from the German words *klassisch* and *intuitionistisch*. (The latter should thus be upper case "I", but older German uses upper case "J" for upper case "I".)

Gentzen called the analogue of normalization by the unimaginative name of *Hauptsatz*, “main theorem”. The standard terminology today is “cut elimination theorem” All of the logical rules of SC have the subformula property in a very immediate sense: each formula in a premiss is a formula or subformula in the conclusion. The rule for combining derivations, analogous to the one explained above for the case of detour conversions in ND, is called “cut”. In it, a formula *A* appears as a case in a first premiss and as an assumption in a second premiss. In the conclusion, this formula has disappeared and the assumptions of the two premisses collected together:

> Γ __→__ *A*   *A*, Δ __→__ *C*
> 
>  Cut
> 
> Γ, Δ __→__ *C*

Thus, cut is the only rule that makes a formula “disappear” in a derivation. Gentzen showed that instances of the rule of cut can be eliminated from derivations by permuting them upward until they reach points at which the derivation starts. In ND, the starting points are assumptions, in SC they are “initial sequents” of the form *A* → *A* in which the assumption formula *A* is at the same time the conclusion. A cut with such a sequent as one premiss has the other premiss equal to the conclusion and can therefore be deleted.

After the proof of cut elimination, Gentzen had no use for the proof of normalization for intuitionistic natural deduction. He gave the first handwritten version of his thesis, with the detailed proof of normalization (equivalent to some 13 printed pages) to Bernays, but the latter seems never to have realized what he had in his hands. The proof, among the papers of Bernays in Zurich, was discovered by the present author in February 2005 and is now available in an English translation (Gentzen 1933 \[2008\]).

## 5\. The consistency of arithmetic and analysis

After his thesis work on ND and SC for pure logic, Gentzen continued his plan of proving the consistency of arithmetic. The result was ready by December 1934. What this very first proof was, is not known in detail. However, a letter to Bernays from 1938 indicates that the proof that Gentzen wrote down by the summer of 1935 was not this original one, but a second proof (see Menzler-Trott 2001, 79). This second proof was criticized by Bernays and Gödel who discussed it during their Atlantic voyage to Princeton in September 1935. Gentzen's idea in the proof was as follows: first, take the conjunction-negation-universal quantification fragment of natural deduction as the logic used in the formalization of arithmetic. Then write each rule instance so that the premisses and conclusion have the open assumptions listed at left, with an arrow separating the conclusion, so, as sequents. This variant of ND is now called ND in SC style. Consider a sequent Γ __→__ *C*. If its conclusion is an atomic formula, it is an equation between numbers. In the worst case it is false, so then consider the list of assumptions. If one assumption is a conjunction, replace it by a conjunct of your choice, if a universal quantification, by an instance. If it is a negation ¬*A*, replace the conclusion by *A*. If at any stage of this “reduction process” the conclusion of a sequent is a compound formula, you have to consider any conjunct or any instance of universal quantification as a possible conclusion. In case of negation ¬*A* as a conclusion, move *A* to the assumption part and replace the conclusion by 0 = 1. Gentzen shows that by proceeding in this way under the assumption that the sequent in question is derivable, either a true equation is found as a conclusion, or a false equation as an assumption. Thus, there are no derivable sequents with all assumptions true and the conclusion false.

It was unclear to Gödel and Bernays what the proof assumed; they thought it assumed what is known in intuitionistic mathematics as the fan theorem, but this was false. Termination of Gentzen's reduction procedure can be proved instead by induction on well-founded trees (“bar-induction”), a principle that was used by Gentzen on intuitive grounds. Anyway, the result of the criticism was that Gentzen changed without further ado the proof into a third proof that uses the now famous principle of transfinite induction up to the first epsilon-number. This induction was presented through a coding that used decimal numbers. The concrete result of the changes for Gentzen's paper published in 1936 was not good, however: the logical calculus was changed midway in an article of seventy-odd pages that became very difficult to read. Therefore Gentzen gave yet another, by the present count fourth proof of the consistency of arithmetic in 1938 (at the Bernays archives of the ETH Zurich), this time based on the classical sequent calculus LK of 1933. As mentioned, correspondence with Bernays indicates that he thereby returned to the proof method that had led to success in 1934. The use of transfinite induction is made clearly visible in the 1938 paper through an ordinal notation. Such induction principles on Cantor's “second number class” are discussed in detail in Hilbert's 1925 lecture “*Über das Unendliche*” (“On the infinite”, published 1926), a paper to which Gentzen referred.

One would have thought that that was that, but Gentzen had reason to produce even a fourth proof of the consistency of arithmetic, in his last paper published in 1943 but written before the war in 1939. He extended Peano arithmetic through transfinite ordinals and made the transfinite induction principle part of this extended calculus. Then he showed directly that transfinite induction up to the first epsilon-number ε0 is expressible but not provable in the system. Gödel's incompleteness theorem is thus proved in a completely different way. The idea of the proof is, in brief terms, as follows: first it is laid down what it means to derive transfinite induction to a specific ordinal number in the system. Secondly, ordinal numbers below ε0 are associated to derivations. These are called “values”. It is then shown that if transfinite induction to an ordinal number is derivable, this ordinal number cannot be greater than the value of the derivation. Therefore transfinite induction to ε0 is not derivable.

Since the induction principle can be expressed but not proved in ordinary arithmetic, a formula unprovable in Peano arithmetic is found. An easy consequence of Gentzen's version of the incompleteness theorem is the consistency of Peano arithmetic, because anything would be provable in an inconsistent system. Contrary to Gödel's “artificial” unprovable formula that was obtained through a coding of the arithmetized provability predicate, Gentzen's transfinite induction principle is a principle of “ordinary” mathematics.

Gentzen's last proof determined the “proof-theoretic ordinal” of Peano arithmetic, namely the one that is needed to prove consistency, with the property that nothing less would suffice. The work marked the beginning of ordinal proof theory. It was without doubt the most remarkable foundational achievement in arithmetic after Gödel's incompleteness theorems, but is still largely unknown—one can find many books about Gödel's theorems that do not even mention Gentzen.

Gödel had, it seems, not thought of giving a consistency proof of arithmetic through the use of non-finitary but still constructive principles. In the late thirties, at least from 1938 on, he developed as a response to Gentzen's proof his own special interpretation of intuitionistic logic and arithmetic, what came to be known as the Dialectica interpretation. It uses computable functionals to interpret the proofs of intuitionistic arithmetic. Gödel published the interpretation only in 1958, even though he had presented it in lectures in 1941. It is unknown if he discussed the matter when he met Gentzen in December 1939.

At the request of Bernays, Ackermann reproduced Gentzen's proof in terms of Hilbert's [epsilon-calculus][11] in 1940. Ackermann's paper was the starting point of Kreisel's 1951 “no-counterexample” interpretation of arithmetic. It was a surprise when the publication of Gödel's collected papers brought to light his “Zilsel-lecture” in Vienna in 1938: he outlines there this interpretation as a reformulation of Gentzen's 1935 proof. (The matter is discussed in great detail in Tait (2005) who himself had worked on the no-counterexample interpretation and its extension to analysis in the 1960s.)

The next obvious task in proof theory, after the proof of the consistency of arithmetic, was to prove the consistency of analysis, i.e., of the theory of real numbers. Gentzen did some work in this direction, but was then assigned to military service in the fall of 1939. (He observed and reported the type, number, and direction of aircraft that flew above the town of Brunswick, until he was hit by a nervous breakdown in early 1942.) From 1943 on he resumed the work on analysis, but the difficulties intrinsic to the topic were great, as were the practical difficulties of life caused by the war. Analysis was to be formulated as a system of second-order arithmetic, which means that quantification is extended over number-theoretic predicates or, equivalently, over sets of natural numbers. Second-order number theory is used in Gentzen's last paper, published in 1943, in which it is briefly shown that the principle of transfinite induction up to ε0 is derivable in second-order number theory.

More than half a century has passed with no constructive proof of the consistency of full second-order arithmetic in sight. Early pioneers in this field included Kurt Schütte and Gaisi Takeuti. The former created in 1951 an infinitary sequent calculus to present consistency proofs in a perspicuous way, the latter instead used a more traditional Gentzen-style calculus (see Takeuti 1987).

In the current research in the proof theory of second-order arithmetic, one studies what are known as subsystems of second-order arithmetic. The strongest results as of today are, in a very brief outline, the following: let *X* range over number-theoretic predicates. A formula such as *X(x)* states that *x* has the property expressed by *X*. We can now use first- and [second-order logic][12] to form compound formulas such as ∀*X*(*X**x* ∨ ¬ *X**x*). The collection of natural numbers for which such a formula with one universal second-order quantifier holds is called a Π11\-set (in this case, the whole of the natural numbers). More generally, a comprehension axiom is of the form ∃*X*∀*x*(*X**x* ↔ *B*(*x*)). If the formula *B* has no second-order quantifiers, the axiom gives what is called arithmetic comprehension or ACA. If *B* can have the form ∀*Y*∃*Z* *C*(*x*) with no other second-order quantifiers, the special case of Π12\-comprehension is obtained. Consistency proofs for a subsystem of second-order arithmetic with Π12\-comprehension have been given by Toshiyasu Arai and Michael Rathjen in the mid-1990s. (see Rathjen 1995 for these developments).

## 6\. Later developments in natural deduction

At the time when Gentzen worked out his system of natural deduction, Stanislaw Jaskowski was also developing a logical system for reasoning with assumptions. Formulas in derivations are arranged in a linear succession, but Jaskowski's paper of 1934 remained fragmentary and without substantial results such as a subformula property. The linear variant of natural deduction is followed in many pedagogical expositions of elementary logic (sometimes called “Fitch systems”). Gentzen found Jaskowski's work by June 1936, when both were in Münster, and considered its linear arrangement of formulas an improvement, a “liberation from the straitjacket of the tree form”, into one that reflects “the linearity of thinking” (the former from unpublished notes, the latter from Gentzen's thesis).

The system of natural deduction lay mostly dormant for some thirty years, until the thesis of Dag Prawitz of 1965, *Natural Deduction: A Proof-Theoretical Study*. The order in which Prawitz presented the normalization theorem was different from the one in Gentzen's early thesis manuscript. Prawitz gave first a normalization theorem and subformula property for a system of natural deduction for classical logic. This system contains no disjunction or existence. In a second stage, he considered intuitionistic natural deduction for the full language of predicate logic and reduced its normalization to the deletion of detour convertibilities as in the fragment of classical logic. When Gentzen's proof of normalization came to light in 2005, Prawitz said, in conversation with the present author, that it is clear that Gentzen knew the result, because the remarks in the printed thesis are so suggestive.

In the late 1960s, *strong* normalization became an issue: Prawitz, using previous work of William Tait and Jean-Yves Girard, proved in 1971 that non-normalities in a derivation can be converted in any order, with a terminating normalization process and a unique normal derivation as a result. Gentzen seems not to have noticed the latter, but seems to have thought rather the contrary, by the failure of this property for the elimination of cuts in sequent calculus.

At about the same time as strong normalization was studied, the *Curry-Howard* correspondence emerged. Curry had observed in his work on combinatory logic in the late 1950s the analogy between implication elimination in natural deduction and functional application (Curry and Feys 1958). The idea was as old as intuitionistic logic: by the “BHK-explanation” of the connectives and quantifiers (for Brouwer-Heyting-Kolmogorov), the forms of propositions in intuitionistic logic express prescriptions on how to prove those propositions: a conjunction *A* & *B* is proved by proving *A* and *B* separately, a disjunction *A* ∨ *B* by proving one of *A* and *B*, and an implication *A* ⊃ *B* by showing how to convert any proof of *A* into some proof of *B*, and so on. These explanations come very close to the introduction rules of natural deduction, but it remains unknown what their effect on Gentzen's thought was.

The Curry-Howard correspondence, from a paper by William Howard of 1969, but published only in 1980, is based on the “formulas-as-types” principle, or in another jargon, on the “propositions-as-sets” principle. A proposition is thought of as its set of proofs. Truth of a proposition corresponds to the non-emptyness of the set. Proofs of *A* ⊃ *B* are now functions from (proofs of) *A* to (proofs of) *B* and *A* ⊃ *B* itself the set of such functions. Thus, if *f* : *A* ⊃ *B* and *a* : *A*, then functional application gives *f*(*a*) : *B*. The reverse, corresponding to the introduction of an implication, is captured by the principle of functional abstraction of Alonzo Church's λ-calculus.

The Curry-Howard correspondence has made intuitionistic natural deduction part of the computer science curriculum: it gives a computational semantics for intuitionistic logic in which computations, and the executions of programs more generally, are effected through normalization. A proof of an implication *A* ⊃ *B*, say, is a program that converts data of type *A* into an output of type *B*. The construction of an object (proof, function, program) *f* of the type *A* ⊃ *B* ends with an abstraction. When an object *a* of type *A* is fed into *f* as an argument, the resulting expression is not normal, but has a form that corresponds to an introduction followed by an elimination. Normalization now is the same as the execution of the program *f*. The use of intuitionistic logic is not tied to any intuitionistic philosophy of mathematics, but is just a systematic guarantee for the termination of the execution of computer programs.

## 7\. Sequent Calculus: later developments/applications

Gentzen's doctoral thesis marked the birth of structural proof theory, as contrasted to the old axiomatic proof theory of Hilbert. A remarkable step ahead in the development of systems of sequent calculus was taken by Oiva Ketonen in his doctoral thesis of 1944. Ketonen, a student of mathematics and philosophy in Helsinki, went to Göttingen in 1938 to study proof theory with Gentzen—being the closest to a student the latter ever had. The connection seems to have been established by Ketonen's philosophy professor Eino Kaila who had met Gentzen in 1936 in Münster. Ketonen recollected later that Gentzen was “a sympathetic young man of few words” who gave him an introduction to the proof-theoretical systems and results. Ketonen's best-known discovery is a sequent calculus for classical propositional logic the logical rules of which are all invertible, meaning that whenever a sequent is of a form that matches the conclusion of a logical rule, the corresponding premisses, defined uniquely from the given sequent and the rule, are also derivable. The reverse is immediate (just apply the rule). Rules L& and L⊃, for example, are modified into

> *A*, *B*, Γ __→__ Δ
> 
>  L&
> 
> *A* & *B*, Γ __→__ Δ
> 
>    
> 
> Γ __→__ Δ, *A*   *B*, Γ __→__ Δ
> 
>  L⊃
> 
> *A* ⊃ *B*, Γ __→__ Δ

There is just one left rule for conjunction (and dually just one right rule for disjunction). The left implication rule has what are called “shared contexts”: the assumptions and cases in the conclusion, except for the formula with the connective, are repeated identically in both premisses. Ketonen's idea was to define a system of proof search: one starts from a given sequent to be derived, chooses a formula in it, and writes the premisses of a rule that can conclude the given sequent. By invertibility, the question of derivability is replaced by one or two equivalent questions of derivability on simpler sequents. The new rules are needed to ensure uniquely defined premisses in such “root-first” decomposition.

Ketonen's proof of invertibility of the logical rules of his sequent calculus used the structural rule of cut. Later Kurt Schütte (1950) and Haskell Curry (1963) gave direct proofs of invertibility, the latter with the explicit result that the inversions are *height preserving*: if a given sequent is derivable in at most *n* steps, the premisses in a rule that can conclude that sequent also have a derivation in at most *n* steps.

How much of Ketonen's work stems from suggestions on the part of Gentzen remains unknown, because no correspondence has been found. Ketonen writes in the preface of his thesis that “Dr. G. Gentzen of Göttingen directed me towards the problem area of this work”. The thesis was Ketonen's only original work in logic, saved from oblivion by a long review that Bernays wrote of it for *The Journal of Symbolic Logic* in 1945.

One person who knew Ketonen's calculus in the late 1940s was Evert Beth. When Beth later, in 1955, presented his well-known tableau calculus, he seems to have forgotten the origin of the tableau calculus as a reformulation of the one of Ketonen, but refers instead to Kleene's influential *Introduction to Metamathematics* of 1952. Kleene had taken up Ketonen's calculus from the Bernays' review and also treated intuitionistic sequent calculus in which invertibility is more restricted than in the classical calculus. With Kleene's book, Gentzen's sequent calculi became generally known and accessible.

Kleene's work of the early 1950s also pioneered a remarkable development in sequent calculus, namely the “contraction-free” classical and intuitionistic calculi today denoted by *G3c* and *G3i*. These calculi have the property that none of Gentzen's original “structural rules” are needed. The rule of “weakening” permits the addition of superfluous cases and assumptions, and the rule of “contraction” the deletion of one copy of a formula if two were present in a list, as in

Analogous rules permit weakening and contraction in the right, succedent parts of sequents. Weakening is made an eliminable rule by letting initial sequents have the form *A*, Γ __→__ Δ, *A* instead of Gentzen's *A* → *A*. Contraction is likewise made eliminable by a suitable formulation of the rules. The import is that in root-first proof search, no rules need be applied that would produce a duplication of a formula in a premiss. Without this result, non-termination of proof search would not follow.

The classical calculus has the property, mentioned above, of height-preserving invertibility of its logical rules. Albert Dragalin refined in the late 1970s the calculus into one in which the structural rules are moreover “height-preserving admissible”, meaning that whenever the premiss of such a rule is derivable, the conclusion is derivable without the rule and with at most the same size (maximum number of rule instances in a derivation branch) of derivation. This property has profound effects on cut elimination: in permuting cut up, Gentzen had to restore the original contexts (the Γ's and Δ's) through weakenings and contractions. With the height-preserving admissibility of these rules, the size of a derivation does not increase when the rules are applied. Dragalin gave also an intuitionistic multisuccedent calculus with the same type of admissibility of the structural rules. Troelstra, finally, gave in the textbook *Basic Proof Theory* (2000, first ed. 1996) a single-succedent intuitionistic calculus with height-preserving admissibility of weakening and contraction. The contraction-free sequent calculi are powerful tools for the analysis of formal derivations. Many difficult research results in logic become just exercises through the control over the structure of proofs that the *G3*\-calculi permit.

The earliest application of sequent calculus in mathematics was in the proof theory of arithmetic, in Gentzen's thesis and in a decisive way in the 1938 proof of the consistency of arithmetic. Troelstra mentions Ketonen's work as

> an early analysis of cutfree proofs in Gentzen calculi with axioms; but he considers the form of cutfree derivations in the pure calculus where axioms are present in the antecedent of the sequents derived. (Troelstra and Schwichtenberg 2000: 142)

The axioms that Ketonen considers are those of projective and affine geometry, the former taken from Skolem's 1920 paper discussed in the first section above. Ketonen wanted to formulate Skolem's formal rules of proof within sequent calculus. However, Ketonen's work was mostly known only through its review by Bernays and only the logical part on sequent calculus was explained in detail there.

A second way to apply the sequent calculus is to let sequents that begin derivation branches have, in addition to initial sequents, also the form __→__ *A*, in which *A* is an axiom, or an instance of a universal axiom. Now, by Gentzen's “extended Hauptsatz”, cuts in derivations can be permuted up until one of their premisses is an axiom, but these cuts on axioms remain. Another, newer method is to convert axioms into extra rules that are added to the logical rules of sequent calculus, with full cut elimination maintained (as explained in Negri and von Plato 2001, chapter 6, and in Troelstra and Schwichtenberg's 2000, chapter 4.7).

## 8\. The aims of proof theory

To what extent has proof theory achieved its original aims? For Hilbert, the aims were a complete clarification of the foundational problems through finitary proofs of consistency, etc, aims in which proof theory failed. Hilbert in his program was not interested in the study of mathematical proofs in themselves, but only in clearing the central foundational problems (and then to forget about them). A recently found note by Hilbert gives a different picture: the note states that Hilbert wanted to add as a 24th and last problem in his famous Paris list of open mathematical problems of 1900 the development of “a theory of proof methods in mathematics”. This was before his metamathematical program for the development of a proof theory emerged.

For Gentzen, the aims were, along with those of Hilbert, to understand the structure of mathematical proofs. This program was a complete success as far as pure logic and arithmetic are concerned. The methods of sequent calculus, especially, permit the analysis of proofs with profound results. The grand aim of proof theory, a proof of the consistency of analysis as in Hilbert's second Paris problem, has not been carried through but is not excluded, either.

Some understanding of the notion of proof is necessary for any mathematician, if for nothing else, then at least for the communicability of mathematical results: publication rests on the understanding that proofs can be made as explicit as to be routinely checkable for correctness. However, proof theory has so far not become a practical tool for the working mathematician; the applications in mathematics have been rather isolated cases. Recent work on formalizing mathematical proofs with computerized systems, called *proof editors*, may gradually change this picture.

Proof theory has created new aims outside traditional mathematics, especially in connection with computer science. Topics such as the verification of correctness of computer programs are an outgrowth of proof theory. Natural deduction has led to the Curry-Howard correspondence and to connections with functional programming, and sequent calculus is often used in systems of automatic proof search, as in logic programming.

[1]: https://plato.stanford.edu/entries/frege/
[2]: https://plato.stanford.edu/entries/hilbert-program/
[3]: https://plato.stanford.edu/entries/reasoning-automated/
[4]: https://plato.stanford.edu/entries/aristotle-logic/
[5]: https://plato.stanford.edu/entries/russell/
[6]: https://plato.stanford.edu/entries/logic-classical/
[7]: https://plato.stanford.edu/entries/epsilon-calculus/
[8]: https://plato.stanford.edu/entries/logic-intuitionistic/
[9]: https://plato.stanford.edu/entries/logic-intuitionistic/
[10]: https://plato.stanford.edu/entries/reasoning-automated/
[11]: https://plato.stanford.edu/entries/epsilon-calculus/
[12]: https://plato.stanford.edu/entries/logic-higher-order/
