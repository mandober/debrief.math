# Gödel's theorem

https://everything2.com/

## About

Gödel's incompleteness and completeness theorems.

## Prelude to a kill

*John von Neumann*, the legendary mathematician who mastered calculus by the age of eight, who devised the familiar set-theoretic definition of the ordinal numbers at twenty, whose powers of calculation surpassed those of at least one early electronic computer and who was described by Polya as "the only student I was ever afraid of", had the following to say regarding a certain episode in mathematical history:

"This happened in our lifetime, and I know myself how humiliatingly easily my own values regarding the absolute mathematical truth changed during this episode, and how they changed three times in succession!" -- Johnny

The cause of such awe was a short paper published in 1931 by the 25-year-old logician *Kurt Gödel*, entitled "Uber formal unentscheidbare Satze der Principia Mathematica und verwandter Systeme" ("On Formally Undecidable Propositions of Principia Mathematica and Related Systems").

The revolutionary (and, to von Neumann and many others, disturbing) implication of the results therein was that
>any logical system comprehensive enough to describe elementary arithmetic necessarily contains propositions which can neither be proven nor disproven.

Moreover, Gödel proved that 
>the internal consistency of such a system can never be proven except by employing reasoning which is not expressible within the system itself.

## Mathematical climate at the time

To better understand the impact which Gödel's findings must have had on his peers, we should first describe the mathematical climate of the time.

In the XIX century it had been discovered, through the work of Riemann, Lobachevsky and others, that coherent models of *geometry* could be constructed in which *Euclid's parallel postulate* (that, given a line L and a point P in the plane, exactly one line exists which contains P and is parallel to L) did not hold.

This, in itself, was a shock to many mathematicians: for millenia it had been assumed that Euclid's description of geometry, founded as it was on a "self-evident" and minimal set of axioms, was one of the firmest, most trustworthy branches of mathematical knowledge. The existence of non-Euclidean geometries not only challenged mathematicians' geometrical intuition, but also the Platonist view that mathematics consisted of discoveries about eternal, pure forms whose existence was objective and unquestionable. More "monstrosities" such as continuous functions which were nowhere differentiable soon appeared, further fueling the general loss of faith in geometry.

Attempts to re-establish the comfortable certainty of the past, by turning from geometry to set theory as the new foundation of mathematics, also ran aground. Set theory, when pushed too hard, soon yielded such abominations as Russell's "set of all sets which do not include themselves". It proved difficult to construct a theory of sets which outruled such objects without sacrificing one's principles in the process. Logicism, as espoused by Frege, Dedekind and Russell, gave birth to structures so complicated and unwieldy that the stated intention to formalize the intuitive laws of reasoning was obscured. Constructivism, which rejected even the law of trichotomy (that every real number is either greater than, equal to, or less than zero) was deservedly perceived as fanatical.

To sidestep the embarrassing possibility that multiple, equally defensible versions of mathematical truth might exist, mathematicians soon claimed to have never been searching for truth in the first place. The formalists, led by Hilbert, redefined mathematics as consisting of allegedly meaningless symbols which were not "about" anything in particular. The mathematician was recast as a practitioner who merely manipulated these empty signs, attempting to derive theorems (sentences consisting of the aforementioned meaning-free symbols) from axioms without concerning himself with the "truth" of his findings.

