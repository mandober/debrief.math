# History of mathematical logic

Logic becomes an important part of math, especially of *the foundations of mathematics*, the math field that attempts to come up with the first principles from which the entirety of math could be derived.

The interest in the mathematical foundations has arose in the late XIX century with the newly established set theory, which almost immediately was shown to suffer from inconsistencies. This problem, coupled with the previously discovered issue with (Euclidean) geometry, has lead many, but most of all, the highly-influential German mathematician David Hilbert, to come up with the program aimed at proving, once and for all, the consistency of foundational theories of mathematics.

The early XX century was marked with attempts to solve the 25 issues that consituted the Hilbert's program, and/or to solve the overall challenge and prove math to be consistent and sound.

Results of Kurt Gödel, Gerhard Gentzen, and others provided partial resolution to the program, and clarified the issues involved in proving consistency. Work in set theory showed that almost all ordinary mathematics can be formalized in terms of sets, although there were some theorems that could not be proven in a common axiom system for set theory.

Contemporary work in the foundations of mathematics often focuses on establishing which parts of mathematics can be formalized in particular formal systems (as in *reverse mathematics*) rather than trying to find theories in which the entire math can be developed.

This period was also marked by the significant effort to reduce mathematics to logic, the movement which was called *logicism*, whose most prominent leaders were Russell and Whitehead that were attempting to derive math from logic in their magnum opus "Principia Mathematica". The work on "Principia" lasted for years and had exhausted both authors so much that they have abandoned completing all the planned volumes. As a famous example to illustrate how difficult this endavour was, it is often mentioned that it took them about 300 pages to show that 1 + 1 = 2, deriving this equation from the first princliples.


# The History of Mathematical Logic

(The History of Mathematical Logic, from "Gödel, Escher, Bach")

Mathematical logic begun with the attempts to mechanize the though process of reasoning.

Our ability to reason is often claimed to be what separates us from other species, so it may seem strange to try and mechanize it - yet even the ancient Greeks knew that reasoning is a patterned process and that it is, at least partially, governed by a set of statable laws.

After Aristotle had codified syllogisms and Euclid geometry, several millenia would pass before the new development would emerge. One of the significant discoveries of XIX century mathematics was that there are different, but all equally valid, geometries, with "geometry" meaning a theory of properties of abstract points and lines. For a long time since Euclid gave his presentation of geometry, it was throught only one geometry existed, the geometry. Although one could point out some small flaws in Euclid's presentation, it was clear that any further progress in geometry would have to be achieved by standing on Euclid's shoulders.

This idea was shattered by the roughly simultaneous discovery of non-Euclidean geometries by several people - a discovery that shocked the mathematics community, because it deeply challenged the idea that mathematics studies the real world. How could there be many different kinds of "points" and "lines" in one single reality? Today, the solution to the dilemma may be apparent, even to some non-mathematicians, but at the time, the dilemma wracked havoc in mathematical circles.

Later in the XIX century, the English logicians George Boole and Augustus De Morgan went considerably further than Aristotle in codifying strictly deductive reasoning patterns. Boole even called his book "The Laws of Thought", surely an exaggeration, but it was an important contribution. Lewis Carroll was fascinated by these mechanized reasoning methods and invented many puzzles which could be solved with them. Gottlob Frege in Jena and Giuseppe Peano in Turin worked on combining formal reasoning with the study of sets and numbers. David Hilbert in Gottingen worked on stricter formalizations of geometry than Euclid's. All of these efforts were directed towards clarifying what one means by a "proof".

In the meantime, interesting developments were taking place in classical mathematics. A theory of different types of infinities, the theory of sets, was developed by Georg Cantor in the 1880's. The theory was powerful and beautiful, but intuition-defying. Before long, a variety of set-theoretical paradoxes had been unearthed. That situation was very disturbing, because just as mathematics seemed to be recovering from one set of paradoxes - those related to the theory of limits in the calculus - along came a new slew of paradoxes, which seemed even worse.

The most famous one was, by its modern name, the Russell's paradox. A startling variant of Russell's paradox, called "Grelling's paradox", can be made using adjectives instead of sets. Divide the adjectives in English into two categories: those which are self-descriptive, such as "pen-ta-syl-lab-ic", "awkwardnessful" and those which are not. Now if we admit "non-self-descriptive" as an adjective, to which class does it belong? If it seems questionable to include hyphenated words, we can use two terms invented specially for this paradox: autological (self-descriptive), and heterological (not self-descriptive). The question then becomes: "Is heterological heterological?"

