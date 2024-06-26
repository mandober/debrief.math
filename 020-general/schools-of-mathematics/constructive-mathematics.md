# Constructive mathematics

- Constructive mathematics by Maarten McKubre-Jordens
https://iep.utm.edu/constructive-mathematics/

Constructive mathematics is positively characterized by the requirement that proof be algorithmic. Loosely speaking, this means that when a (mathematical) object is asserted to exist, an explicit example is given: a constructive existence proof demonstrates the existence of a mathematical object by outlining a method of finding ("constructing") such an object. The emphasis in constructive theory is placed on hands-on provability, instead of on an abstract notion of truth. The classical concept of validity is starkly contrasted with the constructive notion of proof. An implication (A⟹B) is not equivalent to a disjunction (¬A∨B), and neither are equivalent to a negated conjunction (¬(A∧¬B)). In practice, constructive mathematics may be viewed as mathematics done using intuitionistic logic.

With the advent of the computer, much more emphasis has been placed on algorithmic procedures for obtaining numerical results, and constructive mathematics has come into its own. For, a constructive proof is exactly that: an algorithmic procedure for obtaining a conclusion from a set of hypotheses.

The historical and philosophical picture is complex; various forms of constructivism have developed over time. Presented here is a brief introduction to several of the more widely accepted approaches, and is by no means comprehensive.

## Table of Contents

- Motivation and History
  - Example
  - Constructivism as philosophy
  - BHK interpretation
  - Constructive methods in mathematics
  - Early history
  - Axiom of Choice
- Intuitionism
  - Brouwerian counterexamples
  - Fan theorem
- Constructive recursive mathematics
  - Surprises
- Bishop's constructive mathematics
  - Proof readability and preservation of numerical meaning
  - The Axiom of Choice in BISH
  - Foundations and advances
- Martin-Löf type theory
  - The Axiom of Choice is provable
- Constructive reverse mathematics
- Summary
  - Some further remarks
- References and further reading
  - Further reading
  - References

## Motivation and History

The origin of modern constructive mathematics lies in the foundational debate at the turn of the 20th Century. At that time, the German mathematician David Hilbert established some very deep and far-reaching existence theorems using non-constructive methods. Around the same time, the Dutch mathematician L.E.J. Brouwer became philosophically convinced that the universal validity of contradiction proofs for existence proofs was unwarranted-despite his early work in establishing the non-constructive fixed point theorem which now bears his name.

It is often the case that a classical theorem becomes more enlightening when seen from the constructive viewpoint. It would, however, be unfair to say that constructive mathematics is revisionist in nature. Indeed, Brouwer proved his Fan Theorem intuitionistically (Brouwer, 1927), but the first proof of König's Lemma - its classical equivalent - appeared almost a decade later (König, 1936).

It is ironic that the Brouwer's intuitionist position has become known as anti-realist since it demands that every object be *explicitly constructible*.

A *proof is non-constructive*, e.g., if it shows non-existence of some object, but leaves us without the knowledge how to translate it into an algorithm.

## Constructivism as philosophy

Constructive mathematics is often mis-characterized as classical mathematics without the axiom of choice; or classical mathematics without the Law of Excluded Middle (LEM).

But seen from within the discipline, constructive mathematics is positively characterized by a *strict provability* requirement. The consequences of adopting this stance - and rigorously implementing it - are far-reaching.

Two conditions are fundamental to every constructivist philosophy:
- The notion of *truth* is not taken as primitive; rather, a proposition is considered true only when a proof for the proposition is produced.
- The notion of *existence* is taken to be *constructibility*: when an object is proved to exist, the proof also exhibits how to find it.

To assert that P, then, is to produce a proof that P. Likewise, to assert that ¬P is to prove that the assumption of P leads to a contradiction, ¬P = P → ⊥.

Quickly, one realizes that the Principle of Excluded Middle leads to trouble:

    For any statement P, either P or ¬P.

The assertion of LEM constructively amounts to claiming that, for any given statement P, either there is a proof of P, or there is a proof that P leads to a contradiction, ¬P = P → ⊥.

Consider, for example, the the Collatz conjecture... <snippet missing>

At the time of writing this article, the Collatz conjecture remains unsolved. To claim that there is a proof of it is erroneous; likewise to claim that there is a proof that it leads to a contradiction is also erroneous. In fact, in Brouwer's view (see Section 2), to assert LEM is to claim that any mathematical problem has a solution. Thus there are good philosophical grounds for rejecting PEM.

## BHK interpretation

The following interpretation of logical connectives is now known as the Brouwer-Heyting-Kolmogorov (BHK) interpretation, and is widely accepted by constructivists.

(...)


In particular, the interpretations for ¬,∨,⟹ and ∃ are worth emphasizing: each of these has the very strict requirement that a proof of such a statement will consist of a decision procedure-in other words, every constructive proof contains, in principle, an algorithm.

The BHK interpretation characterizes a logic called intuitionistic logic. Every form of constructive mathematics has intuitionistic logic at its core; different schools have different additional principles or axioms given by the particular approach to constructivism.

## Constructive methods in mathematics
Upon adopting only constructive methods, we lose some powerful proof tools commonly used in classical mathematics. We have already seen that the Principle of Excluded Middle is highly suspect from the constructivist viewpoint, as (under the BHK interpretation) it claims the existence of a universal algorithm to determine the truth of any given statement. This is not to say that PEM is constructively false, however. Both Russian recursive mathematics (in which PEM is provably false) and classical mathematics (in which it is logically true) are in a sense models, or interpretations, of constructive mathematics. So in a way, PEM is independent of constructive mathematics. Note, however, that if one is given a statement, it may be possible to prove PEM concerning that particular statement-such statements are called decidable. The point is that there is no general constructive method for doing so for all statements.

If PEM is not universally valid we also lose universal applicability of any mode of argument which validates it. For example, double negation elimination, or proof by contradiction. Again, it must be emphasized that it is only the universal applicability which is challenged: proof by contradiction is constructively just fine for proving negative statements; and double negation elimination is just fine for decidable statements.