Hilbert hoped thus to outmanoeuvre intuition, and, more importantly, to make possible a proof of the consistency of mathematics. The logicists before him had already laid the foundation by developing a formal language in which mathematical statements could be expressed, along with symbolic transformation rules representing steps which could legally be followed in the progression from the beginning to the end of a valid proof. (The climactic, exhaustive chronicle of this endeavour is Russell and Whitehead's *Principia Mathematica*, page 362 of which finally yields the demonstration that 1 + 1 = 2.) With this framework in place, it should (Hilbert thought) be possible to study the combinatorial properties of the set of all sentences which could legally be derived from the system's axioms, and to prove that no two of them were logical opposites. This would obviously be an assurance that mathematics (or at least the portion modelled by this formal system) was free from internal contradiction: that is, that the axioms could not be used to prove both a theorem and its negation.

As well as proving the impossibility of internal contradiction, it was hoped that the set of "true" sentences (those which could be constructed by applying legal transformations to the axioms) could be proved complete in the sense that, given a sentence, one could be assured that either this sentence or its negation was a member of the set of true sentences. A formal system with this property is said to exhibit "decidability", since one need never be unsure of the truth of a given sentence.

## Gödel's theorem

Hilbert's dreams of reformulating classical mathematics as a formal axiomatic system equipped with absolute proofs of consistency and completeness were dealt a cruel blow by Gödel's findings in 1931.

In his famous paper, Gödel proved that it was impossible to find a metamathematical proof of such a system's consistency without employing rules of inference inexpressible within the formal system under consideration. (More precisely, Gödel proved his results of any axiomatic system comprehensive enough to contain the whole of arithmetic. Henceforth, when the term "formal system" is used, it should be assumed that we are speaking of a system satisfying the aforementioned requirement. Less powerful systems, such as arithmetic equipped with addition alone or multiplication alone, can in fact be proved decidable and complete, as was shown by Presburger and Skolem in 1930.)

Gödel's other main conclusion was that any such formal system is incomplete, and hence that "truth" within the system is undecidable. Specifically, he showed that it possible to construct a sentence such that neither the constructed sentence nor its negation is provable within the system. What is more, even if one were to arbitrarily decide that such a sentence was true and should therefore be added to the system's axioms, there would still exist other equally undecidable sentences within this new system; and no matter how far this process of augmentation is taken, there will always be further truths which elude proof.

## Gödel numbering

The proofs of Gödel's results hinge on the fact that the set of formulas expressible within a symbolic system is countable, and hence each formula may be mapped to a natural number. Therefore, metamathematical statements about these sentences may be construed as statements about natural numbers: meaning that these metamathematical statements are *expressible in the system itself*. As we will see, this power of the system to codify statements about itself turns out to be an Achille's heel of sorts, allowing Gödel's ingenious construction of an undecidable sentence.

Gödel considered a formal system containing only seven constant symbols: the left and right parentheses, as well as signs representing "not", "or", "for all", "zero", and "the successor of" (an operator which adds one to an integer, and can therefore be used to express all natural numbers via its repeated application to "zero"). Recall that Gödel's aim was to assign a unique integer (usually called the "Gödel number") to each sentence expressible within this system; to begin with, the constant symbols described above were allocated distinct natural numbers. Similarly, other primitive signs (such as letters representing sentential variables) are each assigned integers. Since the number of variables which might be needed in a sentence is potentially infinite, Gödel was compelled to employ some simple number theory to avoid overlap between the integers associated with different types of variables. As such, a certain class of variables was assigned prime Gödel numbers, while another class was allocated from the set of squares of primes, and so on.

A similar trick was used by Gödel to calculate a unique integer associated with each sentence. A sentence is just a string of primitive symbols, each of which already has a natural number assigned to it. Obviously, a simple addition of the Gödel numbers of symbols in the sentence is inadequate, since it does not guarantee uniqueness over the set of all sentences. Similarly, a weighted sum is out of the question since we do not have an upper bound on the Gödel numbers of primitive symbols. (If such a bound existed, say N, then we could simply multiply successive symbols by 1, N+1, (N+1)<sup>2</sup>, etc., to obtain a unique Gödel number for the sentence.) Instead, the Gödel number of a sentence containing *n* symbols with respective Gödel numbers G<sub>1</sub>,...,G<sub>n</sub> is defined as the product p<sub>1</sub><sup>G<sub>1</sub></sup>\* <sup> ... </sup> \*p<sub>n</sub><sup>G<sub>n</sub></sup> where p<sub>i</sub> denotes the *i*th prime number. This representation allows us to unambiguously (as guaranteed by the fundamental theorem of arithmetic) retrieve a sentence from its Gödel number via factorisation. Similarly, a sequence of sentences may be assigned a single Gödel number by multiplying successive prime powers, the exponents being the Gödel numbers of successive sentences in the sequence.

## Outline of Gödel's proof

Since every symbol, sentence, and sequence of sentences in the formal system has now been assigned a Gödel number, and since the system under discussion is capable of expressing statements about natural numbers, we now have a way of expressing metamathematical statements in the language of the system. For example, the claim that one sentence implies another can be interpreted as asserting a certain numeric relation between the Gödel numbers of the two sentences. This relation will obviously be very complex, since it will need to express, in the domain of Gödel numbers, all possible legal transformations which may be applied to a sentence in the system. However, since in the end it is merely a statement about integers, it is certainly expressible in the language of the system itself. Similarly, a yet more complex relation between natural numbers *m* and *n* exists which expresses the claim "The sequence of sentences with Gödel number *m* is a proof for the sentence with Gödel number *n*".

To prove that an undecidable sentence existed, Gödel needed to find a formula *G* which, somewhat like Epimenides (the Cretan who claimed "All Cretans are liars"), expressed the assertion that no proof of *G* exists. More precisely, this claim could be expressed in the language of the system as

> There does not exist a natural number *m* such that *m* is the Gödel number of a sequence of sentences forming a proof for the sentence with Gödel number *g*.

where *g* is actually the Gödel number of the sentence just quoted. The sentence can therefore be construed as making a claim about *itself*, namely that it is unprovable.

A little thought should show that constructing such a sentence is somewhat difficult. To calculate the Gödel number of the above sentence, one follows the process described above of splitting it into primitive symbols, whose Gödel numbers are encoded as exponents of successive primes. However, the result of this calculation, *g*, appears in the sentence itself, and therefore affects the calculation! It would appear at first that we need to be "lucky" by stumbling upon a number *g* with the property that, when substituted literally into this sentence, brings about the coincidence that the Gödel number of the resultant sentence is also *g*.

Luck, of course, plays no part. Gödel conceived of a complex but elegant construction which, through a process of iteration, shows how to find such a number in a finite number of steps. The details of this process, while readily understandable, are somewhat tedious and will not be described here. The end result is the important point: for a very general class of formal systems, we have an explicit method for constructing a sentence, *G*, which asserts its own unprovability. Further, Gödel showed that if the axioms of the system are consistent (meaning that it is impossible to derive two contradictory sentences from them) then *G* is indeed unprovable: since if a proof for *G* existed, then it would also be possible to prove its negation, making the system inconsistent. The converse also holds: discovery of a proof for *G*'s negation would imply the existence of a proof for *G*. In other words, if the axioms are consistent, then *G* is formally undecidable.

Gödel further noted that, although unprovable within the formal system itself, the sentence *G* can in fact be proved true via metamathematical reasoning. In fact, the immediately preceding discussion shows this: since we have established that no proof for *G* can exist, and since this is exactly the assertion made by *G* about itself, *G* is a true statement. Thus the system not only contains an undecidable sentence, but: since it contains a true, unprovable sentence: the system is also incomplete. (The term "completeness", applied to a formal system, implies that all true statements in the system are derivable from its axioms.) What is more, simply adding *G* to the axioms would not suffice to make the system complete, since exactly the same process could be applied to this augmented system to obtain another, similarly undecidable, sentence. Gödel thus shattered all hope of ever constructing a consistent, complete formal system.

The final blow landed by Gödel's paper was a demonstration of the impossibility of proving a formal system's consistency via a proof expressible within the system itself. A brief description of how he obtained this result follows. Above we saw how, from the assumption that the system's axioms were consistent, Gödel proved that it contained a true, undecidable sentence and was thus incomplete. It turns out that the proof of this fact:

> If this system is consistent, then it is incomplete.

is achievable within the system itself. To see how, note that the sentence *G*, which asserts its own unprovability, is equivalent to the statement "This system is incomplete", since it gives an explicit example of a true, undecidable sentence. Thus the statement above is equivalent to:

> (This system is consistent) implies that *G* is true

Next, let *A* be the statement "There exists a sentence which is unprovable". This claim is in fact equivalent to asserting the system's consistency, since if the system were inconsistent, then *every* sentence would be provable. (This is closely related to the fact that, if we have a false statement *p* in any logical system, then the sentence "*p* implies *q*" is true for any sentence *q*.) Hence the above statement may be expressed within the formal system as simply "*A* implies *G*". Gödel showed that this latter sentence was formally provable within the system. Now, assume that a proof for *A*, i.e., a proof of the system's consistency, also existed. Then since we have proofs for both *A* and "*A* implies *G*", we have a proof of *G*. But *G* was previously proven unprovable. Therefore no proof of *A* can exist: the system cannot prove its own consistency.

## Consequences of Gödel's proof

Gödel's findings were the catalyst for many philosophical controversies which continue even to the present day. The Oxford philosopher J.R. Lucas has made the claim that Gödel's theorem precludes the existence of artificial intelligence, since any calculating machine is isomorphic to a formal system to which Gödel's theorem applies. Others, notably Douglas Hofstadter, dismiss this view as "a transient moment of anthropocentric glory" and claim that Gödel's proof may even offer insights about the workings of human intelligence which will be useful in the creation of AI.

Whilst the dream of establishing secure foundations for mathematics has never recovered from Gödel's attack, his findings have not been construed as a reason to abandon all hope of extracting meaning from mathematical inquiry. Gödel himself seemed to hold the view that Platonic realism provided the clearest definition of mathematical truth: of mathematical concepts, he said "It seems to me that the assumption of such objects is quite as legitimate as the assumption of physical bodies and there is quite as much reason to believe in their existence". According to Davis and Hersh, most modern mathematicians also secretly subscribe to Platonism: "like an underground religion, it is observed in private and rarely mentioned in public".

Gödel's methods also sparked various fruitful lines of investigation which had far-reaching consequences. Since the publication of his paper, the first naturally-arising example of an undecidable set-theoretic statement has been found. Known as the continuum hypothesis, it is the statement that no set has a cardinality greater than that of the natural numbers but less than that of the reals. Gödel himself showed in 1937 that this hypothesis cannot be proved from the axioms of set theory; Paul J. Cohen demonstrated in 1964 that neither can it be disproved.

A fascinating variant of Gödel's theorem was discovered in 1970, when it was proved that no general algorithm for solving all Diophantine equations (polynomial equations with integer coefficients and roots) can be formulated. Loosely, it can be shown that in any formal number theory, a Diophantine equation exists which is in some sense equivalent to Gödel's self-denying sentence *G*. Such an equation can be interpreted as stating of itself that it has no solutions; in fact, if a solution were found, one could construct from it the Gödel number of a proof that the equation had no solutions. It seems unlikely that we have come close to exhausting the list of surprises derived from Gödel's work. Perhaps von Neumann may be allowed the last word on Gödel's significance:


>Kurt Gödel's achievement in modern logic is singular and monumental: indeed it is more than a monument, it is a landmark which will remain visible far in space and time. The subject of logic has certainly completely changed its nature and possibilities with Gödel's achievement. -- VonNeumann


## Bibliography

- Davis and Hersh , *The Mathematical Experience*, 1980
- Ferris, Timothy (ed.), *The World Treasury of Physics, Astronomy and Mathematics* , 1991
- Hofstadter, Douglas, *Gödel, Escher, Bach: An Eternal Golden Braid*, 1979
- Nagel and Newman, *Gödel's Proof*, 1958
- van Heijenoort, Jean (ed.), *From Frege to Gödel: a Sourcebook in Mathematical Logic*, 1967