There seems to be one common culprit in these paradoxes, namely self-reference. So if the goal is to ban all paradoxes, why not try banning self-reference and anything that allows it to arise? This is not so easy as it might seem, because it can be hard to figure out just where self-reference is occurring. It may be spread out over a whole "Strange Loop" with several steps, as in this "expanded" version of Epimenides:

    The following sentence is false.    
    The preceding sentence is true.

Taken together, these sentences have the same effect as the original Epimenides paradox: yet separately, they are harmless and even potentially useful sentences. The "blame" for this strange loop can't he pinned on either sentence - only on the way they "point" at each other. Since there are indirect as well as direct ways of achieving self-reference, one must figure out how to ban both types at once - if one sees self-reference as the root of all evil.


## Banishing Strange Loops

Russell and Whitehead did subscribe to this view, and accordingly, "Principia Mathematica" was a mammoth exercise in exorcising strange loops from logic, set theory, and number theory.

The idea of their system was basically this: a set of the lowest "type" could contain only "objects" as members, not sets. A set of the next higher type could only contain objects, or sets of the lowest type. In general, a set of a given type could only contain sets of lower type, or objects. Every set would belong to a specific type. Clearly, no set could contain itself because it would have to belong to a type higher than its own type.

Only "normal" sets exist in such a system; furthermore, old R, the set of all normal sets, no longer is considered a set at all, because it does not belong to any finite type.

To all appearances, then, this theory of types successfully rids set theory of its paradoxes, but only at the cost of introducing an artificial hierarchy and of disallowing the formation of certain kinds of sets, such as the set of all normal sets.

Intuitively, this is not the way we imagine sets. The *theory of types* handled Russell's paradox, but it did nothing about the Epimenides paradox or Grelling's paradox.

For people whose interest went no further than set theory, this was quite adequate, but for people interested in the elimination of paradoxes generally, some similar "hierarchization" seemed necessary, to forbid looping back inside language. 

At the bottom of such a hierarchy would be an *object language*. Here, reference could be made only to a specific domain - not to aspects of the object language itself (such as its grammatical rules, or specific sentences in it). For that purpose there would be a *metalanguage*. 

This experience of two linguistic levels is familiar to all learners of foreign languages. Then there would be a meta-metalanguage for discussing the metalanguage, and so on. 

It would be required that every sentence should belong to some precise level of the hierarchy. Therefore, if one could find no level in which a given utterance fit, then the utterance would be deemed meaningless, and forgotten.

An analysis can be attempted on the two-step Epimenides loop given above. The first sentence, since it speaks of the second, must be on a higher level than the second. But by the same token, the second sentence must be on a higher level than the first. Since this is impossible, the two sentences are "meaningless". More precisely, such sentences simply cannot be formulated at all in a system based on a strict hierarchy of languages. This prevents all versions of the Epimenides paradox as well as Russell's paradox.

Now in set theory, which deals with abstractions that we don't use all the time, a *stratification* like the theory of types seems acceptable, even if a little strange, but when it comes to language, an all-pervading part of life, such stratification appears absurd.

We don't think of ourselves as jumping up and down a hierarchy of languages when we speak about various things. A rather matter-of-fact sentence such as, "In this book, I criticize the theory of types" would be doubly forbidden in the system we are discussing.

Firstly, it mentions "this book", which should only be mentionable in a metabook", and secondly, it mentions *me*, a person whom I should not be allowed to speak of at all!

This example points out how silly the theory of types seems, when you import it into a familiar context. The remedy it adopts for paradoxes, total banishment of self-reference in any form, is a real case of overkill, branding many perfectly good constructions as meaningless.

The adjective "meaningless", by the way, would have to apply to all discussions of the theory of linguistic types (such as that of this very paragraph) for they clearly could not occur on any of the levels - neither object language, nor metalanguage, nor meta- meta- language, etc. So the very act of discussing the theory would be the most blatant possible violation of it!

Now one could defend such theories by saying that they were only intended to deal with formal and not with ordinary, informal language.

This may be so, but then it shows that such theories are extremely academic and have little to say about paradoxes except when they crop up in special tailor-made systems.