However these limitations are in fact often advantages. In a lot of cases, constructive alternatives to non-constructive classical principles in mathematics exist, leading to results which are often constructively stronger than their classical counterpart. For example, the classical least upper bound principle (LUB) is not constructively provable:

LUB: Any nonempty set of real numbers that is bounded from above has a least upper bound.

The constructive least upper bound principle, by contrast, is constructively provable (Bishop & Bridges, 1985, p. 37):

CLUB: Any order-located nonempty set of reals that is bounded from above has a least upper bound.

A set is order-located if given any real x, the distance from x to the set is computable.
It is quite common for a constructive alternative to be classically equivalent to the classical principle; and, indeed, classically every nonempty set of reals is order-located.

To see why LUB is not provable, we may consider a so-called Brouwerian counterexample (see Section 2a), such as the set

S={x∈R:(x=2)∨(x=3∧P)}

where P is some as-yet unproven statement, such as Goldbach's conjecture that every even number greater than 2 is the sum of two prime numbers. (There may be some philosophical problems with this set; however these do not matter for the purpose of this example. Section 2a has a much "cleaner", though more technically involved, example.) If the set S had a computable least upper bound, then we would have a quick proof of the truth or falsity of Goldbach's conjecture. A Brouwerian counterexample is an example which shows that if a certain property holds, then it is possible to constructively prove a non-constructive principle (such as PEM); and thus the property itself must be essentially non-constructive.

Early history
In the late 19th century, the mathematical community embarked on a search for foundations: unquestionable solid ground on which mathematical theorems could be proved. An early exemplar of this search is Kronecker's 1887 paper "Über den Zahlbegriff" ("On the Concept of Number") (Kronecker, 1887), where he outlines the project of arithmetization (that is, founding on the fundamental notion of number) of analysis and algebra. It is perhaps in this work that we see the earliest instance of the constructive manifesto in mathematical practice. Kronecker was famously quoted by Weber (1893) as saying "Die ganzen Zahlen hat der liebe Gott gemacht, alles andere ist Menschenwerk." ("The integers were made by God; all else is the work of man.")

It has been said that "almost all mathematical proofs before 1888 were essentially constructive." (Beeson, 1985, p. 418). This is not to say that constructive mathematics, as currently conceived of, was common practice; but rather that the natural interpretation of existence of the time was existence in the constructive sense. As mathematical concepts have changed over time, however, old proofs have taken on new meaning. There are thus plenty of examples of results which are today regarded as essentially non-constructive, but seen within the context of the period during which they were written, the objects of study that the authors had in mind allowed proofs of a constructive nature. One good example of this is Cauchy's 1821 proof of the Intermediate Value Theorem (Cauchy, 1821; in Bradley & Sandifer, 2009, pp. 309-312); the classical interval-halving argument. The concept of "function" has, since then, expanded to include objects which allow for Brouwerian counterexamples (see Section 2a).

The first major systematic development of a constructive approach to mathematics is that of Brouwer and the intuitionists, introduced in the next major section. Some notable forerunners (who should perhaps not be thought of as intuitionists themselves) were Henri Poincaré, who argued that mathematics is in a way more immediate than logic, and Emile Borel, who maintained that the only objects that concern science are those that can be effectively defined (Borel, 1914). Poincaré argues that intuition is a necessary component of mathematical thought, rejects the idea of an actual infinite, and argues that mathematical induction is an unprovable fact (Poincaré, 1908).

As a result of techniques from ZF set theory, rigorous proofs have over time taken on non-constructive aspects. David Hilbert, contemporary of Brouwer and an opponent of Brouwer's philosophy, deserves particular mention, since he was an early pioneer of highly non-constructive techniques. The debate between Brouwer and Hilbert grew fierce and controversial, which perhaps added fuel to the development of both constructivism (à la Brouwer) and formalism (à la Hilbert) (see, for example, van Heijenoort, 1976). The spectacular 1890 proof by Hilbert of his famous basis theorem (Hilbert, 1890), showing the existence of a finite set of generators for the invariants of quantics, was greeted by the German mathematician Gordan with another now-(in)famous phrase: "Das ist nicht Mathematik. Das ist Theologie." ("That is not Mathematics. That is Theology.") This is perhaps the most dramatic example of a non-constructive proof, relying on PEM in an infinite extension.

The method Hilbert exhibited there has become widely accepted by the mathematics community as a pure existence proof (that is, proving that non-existence of such an object was contradictory without actually exhibiting the object); however it was not admissible as a constructive technique. Weyl, one of Hilbert's students (who Hilbert would eventually "lose"-perhaps temporarily-to intuitionism) commented on pure existence proofs, that they "inform the world that a treasure exists without disclosing its location" (Weyl, 1946). The Axiom of Choice, perhaps due in part to its regular use in many non-constructive proofs (and heavily implicated in many of Hilbert's most influential proofs), has been accused of being the source of non-constructivity in mathematics.

## The Axiom of Choice

The Axiom of Choice (AC) has been controversial to varying degrees in mathematics ever since it was recognized by Zermelo (1904). Loosely, it states that given a collection of non-empty sets, we can choose exactly one item from each set.


AC: If to each x in A there corresponds a y in B, then there is a function f such that f(x) is in B whenever x is in A.

Formally, given non-empty sets A and B, the Axiom may be stated as:

∀x∈A∃y∈BP(x,y)⟹∃f∈BA∀x∈AP(x,f(x)).

Intuitively, this seems almost trivial, and the case where the non-empty sets are finite in size is indeed so, since one does not need the axiom of choice to prove that such a choice can be made in most formulations of set theory. However it becomes less clear when the size of the sets involved is very large or somehow not easily determined. In such cases, a principled, functional choice may not necessarily be made. Even in classical mathematics, the axiom of choice is occasionally viewed with some suspicion: it leads to results that are surprising and counterintuitive, such as the Banach-Tarski paradox: using the axiom of choice allows one to take a solid sphere in 3-dimensional space, decompose it into a finite number of non-overlapping pieces, and reassemble the pieces (using only rotations and translations) into two solid spheres, each with volume identical to the original sphere. Due to its controversial nature, many mathematicians will explicitly state when and where in their proof AC has been used.


