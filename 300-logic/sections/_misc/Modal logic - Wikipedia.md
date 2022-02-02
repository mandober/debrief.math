---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Modal_logic
page-title:       Modal logic - Wikipedia
article-title:    Modal logic - Wikipedia
---
# Modal logic - Wikipedia


[![](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Diagram_of_Normal_Modal_Logics.png/300px-Diagram_of_Normal_Modal_Logics.png)][1]

Diagram of common modal logics

__Modal logic__ is a collection of [formal systems][2] originally developed and still widely used to represent statements about [necessity and possibility][3]. The basic [unary][4] (1-place) modal operators are most often interpreted "□" for "Necessarily" and "◇" for "Possibly".

In a [classical modal logic][5], each can be expressed in terms of the other and [negation][6] in a [De Morgan duality][7]:

![{\displaystyle \Diamond P\leftrightarrow \lnot \Box \lnot P,\quad \quad \Box P\leftrightarrow \lnot \Diamond \lnot P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7d1c18027d140ad0c57cd684f0ae9f290af7cbbf)

The modal formula ![{\displaystyle \Box P\rightarrow \Diamond P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/26054dec9f9e098bc61440093d8c2758390118ef) can be read using the above interpretation as "if P is necessary, then it is also possible", which is almost always held to be [valid][8]. This interpretation of the modal operators as necessity and possibility is called [alethic modal logic][9]. There are modal logics of other modes, such as "□" for "Obligatorily" and "◇" for "Permissibly" in [deontic modal logic][10], where this same formulae means "if P is obligatory, then it is permissible", which is also almost always held to be valid.

The first modal [axiomatic systems][11] were developed by [C. I. Lewis][12] in 1912, building on an informal tradition stretching back to [Aristotle][13]. The [relational semantics][14] for modal logic was developed by [Arthur Prior][15], [Jaakko Hintikka][16], and [Saul Kripke][17] in the mid twentieth century. In this semantics, formulas are assigned truth values relative to a *[possible world][18]*. A formula's truth value at one possible world can depend on the truth values of other formulas at other [*accessible*][19] [possible worlds][20]. In particular, possibility amounts to truth at *some* accessible possible world while necessity amounts to truth at *every* accessible possible world.

Modal logic is often referred to as "the logic of necessity and possibility", and such applications continue to play a major role in [philosophy of language][21], [epistemology][22], [metaphysics][23], and [formal semantics][24].[\[1\]][25] However, the mathematical apparatus of modal logic has proved useful in numerous other fields including [game theory][26],[\[2\]][27] [moral][28] and [legal theory][29],[\[2\]][30] [web design][31],[\[2\]][32] [multiverse-based set theory][33],[\[3\]][34] and [social epistemology][35].[\[4\]][36] One prominent textbook on the model theory of modal logic suggests that it can be seen more generally as the study of formal systems which take a local perspective on [relational structures][37].[\[5\]][38]

## Semantics\[[edit][39]\]

### Relational semantics\[[edit][40]\]

#### Basic notions\[[edit][41]\]

The standard semantics for modal logic is called the *relational semantics*. In this approach, the truth of a formula is determined relative to a point which is often called a *[possible world][42]*. For a formula that contains a modal operator, its truth value can depend on what is true at other [accessible][43] worlds. Thus, the relational semantics interprets formulas of modal logic using [models][44] defined as follows.[\[6\]][45]

-   A *relational model* is a tuple ![{\displaystyle {\mathfrak {M}}=\langle W,R,V\rangle }](https://wikimedia.org/api/rest_v1/media/math/render/svg/04d770b0c5999f27f5424eb52cef68a0d22c8e66) where:

1.  ![W](https://wikimedia.org/api/rest_v1/media/math/render/svg/54a9c4c547f4d6111f81946cad242b18298d70b7) is a set of possible worlds
2.  ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) is a binary relation on ![W](https://wikimedia.org/api/rest_v1/media/math/render/svg/54a9c4c547f4d6111f81946cad242b18298d70b7)
3.  ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) is a valuation function which assigns a truth value to each pair of an atomic formula and a world, (i.e. ![{\displaystyle V:W\times F\to \{0,1\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cff68d5459fd2daa25cc857b1186165d0fd31e5) where ![F](https://wikimedia.org/api/rest_v1/media/math/render/svg/545fd099af8541605f7ee55f08225526be88ce57) is the set of atomic formulae)

The set ![W](https://wikimedia.org/api/rest_v1/media/math/render/svg/54a9c4c547f4d6111f81946cad242b18298d70b7) is often called the *universe*. The binary relation ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) is called an [accessibility relation][46], and it controls which worlds can "see" each other for the sake of determining what is true. For example, ![{\displaystyle wRu}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01f8ae76cbc84cbec30280f8a7d6de3a4c70df8c) means that the world ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8) is accessible from world ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6). That is to say, the state of affairs known as ![u](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3e6bb763d22c20916ed4f0bb6bd49d7470cffd8) is a live possibility for ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6). Finally, the function ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) is known as a [valuation function][47]. It determines which [atomic formulas][48] are true at which worlds.

Then we recursively define the truth of a formula at a world in a model ![\mathfrak{M}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a3f96ea04db56741bbd5dc610098968f3a7a9c00):

According to this semantics, a formula is *necessary* with respect to a world ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6) if it holds at every world that is accessible from ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6). It is *possible* if it holds at some world that is accessible from ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6). Possibility thereby depends upon the accessibility relation ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33), which allows us to express the relative nature of possibility. For example, we might say that given our laws of physics it is not possible for humans to travel faster than the speed of light, but that given other circumstances it could have been possible to do so. Using the accessibility relation we can translate this scenario as follows: At all of the worlds accessible to our own world, it is not the case that humans can travel faster than the speed of light, but at one of these accessible worlds there is *another* world accessible from *those* worlds but not accessible from our own at which humans can travel faster than the speed of light.

#### Frames and completeness\[[edit][49]\]

The choice of accessibility relation alone can sometimes be sufficient to guarantee the truth or falsity of a formula. For instance, consider a model ![\mathfrak{M}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a3f96ea04db56741bbd5dc610098968f3a7a9c00) whose accessibility relation is [reflexive][50]. Because the relation is reflexive, we will have that ![{\displaystyle {\mathfrak {M}},w\models P\rightarrow \Diamond P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/08c690e62f13bf6134b6441bd9df0bdb0a40d614) for any ![{\displaystyle w\in G}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2927410350023f464cd79254905569d056db5a26) regardless of which valuation function is used. For this reason, modal logicians sometimes talk about *frames*, which are the portion of a relational model excluding the valuation function.

The different systems of modal logic are defined using *frame conditions*. A frame is called:

-   __[reflexive][51]__ if *w R w*, for every *w* in *G*
-   __[symmetric][52]__ if *w R u* implies *u R w*, for all *w* and *u* in *G*
-   __[transitive][53]__ if *w R u* and *u R q* together imply *w R q*, for all *w*, *u*, *q* in *G*.
-   __[serial][54]__ if, for every *w* in *G* there is some *u* in *G* such that *w R u*.
-   __[Euclidean][55]__ if, for every *u*, *t*, and *w*, *w R u* and *w R t* implies *u R t* (by symmetry, it also implies *t R u*)

The logics that stem from these frame conditions are:

-   *K* := no conditions
-   *D* := serial
-   *T* := reflexive
-   *B* := reflexive and symmetric
-   *S4* := [reflexive and transitive][56]
-   *S5* := reflexive and [Euclidean][57]

The Euclidean property along with reflexivity yields symmetry and transitivity. (The Euclidean property can be obtained, as well, from symmetry and transitivity.) Hence if the accessibility relation *R* is reflexive and Euclidean, *R* is provably [symmetric][58] and [transitive][59] as well. Hence for models of S5, *R* is an [equivalence relation][60], because *R* is reflexive, symmetric and transitive.

We can prove that these frames produce the same set of valid sentences as do the frames where all worlds can see all other worlds of *W* (*i.e.*, where *R* is a "total" relation). This gives the corresponding *modal graph* which is total complete (*i.e.*, no more edges (relations) can be added). For example, in any modal logic based on frame conditions:

![w\models \Diamond P](https://wikimedia.org/api/rest_v1/media/math/render/svg/028c9848a1d5f78779830f3ae26e4228f50e6833) if and only if for some element *u* of *G*, it holds that ![u\models P](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4b181950d2ac4eee5ae39752447ff918f526838) and *w R u*.

If we consider frames based on the total relation we can just say that

![w\models \Diamond P](https://wikimedia.org/api/rest_v1/media/math/render/svg/028c9848a1d5f78779830f3ae26e4228f50e6833) if and only if for some element *u* of *G*, it holds that ![u\models P](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4b181950d2ac4eee5ae39752447ff918f526838).

We can drop the accessibility clause from the latter stipulation because in such total frames it is trivially true of all *w* and *u* that *w R u*. But note that this does not have to be the case in all S5 frames, which can still consist of multiple parts that are fully connected among themselves but still disconnected from each other.

All of these logical systems can also be defined axiomatically, as is shown in the next section. For example, in S5, the axioms ![{\displaystyle P\implies \Box \Diamond P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fbee98a4236c5207adabf14a8fe9c106a027a798), ![{\displaystyle \Box P\implies \Box \Box P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b053287f10566fba0ff0b958d395d84a2c4c0d11) and ![{\displaystyle \Box P\implies P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e11ad35b4ae6527f7110f745c32dcb1076b3e49) (corresponding to *symmetry*, *transitivity* and *reflexivity*, respectively) hold, whereas at least one of these axioms does not hold in each of the other, weaker logics.

### Topological semantics\[[edit][61]\]

Modal logic has also been interpreted using topological structures. For instance, the *Interior Semantics* interprets formulas of modal logic as follows.

A *topological model* is a tuple ![{\displaystyle \mathrm {X} =\langle X,\tau ,V\rangle }](https://wikimedia.org/api/rest_v1/media/math/render/svg/4a5c1bbea5c33f8a0687a71381cc6e54f8d315e0) where ![{\displaystyle \langle X,\tau \rangle }](https://wikimedia.org/api/rest_v1/media/math/render/svg/e13ecb1251a1e6ef7b58cf02e2f653cee0602b1e) is a [topological space][62] and ![V](https://wikimedia.org/api/rest_v1/media/math/render/svg/af0f6064540e84211d0ffe4dac72098adfa52845) is a valuation function which maps each atomic formula to some subset of ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab). The basic interior semantics interprets formulas of modal logic as follows:

Topological approaches subsume relational ones, allowing [non-normal modal logics][63]. The extra structure they provide also allows a transparent way of modeling certain concepts such as the evidence or justification one has for one's beliefs. Topological semantics is widely used in recent work in formal epistemology and has antecedents in earlier work such as [David Lewis][64] and [Angelika Kratzer][65]'s logics for [counterfactuals][66].

## Axiomatic systems\[[edit][67]\]

The first formalizations of modal logic were [axiomatic][68]. Numerous variations with very different properties have been proposed since [C. I. Lewis][69] began working in the area in 1912. [Hughes][70] and [Cresswell][71] (1996), for example, describe 42 [normal][72] and 25 non-normal modal logics. Zeman (1973) describes some systems Hughes and Cresswell omit.

Modern treatments of modal logic begin by augmenting the [propositional calculus][73] with two unary operations, one denoting "necessity" and the other "possibility". The notation of [C. I. Lewis][74], much employed since, denotes "necessarily *p*" by a prefixed "box" (□*p*) whose scope is established by parentheses. Likewise, a prefixed "diamond" (◇*p*) denotes "possibly *p*". Regardless of notation, each of these operators is definable in terms of the other in classical modal logic:

-   □*p* (necessarily *p*) is equivalent to ¬◇¬*p* ("not possible that not-*p*")
-   ◇*p* (possibly *p*) is equivalent to ¬□¬*p* ("not necessarily not-*p*")

Hence □ and ◇ form a [dual pair][75] of operators.

In many modal logics, the necessity and possibility operators satisfy the following analogues of [de Morgan's laws][76] from [Boolean algebra][77]:

"It is __not necessary that__ *X*" is [logically equivalent][78] to "It is __possible that not__ *X*".

"It is __not possible that__ *X*" is logically equivalent to "It is __necessary that not__ *X*".

Precisely what axioms and rules must be added to the [propositional calculus][79] to create a usable system of modal logic is a matter of philosophical opinion, often driven by the theorems one wishes to prove; or, in computer science, it is a matter of what sort of computational or deductive system one wishes to model. Many modal logics, known collectively as [normal modal logics][80], include the following rule and axiom:

-   __N__, __Necessitation Rule__: If *p* is a [theorem][81] (of any system invoking __N__), then □*p* is likewise a theorem.
-   __K__, __Distribution Axiom__: □(*p* → *q*) → (□*p* → □*q*).

The weakest [normal modal logic][82], named "__K__" in honor of [Saul Kripke][83], is simply the [propositional calculus][84] augmented by □, the rule __N__, and the axiom __K__. *K* is weak in that it fails to determine whether a proposition can be necessary but only contingently necessary. That is, it is not a theorem of *K* that if □*p* is true then □□*p* is true, i.e., that necessary truths are "necessarily necessary". If such perplexities are deemed forced and artificial, this defect of *K* is not a great one. In any case, different answers to such questions yield different systems of modal logic.

Adding axioms to *K* gives rise to other well-known modal systems. One cannot prove in *K* that if "*p* is necessary" then *p* is true. The axiom __T__ remedies this defect:

-   __T__, __Reflexivity Axiom__: □*p* → *p* (If *p* is necessary, then *p* is the case.)

__T__ holds in most but not all modal logics. Zeman (1973) describes a few exceptions, such as *S10*.

Other well-known elementary axioms are:

These yield the systems (axioms in bold, systems in italics):

-   *K* := __K__ + __N__
-   *T* := *K* + __T__
-   *S4* := *T* + __4__
-   *S5* := *T* + __5__
-   *D* := *K* + __D__.

*K* through *S5* form a nested hierarchy of systems, making up the core of [normal modal logic][85]. But specific rules or sets of rules may be appropriate for specific systems. For example, in [deontic logic][86], ![\Box p\to \Diamond p](https://wikimedia.org/api/rest_v1/media/math/render/svg/e2f12885a66fe6a8ef6c0a1d8f70c8bfa1951de7) (If it ought to be that *p*, then it is permitted that *p*) seems appropriate, but we should probably not include that ![p\to \Box \Diamond p](https://wikimedia.org/api/rest_v1/media/math/render/svg/7e19c3a3fda4b8e2d57e3c50e36482792eae1120). In fact, to do so is to commit the [appeal to nature][87] fallacy (i.e. to state that what is natural is also good, by saying that if *p* is the case, *p* ought to be permitted).

The commonly employed system *S5* simply makes all modal truths necessary. For example, if *p* is possible, then it is "necessary" that *p* is possible. Also, if *p* is necessary, then it is necessary that *p* is necessary. Other systems of modal logic have been formulated, in part because *S5* does not describe every kind of modality of interest.

### Structural proof theory\[[edit][88]\]

[Sequent calculi][89] and systems of natural deduction have been developed for several modal logics, but it has proven hard to combine generality with other features expected of good [structural proof theories][90], such as purity (the proof theory does not introduce extra-logical notions such as labels) and analyticity (the logical rules support a clean notion of [analytic proof][91]). More complex calculi have been applied to modal logic to achieve generality.

### Decision methods\[[edit][92]\]

[Analytic tableaux][93] provide the most popular decision method for modal logics.\[*[citation needed][94]*\]

## Modal logics in philosophy\[[edit][95]\]

### Alethic logic\[[edit][96]\]

Modalities of necessity and possibility are called *alethic* modalities. They are also sometimes called *special* modalities, from the [Latin][97] *species*. Modal logic was first developed to deal with these concepts, and only afterward was extended to others. For this reason, or perhaps for their familiarity and simplicity, necessity and possibility are often casually treated as *the* subject matter of modal logic. Moreover, it is easier to make sense of relativizing necessity, e.g. to legal, physical, [nomological][98], [epistemic][99], and so on, than it is to make sense of relativizing other notions.

In [classical modal logic][100], a proposition is said to be

-   __possible__ if it is *not necessarily false* (regardless of whether it is actually true or actually false);
-   __necessary__ if it is *not possibly false* (i.e. true and necessarily true);
-   __contingent__ if it is *not necessarily false* and *not necessarily true* (i.e. possible but not necessarily true);
-   __impossible__ if it is *not possibly true* (i.e. false and necessarily false).

In classical modal logic, therefore, the notion of either possibility or necessity may be taken to be basic, where these other notions are defined in terms of it in the manner of [De Morgan duality][101]. [Intuitionistic modal logic][102] treats possibility and necessity as not perfectly symmetric.

For example, suppose that while walking to the convenience store we pass Friedrich's house, and observe that the lights are off. On the way back, we observe that they have been turned on.

-   "Somebody or something turned the lights on" is *necessary*.
-   "Friedrich turned the lights on", "Friedrich's roommate Max turned the lights on" and "A burglar named Adolf broke into Friedrich's house and turned the lights on" are *contingent*.
-   All of the above statements are *possible*.
-   It is *impossible* that [Socrates][103] (who has been dead for over two thousand years) turned the lights on.

(Of course, this analogy does not apply alethic modality in a *truly* rigorous fashion; for it to do so, it would have to axiomatically make such statements as "human beings cannot rise from the dead", "Socrates was a human being and not an immortal vampire", and "we did not take hallucinogenic drugs which caused us to falsely believe the lights were on", *ad infinitum*. Absolute certainty of truth or falsehood exists only in the sense of logically constructed abstract concepts such as "it is impossible to draw a triangle with four sides" and "all bachelors are unmarried".)

For those with difficulty with the concept of something being possible but not true, the meaning of these terms may be made more comprehensible by thinking of multiple "possible worlds" (in the sense of [Leibniz][104]) or "alternate universes"; something "necessary" is true in all possible worlds, something "possible" is true in at least one possible world. These "possible world semantics" are formalized with [Kripke semantics][105].

#### Physical possibility\[[edit][106]\]

Something is physically, or nomically, possible if it is permitted by the [laws of physics][107].\[*[citation needed][108]*\] For example, current theory is thought to allow for there to be an [atom][109] with an [atomic number][110] of 126,[\[7\]][111] even if there are no such atoms in existence. In contrast, while it is logically possible to accelerate beyond the [speed of light][112],[\[8\]][113] modern science stipulates that it is not physically possible for material particles or information.[\[9\]][114]

#### Metaphysical possibility\[[edit][115]\]

[Philosophers][116]\[*[who?][117]*\] debate if objects have properties independent of those dictated by scientific laws. For example, it might be metaphysically necessary, as some who advocate [physicalism][118] have thought, that all thinking beings have bodies[\[10\]][119] and can experience the passage of [time][120]. [Saul Kripke][121] has argued that every person necessarily has the parents they do have: anyone with different parents would not be the same person.[\[11\]][122]

[Metaphysical possibility][123] has been thought to be more restricting than bare logical possibility[\[12\]][124] (i.e., fewer things are metaphysically possible than are logically possible). However, its exact relation (if any) to logical possibility or to physical possibility is a matter of dispute. Philosophers\[*[who?][125]*\] also disagree over whether metaphysical truths are necessary merely "by definition", or whether they reflect some underlying deep facts about the world, or something else entirely.

### Epistemic logic\[[edit][126]\]

__Epistemic modalities__ (from the Greek *episteme*, knowledge), deal with the *certainty* of sentences. The □ operator is translated as "x knows that…", and the ◇ operator is translated as "For all x knows, it may be true that…" In ordinary speech both metaphysical and epistemic modalities are often expressed in similar words; the following contrasts may help:

A person, Jones, might reasonably say *both*: (1) "No, it is *not* possible that [Bigfoot][127] exists; I am quite certain of that"; *and*, (2) "Sure, it's *possible* that Bigfoots could exist". What Jones means by (1) is that, given all the available information, there is no question remaining as to whether Bigfoot exists. This is an epistemic claim. By (2) he makes the *metaphysical* claim that it is *possible for* Bigfoot to exist, *even though he does not*: there is no physical or biological reason that large, featherless, bipedal creatures with thick hair could not exist in the forests of North America (regardless of whether or not they do). Similarly, "it is possible for the person reading this sentence to be fourteen feet tall and named Chad" is *metaphysically* true (such a person would not somehow be prevented from doing so on account of their height and name), but not *alethically* true unless you match that description, and not *epistemically* true if it's known that fourteen-foot-tall human beings have never existed.

From the other direction, Jones might say, (3) "It is *possible* that [Goldbach's conjecture][128] is true; but also *possible* that it is false", and *also* (4) "if it *is* true, then it is necessarily true, and not possibly false". Here Jones means that it is *epistemically possible* that it is true or false, for all he knows (Goldbach's conjecture has not been proven either true or false), but if there *is* a proof (heretofore undiscovered), then it would show that it is not *logically* possible for Goldbach's conjecture to be false—there could be no set of numbers that violated it. Logical possibility is a form of *alethic* possibility; (4) makes a claim about whether it is possible (i.e., logically speaking) that a mathematical truth to have been false, but (3) only makes a claim about whether it is possible, for all Jones knows, (i.e., speaking of certitude) that the mathematical claim is specifically either true or false, and so again Jones does not contradict himself. It is worthwhile to observe that Jones is not necessarily correct: It is possible (epistemically) that [Goldbach's conjecture][129] is both true and unprovable.

Epistemic possibilities also bear on the actual world in a way that metaphysical possibilities do not. Metaphysical possibilities bear on ways the world *might have been,* but epistemic possibilities bear on the way the world *may be* (for all we know). Suppose, for example, that I want to know whether or not to take an umbrella before I leave. If you tell me "it is *possible that* it is raining outside" – in the sense of epistemic possibility – then that would weigh on whether or not I take the umbrella. But if you just tell me that "it is *possible for* it to rain outside" – in the sense of *metaphysical possibility* – then I am no better off for this bit of modal enlightenment.

Some features of epistemic modal logic are in debate. For example, if *x* knows that *p*, does *x* know that it knows that *p*? That is to say, should □*P* → □□*P* be an axiom in these systems? While the answer to this question is unclear,[\[13\]][130] there is at least one axiom that is generally included in epistemic modal logic, because it is minimally true of all normal modal logics (see [the section on axiomatic systems][131]):

-   __K__, *Distribution Axiom*: ![\Box (p\to q)\to (\Box p\to \Box q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/a1f191829bc79b8b3ab1f88f5afe1bec6f7285e0).

It has been questioned whether the epistemic and alethic modalities should be considered distinct from each other. The criticism states that there is no real difference between "the truth in the world" (alethic) and "the truth in an individual's mind" (epistemic).[\[14\]][132] An investigation has not found a single language in which alethic and epistemic modalities are formally distinguished, as by the means of a [grammatical mood][133].[\[15\]][134]

### Temporal logic\[[edit][135]\]

Temporal logic is an approach to the semantics of expressions with [tense][136], that is, expressions with qualifications of when. Some expressions, such as '2 + 2 = 4', are true at all times, while tensed expressions such as 'John is happy' are only true sometimes.

In temporal logic, tense constructions are treated in terms of modalities, where a standard method for formalizing talk of time is to use *two* pairs of operators, one for the past and one for the future (P will just mean 'it is presently the case that P'). For example:

__F__*P* : It will sometimes be the case that *P*

__G__*P* : It will always be the case that *P*

__P__*P* : It was sometime the case that *P*

__H__*P* : It has always been the case that *P*

There are then at least three modal logics that we can develop. For example, we can stipulate that,

![\Diamond P](https://wikimedia.org/api/rest_v1/media/math/render/svg/c11ced51ad343c329a468b33e5139a99306fd0b6) = *P* is the case at some time *t*

![\Box P](https://wikimedia.org/api/rest_v1/media/math/render/svg/d30b6d37f2d650ad3011989f5477df0536bed7d1) = *P* is the case at every time *t*

Or we can trade these operators to deal only with the future (or past). For example,

![\Diamond _{1}P](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5ec8cd7b74a4c2df0e8dfdd6e2b9769e994644c) = __F__*P*

![\Box _{1}P](https://wikimedia.org/api/rest_v1/media/math/render/svg/e779eb3469b4ba71705e08bc1635cc78a7ffbaab) = __G__*P*

or,

![\Diamond _{2}P](https://wikimedia.org/api/rest_v1/media/math/render/svg/083082797fc13ed6c06d2bc63fedd6acf7e2f043) = *P* and/or __F__*P*

![\Box _{2}P](https://wikimedia.org/api/rest_v1/media/math/render/svg/2145e999b773677643ea7aeb7adc71a5f5a7440f) = *P* and __G__*P*

The operators __F__ and __G__ may seem initially foreign, but they create [normal modal systems][137]. Note that __F__*P* is the same as ¬__G__¬*P*. We can combine the above operators to form complex statements. For example, __P__*P* → □__P__*P* says (effectively), *Everything that is past and true is necessary*.

It seems reasonable to say that possibly it will rain tomorrow, and possibly it won't; on the other hand, since we can't change the past, if it is true that it rained yesterday, it probably isn't true that it may not have rained yesterday. It seems the past is "fixed", or necessary, in a way the future is not. This is sometimes referred to as [accidental necessity][138]. But if the past is "fixed", and everything that is in the future will eventually be in the past, then it seems plausible to say that future events are necessary too.

Similarly, the [problem of future contingents][139] considers the semantics of assertions about the future: is either of the propositions 'There will be a sea battle tomorrow', or 'There will not be a sea battle tomorrow' now true? Considering this thesis led [Aristotle][140] to reject the [principle of bivalence][141] for assertions concerning the future.

Additional binary operators are also relevant to temporal logics, *q.v.* [Linear Temporal Logic][142].

Versions of temporal logic can be used in [computer science][143] to model computer operations and prove theorems about them. In one version, ◇*P* means "at a future time in the computation it is possible that the computer state will be such that P is true"; □*P* means "at all future times in the computation P will be true". In another version, ◇*P* means "at the immediate next state of the computation, *P* might be true"; □*P* means "at the immediate next state of the computation, P will be true". These differ in the choice of [Accessibility relation][144]. (P always means "P is true at the current computer state".) These two examples involve nondeterministic or not-fully-understood computations; there are many other modal logics specialized to different types of program analysis. Each one naturally leads to slightly different axioms.

### Deontic logic\[[edit][145]\]

Likewise talk of morality, or of [obligation][146] and [norms][147] generally, seems to have a modal structure. The difference between "You must do this" and "You may do this" looks a lot like the difference between "This is necessary" and "This is possible". Such logics are called *[deontic][148]*, from the Greek for "duty".

Deontic logics commonly lack the axiom __T__ semantically corresponding to the reflexivity of the accessibility relation in [Kripke semantics][149]: in symbols, ![\Box \phi \to \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a5d644484623825d62865ca86260267c2d404b6). Interpreting □ as "it is obligatory that", __T__ informally says that every obligation is true. For example, if it is obligatory not to kill others (i.e. killing is morally forbidden), then __T__ implies that people actually do not kill others. The consequent is obviously false.

Instead, using [Kripke semantics][150], we say that though our own world does not realize all obligations, the worlds accessible to it do (i.e., __T__ holds at these worlds). These worlds are called idealized worlds. *P* is obligatory with respect to our own world if at all idealized worlds accessible to our world, *P* holds. Though this was one of the first interpretations of the formal semantics, it has recently come under criticism.[\[16\]][151]

One other principle that is often (at least traditionally) accepted as a deontic principle is *D*, ![\Box \phi \to \Diamond \phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/63cbbc101c379e0a4724342afd4a3e41f3fb0bd7), which corresponds to the seriality (or extendability or unboundedness) of the accessibility relation. It is an embodiment of the Kantian idea that "ought implies can". (Clearly the "can" can be interpreted in various senses, e.g. in a moral or alethic sense.)

#### Intuitive problems with deontic logic\[[edit][152]\]

When we try to formalize ethics with standard modal logic, we run into some problems. Suppose that we have a proposition *K*: you have stolen some money, and another, *Q*: you have stolen a small amount of money. Now suppose we want to express the thought that "if you have stolen some money, it ought to be a small amount of money". There are two likely candidates,

(1) ![(K\to \Box Q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f10dc06d47be129be495f6def8da369742dec7ea)

(2) ![\Box (K\to Q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0b0ba853d6600fc5173e6ed8400436104ca233b)

But (1) and *K* together entail □*Q*, which says that it ought to be the case that you have stolen a small amount of money. This surely isn't right, because you ought not to have stolen anything at all. And (2) doesn't work either: If the right representation of "if you have stolen some money it ought to be a small amount" is (2), then the right representation of (3) "if you have stolen some money then it ought to be a large amount" is ![{\displaystyle \Box (K\to (K\land \lnot Q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/19a2ac19e9df2499e9c4de9f6a10e26884b0c023). Now suppose (as seems reasonable) that you ought not to steal anything, or ![\Box \lnot K](https://wikimedia.org/api/rest_v1/media/math/render/svg/eda3cc0a2db7eefc873d0654af082fd1aebacbb8). But then we can deduce ![{\displaystyle \Box (K\to (K\land \lnot Q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/19a2ac19e9df2499e9c4de9f6a10e26884b0c023) via ![{\displaystyle \Box (\lnot K)\to \Box (K\to K\land \lnot K)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c50cef65928bf601a12f9cb7cd34c25f2d0b4d6f) and ![{\displaystyle \Box (K\land \lnot K\to (K\land \lnot Q))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/491d3c0777be273e0013cad029ccc895a3228ea1) (the [contrapositive][153] of ![Q\to K](https://wikimedia.org/api/rest_v1/media/math/render/svg/ef507c4cba9096cbe853ecb4fde811ca96b222a6)); so sentence (3) follows from our hypothesis (of course the same logic shows sentence (2)). But that can't be right, and is not right when we use natural language. Telling someone they should not steal certainly does not imply that they should steal large amounts of money if they do engage in theft.[\[17\]][154]

### Doxastic logic\[[edit][155]\]

*Doxastic logic* concerns the logic of belief (of some set of agents). The term doxastic is derived from the [ancient Greek][156] *doxa* which means "belief". Typically, a doxastic logic uses □, often written "B", to mean "It is believed that", or when relativized to a particular agent s, "It is believed by s that".

## Metaphysical questions\[[edit][157]\]

In the most common interpretation of modal logic, one considers "[logically possible][158] worlds". If a statement is true in all [possible worlds][159], then it is a necessary truth. If a statement happens to be true in our world, but is not true in all possible worlds, then it is a contingent truth. A statement that is true in some possible world (not necessarily our own) is called a possible truth.

Under this "possible worlds idiom," to maintain that Bigfoot's existence is possible but not actual, one says, "There is some possible world in which Bigfoot exists; but in the actual world, Bigfoot does not exist". However, it is unclear what this claim commits us to. Are we really alleging the existence of possible worlds, every bit as real as our actual world, just not actual? [Saul Kripke][160] believes that 'possible world' is something of a misnomer – that the term 'possible world' is just a useful way of visualizing the concept of possibility.[\[18\]][161] For him, the sentences "you could have rolled a 4 instead of a 6" and "there is a possible world where you rolled a 4, but you rolled a 6 in the actual world" are not significantly different statements, and neither commit us to the existence of a possible world.[\[19\]][162] [David Lewis][163], on the other hand, made himself notorious by biting the bullet, asserting that all merely possible worlds are as real as our own, and that what distinguishes our world as *actual* is simply that it is indeed our world – *[this][164]* world.[\[20\]][165] That position is a major tenet of "[modal realism][166]". Some philosophers decline to endorse any version of modal realism, considering it ontologically extravagant, and prefer to seek various ways to paraphrase away these ontological commitments. [Robert Adams][167] holds that 'possible worlds' are better thought of as 'world-stories', or consistent sets of propositions. Thus, it is possible that you rolled a 4 if such a state of affairs can be described coherently.[\[21\]][168]

Computer scientists will generally pick a highly specific interpretation of the modal operators specialized to the particular sort of computation being analysed. In place of "all worlds", you may have "all possible next states of the computer", or "all possible future states of the computer".

## Further applications\[[edit][169]\]

Modal logics have begun to be used in areas of the humanities such as literature, poetry, art and history.[\[22\]][170][\[23\]][171]

## History\[[edit][172]\]

The basic ideas of modal logic date back to antiquity. [Aristotle][173] developed a modal syllogistic in Book I of his *[Prior Analytics][174]* (chs 8–22), which [Theophrastus][175] attempted to improve.[\[24\]][176] There are also passages in Aristotle's work, such as the famous [sea-battle argument][177] in *[De Interpretatione][178]* §9, that are now seen as anticipations of the connection of modal logic with [potentiality][179] and time. In the Hellenistic period, the logicians [Diodorus Cronus][180], [Philo the Dialectician][181] and the Stoic [Chrysippus][182] each developed a modal system that accounted for the interdefinability of possibility and necessity, accepted [axiom][183] __T__ (see [below][184]), and combined elements of modal logic and [temporal logic][185] in attempts to solve the notorious [Master Argument][186].[\[25\]][187] The earliest formal system of modal logic was developed by [Avicenna][188], who ultimately developed a theory of "[temporally][189] modal" syllogistic.[\[26\]][190] Modal logic as a self-aware subject owes much to the writings of the [Scholastics][191], in particular [William of Ockham][192] and [John Duns Scotus][193], who reasoned informally in a modal manner, mainly to analyze statements about [essence][194] and [accident][195].

In the 19th century, [Hugh MacColl][196] made innovative contributions to modal logic, but did not find much acknowledgment.[\[27\]][197] [C. I. Lewis][198] founded modern modal logic in a series of scholarly articles beginning in 1912 with "Implication and the Algebra of Logic".[\[28\]][199][\[29\]][200] Lewis was led to invent modal logic, and specifically [strict implication][201], on the grounds that classical logic grants [paradoxes of material implication][202] such as the principle that [a falsehood implies any proposition][203].[\[30\]][204] This work culminated in his 1932 book *Symbolic Logic* (with [C. H. Langford][205]),[\[31\]][206] which introduced the five systems *S1* through *S5*.

After Lewis, modal logic received little attention for several decades. [Nicholas Rescher][207] has argued that this was because [Bertrand Russell][208] rejected it.[\[32\]][209] However, [Jan Dejnozka][210] has argued against this view, stating that a modal system which Dejnozka calls "MDL" is described in Russell's works, although Russell did believe the concept of modality to "come from confusing propositions with [propositional functions][211]," as he wrote in *The Analysis of Matter*.[\[33\]][212]

[Arthur Norman Prior][213] warned [Ruth Barcan Marcus][214] to prepare well in the debates concerning quantified modal logic with [Willard Van Orman Quine][215], due to the biases against modal logic.[\[34\]][216]

Ruth C. Barcan (later [Ruth Barcan Marcus][217]) developed the first axiomatic systems of quantified modal logic — first and second order extensions of Lewis' *S2*, *S4*, and *S5*.[\[35\]][218][\[36\]][219][\[37\]][220]

The contemporary era in modal semantics began in 1959, when [Saul Kripke][221] (then only a 18-year-old [Harvard University][222] undergraduate) introduced the now-standard [Kripke semantics][223] for modal logics. These are commonly referred to as "possible worlds" semantics. Kripke and [A. N. Prior][224] had previously corresponded at some length. Kripke semantics is basically simple, but proofs are eased using semantic-tableaux or [analytic tableaux][225], as explained by [E. W. Beth][226].

[A. N. Prior][227] created modern [temporal logic][228], closely related to modal logic, in 1957 by adding modal operators \[F\] and \[P\] meaning "eventually" and "previously". [Vaughan Pratt][229] introduced [dynamic logic][230] in 1976. In 1977, [Amir Pnueli][231] proposed using temporal logic to formalise the behaviour of continually operating concurrent programs. Flavors of temporal logic include [propositional dynamic logic][232] (PDL), [propositional linear temporal logic][233] (PLTL), [linear temporal logic][234] (LTL), [computation tree logic][235] (CTL), [Hennessy–Milner logic][236], and *T*.\[*[clarification needed][237]*\]

The mathematical structure of modal logic, namely [Boolean algebras][238] augmented with [unary operations][239] (often called [modal algebras][240]), began to emerge with [J. C. C. McKinsey][241]'s 1941 proof that *S2* and *S4* are decidable,[\[38\]][242] and reached full flower in the work of [Alfred Tarski][243] and his student [Bjarni Jónsson][244] (Jónsson and Tarski 1951–52). This work revealed that *S4* and *S5* are models of [interior algebra][245], a proper extension of Boolean algebra originally designed to capture the properties of the [interior][246] and [closure operators][247] of [topology][248]. Texts on modal logic typically do little more than mention its connections with the study of [Boolean algebras][249] and [topology][250]. For a thorough survey of the history of formal modal logic and of the associated mathematics, see [Robert Goldblatt][251] (2006).[\[39\]][252]

## See also\[[edit][253]\]

## Notes\[[edit][254]\]

1.  __[^][255]__ Sider, Theodor (2010). *Logic for philosophy*. Oxford University Press. [ISBN][256] [9780199575589][257].
2.  ^ [*__a__*][258] [*__b__*][259] [*__c__*][260] van Benthem, Johan (2010). [*Modal Logic for Open Minds*][261] (PDF). CSLI. [S2CID][262] [62162288][263]. Archived from [the original][264] (PDF) on 2020-02-19.
3.  __[^][265]__ Hamkins, Joel (2012). "The set-theoretic multiverse". *The Review of Symbolic Logic*. __5__ (3): 416–449. [arXiv][266]:[1108.4223][267]. [doi][268]:[10.1017/S1755020311000359][269]. [S2CID][270] [33807508][271].
4.  __[^][272]__ Baltag, Alexandru; Christoff, Zoe; Rendsvig, Rasmus; Smets, Sonja (2019). ["Dynamic Epistemic Logics of Diffusion and Prediction in Social Networks"][273]. *Studia Logica*. __107__ (3): 489–531. [doi][274]:[10.1007/s11225-018-9804-x][275]. [S2CID][276] [13968166][277].
5.  __[^][278]__ Blackburn, Patrick; de Rijke, Maarten; Venema, Yde (2001). [*Modal Logic*][279]. Cambridge Tracts in Theoretical Computer Science. Cambridge University Press. [ISBN][280] [9780521527149][281].
6.  __[^][282]__ Fitting and Mendelsohn. *[First-Order Modal Logic][283]*. Kluwer Academic Publishers, 1998. Section 1.6
7.  __[^][284]__ ["Press release: Superheavy Element 114 Confirmed: A Stepping Stone to the Island of Stability"][285]. *Lawrence Berkeley National Laboratory*. 24 September 2009.
8.  __[^][286]__ Feinberg, G. (1967). "Possibility of Faster-Than-Light Particles". *[Physical Review][287]*. __159__ (5): 1089–1105. [Bibcode][288]:[1967PhRv..159.1089F][289]. [doi][290]:[10.1103/PhysRev.159.1089][291]. See also Feinberg's later paper: Phys. Rev. D 17, 1651 (1978)
9.  __[^][292]__ [Einstein, Albert][293] (1905-06-30). ["Zur Elektrodynamik bewegter Körper"][294]. *Annalen der Physik*. __17__ (10): 891–921. [Bibcode][295]:[1905AnP...322..891E][296]. [doi][297]:[10.1002/andp.19053221004][298].
10.  __[^][299]__ Stoljar, Daniel. ["Physicalism"][300]. *The Stanford Encyclopedia of Philosophy*. Retrieved 16 December 2014.
11.  __[^][301]__ Saul Kripke. *Naming and Necessity*. Harvard University Press, 1980. pg 113
12.  __[^][302]__ Thomson, Judith and Alex Byrne (2006). [*Content and Modality : Themes from the Philosophy of Robert Stalnaker*][303]. Oxford: Oxford University Press. p. 107. [ISBN][304] [9780191515736][305]. Retrieved 16 December 2014.
13.  __[^][306]__ cf. [Blindsight][307] and [Subliminal perception][308] for negative empirical evidence
14.  __[^][309]__ Eschenroeder, Erin; Sarah Mills; Thao Nguyen (2006-09-30). William Frawley (ed.). [*The Expression of Modality*][310]. The Expression of Cognitive Categories. Mouton de Gruyter. pp. 8–9. [ISBN][311] [978-3-11-018436-5][312]. Retrieved 2010-01-03.
15.  __[^][313]__ Nuyts, Jan (November 2000). *Epistemic Modality, Language, and Conceptualization: A Cognitive-pragmatic Perspective*. Human Cognitive Processing. John Benjamins Publishing Co. p. 28. [ISBN][314] [978-90-272-2357-9][315].
16.  __[^][316]__ See, e.g., Hansson, Sven (2006). "Ideal Worlds—Wishful Thinking in Deontic Logic". *Studia Logica*. __82__ (3): 329–336. [doi][317]:[10.1007/s11225-006-8100-3][318]. [S2CID][319] [40132498][320].
17.  __[^][321]__ Ted Sider's *Logic for Philosophy*, unknown page. [http://tedsider.org/books/lfp.html][322]
18.  __[^][323]__ Kripke, Saul. *Naming and Necessity*. (1980; Harvard UP), pp. 43–5.
19.  __[^][324]__ Kripke, Saul. *Naming and Necessity*. (1980; Harvard UP), pp. 15–6.
20.  __[^][325]__ David Lewis, *On the Plurality of Worlds* (1986; Blackwell)
21.  __[^][326]__ Adams, Robert M. [*Theories of Actuality*][327]. Noûs, Vol. 8, No. 3 (Sep., 1974), particularly pp. 225–31.
22.  __[^][328]__ See [\[1\]][329] and [\[2\]][330]
23.  __[^][331]__ Andrew H. Miller, "Lives Unled in Realist Fiction", *Representations* 98, Spring 2007, The Regents of the University of California, [ISSN][332] [0734-6018][333], pp. 118–134.
24.  __[^][334]__ Bobzien, Susanne. ["Ancient Logic"][335]. In [Zalta, Edward N.][336] (ed.). *[Stanford Encyclopedia of Philosophy][337]*.
25.  __[^][338]__ Bobzien, S. (1993). "Chrysippus' Modal Logic and its Relation to Philo and Diodorus", in K. Doering & Th. Ebert (eds), *Dialektiker und Stoiker*, Stuttgart 1993, pp. 63–84.
26.  __[^][339]__ [History of logic: Arabic logic][340], *[Encyclopædia Britannica][341]*.
27.  __[^][342]__ Lukas M. Verburgt (2020). ["The Venn-MacColl Dispute in *Nature*"][343]. *History and Philosophy of Logic*. __41__ (3): 244–251. [doi][344]:[10.1080/01445340.2020.1758387][345]. [S2CID][346] [219928989][347]. Here: p.244.
28.  __[^][348]__ Lewis, C. I. (1912). "Implication and the Algebra of Logic." *[Mind][349]*, __21__(84):522–531.
29.  __[^][350]__ Ballarin, Roberta. ["Modern Origins of Modal Logic"][351]. *The Stanford Encyclopedia of Philosophy*. Retrieved 30 August 2020.
30.  __[^][352]__ Lewis, C. I. (1917). "The issues concerning material implication." *Journal of Philosophy, Psychology, and Scientific Methods*, __14__:350–356.
31.  __[^][353]__ Clarence Irving Lewis and Cooper Harold Langford (1932). *Symbolic Logic* (1st ed.). Dover Publications.
32.  __[^][354]__ Rescher, Nicholas (1979). "Russell and Modal Logic". In George W. Roberts (ed.). *Bertrand Russell Memorial Volume*. London: George Allen and Unwin. p. 146.
33.  __[^][355]__ Dejnozka, Jan (1990). ["Ontological Foundations of Russell's Theory of Modality"][356] (PDF). *Erkenntnis*. __32__ (3): 383–418. [doi][357]:[10.1007/bf00216469][358]. [S2CID][359] [121002878][360]. Retrieved 2012-10-22.; quote is cited from Russell, Bertrand (1927). [*The Analysis of Matter*][361]. pp. [173][362].
34.  __[^][363]__ [Ruth Barcan Marcus][364], *Modalities: Philosophical Essays*, Oxford University Press, 1993, p. x.
35.  __[^][365]__ Ruth C. Barcan (Mar 1946). "A Functional Calculus of First Order Based on Strict Implication". *Journal of Symbolic Logic*. __11__ (1): 1–16. [doi][366]:[10.2307/2269159][367]. [JSTOR][368] [2269159][369].
36.  __[^][370]__ Ruth C. Barcan (Dec 1946). "The Deduction Theorem in a Functional Calculus of First Order Based on Strict Implication". *Journal of Symbolic Logic*. __11__ (4): 115–118. [doi][371]:[10.2307/2268309][372]. [JSTOR][373] [2268309][374].
37.  __[^][375]__ Ruth C. Barcan (Mar 1947). "The Identity of Individuals in a Strict Functional Calculus of Second Order". *Journal of Symbolic Logic*. __12__ (1): 12–15. [doi][376]:[10.2307/2267171][377]. [JSTOR][378] [2267171][379].
38.  __[^][380]__ McKinsey, J. C. C. (1941). "A Solution of the Decision Problem for the Lewis Systems S2 and S4, with an Application to Topology". *J. Symb. Log*. __6__ (4): 117–134. [doi][381]:[10.2307/2267105][382]. [JSTOR][383] [2267105][384].
39.  __[^][385]__ Robert Goldbaltt, [Mathematical Modal Logic: A view of it evolution][386]

## References\[[edit][387]\]

-   *This article includes material from the* [Free On-line Dictionary of Computing][388], *used with [permission][389] under the* [GFDL][390].
-   Barcan-Marcus, Ruth JSL 11 (1946) and JSL 112 (1947) and "Modalities", OUP, 1993, 1995.
-   Beth, Evert W., 1955. "[Semantic entailment and formal derivability][391]", Mededlingen van de Koninklijke Nederlandse Akademie van Wetenschappen, Afdeling Letterkunde, N.R. Vol 18, no 13, 1955, pp 309–42. Reprinted in Jaakko Intikka (ed.) The Philosophy of Mathematics, Oxford University Press, 1969 (Semantic Tableaux proof methods).
-   Beth, Evert W., "[Formal Methods: An Introduction to Symbolic Logic and to the Study of Effective Operations in Arithmetic and Logic][392]", D. Reidel, 1962 (Semantic Tableaux proof methods).
-   Blackburn, P.; [van Benthem, J.][393]; and Wolter, Frank; Eds. (2006) *[Handbook of Modal Logic][394]*. North Holland.
-   Blackburn, Patrick; de Rijke, Maarten; and Venema, Yde (2001) *Modal Logic*. Cambridge University Press. [ISBN][395] [0-521-80200-8][396]
-   Chagrov, Aleksandr; and Zakharyaschev, Michael (1997) *Modal Logic*. Oxford University Press. [ISBN][397] [0-19-853779-4][398]
-   Chellas, B. F. (1980) *[Modal Logic: An Introduction][399]*. Cambridge University Press. [ISBN][400] [0-521-22476-4][401]
-   [Cresswell, M. J.][402] (2001) "Modal Logic" in Goble, Lou; Ed., *The Blackwell Guide to Philosophical Logic*. Basil Blackwell: 136–58. [ISBN][403] [0-631-20693-0][404]
-   Fitting, Melvin; and Mendelsohn, R. L. (1998) *First Order Modal Logic*. Kluwer. [ISBN][405] [0-7923-5335-8][406]
-   [James Garson][407] (2006) *Modal Logic for Philosophers*. Cambridge University Press. [ISBN][408] [0-521-68229-0][409]. A thorough introduction to modal logic, with coverage of various derivation systems and a distinctive approach to the use of diagrams in aiding comprehension.
-   Girle, Rod (2000) *Modal Logics and Philosophy*. Acumen (UK). [ISBN][410] [0-7735-2139-9][411]. Proof by [refutation trees][412]. A good introduction to the varied interpretations of modal logic.
-   [Goldblatt, Robert][413] (1992) "Logics of Time and Computation", 2nd ed., CSLI Lecture Notes No. 7. University of Chicago Press.
-   —— (1993) *Mathematics of Modality*, CSLI Lecture Notes No. 43. University of Chicago Press.
-   —— (2006) "[Mathematical Modal Logic: a View of its Evolution][414]", in Gabbay, D. M.; and Woods, John; Eds., *Handbook of the History of Logic, Vol. 6*. Elsevier BV.
-   Goré, Rajeev (1999) "Tableau Methods for Modal and Temporal Logics" in D'Agostino, M.; Gabbay, D.; Haehnle, R.; and Posegga, J.; Eds., *Handbook of Tableau Methods*. Kluwer: 297–396.
-   Hughes, G. E., and Cresswell, M. J. (1996) *A New Introduction to Modal Logic*. Routledge. [ISBN][415] [0-415-12599-5][416]
-   [Jónsson, B.][417] and [Tarski, A.][418], 1951–52, "Boolean Algebra with Operators I and II", *American Journal of Mathematics 73*: 891–939 and *74*: 129–62.
-   Kracht, Marcus (1999) *[Tools and Techniques in Modal Logic][419]*, Studies in Logic and the Foundations of Mathematics No. 142. North Holland.
-   [Lemmon, E. J.][420] (with [Scott, D.][421]) (1977) *An Introduction to Modal Logic*, American Philosophical Quarterly Monograph Series, no. 11 (Krister Segerberg, series ed.). Basil Blackwell.
-   [Lewis, C. I.][422] (with [Langford, C. H.][423]) (1932). *Symbolic Logic*. Dover reprint, 1959.
-   [Prior, A. N.][424] (1957) *[Time and Modality][425]*. Oxford University Press.
-   Snyder, D. Paul "Modal Logic and its applications", Van Nostrand Reinhold Company, 1971 (proof tree methods).
-   Zeman, J. J. (1973) *[Modal Logic.][426]* Reidel. Employs [Polish notation][427].
-   ["History of logic"][428], [Britannica Online][429].

## Further reading\[[edit][430]\]

-   Ruth Barcan Marcus, *Modalities*, Oxford University Press, 1993.
-   D. M. Gabbay, A. Kurucz, F. Wolter and M. Zakharyaschev, *Many-Dimensional Modal Logics: Theory and Applications*, Elsevier, Studies in Logic and the Foundations of Mathematics, volume 148, 2003, [ISBN][431] [0-444-50826-0][432]. \[Covers many varieties of modal logics, e.g. temporal, epistemic, dynamic, description, spatial from a unified perspective with emphasis on computer science aspects, e.g. decidability and complexity.\]
-   Andrea Borghini, [*A Critical Introduction to the Metaphysics of Modality*][433], New York: Bloomsbury, 2016.

## External links\[[edit][434]\]

-   [Internet Encyclopedia of Philosophy][435]:
    -   "[Modal Logic: A Contemporary View][436]" – by Johan van Benthem.
    -   "[Rudolf Carnap's Modal Logic][437]" – by MJ Cresswell.
-   [Stanford Encyclopedia of Philosophy][438]:
    -   "[Modal Logic][439]" – by [James Garson][440].
    -   "[Modern Origins of Modal Logic][441]" – by Roberta Ballarin.
    -   "[Provability Logic][442]" – by Rineke Verbrugge.
-   [Edward N. Zalta][443], 1995, "[Basic Concepts in Modal Logic.][444]"
-   [John McCarthy][445], 1996, "[Modal Logic.][446]"
-   [Molle][447] a Java prover for experimenting with modal logics
-   Suber, Peter, 2002, "[Bibliography of Modal Logic.][448]"
-   [List of Logic Systems][449] List of many modal logics with sources, by John Halleck.
-   [Advances in Modal Logic.][450] Biannual international conference and book series in modal logic.
-   [S4prover][451] A tableaux prover for S4 logic
-   "[Some Remarks on Logic and Topology][452]" – by Richard Moot; exposits a [topological][453] [semantics][454] for the modal logic S4.
-   [LoTREC][455] The most generic prover for modal logics from IRIT/Toulouse University

[1]: https://en.wikipedia.org/wiki/File:Diagram_of_Normal_Modal_Logics.png
[2]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[3]: https://en.wikipedia.org/wiki/Linguistic_modality "Linguistic modality"
[4]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[5]: https://en.wikipedia.org/wiki/Classical_modal_logic "Classical modal logic"
[6]: https://en.wikipedia.org/wiki/Negation "Negation"
[7]: https://en.wikipedia.org/wiki/De_Morgan_dual "De Morgan dual"
[8]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[9]: https://en.wikipedia.org/wiki/Alethic_modal_logic "Alethic modal logic"
[10]: https://en.wikipedia.org/wiki/Deontic_modal_logic "Deontic modal logic"
[11]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[12]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[13]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[14]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[15]: https://en.wikipedia.org/wiki/Arthur_Prior "Arthur Prior"
[16]: https://en.wikipedia.org/wiki/Jaakko_Hintikka "Jaakko Hintikka"
[17]: https://en.wikipedia.org/wiki/Saul_Kripke "Saul Kripke"
[18]: https://en.wikipedia.org/wiki/Possible_world "Possible world"
[19]: https://en.wikipedia.org/wiki/Accessibility_relation "Accessibility relation"
[20]: https://en.wikipedia.org/wiki/Possible_worlds "Possible worlds"
[21]: https://en.wikipedia.org/wiki/Philosophy_of_language "Philosophy of language"
[22]: https://en.wikipedia.org/wiki/Epistemology "Epistemology"
[23]: https://en.wikipedia.org/wiki/Metaphysics "Metaphysics"
[24]: https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)"
[25]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-logicforphilosophy-1
[26]: https://en.wikipedia.org/wiki/Game_theory "Game theory"
[27]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-openminds-2
[28]: https://en.wikipedia.org/wiki/Moral_theory "Moral theory"
[29]: https://en.wikipedia.org/wiki/Legal_theory "Legal theory"
[30]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-openminds-2
[31]: https://en.wikipedia.org/wiki/Web_design "Web design"
[32]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-openminds-2
[33]: https://en.wikipedia.org/wiki/Multiverse_(set_theory) "Multiverse (set theory)"
[34]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-3
[35]: https://en.wikipedia.org/wiki/Social_epistemology "Social epistemology"
[36]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-4
[37]: https://en.wikipedia.org/wiki/Relational_structure "Relational structure"
[38]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-bluebible-5
[39]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=1 "Edit section: Semantics"
[40]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=2 "Edit section: Relational semantics"
[41]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=3 "Edit section: Basic notions"
[42]: https://en.wikipedia.org/wiki/Possible_world "Possible world"
[43]: https://en.wikipedia.org/wiki/Accessibility_relation "Accessibility relation"
[44]: https://en.wikipedia.org/wiki/Model_(logic) "Model (logic)"
[45]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-6
[46]: https://en.wikipedia.org/wiki/Accessibility_relation "Accessibility relation"
[47]: https://en.wikipedia.org/w/index.php?title=Valuation_function&action=edit&redlink=1 "Valuation function (page does not exist)"
[48]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[49]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=4 "Edit section: Frames and completeness"
[50]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[51]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[52]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[53]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[54]: https://en.wikipedia.org/wiki/Serial_relation "Serial relation"
[55]: https://en.wikipedia.org/wiki/Euclidean_relation "Euclidean relation"
[56]: https://en.wikipedia.org/wiki/Preorder "Preorder"
[57]: https://en.wikipedia.org/wiki/Euclidean_relation "Euclidean relation"
[58]: https://en.wikipedia.org/wiki/Symmetric_relation "Symmetric relation"
[59]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[60]: https://en.wikipedia.org/wiki/Equivalence_relation "Equivalence relation"
[61]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=5 "Edit section: Topological semantics"
[62]: https://en.wikipedia.org/wiki/Topological_space "Topological space"
[63]: https://en.wikipedia.org/w/index.php?title=Non-normal_modal_logic&action=edit&redlink=1 "Non-normal modal logic (page does not exist)"
[64]: https://en.wikipedia.org/wiki/David_Lewis_(philosopher) "David Lewis (philosopher)"
[65]: https://en.wikipedia.org/wiki/Angelika_Kratzer "Angelika Kratzer"
[66]: https://en.wikipedia.org/wiki/Counterfactuals "Counterfactuals"
[67]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=6 "Edit section: Axiomatic systems"
[68]: https://en.wikipedia.org/wiki/Axiomatic "Axiomatic"
[69]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[70]: https://en.wikipedia.org/wiki/George_Edward_Hughes "George Edward Hughes"
[71]: https://en.wikipedia.org/wiki/Max_John_Cresswell "Max John Cresswell"
[72]: https://en.wikipedia.org/wiki/Normal_modal_logic "Normal modal logic"
[73]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[74]: https://en.wikipedia.org/wiki/Clarence_Irving_Lewis "Clarence Irving Lewis"
[75]: https://en.wikipedia.org/wiki/Duality_(mathematics)#Duality_in_logic_and_set_theory "Duality (mathematics)"
[76]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[77]: https://en.wikipedia.org/wiki/Boolean_algebra_(logic) "Boolean algebra (logic)"
[78]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[79]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[80]: https://en.wikipedia.org/wiki/Normal_modal_logic "Normal modal logic"
[81]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[82]: https://en.wikipedia.org/wiki/Normal_modal_logic "Normal modal logic"
[83]: https://en.wikipedia.org/wiki/Saul_Kripke "Saul Kripke"
[84]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[85]: https://en.wikipedia.org/wiki/Normal_modal_logic "Normal modal logic"
[86]: https://en.wikipedia.org/wiki/Deontic_logic "Deontic logic"
[87]: https://en.wikipedia.org/wiki/Appeal_to_nature "Appeal to nature"
[88]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=7 "Edit section: Structural proof theory"
[89]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[90]: https://en.wikipedia.org/wiki/Structural_proof_theories "Structural proof theories"
[91]: https://en.wikipedia.org/wiki/Analytic_proof "Analytic proof"
[92]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=8 "Edit section: Decision methods"
[93]: https://en.wikipedia.org/wiki/Analytic_tableaux "Analytic tableaux"
[94]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[95]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=9 "Edit section: Modal logics in philosophy"
[96]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=10 "Edit section: Alethic logic"
[97]: https://en.wikipedia.org/wiki/Latin "Latin"
[98]: https://en.wikipedia.org/wiki/Nomological "Nomological"
[99]: https://en.wikipedia.org/wiki/Epistemic "Epistemic"
[100]: https://en.wikipedia.org/wiki/Classical_modal_logic "Classical modal logic"
[101]: https://en.wikipedia.org/wiki/De_Morgan_duality "De Morgan duality"
[102]: https://en.wikipedia.org/w/index.php?title=Intuitionistic_modal_logic&action=edit&redlink=1 "Intuitionistic modal logic (page does not exist)"
[103]: https://en.wikipedia.org/wiki/Socrates "Socrates"
[104]: https://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz "Gottfried Wilhelm Leibniz"
[105]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[106]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=11 "Edit section: Physical possibility"
[107]: https://en.wikipedia.org/wiki/Physical_law "Physical law"
[108]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[109]: https://en.wikipedia.org/wiki/Atom "Atom"
[110]: https://en.wikipedia.org/wiki/Atomic_number "Atomic number"
[111]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-7
[112]: https://en.wikipedia.org/wiki/Speed_of_light "Speed of light"
[113]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-Feinberg67-8
[114]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-9
[115]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=12 "Edit section: Metaphysical possibility"
[116]: https://en.wikipedia.org/wiki/Philosophers "Philosophers"
[117]: https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Words_to_watch#Unsupported_attributions "Wikipedia:Manual of Style/Words to watch"
[118]: https://en.wikipedia.org/wiki/Physicalism "Physicalism"
[119]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-10
[120]: https://en.wikipedia.org/wiki/Time "Time"
[121]: https://en.wikipedia.org/wiki/Saul_Kripke "Saul Kripke"
[122]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-11
[123]: https://en.wikipedia.org/wiki/Metaphysical_possibility "Metaphysical possibility"
[124]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-12
[125]: https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Words_to_watch#Unsupported_attributions "Wikipedia:Manual of Style/Words to watch"
[126]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=13 "Edit section: Epistemic logic"
[127]: https://en.wikipedia.org/wiki/Bigfoot "Bigfoot"
[128]: https://en.wikipedia.org/wiki/Goldbach%27s_conjecture "Goldbach's conjecture"
[129]: https://en.wikipedia.org/wiki/Goldbach%27s_conjecture#Origins "Goldbach's conjecture"
[130]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-13
[131]: https://en.wikipedia.org/wiki/Modal_logic#Axiomatic_systems "Modal logic"
[132]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-14
[133]: https://en.wikipedia.org/wiki/Grammatical_mood "Grammatical mood"
[134]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-15
[135]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=14 "Edit section: Temporal logic"
[136]: https://en.wikipedia.org/wiki/Grammatical_tense "Grammatical tense"
[137]: https://en.wikipedia.org/wiki/Normal_modal_logic "Normal modal logic"
[138]: https://en.wikipedia.org/wiki/Accidental_necessity "Accidental necessity"
[139]: https://en.wikipedia.org/wiki/Problem_of_future_contingents "Problem of future contingents"
[140]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[141]: https://en.wikipedia.org/wiki/Principle_of_bivalence "Principle of bivalence"
[142]: https://en.wikipedia.org/wiki/Linear_Temporal_Logic "Linear Temporal Logic"
[143]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[144]: https://en.wikipedia.org/wiki/Accessibility_relation "Accessibility relation"
[145]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=15 "Edit section: Deontic logic"
[146]: https://en.wikipedia.org/wiki/Obligation "Obligation"
[147]: https://en.wikipedia.org/wiki/Norm_(philosophy) "Norm (philosophy)"
[148]: https://en.wikipedia.org/wiki/Deontic_logic "Deontic logic"
[149]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[150]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[151]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-16
[152]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=16 "Edit section: Intuitive problems with deontic logic"
[153]: https://en.wikipedia.org/wiki/Contrapositive "Contrapositive"
[154]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-17
[155]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=17 "Edit section: Doxastic logic"
[156]: https://en.wikipedia.org/wiki/Ancient_Greek "Ancient Greek"
[157]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=18 "Edit section: Metaphysical questions"
[158]: https://en.wikipedia.org/wiki/Logically_possible "Logically possible"
[159]: https://en.wikipedia.org/wiki/Possible_worlds "Possible worlds"
[160]: https://en.wikipedia.org/wiki/Saul_Kripke "Saul Kripke"
[161]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-18
[162]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-19
[163]: https://en.wikipedia.org/wiki/David_Lewis_(philosopher) "David Lewis (philosopher)"
[164]: https://en.wikipedia.org/wiki/Indexicality "Indexicality"
[165]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-20
[166]: https://en.wikipedia.org/wiki/Modal_realism "Modal realism"
[167]: https://en.wikipedia.org/wiki/Robert_Merrihew_Adams "Robert Merrihew Adams"
[168]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-21
[169]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=19 "Edit section: Further applications"
[170]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-22
[171]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-23
[172]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=20 "Edit section: History"
[173]: https://en.wikipedia.org/wiki/Aristotle "Aristotle"
[174]: https://en.wikipedia.org/wiki/Prior_Analytics "Prior Analytics"
[175]: https://en.wikipedia.org/wiki/Theophrastus "Theophrastus"
[176]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-24
[177]: https://en.wikipedia.org/wiki/Problem_of_future_contingents "Problem of future contingents"
[178]: https://en.wikipedia.org/wiki/De_Interpretatione "De Interpretatione"
[179]: https://en.wikipedia.org/wiki/Potentiality "Potentiality"
[180]: https://en.wikipedia.org/wiki/Diodorus_Cronus "Diodorus Cronus"
[181]: https://en.wikipedia.org/wiki/Philo_the_Dialectician "Philo the Dialectician"
[182]: https://en.wikipedia.org/wiki/Chrysippus "Chrysippus"
[183]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[184]: https://en.wikipedia.org/wiki/Modal_logic#Axiomatic_systems
[185]: https://en.wikipedia.org/wiki/Temporal_logic "Temporal logic"
[186]: https://en.wikipedia.org/wiki/Diodorus_Cronus#Master_Argument "Diodorus Cronus"
[187]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-25
[188]: https://en.wikipedia.org/wiki/Avicenna "Avicenna"
[189]: https://en.wikipedia.org/wiki/Temporal_logic "Temporal logic"
[190]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-Britannica-26
[191]: https://en.wikipedia.org/wiki/Scholastics "Scholastics"
[192]: https://en.wikipedia.org/wiki/William_of_Ockham "William of Ockham"
[193]: https://en.wikipedia.org/wiki/John_Duns_Scotus "John Duns Scotus"
[194]: https://en.wikipedia.org/wiki/Essence "Essence"
[195]: https://en.wikipedia.org/wiki/Accident_(philosophy) "Accident (philosophy)"
[196]: https://en.wikipedia.org/wiki/Hugh_MacColl "Hugh MacColl"
[197]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-27
[198]: https://en.wikipedia.org/wiki/C._I._Lewis "C. I. Lewis"
[199]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-28
[200]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-29
[201]: https://en.wikipedia.org/wiki/Strict_implication "Strict implication"
[202]: https://en.wikipedia.org/wiki/Paradoxes_of_material_implication "Paradoxes of material implication"
[203]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[204]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-30
[205]: https://en.wikipedia.org/wiki/Cooper_Harold_Langford "Cooper Harold Langford"
[206]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-31
[207]: https://en.wikipedia.org/wiki/Nicholas_Rescher "Nicholas Rescher"
[208]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[209]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-32
[210]: https://en.wikipedia.org/w/index.php?title=Jan_Dejnozka&action=edit&redlink=1 "Jan Dejnozka (page does not exist)"
[211]: https://en.wikipedia.org/wiki/Propositional_function "Propositional function"
[212]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-33
[213]: https://en.wikipedia.org/wiki/Arthur_Norman_Prior "Arthur Norman Prior"
[214]: https://en.wikipedia.org/wiki/Ruth_Barcan_Marcus "Ruth Barcan Marcus"
[215]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[216]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-34
[217]: https://en.wikipedia.org/wiki/Ruth_Barcan_Marcus "Ruth Barcan Marcus"
[218]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-35
[219]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-36
[220]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-37
[221]: https://en.wikipedia.org/wiki/Saul_Kripke "Saul Kripke"
[222]: https://en.wikipedia.org/wiki/Harvard_University "Harvard University"
[223]: https://en.wikipedia.org/wiki/Kripke_semantics "Kripke semantics"
[224]: https://en.wikipedia.org/wiki/A._N._Prior "A. N. Prior"
[225]: https://en.wikipedia.org/wiki/Analytic_tableaux "Analytic tableaux"
[226]: https://en.wikipedia.org/wiki/Evert_Willem_Beth "Evert Willem Beth"
[227]: https://en.wikipedia.org/wiki/A._N._Prior "A. N. Prior"
[228]: https://en.wikipedia.org/wiki/Temporal_logic "Temporal logic"
[229]: https://en.wikipedia.org/wiki/Vaughan_Pratt "Vaughan Pratt"
[230]: https://en.wikipedia.org/wiki/Dynamic_logic_(modal_logic) "Dynamic logic (modal logic)"
[231]: https://en.wikipedia.org/wiki/Amir_Pnueli "Amir Pnueli"
[232]: https://en.wikipedia.org/wiki/Propositional_dynamic_logic "Propositional dynamic logic"
[233]: https://en.wikipedia.org/w/index.php?title=Propositional_linear_temporal_logic&action=edit&redlink=1 "Propositional linear temporal logic (page does not exist)"
[234]: https://en.wikipedia.org/wiki/Linear_temporal_logic "Linear temporal logic"
[235]: https://en.wikipedia.org/wiki/Computation_tree_logic "Computation tree logic"
[236]: https://en.wikipedia.org/wiki/Hennessy%E2%80%93Milner_logic "Hennessy–Milner logic"
[237]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[238]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[239]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[240]: https://en.wikipedia.org/wiki/Modal_algebra "Modal algebra"
[241]: https://en.wikipedia.org/wiki/J.C.C._McKinsey "J.C.C. McKinsey"
[242]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-38
[243]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[244]: https://en.wikipedia.org/wiki/Bjarni_J%C3%B3nsson "Bjarni Jónsson"
[245]: https://en.wikipedia.org/wiki/Interior_algebra "Interior algebra"
[246]: https://en.wikipedia.org/wiki/Interior_operator "Interior operator"
[247]: https://en.wikipedia.org/wiki/Closure_operator "Closure operator"
[248]: https://en.wikipedia.org/wiki/Topology "Topology"
[249]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[250]: https://en.wikipedia.org/wiki/Topology "Topology"
[251]: https://en.wikipedia.org/wiki/Robert_Goldblatt "Robert Goldblatt"
[252]: https://en.wikipedia.org/wiki/Modal_logic#cite_note-39
[253]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=21 "Edit section: See also"
[254]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=22 "Edit section: Notes"
[255]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-logicforphilosophy_1-0
[256]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[257]: https://en.wikipedia.org/wiki/Special:BookSources/9780199575589 "Special:BookSources/9780199575589"
[258]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-openminds_2-0
[259]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-openminds_2-1
[260]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-openminds_2-2
[261]: https://web.archive.org/web/20200219165057/https://pdfs.semanticscholar.org/9bea/866c143326aeb700c20165a933f583b16a46.pdf
[262]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[263]: https://api.semanticscholar.org/CorpusID:62162288
[264]: https://pdfs.semanticscholar.org/9bea/866c143326aeb700c20165a933f583b16a46.pdf
[265]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-3
[266]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[267]: https://arxiv.org/abs/1108.4223
[268]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[269]: https://doi.org/10.1017%2FS1755020311000359
[270]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[271]: https://api.semanticscholar.org/CorpusID:33807508
[272]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-4
[273]: https://doi.org/10.1007%2Fs11225-018-9804-x
[274]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[275]: https://doi.org/10.1007%2Fs11225-018-9804-x
[276]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[277]: https://api.semanticscholar.org/CorpusID:13968166
[278]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-bluebible_5-0
[279]: https://www.google.com/books/edition/Modal_Logic/pbb_Asgoq0oC?hl=en&gbpv=1&dq=rijlke%20blackburn%20venema%20modal%20logic&pg=PP1&printsec=frontcover&bsq=rijlke%20blackburn%20venema%20modal%20logic
[280]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[281]: https://en.wikipedia.org/wiki/Special:BookSources/9780521527149 "Special:BookSources/9780521527149"
[282]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-6
[283]: https://books.google.com/books?id=5IxqCQAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[284]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-7
[285]: http://newscenter.lbl.gov/2009/09/24/114-confirmed/
[286]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-Feinberg67_8-0
[287]: https://en.wikipedia.org/wiki/Physical_Review "Physical Review"
[288]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[289]: https://ui.adsabs.harvard.edu/abs/1967PhRv..159.1089F
[290]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[291]: https://doi.org/10.1103%2FPhysRev.159.1089
[292]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-9
[293]: https://en.wikipedia.org/wiki/Albert_Einstein "Albert Einstein"
[294]: http://sedici.unlp.edu.ar/handle/10915/2786
[295]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[296]: https://ui.adsabs.harvard.edu/abs/1905AnP...322..891E
[297]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[298]: https://doi.org/10.1002%2Fandp.19053221004
[299]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-10
[300]: http://plato.stanford.edu/entries/physicalism/
[301]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-11
[302]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-12
[303]: https://books.google.com/books?id=JXeOkXnCwb8C
[304]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[305]: https://en.wikipedia.org/wiki/Special:BookSources/9780191515736 "Special:BookSources/9780191515736"
[306]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-13
[307]: https://en.wikipedia.org/wiki/Blindsight "Blindsight"
[308]: https://en.wikipedia.org/wiki/Subliminal_perception "Subliminal perception"
[309]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-14
[310]: https://books.google.com/books?id=72URszHq2SEC&pg=PT18
[311]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[312]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-11-018436-5 "Special:BookSources/978-3-11-018436-5"
[313]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-15
[314]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[315]: https://en.wikipedia.org/wiki/Special:BookSources/978-90-272-2357-9 "Special:BookSources/978-90-272-2357-9"
[316]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-16
[317]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[318]: https://doi.org/10.1007%2Fs11225-006-8100-3
[319]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[320]: https://api.semanticscholar.org/CorpusID:40132498
[321]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-17
[322]: http://tedsider.org/books/lfp.html
[323]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-18
[324]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-19
[325]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-20
[326]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-21
[327]: https://www.jstor.org/stable/2214751
[328]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-22
[329]: http://www.estherlederberg.com/EImages/Extracurricular/Dickens%20Universe/Counter%20Factuals.html
[330]: http://www.estherlederberg.com/EImages/Extracurricular/Dickens%20Universe/Page%2017%20CounterFactuals.html
[331]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-23
[332]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[333]: https://www.worldcat.org/search?fq=x0:jrnl&q=n2:0734-6018
[334]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-24
[335]: https://plato.stanford.edu/entries/logic-ancient/
[336]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[337]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[338]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-25
[339]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-Britannica_26-0
[340]: http://www.britannica.com/ebc/article-65928
[341]: https://en.wikipedia.org/wiki/Encyclop%C3%A6dia_Britannica "Encyclopædia Britannica"
[342]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-27
[343]: https://www.tandfonline.com/doi/full/10.1080/01445340.2020.1758387
[344]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[345]: https://doi.org/10.1080%2F01445340.2020.1758387
[346]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[347]: https://api.semanticscholar.org/CorpusID:219928989
[348]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-28
[349]: https://en.wikipedia.org/wiki/Mind_(journal) "Mind (journal)"
[350]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-29
[351]: https://plato.stanford.edu/entries/logic-modal-origins/
[352]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-30
[353]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-31
[354]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-32
[355]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-33
[356]: http://www.members.tripod.com/~Jan_Dejnozka/onto_found_russell_modality.pdf
[357]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[358]: https://doi.org/10.1007%2Fbf00216469
[359]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[360]: https://api.semanticscholar.org/CorpusID:121002878
[361]: https://archive.org/details/in.ernet.dli.2015.221533
[362]: https://archive.org/details/in.ernet.dli.2015.221533/page/n183
[363]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-34
[364]: https://en.wikipedia.org/wiki/Ruth_Barcan_Marcus "Ruth Barcan Marcus"
[365]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-35
[366]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[367]: https://doi.org/10.2307%2F2269159
[368]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[369]: https://www.jstor.org/stable/2269159
[370]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-36
[371]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[372]: https://doi.org/10.2307%2F2268309
[373]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[374]: https://www.jstor.org/stable/2268309
[375]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-37
[376]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[377]: https://doi.org/10.2307%2F2267171
[378]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[379]: https://www.jstor.org/stable/2267171
[380]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-38
[381]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[382]: https://doi.org/10.2307%2F2267105
[383]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[384]: https://www.jstor.org/stable/2267105
[385]: https://en.wikipedia.org/wiki/Modal_logic#cite_ref-39
[386]: http://www.mcs.vuw.ac.nz/~rob/papers/modalhist.pdf
[387]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=23 "Edit section: References"
[388]: https://en.wikipedia.org/wiki/Free_On-line_Dictionary_of_Computing "Free On-line Dictionary of Computing"
[389]: https://en.wikipedia.org/wiki/Wikipedia:Foldoc_license "Wikipedia:Foldoc license"
[390]: https://en.wikipedia.org/wiki/GFDL "GFDL"
[391]: https://philpapers.org/rec/BETSEA-10
[392]: https://books.google.com/books?id=IE1FBgAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[393]: https://en.wikipedia.org/wiki/Johan_van_Benthem_(logician) "Johan van Benthem (logician)"
[394]: http://www.csc.liv.ac.uk/~frank/MLHandbook/
[395]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[396]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-80200-8 "Special:BookSources/0-521-80200-8"
[397]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[398]: https://en.wikipedia.org/wiki/Special:BookSources/0-19-853779-4 "Special:BookSources/0-19-853779-4"
[399]: https://books.google.com/books?id=YupiXWV5j6cC&printsec=frontcover#v=onepage&q&f=false
[400]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[401]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-22476-4 "Special:BookSources/0-521-22476-4"
[402]: https://en.wikipedia.org/wiki/Max_Cresswell "Max Cresswell"
[403]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[404]: https://en.wikipedia.org/wiki/Special:BookSources/0-631-20693-0 "Special:BookSources/0-631-20693-0"
[405]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[406]: https://en.wikipedia.org/wiki/Special:BookSources/0-7923-5335-8 "Special:BookSources/0-7923-5335-8"
[407]: https://en.wikipedia.org/wiki/James_Garson "James Garson"
[408]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[409]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-68229-0 "Special:BookSources/0-521-68229-0"
[410]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[411]: https://en.wikipedia.org/wiki/Special:BookSources/0-7735-2139-9 "Special:BookSources/0-7735-2139-9"
[412]: https://en.wikipedia.org/wiki/Analytic_tableau "Analytic tableau"
[413]: http://www.mcs.vuw.ac.nz/~rob/
[414]: http://www.mcs.vuw.ac.nz/~rob/papers/modalhist.pdf
[415]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[416]: https://en.wikipedia.org/wiki/Special:BookSources/0-415-12599-5 "Special:BookSources/0-415-12599-5"
[417]: https://en.wikipedia.org/wiki/Bjarni_J%C3%B3nsson "Bjarni Jónsson"
[418]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[419]: http://wwwhomes.uni-bielefeld.de/mkracht/html/tools/book.pdf
[420]: https://en.wikipedia.org/wiki/John_Lemmon "John Lemmon"
[421]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[422]: https://en.wikipedia.org/wiki/Clarence_Irving_Lewis "Clarence Irving Lewis"
[423]: https://en.wikipedia.org/wiki/Cooper_Harold_Langford "Cooper Harold Langford"
[424]: https://en.wikipedia.org/wiki/Arthur_Prior "Arthur Prior"
[425]: https://books.google.com/books?id=K5nymD8qgigC&printsec=frontcover#v=onepage&q&f=false
[426]: http://www.clas.ufl.edu/users/jzeman/modallogic/
[427]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[428]: https://www.britannica.com/topic/history-of-logic
[429]: https://en.wikipedia.org/wiki/Britannica_Online "Britannica Online"
[430]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=24 "Edit section: Further reading"
[431]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[432]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-50826-0 "Special:BookSources/0-444-50826-0"
[433]: https://www.google.com/books/edition/A_Critical_Introduction_to_the_Metaphysi/Ifw8CwAAQBAJ?hl=en&gbpv=1&bsq=%22modal%20logic%22
[434]: https://en.wikipedia.org/w/index.php?title=Modal_logic&action=edit&section=25 "Edit section: External links"
[435]: https://en.wikipedia.org/wiki/Internet_Encyclopedia_of_Philosophy "Internet Encyclopedia of Philosophy"
[436]: http://www.iep.utm.edu/modal-lo
[437]: http://www.iep.utm.edu/cmlogic
[438]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[439]: http://plato.stanford.edu/entries/logic-modal
[440]: https://en.wikipedia.org/wiki/James_Garson "James Garson"
[441]: https://plato.stanford.edu/entries/logic-modal-origins/
[442]: http://plato.stanford.edu/entries/logic-provability/
[443]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[444]: http://mally.stanford.edu/notes.pdf
[445]: https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist) "John McCarthy (computer scientist)"
[446]: http://www-formal.stanford.edu/jmc/mcchay69/node22.html
[447]: http://molle.sourceforge.net/
[448]: https://web.archive.org/web/20070904082235/http://www.earlham.edu/~peters/courses/logsys/nonstbib.htm#modal
[449]: https://web.archive.org/web/20060215083632/http://www.cc.utah.edu/~nahaj/logic/structures/systems/index.html
[450]: http://aiml.net/
[451]: http://teachinglogic.imag.fr/TableauxS4
[452]: http://www.labri.fr/perso/moot/talks/TopologyNotes.pdf
[453]: https://en.wikipedia.org/wiki/Topology "Topology"
[454]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[455]: http://www.irit.fr/Lotrec/