Besides, the drive to eliminate paradoxes at any cost, especially when it requires the creation of highly artificial formalisms, puts too much stress on bland consistency, and too little on the quirky and bizarre, which make life and mathematics interesting.

It is of course important to try to maintain consistency, but when this effort forces you into an ugly theory, you know something is wrong.

~ ~ ~

These types of issues in the foundations of mathematics were responsible for the high interest in codifying human reasoning methods which was present in the early part of this century.

Mathematicians and philosophers had begun to have serious doubts about whether even the most concrete of theories, such as the number theory, were built on solid foundations.

If paradoxes could pop up so easily in set theory - a theory whose basic concept, that of a set, is surely very intuitively appealing - then might they not also exist in other branches of mathematics?

Another related worry was that the paradoxes of logic, such as the Epimenides paradox, might turn out to be internal to mathematics, and thereby cast in doubt all of mathematics.

This was especially worrisome to those, and there were a good number, who firmly believed that mathematics is simply a branch of logic (or conversely, that logic is simply a branch of mathematics).

In fact, this very question "Are mathematics and logic distinct, or separate", was the source of much controversy. This study of mathematics itself became known as *metamathematics*, or occasionally, *metalogic*, since mathematics and logic are so intertwined.

The most urgent priority of metamathematicians was to determine the true nature of mathematical reasoning. What is a legal method of procedure, and what is an illegal one?

Since mathematical reasoning had always been done in "natural language" (e.g. French or Latin or some language for normal communication), there was always a lot of possible ambiguity.

Words had different meanings to different people, conjured up different images, and so forth. It seemed reasonable and even important to establish a single uniform notation in which all mathematical work could be done, and with the aid of which any two mathematicians could resolve disputes over whether a suggested proof was valid or not. This would require a complete codification of the universally acceptable modes of human reasoning, at least as far as they applied to mathematics.

## Consistency, Completeness, Hilbert's Program

This was the goal of Principia Mathematica, which purported to derive all of mathematics from logic and without contradictions. It was widely admired, but no one was sure if
1. all of mathematics really was contained in the methods delineated therein
2. the methods given were even self-consistent.

Was it absolutely clear that contradictory results could never be derived, by any mathematicians whatsoever, following the methods of Russell and Whitehead?

This question particularly bothered the distinguished German mathematician (and metamathematician) David Hilbert, who set before the world community of mathematicians (and meta mathematicians) this challenge: to demonstrate rigorously, perhaps following the very methods outlined by Russell and Whitehead, that the system defined in Principia Mathematica was both:
* **consistent** i.e. without contradictions
* **complete** i.e. that every true statement could really be derived within the logical framework of PM.

This was a tall order, and one could criticize it on the grounds that it was somewhat circular: *how can you justify your methods of reasoning on the basis of those same methods of reasoning?*

Hilbert was fully aware of this dilemma, of course, and therefore expressed the hope that a demonstration of consistency or completeness could be found which depended only on *finitistic* modes of reasoning.

These were a small set of reasoning methods usually accepted by mathematicians. In this way, Hilbert hoped that mathematicians could partially lift themselves by their own bootstraps: the sum total of mathematical methods might be proved sound, by invoking only a smaller set of methods. This goal may sound rather esoteric, but it occupied the minds of many of the greatest mathematicians in the world during the first thirty years of the XX century.

Then in 1931. Godel published his paper, which in some ways utterly demolished Hilbert's program. This paper revealed not only that there were irreparable "holes" in the axiomatic system of PM, but more generally, *that no axiomatic system whatsoever could produce all number-theoretical truths, unless it were an inconsistent system*.

And finally, the hope of proving the consistency of a system such as that presented in PM was shown to be vain: *if such a proof could be found using only methods inside PM, then (and this is one of the most mystifying consequences of Godel's work) PM itself would be inconsistent*.

The final irony of it all is that the proof of Godel's Incompleteness Theorem involved importing the Epimenides paradox right into the heart of Principia Mathematica, a bastion supposedly invulnerable to the attacks of Strange Loops!

Although Godel's Strange Loop did not destroy Principia Mathematica, it made it far less interesting to mathematicians, for it showed that Russell and Whitehead's original aims were illusory.

## Babbage, Computers, Artificial Intelligence