Nonetheless, the BHK interpretation of the quantifiers seems to invite one to think about the existential quantifier ∃y∈B as defining the choice function, and so it would seem very natural to adopt AC from the constructive point of view (see, however, the discussion in Sections 4b and 5a). But consider the set S given by

S={x∈Z:(x=0∧P)∨(x=1∧¬P)}

for some syntactically correct statement P. This set is not empty, since if it were then both P and ¬P would have to be false; so ¬P∧¬¬P, a contradiction. Similarly, S cannot contain both 0 and 1. But suppose that we had an algorithmic procedure which (in a finite time) returns an element of S for us. If it returns 0, then we know that P must be true; whereas if it returns 1 then we know that P must be false-and thus we will have proved that P∨¬P. We may repeat this for any statement, and so this amounts to a (constructive) proof of the universal applicability of PEM. And as we have seen, universal applicability of PEM is not constructively acceptable. Thus, while the set S is non-empty, we cannot necessarily exhibit any of its members either. A set which has constructible members is called inhabited, and the distinction between inhabited and non-empty sets is key in constructive set theories. Related is the issue of the size of S; since S is not empty, its size is not 0, but since S is not (necessarily) inhabited, its size is no other natural number either-S is an at-most-singleton set. It is a consquence of AC, in fact, that every non-empty set is inhabited.

It is no coincidence that the symbolic form of AC suggests that it is essentially a quantifier swap: AC states that if to each element of A an element of B can be assigned, then it can be done so in a systematic (algorithmic) way. It is thus a kind of uniformity principle.

The example set S above is known as a Brouwerian example (although most of Brouwer's examples of this sort were a little more specific-see below). It is to intuitionism, Brouwer's philosophy of mathematics, that we now turn.

2. Intuitionism
If there is a name synonymous with constructive mathematics, it is L.E.J. Brouwer (Luitzen Egbertus Jan Brouwer; Bertus to his friends). In his doctoral thesis, Over de Grondslagen der Wiskunde (On the Foundations of Mathematics; Brouwer, 1907), Brouwer began his program of laying the foundations of constructive mathematics in a systematic way. Brouwer's particular type of constructive mathematics is called "intuitionism" or "intuitionistic mathematics" (not to be confused with intuitionistic logic; recall Section 1c).

Shortly after the presentation of his thesis, Brouwer wrote a paper entitled "De onbetrouwbaarheid der logische principes" ("The Untrustworthiness of the Principles of Logic"; Brouwer, 1908), in which he challenged the absolute validity of classical logic: "De vraag naar de geldigheid van het principium tertii exclusi is dus aequivalent met de vraag naar de mogelijkheid van onoplosbare wiskundige problemen." ("The question of validity of the principle of excluded third is equivalent to the question of the possibility of unsolvable mathematical problems."; Brouwer, 1908, p. 156) In other words, PEM is valid only if there are no unsolvable mathematical problems.

In intuitionistic mathematics, mathematics is seen as a free creation of the human mind: a (mathematical) object exists just in case it can be (mentally) constructed. This immediately justifies the BHK interpretation, since any existence proof cannot be a proof-by-contradiction-the contradiction leaves us without a construction of the object.

According to Brouwer, the natural numbers and (perhaps surprisingly) the continuum, are primitive notions given directly by intuition alone. This connects to the idea of what Brouwer called free choice sequence, a generalization of the notion of sequence. It is perhaps ironic that when Brouwer initially encountered the idea of a free choice sequence, which had been a mathematical curiosity at the time, he rejected such sequences as non-intuitionistic (Brouwer, 1912). However, soon afterward he accepted them and was the first to discover how important they were to practical constructive mathematics (Brouwer, 1914). This is one of two major aspects which distinguishes intuitionistic mathematics from other kinds of constructive mathematics (the second being Brouwer's technique of bar induction, which we do not explain in great depth here; though see Section 2b).

A free choice sequence is given by a constructing agent (Brouwer's creative subject), who is at any stage of the progression of a sequence free to choose (or subject to mild restrictions) the next member of the sequence. For example, if one is asked to produce a binary free choice sequence, one may start "000…0" for a hundred digits, and then (perhaps unexpectedly) freely choose "1" as the next digit. A real number, classically thought of as a (converging) Cauchy sequence, thus need not be given by a determinate rule; instead, it is only subject to a Cauchy restriction (that is, some rate of convergence).

The idea of a free choice sequence leads to some very strong commitments. Not immediately obvious is the principle of continuous choice. It states:

  If P⊆NN×N and for each x in NN there exists n in N such that (x,n) is in P, then there is a choice function f:NN→N such that (x,f(x)) is in P for all x in NN.

The notation BA, where A and B are sets, denotes the collection of functions from A to B. So NN denotes the collection of functions from natural numbers; the arguments x in question are thus actually functions x:N→N. One may conceive of these (as Brouwer did) as sequences of natural numbers; further technical details are omitted.

Intuitively, the principle arises from the following considerations. Let P⊆NN×N and suppose that we have a procedure that we may apply to any given sequence x=x1,x2,x3,… of natural numbers which computes an index n such that (x,n)∈P-that is, P is a set in which every sequence of natural numbers is (constructively) paired with some natural number. Under the intuitionist's view, at any given moment we may have only a finite number of terms of x at hand. The procedure which computes n such that (x,n)∈P must thus do so after being given only a finite initial fragment of x; say x1,x2,…,xm. Now if we are given another sequence y, if the first m terms of y are the same as those of x (that is, if y is "close" to x in some sense), then the procedure must return the same value of n for y as it would give for x. The procedure is thus a continuous function (the choice function) from NN to N.

The principle of continuous choice is a restricted form of the classical axiom of choice (see Section 1f). This principle (together with the BHK interpretation) gives rise to a number of very strong consequences-perhaps the most (in)famous being that every function f:R→R which maps the real line into itself is pointwise continuous.

If this seems outlandish, then remember that in intuitionistic mathematics the very ideas of "function" and "real number" are different from their classical counterparts. We now discuss a technique that originated with Brouwer which justifies, to some extent, these conceptions.

a. Brouwerian counterexamples
As we have seen, Brouwer rejected the principle of excluded middle. The intuitionist school further rejects appeal to so-called omniscience principles; logical principles which allow one to decide the truth of predicates over an infinite number of things. An illuminating example of such a principle is the limited principle of omniscience (LPO), which states that:

For each binary sequence a1a2a3…, either an=0 for all natural numbers n or there exists a natural number n such that an=1.

In symbols LPO states that, for any given binary sequence a1a2a3…, the following statement is decidable:

∀n(an=0)∨∃n(an=1).

For one familiar with computability, the above statement will already appear problematical. It says that there is an algorithm which, given an arbitrary binary sequence will in finite time determine either that all the terms in α are zero, or it will output an n such that an=1. Since computers have a finite memory capacity, the problem of loss of significance (or underflow) occurs: the computer carrying out the calculation may not carry enough digits of the sequence to determine whether a 1 occurs or not (though see Section 3).

However, (modern) computational issues aside, this was not the problem seen by the intuitionist. To Brouwer, the possible existence of choice sequences made this statement unacceptable. Since a constructing agent is free to insert a 1 while constructing a sequence at any stage of the construction, there is no a priori bound on how many terms one may need to search in order to establish the presence, or lack of, a 1.

Thus we see that the lesser principle of omniscience does not apply to binary sequences in intuitionist mathematics. Let us now turn to the real numbers. The decimal expansion of π is a favourite example. There are well-known algorithms for computing π to arbitrary precision, limited only by the power of the device on which the algorithms run. At the time of writing this article, it is unkown whether a string of 100 successive 0s (that is, 000…0, with 100 digits) appears in the decimal expansion of π. It is known that π does not have a terminating decimal expansion (so it does not finish in all 0s) and that it has no systematic repetition (since it is not a rational number).

But suppose we define a real number x by the expansion

x=∑n=1∞(−12)nan

where an is defined as

an={01if a hundred consecutive 0s have not occurred by the nth digit of π's expansionotherwise.

The number x is constructible: we have prescribed an algorithm for computing it to any desired precision. It also has a Cauchy condition-the 1/2n part-which ensures it converges. However, we now have a problem as regards the sign of x: if a hundred consecutive 0s never occur in the decimal expansion of π, then x=0. If a hundred consecutive 0s do occur in the decimal expansion of π, and the hundredth such 0 occurs in an odd place, then x<0; whereas if it occurs in an even place then x>0. So if we have an answer to the question whether such a string occurs in the decimal expansion of π, then we can determine whether x=0 or not; however, since we do not have an answer, we cannot conclude that x>0, or x=0, or x<0.

The previous paragraph is a Brouwerian counterexample to the statement "every real number satisfies the law of trichotomy". Trichotomy is exactly the decision (disjunction) that every real number is either positive, zero, or negative. Under Brouwer's view, we may construct real numbers about which we simply do not have enough information at hand-even in principle-to determine their sign.

The Fan Theorem
In addition to the use of intuitionistic logic and the principle of continuous choice, Brouwer's intuitionism involves one final central technique, bar induction. It is a technically challenging idea which we do not cover in depth here (see Beeson, 1985, p. 51 or Troelstra & van Dalen, 1988, p. 229 for detail; see also Bridges, Dent & McKubre-Jordens, 2012). Bar induction is a key principle which allowed Brouwer to prove his Fan Theorem; we will outline the theorem for the binary fan, demonstrating the significance of the fan theorem.

The (complete) binary fan is the collection of all (finite) sequences of 0s and 1s (including the empty sequence). Diagrammatically, we may draw a tree-like diagram (the "fan") with a binary split for each branch at each level; one branch corresponds to 0, another to 1. A path through the binary fan is a sequence (finite or infinite) of 0s and 1s. Compare then:

A bar of the binary fan is a set of `cut-offs', such that for each infinite path α through the fan there exists a natural number n such that the first n terms of α are `in the bar'.
A bar of the binary fan is uniform if there exists a natural number N such that for each infinite path α through the fan, there is some k≤N such that the first k terms of α are in the bar.
Note the quantifier shift: we go from "for each path there exists n…" to "there exists N such that for each path …". Brouwer's fan theorem for the binary fan then states that

FAN: Every bar of the binary fan is uniform.

The classical contrapositive of the fan theorem, well-known in graph theory, is König's Lemma: if for every n there exists a path of length n which does not hit the bar, then there exists an infinite path that is not in the bar.

As mentioned, the fact that Brouwer's proof of the fan theorem (1927) was published nine years before König's proof of his Lemma (1936) shows the innaccuracy of the criticism sometimes held that constructive mathematics is revisionist. Indeed, as is shown by the Gödel-Gentzen negative translation (Gödel, 1933), every classical theorem may be translated into a constructive theorem (some of which are not very informative); and so constructive mathematics can be interpreted as a generalization of classical mathematics. If one adds PEM to intuitionistic logic, then the full classical system is recovered. (Of course, the reverse view may also be argued for-that classical mathematics is a generalization of constructive methods.)

3. Constructive recursive mathematics
In the 1930s, amidst developments in what is now known as computer science, concepts of algorithmic computability were formalised. The well-known Turing machines, λ-calculus, combinatory logic and the like arose. These were proved to be equivalent, leading Church, Turing and Markov to postulate the thesis now known as the Church-Markov-Turing thesis (or the Church-Turing thesis, or simply Church's thesis):

CMT: a function is computable if and only if it is computable by a Turing machine.

Markov's work, based in what he called normal algorithms (now known as Markov algorithms; Markov, 1954) was essentially recursive function theory employing intuitionistic logic. In this type of constructive mathematics, the groundwork for which was done in the 40s and 50s, Church's thesis is accepted as true (as it is to classical mathematicians, by and large). Moreover, in Markov's school, Markov's Principle of unbounded search is accepted:

MP: For any binary sequence, if it is impossible that all the terms are zero, then there exists a term equal to 1.

This reflects the idea that if it is contradictory for all the terms to be zero, then (although we do not have an a priori bound on how far in the sequence we must seek) eventually any machine that is looking for a 1 will find one in finite (possibly large) time.

While MP may seem like a kind of omniscience principle, there is a distinct difference: the implication P→Q is, under the BHK interpretation, weaker than the disjunction ¬P∨Q. An algorithm which takes any (correct) proofs of P and turns them into (correct) proofs of Q does not leave us any the wiser which of ¬P or Q is actually the case. In part because of this, the constructive status of this principle is not so clear. While the omniscience principles are not accepted by any school of constructivism, there is at least pragmatic (that is, computer-implementable) reason to admit MP: the algorithm which will compute the 1 in a binary sequence for which it is impossible that all terms are 0 is simply to carry on the process of writing the sequence down until you come across a 1. Of course, MP does not provide a guarantee that a 1 will be found in a sequence before, say, the extinction of the human race, or the heat death of the universe.

Recursive function theory with intuitionistic logic and Markov's principle is known as Russian recursive mathematics. If Markov's principle is omitted, this leaves constructive recursive mathematics more generally-however, there appear to be few current practitioners of this style of mathematics (Beeson, 1985, p. 48).

A central tenet of recursive function theory, is the following axiom of Computable Partial Functions:

CPF: There is an enumeration of the set of all computable partial functions from N to N with countable domains.

Much may be deduced using this seemingly innocuous axiom. For example, PEM (and weakenings thereof, such as LPO) may be shown to be (perhaps surprisingly) simply false within the theory.

a. Surprises
Constructive recursive mathematics presents other surprises as well. Constructivists are already skeptical about PEM, LPO, and other wide-reaching principles. However, some amazing (and classically contradictory) results can be obtained, such as Specker's theorem (Specker, 1949):

Theorem.
There exists a strictly increasing sequence (xn)n≥1 of rational numbers in the closed interval [0,1] that is eventually bounded away from each real number in [0,1].

To be `eventually bounded away from a number x' means that, given the number x, one may calculate a positive integer N and a positive distance δ such that the distance from x to xk is at least δ whenever k≥N.

Of course such sequences cannot be uniformly bounded away from the whole of [0,1], otherwise they could not progress within [0,1] past this uniform bound (again, there is a quantifier swap, from the pointwise property ∀x∃N,δ to the uniform property ∃N,δ∀x-recall Section 2b). While it seems like a contradictory result, the theorem becomes clear when one considers the objects of study: sequences (and functions) and real numbers, are recursive sequences and real numbers; so Specker sequences are sequences which classically converge to non-recursive numbers.

Another interesting result is the constructive existence, within this theory, of a recursive function from [0,1] to the reals which is everywhere pointwise continuous yet not uniformly continuous (as such a function would be both classically and intuitionistically, as a consequence of Brouwer's fan theorem).

4. Bishop's constructive mathematics
In 1967 Errett Bishop published the seminal monograph Foundations of Constructive Analysis (Bishop, 1967). Not only did this assuage the worries expressed by some leading mathematicians (such as Weyl) about the feasibility of constructive proofs in analysis, but it helped lay the foundation for a programme of mathematical research that has flourished since. It captures the numerical content of a large part of the classical research programme and has become the standard for constructive mathematics in the broader sense, as we will shortly see.

a. Proof readability and preservation of numerical meaning
Bishop refused to formally define the notion of algorithm in the BHK interpretation. It is in part this quality which lends Bishop-style constructive mathematics (BISH) the following property: every other model of constructive mathematics, philosophical background notwithstanding, can be seen as an interpretation of Bishop's constructive mathematics where some further assumptions have been added. For example, intuitionistic mathematics is BISH together with bar induction and continuous choice; and (Russian) constructive recursive mathematics is BISH together with the Computable Partial Functions axiom and Markov's Principle. Even classical mathematics-or mathematics with classical two-valued logic-can be seen as a model of Bishop-style constructive mathematics where the principle of excluded middle is added as axiom.

Another factor that contributes to this versatility is the fact that Bishop did not add extra philosophical commitments to the programme of his constructive mathematics, beyond the commitment of ensuring that every theorem has numerical meaning (Bishop, 1975). The idea of preserving numerical meaning is intuitive: the numerical content of any fact given in the conclusion of a theorem must somehow be algorithmically linked to (or preserved from) the numerical content of the hypotheses. Thus BISH may be used to study the same objects as the classical mathematician (or the recursive function theorist, or the intuitionist). As a result, a proof in Bishop-style mathematics can be read, understood, and accepted as correct, by everyone (Beeson, 1985, p. 49) (barring perhaps the paraconsistentists, for whom the disjunctive syllogism, weakening, and contraction-accepted under BHK-portend trouble).

At heart, Bishop's constructive mathematics is simply mathematics done with intuitionistic logic, and may be regarded as "constructive mathematics for the working mathematician" (Troelstra & van Dalen, 1988, p. 28). If one reads a Bishop-style proof, the classical analyst will recognize it as mathematics, even if some of the moves made within the proof seem slightly strange to those unaccustomed to preserving numerical meaning. Further, BISH can be interpreted in theories of computable mathematics, such as Weihrauch's Type 2 effectivity theory (Weihrauch, 2000).

b. The Axiom of Choice in BISH
One (in)famous claim Bishop makes is that "A choice function exists in constructive mathematics, because a choice is implied by the very meaning of existence" (Bishop & Bridges, 1985, p. 12). The axiom is in fact provable in some constructive theories (see Section 5). However, Diaconescu has shown that AC implies PEM, so it would seem that constructivists ought to accept PEM after all (the proof in Diaconescu (1975) is actually remarkably simple). And as we have seen, for some constructivists it would actually be inconsistent to accept PEM. It thus seems that AC, while very important, presents a significant problem for constructivists. However, as we now discuss, such a conclusion is hasty and unjustified.

The key observation to make regards the interpretation of the quantifiers. AC comes out as provable only when we interpret the quantifiers under BHK: for then the hypothesis ∀x∈A∃y∈BP(x,y) says that there is an algorithm which takes us from elements x of A together with the data that x belongs to A, to an element y of B. Thus only if there is no extra work to be done beyond the construction of x in showing that x is a member of A (that is, if this can be done uniformly) will this be a genuine function from A to B. We will revisit this in Section 5. Thus the classical interperatation of AC is not valid under BHK, and PEM cannot be problematically derived.

Let us return to Bishop's statement at the start of this section, regarding the existence of a choice function being implied by the meaning of existence. The context in which his claim was made illuminates the situation. The passage (Bishop & Bridges, 1985, p. 12) goes on to read: "[Typical] applications of the axiom of choice in classical mathematics either are irrelevant or are combined with a sweeping use of the principle of omniscience." This also shows that blaming the axiom of choice for non-constructivity is actually a mistake-it is the appeal to PEM, LPO, or similar absolute principles applied to objects other than the finite which prevent proof from being thoroughly algorithmic. Some constructive mathematicians adopt various weakenings of AC which are (perhaps) less contentious; Brouwer, as we saw in Section 2, adopts Continuous Choice.

c. Foundations & Advances
Bishop's view is that the Gödel interpretation of logical symbols accurately describes numerical meaning (Bishop, 1970). This view does not appear to have retained much traction with practitioners of BISH (Beeson, 1985, p. 49). Leaving the question of foundations open is, as mentioned, partly responsible for the portability of Bishop-style proofs.

Some work has been done on founding BISH. A set-theoretic approach was proposed in Myhill (1975) and Friedman (1977); Feferman (1979) suggested an approach based on classes and operations. Yet another approach is Martin-Löf's theory of types, which we visit in Section 5.

The Techniques of Constructive Analysis book (Bridges & Vîta, 2006) develops a Bishop-style constructive mathematics that revisits and extends the work from Bishop (1967) in a more modern setting, showing how modern proof techniques from advanced topics such as Hilbert spaces and operator theory can be successfully covered constructively. It is interesting to observe that, as a rule of thumb, the more ingenious a proof looks, the less explicit numerical content it tends to contain. Thus such proofs are usually more difficult to translate into constructive proofs. Of course there are exceptions, but the comparison between (say) Robinson's nonstandard analysis and Bishop's constructive methods appears to be a confusion between elegance and content propagated by some authors; see, for example, Stewart (1986) and Richman (1987).

5. Martin-Löf Type Theory
In 1968, Per Martin-Löf published his Notes on Constructive Mathematics (Martin-Löf, 1968). It encapsulates mathematics based on recursive function theory, with a background of the algorithms of Post (1936).

However he soon revisited foundations in a different way, which harks back to Russell's type theory, albeit using a more constructive and less logicist approach. The basic idea of Martin-Löf's theory of types (Martin-Löf, 1975) is that mathematical objects all come as types, and are always given in terms of a type (for example, one such type is that of functions from natural numbers to natural numbers), due to an intuitive understanding that we have of the notion of the given type.

The central distinction Martin-Löf makes is that between proof and derivation. Derivations convince us of the truth of a statement, whereas a proof contains the data necessary for computational (that is, mechanical) verification of a proposition. Thus what one finds in standard mathematical textbooks are derivations; a proof is a kind of realizability (c.f. Kleene, 1945) and links mathematics to implementation (at least implicitly).

The theory is very reminiscent of a kind of cumulative hierarchy. Propositions can be represented as types (a proposition's type is the type of its proofs), and to each type one may associate a proposition (that the associated type is not empty). One then builds further types by construction on already existing types.

a. The Axiom of Choice is provable
Within Martin-Löf type theory, the axiom of choice, stated symbolically as

∀x∈A∃y∈BP(x,y)⟹∃f∈BA∀x∈AP(x,f(x))

is derivable. Recall that this would be inconsistent, if AC were interpreted classically. However the axiom is derivable because in the construction of types, the construction of an element of a set (type) is sufficient to prove its membership. In Bishop-style constructive mathematics, these sets are "completely presented", in that we need to know no more than an object's construction to determine its set membership. Under the BHK interpretation, the added requirement on the proof of ∀x∈AP(x) that the algorithm may depend also on the data that x belongs to A and not just on the construction of x itself is thus automatically satisfied.

It is worth noting that sets construed in this theory are constrained by this realizability criterion. For example, in Martin-Löf's theory, the power set axiom is not accepted in full generality-the power set of N, for example, is considered to be what would in classical theory be called a class, but not a set (Martin-Löf, 1975).

6. Constructive Reverse Mathematics
The program of Reverse Mathematics, instigated by Harvey Friedman (1975), aims to classify theorems according to their equivalence to various set-theoretic principles. The constructive equivalent was begun in a systematic manner by Ishihara (2006) and, separately and independently by W. Veldman in 2005.

The field has since had numerous developments, the interest of which lies mainly in the metamathematical comparison of different branches of constructive mathematics and the logical strengths of various principles endorsed or rejected by the different schools. This also points to the requirements on computational data for various properties to hold, such as various notions of compactness (Diener, 2008).

Principles whose classification is of interest include:

The Uniform Continuity Theorem (UCT): Every pointwise continuous mapping of the closed interval [0,1] into R is uniformly continuous.
Brouwer's fan theorem, and various weakenings thereof. (There is actually a hierarchy of fan theorems; see, for example, Diener, 2008.)
The Anti-Specker property (AS): A sequence (zn)n≥1 of real numbers in [0,1] that is eventually bounded away from each point of [0,1] is eventually bounded away from all of [0,1] (recall the discussion in Section 3a).
Omniscience principles.
It should be noted that arguably the first author dealing with reverse-mathematical ideas was Brouwer, although he certainly would not have seen it as such. The weak counterexamples (see Section 2a) he introduced were of the form: P implies some non-constructive principle. Though Brouwer may have been aware of the possibility of reversing the implication in many cases, to him non-constructive principles were meaningless and as such the full equivalence result would be of little interest.

7. Summary
The philosophical commitments of constructivist philosophies (Section 1b) are:

Truth is replaced by (algorithmic) proof as a primitive notion, and
Existence means constructibility.
This naturally leads to intuitionistic logic, characterized by the BHK interpretation (Section 1c). Omniscience principles, such as the Principle of Excluded Middle (PEM), and any mode of argument which validates such principles, are not in general valid under this interpretation, and the classical equivalence between the logical connectives does not hold.

Constructive proofs of classical theorems are often enlightening: the computational content of the hypotheses is explicitly seen to produce the conclusion. While intuitionistic logic places restrictions on inferences, the larger part of classical mathematics (or what is classically equivalent) can be recovered using only constructive methods (Section 4); there are often several constructively different versions of the same classical theorem.

The computational advantage of constructive proof is borne out in two ways. Constructive proofs:

embody (in principle) an algorithm (for computing objects, converting other algorithms, etc.), and
prove that the algorithm they embody is correct (that is, that it meets its design specification).
The programme of constructive reverse mathematics (Section 6) connects various principles and theorems (such as omniscience principles, versions of the fan theorem, etc.), shedding light on constructive or computational requirements of theorems. Furthermore, the use of Brouwerian counterexamples (Section 2a) often allows the mathematician to distinguish which aspects of classical proof are essentially nonconstructive.

Throught the article, several schools of constructivism are outlined. Each is essentially mathematics with intuitionistic logic, philosophical differences notwithstanding. Different schools add different further axioms: for example, (Russian) constructive recursive mathematics (Section 3) is mathematics with intuitionistic logic, the computable partial functions axiom (and Markov's principle of unbounded search). Classical mathematics can be interpreted as Bishop's constructive mathematics, with PEM added.

a. Some Further Remarks
The contrast between classical and constructive mathematicians is clear: in order to obtain the numerical content of a proof, the classical mathematician must be careful at each step of the proof to avoid decisions that cannot be algorithmically made; whereas the constructive mathematician, in adopting intuitionistic logic, has automatically dealt with the computational content carefully enough that an algorithm may be extracted from their proof.

In an age where computers are ubiquitous, the constructivist programme needs even less (pragmatic) justification, perhaps, than the classical approach. This is borne out by the successful translation of constructive proofs into actual algorithms (see, for example, Schwichtenberg (2009) and Berger, Berghofer, Letouzey & Schwichtenberg (2006)). The link between programming and abstract mathematics is stronger than ever, and will only strengthen as new research emerges.

8. References and Further reading
a. Further Reading
An overview of constructivism in mathematics is given in both Troelstra & van Dalen (1988), and Beeson (1985). For further reading in intuitionism from a philosophical perspective, Dummett's Elements (1977) is the prime resource. The Bishop and Bridges book (1985) is the cornerstone textbook for the Bishop-style constructivist. For the finitist version, see Ye (2011), where it is shown that even a strict finitist interpretation allows large tracts of constructive mathematics to be realized; in particular we see application to finite things of Lebesgue integration, and extension of the constructive theory to semi-Riemannian geometry. For advances and techniques in Bishop-style mathematics, see Bridges & Vîta (2006). For an introduction to constructive recursive function theory, see Richman (1983); Bridges & Richman (1987) expounds the theory relative to other kinds of constructive mathematics. For an introduction to computable analysis, see, for example, Weihrauch (2000). For topology, Bridges & Vîta (2011) outlays a Bishop-style development of topology; Sambin (1987) and (2003) are good starting points for further reading in the recent development of point-free (or formal) topology.

b. References
Beeson, M. (1985). Foundations of constructive mathematics. Heidelberg: Springer-Verlag.
Berger, U., Berghofer, S., Letouzey, P. & Schwichtenberg, H. (2006). Program extraction from normalization proofs. Studia Logica, 82, 25-49.
Bishop, E. (1967). Foundations of constructive analysis. New York: Academic Press.
Bishop, E. (1970). Mathematics as a numerical language. In A. Kino, J. Myhill & R. E. Vesley (Eds.), Intuitionism and proof theory: proceedings of the summer conference at Buffalo, New York, 1968 (pp. 53-71). Amsterdam: North-Holland.
Bishop, E. (1973). Schizophrenia in contemporary mathematics. Amer. Math. Soc. Colloquium Lectures. Missoula: University of Montana. Reprinted in: Rosenblatt, M. (1985). Errett bishop: reflections on him and his research. (M. Rosenblatt. & E. Bishop, Eds.) Amer. Math. Soc. Memoirs 39.
Bishop, E. (1975). The crisis in contemporary mathematics. Historia Mathematica, 2(4), 507-517.
Bishop, E. & Bridges, D. S. (1985). Constructive analysis. Berlin: Springer-Verlag.
Borel, E. (1914). Leçons sur la théorie des fonctions (2nd ed.). In French. Paris: Gauthier-Villars.
Bradley, R. E. & Sandifer, C. E. (2009). Cauchy's cours d'analyse. New York: Springer.
Bridges, D. & Richman, F. (1987). Varieties of constructive mathematics. London Math. Soc. Lecture Notes 97. Cambridge: Cambridge University Press.
Bridges, D. S. & Vîta, L. S. (2006). Techniques of constructive analysis. Universitext. Heidelberg: Springer-Verlag.
Bridges, D. S. & Vîta, L. S. (2011). Apartness and uniformity: a constructive development. Heidelberg: Springer.
Bridges, D. S., Dent, J. & McKubre-Jordens, M. (2012). Two direct proofs that LLPO implies the detachable Fan Theorem. Preprint.
Brouwer, L. E. J. (1907). Over de grondslagen der wiskunde. (Doctoral dissertation, University of Amsterdam, Amsterdam). In Dutch.
Brouwer, L. E. J. (1908). De onbetrouwbaarheid der logische principes. Tijdschrift voor Wijsbegeerte, 2, 152-158. In Dutch.
Brouwer, L. E. J. (1912). Intuïtionisme en formalisme. Wiskundig Tijdschrift, 9, 180-211. In Dutch.
Brouwer, L. E. J. (1914). Review of Schoenflies's "Die Entwicklung der Mengenlehre und ihre Anwendungen, erste Hälfte". Jahresber. Dtsch. Math.-Ver. 23(2), 78-83.
Brouwer, L. E. J. (1927). On the domains of definition of functions. Reprinted in: van Heijenoort, J. (1976). From Frege to Gödel: a source book in mathematical logic, 1879-1931 (2nd printing with corrections). Cambridge, Massachusetts: Harvard University Press.
Cauchy, A.-L. (1821). Cours d'analyse. English translation: Bradley, R. E. & Sandifer, C. E. (2009). Cauchy's cours d'analyse. New York: Springer
Diaconescu, R. (1975). Axiom of choice and complementation. Proc. Amer. Math. Soc. 51, 176-178.
Diener, H. (2008). Compactness under constructive scrutiny. (Doctoral dissertation, University of Canterbury, New Zealand).
Dummett, M. A. E. (1977). Elements of intuitionism. Oxford: Clarendon Press.
Feferman, S. (1979). Constructive theories of functions and classes. In Logic colloquium '78 (Proc. Mons Colloq.) (pp. 159-224). Stud. Logic Foundations Math. 97. Amsterdam: North-Holland.
Friedman, H. (1975). Some systems of second order arithmetic and their use. In Proceedings of the 17th international congress of mathematicians (Vancouver, British Columbia, 1974).
Friedman, H. (1977). Set theoretic foundations for constructive analysis. Ann. Math. 105(1), 1-28.
Gödel, K. (1933). Zur intuitionistischen arithmetik und zahlentheorie. Ergebnisse eines mathematischen Kolloquiums, 4, 34-38. In German.
Hilbert, D. (1890). Über die theorie der algebraischen formen. Math. Ann. 36, 473-534. In German.
Ishihara, H. (2006). Reverse mathematics in bishop's constructive mathematics. Phil. Scientiae. Cahier Special 6, 43-59.
Kleene, S. C. (1945). On the interpretation of intuitionistic number theory. J. Symbolic Logic, 10(4), 109-124.
König, D. (1936). Theorie der endlichen und unendlichen graphen: kombinatorische topologie der streckenkomplexe. In German. Leipzig: Akad. Verlag.
Kronecker, L. (1887). Über den zahlbegriff. J. Reine Angew. Math. 101, 337-355. In German.
Markov, A. A. (1954). Theory of algorithms, In Trudy Mat. Istituta imeni V. A. Steklova (Vol. 42). In Russian. Moskva: Izdatel'stvo Akademii Nauk SSSR.
Martin-Löf, P. (1968). Notes on constructive analysis. Stockholm: Almqvist & Wiksell.
Martin-Löf, P. (1975). An intuitionistic theory of types: predicative part. In H. E. Rose & J. C. Shepherdson (Eds.), Logic colloquium 1973 (pp. 73-118). Amsterdam: North-Holland.
Myhill, J. (1975). Constructive set theory. J. Symbolic Logic, 40(3), 347-382.
Poincaré, H. (1908). Science et méthode. In French. Paris: Flammarion.
Post, E. (1936). Finite combinatory processes - formulation 1. J. Symbolic Logic, 1, 103-105.
Richman, F. (1983). Church's thesis without tears. J. Symbolic Logic, 48, 797-803.
Richman, F. (1987). The frog replies. The Mathematical Intelligencer, 9(3), 22-24. See also the subsequent discussion, pp. 24-26.
Rosenblatt, M. (1985). Errett bishop: reflections on him and his research (M. Rosenblatt & E. Bishop, Eds.). Amer. Math. Soc. Memoirs 39.
Sambin, G. (1987). Intuitionistic formal spaces - a first communication. In D. Skordev (Ed.), Mathematical logic and its applications (pp. 187-204). New York: Plenum.
Sambin, G. (2003). Some points in formal topology. Theoretical Computer Science, 305, 347-408.
Schwichtenberg, H. (2009). Program extraction in constructive analysis. In S. Lindström, E. Palmgren & K. Segerberg (Eds.), Logicism, intuitionism, and formalism: what has become of them? (pp. 255-275). Heidelberg: Springer.
Specker, E. (1949). Nicht konstruktiv beweisbare sätze der analysis. J. Symbolic Logic, 14, 145-158. In German.
Stewart, I. (1986). Frog and mouse revisited: a review of Constructive Analysis by Errett Bishop and Douglas Bridges (Springer 1985) and An Introduction to Nonstandard Real Analysis by A. E. Hurd and P. A. Loeb. The Mathematical Intelligencer, 8(4), 78-82.
Troelstra, A. S. & van Dalen, D. (1988). Constructivism in mathematics: an introduction. Two volumes. Amsterdam: North Holland.
van Heijenoort, J. (1976). From Frege to Gödel: a source book in mathematical logic, 1879-1931 (2nd printing with corrections). Cambridge, Massachusetts: Harvard University Press.
Weber, H. (1893). Leopold Kronecker. Math. Ann., 43, 1-25.
Weihrauch, K. (2000). Computable analysis. EATCS Texts in Theoretical Computer Science. Heidelberg: Springer-Verlag.
Weyl, H. (1946). Mathematics and logic. Amer. Math. Monthly, 53, 2-13.
Ye, F. (2011). Strict Finitism and the logic of mathematical applications. Synthese Library 355. Heidelberg: Springer.
Zermelo, E. (1904). Beweis, dass jede menge wohlgerdnet werden kann. Math. Ann., 59, 514-516. In German.
