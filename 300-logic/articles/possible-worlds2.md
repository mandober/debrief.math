---
downloaded:       2022-02-26
page-url:         https://plato.stanford.edu/entries/possible-worlds/
page-title:       Possible Worlds (Stanford Encyclopedia of Philosophy)
article-title:    Possible Worlds
---
# Possible Worlds (Stanford Encyclopedia of Philosophy)

Although ‘possible world’ has been part of the 
philosophical lexicon at least since Leibniz, the notion became 
firmly entrenched in contemporary philosophy with the development of 
possible world semantics for the languages of propositional and
first-order modal logic. In addition to the usual sentence operators
of
 classical logic such as
‘and’ (‘∧’), ‘or’
(‘∨’), ‘not’ (‘¬’),
‘if...then’ (‘→’), and, in the
first-order case, the quantifiers ‘all’
(‘∀’) and ‘some’
(‘∃’), these languages contain operators intended to
represent the modal adverbs ‘necessarily’
(‘□’) and ‘possibly’
(‘◇’). Although a prominent aspect of logic in both
Aristotle's work and the work of many medieval philosophers, modal
logic was largely ignored from the modern period to the mid-20th
century. And even though a variety of modal deductive systems had in
fact been rigorously developed in the early 20th century, notably by
Lewis and Langford (1932), there was for the languages of those
systems nothing comparable to the elegant semantics that Tarski had
provided for the languages of classical first-order
logic. Consequently, there was no rigorous account of what it means
for a sentence in those languages to be true and, hence, no
account of the critical semantic notions of validity and logical
consequence to underwrite the corresponding deductive notions of
theoremhood and provability. A concomitant philosophical consequence of
this void in modal logic was a deep skepticism, voiced most
prominently by Quine, toward any appeal to modal notions in
metaphysics generally, notably, the notion of an essential property.
(See Quine 1953 and 1956, and the appendix to Plantinga 1974.) The
purpose of the following two subsections is to provide a simple and
largely ahistorical overview of how possible world semantics fills
this void; the final subsection presents two important applications of
the semantics. (Readers familiar with basic possible world semantics
can skip to §2 with no significant loss of continuity.)
## 1\. Possible Worlds and Modal Logic

Although ‘possible world’ has been part of the philosophical lexicon at least since Leibniz, the notion became firmly entrenched in contemporary philosophy with the development of *possible world semantics* for the languages of propositional and first-order modal logic. In addition to the usual sentence operators of [classical logic][1] such as ‘and’ (‘∧’), ‘or’ (‘∨’), ‘not’ (‘¬’), ‘if...then’ (‘→’), and, in the first-order case, the quantifiers ‘all’ (‘∀’) and ‘some’ (‘∃’), these languages contain operators intended to represent the modal adverbs ‘necessarily’ (‘□’) and ‘possibly’ (‘◇’). Although a prominent aspect of logic in both Aristotle's work and the work of many medieval philosophers, modal logic was largely ignored from the modern period to the mid-20th century. And even though a variety of modal deductive systems had in fact been rigorously developed in the early 20th century, notably by Lewis and Langford (1932), there was for the languages of those systems nothing comparable to the elegant semantics that Tarski had provided for the languages of classical first-order logic. Consequently, there was no rigorous account of what it means for a sentence in those languages to be *true* and, hence, no account of the critical semantic notions of validity and logical consequence to underwrite the corresponding deductive notions of theoremhood and provability. A concomitant philosophical consequence of this void in modal logic was a deep skepticism, voiced most prominently by Quine, toward any appeal to modal notions in metaphysics generally, notably, the notion of an essential property. (See Quine 1953 and 1956, and the appendix to Plantinga 1974.) The purpose of the following two subsections is to provide a simple and largely ahistorical overview of how possible world semantics fills this void; the final subsection presents two important applications of the semantics. (Readers familiar with basic possible world semantics can skip to §2 with no significant loss of continuity.)

### 1.1 Extensionality Lost

Since the middle ages at least, philosophers have recognized a semantical distinction between *extension* and *intension*. The extension of a denoting expression, or *term*, such as a name or a definite description is its referent, the thing that it refers to; the extension of a predicate is the set of things it applies to; and the extension of a sentence is its truth value. By contrast, the intension of an expression is something rather less definite — its *sense*, or *meaning*, the semantical aspect of the expression that determines its extension. For purposes here, let us say that a *logic* is a formal language together with a semantic theory for the language, that is, a theory that provides rigorous definitions of truth, validity, and logical consequence for the language.\[[2][2]\] A logic is *extensional* if the truth value of every sentence of the logic is determined entirely by its form and the extensions of its component sentences, predicates, and terms. An extensional logic will thus typically feature a variety of valid *substitutivity principles*. A substitutivity principle says that, if two expressions are coextensional, that is, if they have the same extension, then (subject perhaps to some reasonable conditions) either can be substituted for the other in any sentence *salva veritate*, that is, without altering the original sentence's truth value. In an [*intensional* logic][3], the truth values of some sentences are determined by something over and above their forms and the extensions of their components and, as a consequence, at least one classical substitutivity principle is typically rendered invalid.

Extensionality is a well known and generally cherished feature of classical propositional and predicate logic. Modal logic, by contrast, is intensional. To illustrate: the substitutivity principle for sentences tells us that sentences with the same truth value can be substituted for one another *salva veritate*. So suppose that John's only pets are two dogs, Algol and BASIC, say, and consider two simple sentences and their formalizations (the predicates in question indicating the obvious English counterparts):

<table><tbody><tr><td></td><td></td><td>All John's dogs are mammals: ∀<i>x</i>(<i>Dx</i> → <i>Mx</i>).</td></tr></tbody></table>

<table><tbody><tr><td></td><td></td><td>All John's pets are mammals: ∀<i>x</i>(<i>Px</i> → <i>Mx</i>)</td></tr></tbody></table>

As both sentences are true, they have the same extension. Hence, in accordance with the classical substitutivity principle for sentences, we can replace the occurrence of (1) with (2) in the false sentence

<table><tbody><tr><td></td><td></td><td>Not all John's dogs are mammals: ¬∀<i>x</i>(<i>Dx</i> → <i>Mx</i>)</td></tr></tbody></table>

and the result is the equally false sentence

<table><tbody><tr><td></td><td></td><td>Not all John's pets are mammals: ¬∀<i>x</i>(<i>Px</i> → <i>Mx</i>).</td></tr></tbody></table>

However, when we make the same substitution in the true sentence

<table><tbody><tr><td></td><td></td><td>Necessarily, all John's dogs are mammals: □∀<i>x</i>(<i>Dx</i> → <i>Mx</i>),</td></tr></tbody></table>

the result is the sentence

<table><tbody><tr><td></td><td></td><td>Necessarily, all John's pets are mammals: □∀<i>x</i>(<i>Px</i> → <i>Mx</i>),</td></tr></tbody></table>

which is intuitively false, as John surely could have had a non-mammalian pet. In a modal logic that accurately represents the logic of the necessity operator, therefore, the substitutivity principle for sentences will have to fail.

The same example illustrates that the substitutivity principle for predicates will have to fail in modal logic as well. For, according to our example, the predicates ‘*D*’ and ‘*P*’ that are true of John's dogs and of John's pets, respectively, are coextensional, i.e., ∀*x*(*Dx* ↔ *Px*). However, while substituting the latter predicate for the former in (3) results in a sentence with the same truth value, the same substitution in (5) does not.

Modal logic, therefore, is intensional: in general, the truth value of a sentence is determined by something over and above its form and the extensions of its components. Absent a rigorous semantic theory to identify the source of its intensionality and to systematize intuitions about modal truth, validity, and logical consequence, there was little hope for the widespread acceptance of modal logic.

### 1.2 Extensionality Regained

The idea of possible worlds raised the prospect of extensional respectability for modal logic, not by rendering modal logic itself extensional, but by endowing it with an extensional semantic theory — one whose own logical foundation is that of classical predicate logic and, hence, one on which possibility and necessity can ultimately be understood along classical Tarskian lines. Specifically, in *possible world semantics*, the modal operators are interpreted as *quantifiers* over possible worlds, as expressed informally in the following two general principles:

<table><tbody><tr><td><b>Nec</b></td><td></td><td>A sentence of the form <sup>⌈</sup>Necessarily, φ<sup>⌉</sup> (<sup>⌈</sup>◻φ<sup>⌉</sup>) is true if and only if φ is true in every possible world.<sup>[<a href="https://plato.stanford.edu/entries/possible-worlds/notes.html#3" name="note-3">3</a>]</sup></td></tr></tbody></table>

<table><tbody><tr><td><b>Poss</b></td><td></td><td>A sentence of the form <sup>⌈</sup>Possibly, φ<sup>⌉</sup> (<sup>⌈</sup>◇φ<sup>⌉</sup>) is true if and only if φ is true in some possible world.</td></tr></tbody></table>

Given this, the failures of the classical substitutivity principles can be traced to the fact that modal operators, so interpreted, introduce contexts that require subtler notions of meaning for sentences and their component parts than are provided in classical logic; in particular, a subtler notion (to be clarified shortly) is required for predicates than that of the set of things they happen to apply to.

**Tarskian Semantics.** Standard model theoretic semantics for the languages of predicate logic deriving from the work of Tarski (1933, 1944) is the paradigmatic semantic theory for extensional logics. Given a standard first-order language ℒ, a Tarskian *interpretation* **I** *for* ℒ specifies a set **D** for the quantifiers of ℒ to range over (typically, some set of things that ℒ has been designed to describe) and assigns, to each term (constant or variable) τ of ℒ, a referent **a**τ ∈ **D** and, to each *n*\-place predicate π of ℒ, an appropriate extension **E**π — a truth value (TRUE or FALSE) if *n* = 0, a subset of **D** if *n* = 1, and a set of *n*\-tuples of members of **D** if *n* > 1. Given these assignments, sentences are evaluated as true under the interpretation **I** — true**I**, for short — according to a more or less familiar set of clauses. To facilitate the definition, let **I**\[ν/**a**\] be the interpretation that assigns the individual **a** to the variable ν and is otherwise exactly like **I**. Then we have:

-   An atomic sentence ⌈πτ1...τ*n*⌉ (of ℒ) is *true***I** if and only if
    -   *n* = 0 (i.e., π is a sentence letter) and the extension of π is the truth value TRUE; or
    -   *n* = 1 and **a**τ1 is in the extension of π; or
    -   *n* > 1 and ⟨**a**τ1, ..., **a**τ*n*⟩ is in the extension of π.
-   A negation ⌈¬ψ⌉ is true**I** if and only if ψ is not true**I**.
-   A material conditional⌈ψ → θ⌉ is true**I** iff, if ψ is true**I**, then θ is true**I**.
-   A universally quantified sentence ⌈∀νψ⌉ is true**I** if and only if, for all individuals **a** ∈ **D**, ψ is true**I**\[ν/**a**\].\[[4][5]\]

Clauses for the other standard Boolean operators and the existential quantifier under their usual definitions follow straightaway from these clauses. In particular, where

it follows that:

-   An existentially quantified sentence ⌈∃νψ⌉ is is true**I** if and only if, for some individual **a** ∈ **D**, ψ is true**I**\[ν/**a**\].

It is easy to verify that, in each of the above cases, replacing one coextensional term, predicate, or sentence for another has no effect on the truth values rendered by the above clauses, thus guaranteeing the validity of the classical substitutivity principles and, hence, the extensionality of first-order logic with a Tarskian semantics.

**From Tarskian to Possible World Semantics.** The truth conditional clauses for the three logical operators directly reflect the meanings of the natural language expressions they symbolize: ‘¬’ means *not*; ‘→’ means *if...then*; ‘∀’ means *all*. It is easy to see, however, that we cannot expect to add an equally simple clause for sentences containing an operator that symbolizes necessity. For a Tarskian interpretation *fixes* the domain of quantification and the extensions of all the predicates. Pretty clearly, however, to capture necessity and possibility, one must be able to consider alternative “possible” domains of quantification and alternative “possible” extensions for predicates as well. For, intuitively, under different circumstances, fewer, more, or other things might have existed and things that actually exist might, in those circumstances, have had very different properties. (6), for example, is false because John could have had non-mammalian pets: a canary, say, or a turtle, or, under *very* different circumstances, a dragon. A bit more formally put: Both the domain of quantification and the extension of the predicate ‘*P*’ could, in some sense or other, have been different.

Possible world semantics, of course, uses the concept of a possible world to give substance to the idea of alternative extensions and alternative domains of quantification. (Possible world semantics can be traced most clearly back to the work of Carnap (1947), its basic development culminating in the work of Hintikka (1957, 1961), Bayart (1958, 1959), and Kripke (1959, 1963a, 1963b).\[[5][6]\]) Similar to Tarskian semantics, a possible world interpretation **M** of a modal language ℒ specifies a nonempty set **D**, although thought of now as the set of “possible individuals” of **M**. Also as in Tarskian semantics, **M** assigns each term τ of ℒ a referent **a**τ in **D**.\[[6][7]\] Additionally however, **M** specifies a set **W**, the set of “possible worlds” of **M**, one of which is designated its “actual world”, and each world **w** in **W** is assigned its own domain of quantification, **d**(**w**) ⊆ **D**, intuitively, the set of individuals that exist in **w**.\[[7][8]\] To capture the idea of both the actual and possible extensions of a predicate, **M** assigns to each *n*\-place predicate π a function **M**π — the *intension* of π — that, for each possible world **w**, returns the *ex*tension **M**π(**w**) of π *at* **w**: a truth value, if *n* = 0; a set of individuals, if *n* = 1; and a set of *n*\-tuples of individuals, if *n* > 1.\[[8][9]\] We can thus rigorously define a “possible extension” of a predicate π to be any of its ***w**\-extensions* **M**π(**w**), for any world **w**.

The Tarskian truth conditions above are now generalized by relativizing them to worlds as follows: for any possible world **w** (the *world of evaluation*):

-   An atomic sentence ⌈πτ1...τ*n*⌉ (of ℒ) is *true***M** *at* **w** if and only if:
    -   *n* = 0 and the **w**\-extension of π is the truth value TRUE; or
    -   *n* = 1 and *a*τ1 is in the **w**\-extension of π; or
    -   *n* > 1 and ⟨**a**τ1,..., **a**τ*n*⟩ is in the **w**\-extension of π.
-   A negation ⌈¬ψ⌉ is true**M** at **w** if and only ψ is not true**M** in **w**.
-   A material conditional⌈ψ→θ⌉ is true**M** at **w** iff, if ψ is true**M** at **w**, then θ is true**M** at **w**.
-   A quantified sentence ⌈∀νψ⌉ is true**M** at **w** if and only if, for all individuals **a** that exist in **w**, ψ is true**M**\[ν/**a**\].

And to these, of course, is added the critical modal case that explicitly interprets the modal operator to be a quantifier over worlds, as we'd initially anticipated informally in our principle [**Nec**][10]:

-   A necessitation ⌈◻ψ⌉ is true**M** at **w** if and only if, for all possible worlds **u** of **M**, ψ is true**M** at **u**.\[[9][11]\]

A sentence φ is *false***M** at **w** just in case it is not true**M** at **w**, and φ is said to be *true***M** just in case φ is true**M** at the actual world of **M**.

On the assumption that there is a (nonempty) set of all possible worlds and a set of all possible individuals, we can define “objective” notions of truth at a world and of truth *simpliciter*, that is, notions that are not simply relative to formal, mathematical interpretations but, rather, correspond to objective reality in all its modal glory. Let ℒ be a modal language whose names and predicates represent those in some fragment of ordinary language (as in our examples (5) and (6) above). Say that **M** is the “intended” interpretation of ℒ if (i) its set **W** of “possible worlds” is in fact the set of all possible worlds, (ii) its designated “actual world” is in fact the actual world, (iii) its set **D** of “possible individuals” is in fact the set of all possible individuals, and (iv) the referents assigned to the names of ℒ and the intensions assigned to the predicates of ℒ are the ones they in fact have. Then, where **M** is the intended interpretation of ℒ, we can say that a sentence φ of ℒ is *true at* a possible world **w** just in case φ is true**M** at **w**, and that φ is *true* just in case it is true**M** at the actual world. (Falsity at **w** and falsity, *simpliciter*, are defined accordingly.) Under the assumption in question, then, the modal clause above takes on pretty much the exact form of our informal principle [**Nec**][12].

Call the above *basic* possible world semantics. Spelling out the truth conditions for (6) (relative to the intended interpretation of its language), basic possible world semantics tells us that (6) is true if and only if

<table><tbody><tr><td></td><td></td><td>For all possible worlds <b>w</b>, ‘∀<i>x</i>(<i>Px</i> → <i>Mx</i>)’ is true at <b>w</b>.</td></tr></tbody></table>

And by unpacking (8) in terms of the quantificational, material conditional, and atomic clauses above we have that (6) is true if and only if

<table><tbody><tr><td></td><td></td><td>For all possible worlds <b>w</b>, and for all possible individuals <b>a</b> that exist in <b>w</b>, if <b>a</b> is in the <b>w</b>-extension of ‘<i>P</i>’ then <b>a</b> is in the <b>w</b>-extension of ‘<i>M</i>’.</td></tr></tbody></table>

Since we are evaluating (6) with regard to the intended interpretation of its language, the **w**\-extension of ‘*P*’ that is returned by its intension, for any world **w**, is the (perhaps empty) set of John's pets in **w** and that of ‘*M*’ is the set of mammals in **w**. Hence, if **w** is a world where John has a pet canary — COBOL, say — COBOL is in the **w**\-extension of ‘*P*’ but not that of ‘*M*’ , i.e., ‘∀*x*(*Px* → *Mx*)’ is false at **w** and, hence, by the truth condition (9), (6) is false at the actual world — that is, (6) is false *simpliciter*, as it should be.

Note that interpreting modal operators as quantifiers over possible worlds provides a nice theoretical justification for the usual definition of the possibility operator in terms of necessity, specifically:

That is, a sentence is possible just in case its negation isn't necessary. Since, semantically speaking, the necessity operator is *literally* a universal quantifier, the definition corresponds exactly to the definition [(7)][13] of the existential quantifier. For, unpacking the right side of definition (10) according to the negation and necessitation clauses above (and invoking the definitions of truth and truth at a world *simpliciter*), we have:

<table><tbody><tr><td></td><td></td><td><sup>⌈</sup>◇φ<sup>⌉</sup> is true iff it is not the case that, for all possible worlds <b>w</b>, φ is not true at <b>w</b>.</td></tr></tbody></table>

Clearly, however, if it is not the case that φ fails to be true at all possible worlds, then it must be true at some world; hence:

<table><tbody><tr><td></td><td></td><td><sup>⌈</sup>◇φ<sup>⌉</sup> is true iff, for some possible world <b>w</b>, φ is true at <b>w</b>.</td></tr></tbody></table>

And that corresponds exactly to our intuitive truth condition [**Poss**][14] above. Thus, spelling out the negation ‘¬□∀*x*(*Px* → *Mx*)’ of our false sentence [(6)][15] above in accordance with definition (10) (and the standard definition of conjunction ∧), we have:

<table><tbody><tr><td></td><td></td><td>Possibly, one of John's pets is not a mammal: ◇∃<i>x</i>(<i>Px</i> ∧ ¬<i>Mx</i>),</td></tr></tbody></table>

for which (12) and the possible world truth conditions for quantified, Boolean, and atomic sentences yield the correct truth condition:

<table><tbody><tr><td></td><td></td><td>There is a possible world <b>w</b> and an individual <b>a</b> existing in <b>w</b> that is in the <b>w</b>-extension of ‘<i>P</i>’ but not that of ‘<i>M</i>’,</td></tr></tbody></table>

that is, less stuffily, there is a possible world in which, among John's pets, at least one is not a mammal.

**Summary: Intensionality and Possible Worlds.** Analyzed in terms of possible world semantics, then, the general failure of classical substitutivity principles in modal logic is due, not to an irreducibly intensional element in the meanings of the modal operators, but rather to a sort of mismatch between the surface syntax of those operators and their semantics: syntactically, they are unary sentence operators like negation; but semantically, they are, quite literally, quantifiers. Their syntactic similarity to negation suggests that, like negation, the truth values of ⌈□φ⌉ and ⌈◇φ⌉, insofar as they are determinable at all, must be determined by the truth value of φ. That they are not (in general) so determined leads to the distinctive substitutivity failures noted above. The possible worlds analysis of the modal operators as quantifiers over worlds reveals that the unary syntactic form of the modal operators obscures a semantically relevant parameter. When the modal operators are interpreted as quantifiers, this parameter becomes explicit and the reason underlying the failure of extensionality in modal logic becomes clear: That the truth values of ⌈□φ⌉ and ⌈◇φ⌉ are not in general determined by the truth value of φ at the world of evaluation is, semantically speaking, nothing more than the fact that the truth values of ‘∀*xFx*’ and ‘∃*xFx*’ are not in general determined by the truth value of ‘*Fx*’, for any particular value of ‘*x*’. Possible world semantics, therefore, *explains* the intensionality of modal logic by revealing that the syntax of the modal operators prevents an adequate expression of the meanings of the sentences in which they occur. Spelled out as possible world truth conditions, those meanings can be expressed in a wholly extensional fashion. (For a more formal exposition of this point, see the supplemental article [The Extensionality of Possible World Semantics][16].)

### 1.3 Two Applications: The Analysis of Intensions and the *De Re* / *De Dicto* Distinction

As noted, the focus of the present article is on the metaphysics of possible worlds rather than applications. Of course, the semantics of modal languages is itself an application, but one that is of singular importance, both for historical reasons and because most applications are in fact themselves applications of (often extended or modified versions of) the semantical apparatus. Two particularly important examples are the analysis of intensions and a concomitant explication of the *de re*/*de dicto* distinction.\[[10][17]\]

**The Analysis of Intensions.** As much a barrier to the acceptance of modal logic as intensionality itself was the need to appeal to intensions *per se* — properties, relations, propositions, and the like — in semantical explanations. Intensional entities have of course featured prominently in the history of philosophy since Plato and, in particular, have played natural explanatory roles in the analysis of [intentional attitudes][18] like [belief][19] and [mental content][20]. For all their prominence and importance, however, the nature of these entities has often been obscure and controversial and, indeed, as a consequence, they were easily dismissed as ill-understood and metaphysically suspect “creatures of darkness” (Quine 1956, 180) by the naturalistically oriented philosophers of the early- to mid-20th century. It is a virtue of possible world semantics that it yields rigorous *definitions* for intensional entities. More specifically, as described above, possible world semantics assigns to each *n*\-place predicate π a certain function **I**π — π's intension — that, for each possible world **w**, returns the extension **I**π(**w**) of π at **w**. We can define an intension *per se*, independent of any language, to be any such function on worlds. More specifically:

-   A *proposition* is any function from worlds to truth values.
-   A *property* is any function from worlds to sets of individuals.
-   An **n*\-place relation* (*n* > 1) is any function from worlds to sets of *n*\-tuples of individuals.

The adequacy of this analysis is a matter of lively debate that focuses chiefly upon whether or not intensions, so defined, are too “coarse-grained” to serve their intended purposes. (See, e.g., Stalnaker 1987 and 2012 for a strong defense of the analysis.) However, Lewis (1986, §1.5) argues that, even if the above analysis fails for certain purposes, it does not follow that intensions cannot be analyzed in terms of possible worlds, but only that more subtle constructions might be required. This reply appears to side-step the objections from granularity while preserving the great advantage of the possible worlds analysis of intensions, viz., the rigorous definability of these philosophically significant notions.

**The *De Re* / *De Dicto* Distinction.** A particularly rich application of the possible world analysis of intensions concerns the analysis of the venerable distinction between *de re* and *de dicto* modality.\[[11][21]\] Among the strongest modal intuitions is that the possession of a property has a modal character — that things exemplify, or fail to exemplify, some properties *necessarily*, or *essentially*, and others only *accidentally*. Thus, for example, intuitively, John's dog Algol is a pet accidentally; under less fortunate circumstances, she might have been, say, a stray that no one ever adopted. But she is a dog essentially; she couldn't have been a flower, a musical performance, a crocodile or any other kind of thing.

Spelling out this understanding in terms of worlds and the preceding analysis of intensions, we can say that an individual **a** has a property **F** essentially if **a** has **F** in every world in which it exists, that is, if, for all worlds **w** in which **a** exists, **a** ∈ **F**(**w**). Likewise, **a** has **F** accidentally if **a** has **F** in the actual world @ but lacks it in some other world, that is, if **a** ∈ **F**(@) but, for some world **w** in which **a** exists, **a** ∉ **F**(**w**). Thus, let ‘*G*’ and ‘*T*’ symbolize ‘is a dog’ and ‘is someone's pet’, respectively; then, where ‘*E!x*’ is short for ‘∃*y*(*x*\=*y*)’ (and, hence, expresses that *x* exists), we have:

<table><tbody><tr><td></td><td></td><td>Algol is a dog essentially: □(<i>E!a</i> → <i>Ga</i>)</td></tr></tbody></table>

<table><tbody><tr><td></td><td></td><td>Algol is a pet accidentally: <i>Ta</i> ∧ ◇(<i>E!a</i> ∧ ¬<i>Ta</i>)</td></tr></tbody></table>

More generally, sentences like (15) and (16) in which properties are ascribed to a specific individual in a modal context — signaled formally by the occurrence of a name or the free occurrence of a variable in the scope of a modal operator — are said to exhibit modality *de re*\[[12][22]\] (modality *of the thing*). Modal sentences that do not, like

<table><tbody><tr><td></td><td></td><td>Necessarily, all dogs are mammals: □∀<i>x</i>(<i>Gx</i> → <i>Mx</i>)</td></tr></tbody></table>

are said to exhibit modality *de dicto* (roughly, modality *of the* *proposition*). Possible world semantics provides an illuminating analysis of the key difference between the two: The truth conditions for both modalities involve a commitment to possible worlds; however, the truth conditions for sentences exhibiting modality *de re* involve in addition a commitment to the meaningfulness of [*transworld identity*][23], the thesis that, necessarily, every individual (typically, at any rate) exists and exemplifies (often very different) properties in many different possible worlds. More specifically, basic possible world semantics yields intuitively correct truth values for sentences of the latter sort by (i) permitting world domains to overlap and (ii) assigning intensions to predicates, thereby, in effect, relativizing predicate extensions to worlds. In this way, one and the same individual can be in the extension of a given predicate at all worlds in which they exist, at some such worlds only, or at none at all. (For further discussion, see the entry on [essential vs. accidental properties][24].)

## 2\. Three Philosophical Conceptions of Possible Worlds

The power and appeal of basic possible world semantics is undeniable. In addition to providing a clear, extensional formal semantics for a formerly somewhat opaque, intensional notion, cashing possibility as truth in some possible world and necessity as truth in every such world seems to tap into very deep intuitions about the nature of modality and the meaning of our modal discourse. Unfortunately, the semantics leaves the most interesting — and difficult — philosophical questions largely unanswered. Two arise with particular force:

<table><tbody><tr><td><b>QW</b></td><td></td><td>What, exactly, is a possible world?</td></tr></tbody></table>

And, given **QW**:

<table><tbody><tr><td><b>QE</b></td><td></td><td>What is it for something to exist in a possible world?</td></tr></tbody></table>

In this section we will concern ourselves with, broadly speaking, the three most prominent philosophical approaches to these questions.\[[13][25]\]

### 2.1 Concretism

Recall the informal picture that we began with: a world is, so to say, the “limit” of a series of increasingly more inclusive situations. Fleshed out philosophical accounts of this informal idea generally spring from rather different intuitions about what one takes the “situations” in the informal picture to be. A particularly powerful intuition is that situations are simply structured collections of physical objects: the immediate situation of our initial example above, for instance, consists of, among other things, the objects in Anne's office — notably Anne herself, her desk and her computer, with her seated at the former and typing on the latter — and at least some of the things in the next room — notably, her husband and the phone he is talking on. On this view, for one situation **s** to include another **r** is simply for **r** to be a (perhaps rather complex and distributed) physical part of **s**. The actual world, then, as the limit of a series of increasingly more inclusive situations in this sense, is simply the entire physical universe: all the things that are some spatiotemporal distance from the objects in some arbitrary initial situation, structured as they in fact are; and other possible worlds are things of exactly the same sort. Call this the *concretist* intuition, as possible worlds are understood to be concrete physical situations of a special sort.

#### 2.1.1 Concrete Worlds and Existence Therein

The originator and, by far, the best known proponent of concretism is [David Lewis][26]. For Lewis and, as noted, concretists generally, the actual world is the concrete physical universe as it is, stretched out in space-time. As he rather poetically expresses it (1986, 1):

> The world we live in is a very inclusive thing....There is nothing so far away from us as not to be part of our world. Anything at any distance is to be included. Likewise the world is inclusive in time. No long-gone ancient Romans, no long-gone pterodactyls, no long-gone primordial clouds of plasma are too far in the past, nor are the dead dark stars too far in the future, to be part of this same world....\[N\]othing is so alien in kind as not to be part of our world, provided only that it does exist at some distance and direction from here, or at some time before or after or simultaneous with now.

The actual world provides us with our most salient example of what a possible world is. But, for the concretist, other possible worlds are no different in kind from the actual world (*ibid.*, 2):

> There are countless other worlds, other very inclusive things. Our world consists of us and all our surroundings, however, remote in time and space; just as it is one big thing having lesser things as parts, so likewise do other worlds have lesser other-worldly things as parts.

It is clear that spatiotemporal relations play a critical role in Lewis's conception. However, it is important to note that Lewis understands such relations in a very broad and flexible way so as to allow, in particular, for the possibility of spirits and other entities that are typically thought of as non-spatial; so long as they are located in time, Lewis writes, “that is good enough” (*ibid.*, 73). So with this caveat, let us say that that an object **a** is *connected* if any two of its parts bear some spatiotemporal relation to each other,\[[14][27]\] and that **a** is *maximal* if none of its parts is spatiotemporally related to anything that is not also one of its parts. Then we have the following concretist answers to our questions:

<table><tbody><tr><td><b>AW1</b></td><td></td><td><b>w</b> is a possible world =<sub><span size="-2"><i>def</i></span></sub> <b>w</b> is a maximal connected object.<sup>[<a href="https://plato.stanford.edu/entries/possible-worlds/notes.html#15" name="note-15">15</a>]</sup></td></tr></tbody></table>

And, hence, to exist in a world is simply to be a part of it:

<table><tbody><tr><td><b>AE1</b></td><td></td><td>Individual <b>a</b> exists in world <b>w</b> =<sub><span size="-2"><i>def</i></span></sub> <b>a</b> is a part of <b>w</b>.</td></tr></tbody></table>

It follows from **AW1** (and reasonable assumptions) that distinct worlds do not overlap, spatiotemporally; that no spatiotemporal part of one world is part of another.\[[16][29]\] Moreover, given [Lewis's counterfactual analysis of causation][30], it follows from this that objects in distinct worlds bear no causal relations to one another; nothing that occurs in one world has any causal impact on anything that occurs in any other world.

#### 2.1.2 Actuality

Critically, for Lewis, worlds and their denizens do not differ in the *manner* in which they exist. The actual world does not enjoy a kind of privileged existence that sets it apart from other worlds. Rather, what makes the actual world actual is simply that it is *our* world, the world that we happen to inhabit. Other worlds and their inhabitants exist just as robustly as we do, and in precisely the same sense; all worlds and all of their denizens are equally *real*.\[[17][31]\] A significant semantic corollary of this thesis for Lewis is that the word ‘actual’ in the phrase ‘the actual world’ does not indicate any special *property* of the actual world that distinguishes it from all other worlds; likewise, an assertion of the form ‘**a** is actual’ does not indicate any special property of the individual **a** that distinguishes it from the objects existing in other worlds. Rather, ‘actual’ is simply an *indexical* whose extension is determined by the context of utterance. Thus, the referent of ‘the actual world’ in a given utterance is simply the world of the speaker, just as the referent of an utterance of ‘the present moment’ is the moment of the utterance; likewise, an utterance of the form ‘**a** is actual’ indicates only that **a** shares the same world as the speaker. The speaker thereby ascribes no special property to **a** but, essentially, expresses no more than when she utters ‘**a** is *here*’, understood in the broadest possible sense. By the same token, when we speak of non-actual *possibilia* — Lewis's preferred label for the denizens of possible worlds — we simply pick out those objects that are *not* here in the broadest sense. In the mouth of an other-worldly metaphysician, we here are all among the non-actual *possibilia* of which she speaks in her lectures on *de re* modality.

#### 2.1.3 Modal Reductionism, Counterparts, and the Analysis of Intensions

**Modal Reductionism and Counterparts.** Lewis parted ways dramatically with his mentor [W. V. O. Quine][32] on modality. Quine (1960, §41) stands in a long line of philosophers dating back at least to [David Hume][33] who are skeptical, at best, of the idea that modality is an objective feature of reality and, consequently, who question whether modal assertions in general can be objectively true or false, or even coherent. Lewis, by contrast, wholly embraces the objectivity of modality and the coherence of our modal discourse. What he denies, however, is that modality is a fundamentally *irreducible* feature of the world. Lewis, that is, is a *modal reductionist*. For Lewis, modal notions are not primitive. Rather, truth conditions for modal sentences can be given in terms of worlds and their parts; and worlds themselves, Lewis claims, are defined entirely in non-modal terms. The earliest presentation of Lewis's theory of modality (Lewis 1968) — reflecting Quine's [method of regimentation][34] — offers, rather than a possible world semantics, a scheme for *translating* sentences in the language of modal predicate logic into sentences of ordinary first-order logic in which the modal operators are replaced by explicit quantifiers over worlds.\[[18][35]\] The mature account of Lewis 1986 is much more semantic in orientation: it avoids any talk of translation and offers instead a (somewhat informal) account of concretist possible world truth conditions for a variety of modal assertions. Nonetheless, it is useful to express the logical forms of these truth conditions explicitly in terms of worlds, existence in a world (in the sense of **AE1**, of course), and the *counterpart* relation, which will be discussed shortly:

<table><tbody><tr><td><i>Wx</i>:</td><td></td><td><i>x</i> is a <i>world</i></td></tr><tr><td><i>Ixy</i>:</td><td></td><td><i>x</i> <em>exists in</em> world <i>y</i></td></tr><tr><td><i>Cxy</i>:</td><td></td><td><i>x</i> is a <i>counterpart</i> of <i>y</i></td></tr></tbody></table>

For sentences like [(17)][36] involving only *de dicto* modalities, Lewis's truth conditions are similar in form to the truth conditions generated by the modal clauses of basic possible world semantics; specifically, for (17):

<table><tbody><tr><td></td><td></td><td>For every world <b>w</b>, every individual <b>x</b> in <b>w</b> that is a dog is a mammal: ∀<i>w</i>(<i>Ww</i> → ∀<i>x</i>(<i>Ixw</i> → (<i>Gx</i> → <i>Mx</i>))).</td></tr></tbody></table>

As in possible world semantics, the modal operators ‘□’ and ‘◇’ “turn into” quantifiers over worlds in concretist truth conditions (1986, 5). Also as in possible world semantics, a quantifier (in effect) ranging over individuals that occurs in the scope of a quantifier (in effect) ranging over worlds — ‘∀*x*’ and ‘∀*w*’, respectively, in (18) — is, for each value **w** of the bound world variable, restricted to the objects existing in **w**. However, unlike possible world semantics, predicates are not to be thought of as having different extensions at different worlds. Rather, for Lewis, each (*n*\-place) predicate has a single extension that can contain (*n*\-tuples of) objects across many different worlds — intuitively, all of the objects that have the property (or *n*\-tuples of objects that stand in the relation) expressed by the predicate across all possible worlds. Thus, in particular, the predicate ‘*G*’ picks out, not just this-worldly dogs but other-worldly canines as well. Likewise, the pet predicate ‘*T*’ picks out both actual and other-worldly pets. Such a move is not feasible in basic possible world semantics, which is designed for a metaphysics in which one and the same individual can exemplify a given property in some worlds in which they exist but not others. Hence, a typical predicate will be true of an individual with respect to some worlds and false of it with respect to others. But, for Lewis, as we've seen, distinct possible worlds do not overlap and, hence, objects are worldbound, thereby eliminating the need to relativize predicate extensions to worlds.

However, this very feature of Lewis's account — worldboundedness — might appear to threaten its coherence. For example, since Algol is in fact a pet, given worldboundedness and the definition [**AE1**][37] of existence in a world **w**, we have:

<table><tbody><tr><td></td><td></td><td>There is no world <b>w</b> such that Algol exists in <b>w</b> and fails to be someone's pet: ¬∃<i>w</i>(<i>Iaw</i> ∧ ¬<i>Ta</i>),</td></tr></tbody></table>

But, according to Lewis's analysis, the modal operators ‘□’ and ‘◇’, semantically, are quantifiers over worlds. Hence, (19) might appear to be exactly the concretist truth condition for the denial of (the right conjunct of) ([16][38]), i.e., it might appear that, on Lewis's analysis, Algol is not a pet accidentally but essentially; likewise, more generally, any individual and any intuitively accidental property of that individual.

In fact, Lewis whole-heartedly accepts that things have accidental properties and, indeed, would accept that [(16)][39] is robustly true. His explanation involves one of the most interesting and provocative elements of his theory: the doctrine of *counterparts*. Roughly, an object **y** in a world **w**2 is a counterpart of an object **x** in **w**1 if **y** resembles **x** and nothing else in **w**2 resembles **x** more than **y**.\[[19][40]\] Each object is thus its own (not necessarily unique) counterpart in the world it inhabits but will typically differ in important ways from its other-wordly counterparts. A typical other-worldly counterpart of Algol, for example, might resemble her very closely up to some point in her history — a point, say, after which she continued to live out her life as a stray instead of being brought home by our kindly dog-lover John. Hence, sentences making *de re* assertions about what *Algol* might have done or what *she* could or could not have been are unpacked, semantically, as sentences about her *counterparts* in other possible worlds. Thus, when we analyze (16) accordingly, we have the entirely unproblematic concretist truth condition:

<table><tbody><tr><td></td><td></td><td>Algol is a pet, but there is a world in which exists a counterpart of hers that is not:<br><i>Ta</i> ∧ ∃<i>w</i>(<i>Ww</i> ∧ ∃<i>x</i>(<i>Ixw</i> ∧ <i>Cxa</i> ∧ ¬<i>Tx</i>)).</td></tr></tbody></table>

Ascriptions of essential properties, as in ([15][41]), are likewise unpacked in terms of counterparts: to say that Algol is a dog essentially is to say that

<table><tbody><tr><td></td><td></td><td>All of Algol's counterparts in any world are dogs:<br>∀<i>w</i>(<i>Ww</i> → ∀<i>x</i>((<i>Ixw</i> ∧ <i>Cxa</i>) → <i>Gx</i>)).</td></tr></tbody></table>

**The Analysis of Intensions.** Lewis's possible world truth conditions are expressed in classical non-modal logic and, hence, they are to be interpreted by means of standard Tarskian semantics. Thus, *n*\-place predicates π are assigned extensions **E**π — in particular, for 1-place predicates, sets of individuals — as their semantic values, as described in the exposition in [§1.2][42] above. However, given worldboundedness and the fact that predicate extensions are drawn not simply from the actual world but from all possible worlds, these extensions are able to serve as *in*tensions in Lewis's theory. As in basic possible world semantics, intensional entities in general can be defined in terms of the basic ontology of the theory independent of the linguistic roles they can play as the intensions of predicates. And because individuals are worldbound, Lewis is able to simplify the definitions given in [§1.3][43] by defining intensions as sets rather than functions:

-   A *proposition* is any set of worlds.
-   A *property* is any set of individuals.
-   An **n*\-place relation* (*n* > 1) is any set of *n*\-tuples of individuals.\[[20][44]\]

Thus, on this analysis, a proposition **p** is *true in* a world **w** just in case **w** ∈ **p** and an individual **a** has a property **P** just in case **a** ∈ **P**. (Note that propositions are thus simply properties of worlds on these definitions.) **a** has **P** *accidentally* just in case **a** ∈ **P** but **b** ∉ **P** for some other-worldly counterpart of **b** of **a**; and **a** has **P** *essentially* if **b** ∈ **P** for every counterpart **b** of **a**.

In Lewis's theory of modality, then, modal operators are understood semantically to be quantifiers over concrete worlds, predicates denote intensions understood as sets of (*n*\-tuples of) parts of those worlds, and sentences involving *de re* modalities are understood in terms of counterparts. To the extent that these notions are free of modality, Lewis has arguably reduced modal notions to non-modal.

#### 2.1.4 Plenitude and Recombination

That Lewis's truth conditions for modal statements are themselves free of modality and, hence, that his theory counts as a genuine reduction of modal notions to non-modal is not terribly controversial (albeit not undisputed — see Lycan 1991, 224–27; Divers and Melia 2002, 22–24). Significantly more controversial, and perhaps far more critical to the project, is whether or not his account is *complete*, that is, whether or not, for all modal statements φ, (i) if φ is intuitively true, then its Lewisian truth condition holds (ii) if φ is intuitively false, then its Lewisian truth condition fails.\[[21][45]\] The challenge to Lewis, then, is that his account can be considered *successful* only if it is complete in this sense.

The chief question Lewis faces in this regard is whether there are *enough* worlds to do the job. The truth condition ([20][46]) for the intuitively true ([16][47]) says that there exists a possible world in which a counterpart of Algol is no one's pet. By virtue of what in Lewis's theory does such a world exist? The ideal answer for Lewis would be that some principle in his theory guarantees a *plenitude* of worlds, a maximally abundant array of worlds that leaves “no gaps in logical space; no vacancies where a world might have been, but isn't” (Lewis 1986, 86). From this it would follow that the worlds required by the concretist truth condition for any intuitive modal truth exist. Toward this end, Lewis initially considers the evocative principle:

<table><tbody><tr><td><b>Ways</b></td><td></td><td>Absolutely every way that a world could be is a way that some world is.</td></tr></tbody></table>

Since, in particular, a world satisfying ([20][48]) seems quite obviously to be a way a world could be, by **Ways** such a world exists. But there is a fatal flaw here: Lewis himself (1973, 84) identifies *ways* that a world could be with worlds themselves. So understood, **Ways** collapses into the triviality that every world is identical to some world.\[[22][49]\]

Lewis finds a replacement for **Ways** in a principle of *recombination* whereby “patching together parts of different possible worlds yields another possible world” (1986, 87–88). The principle has two aspects. The first is the principle that “anything can coexist with anything”. For “if there could be a dragon, and there could be a unicorn,” Lewis writes, “but there couldn't be a dragon and a unicorn side by side, that would be ... a failure of plenitude” (*ibid*., 88). Given that individuals are worldbound, however, the principle is expressed more rigorously (and more generally) in terms of other-worldly *duplicates*:

<table><tbody><tr><td><b>R1</b></td><td></td><td>For any (finite or infinite) number of objects <b>a</b><sub>1</sub>, <b>a</b><sub>2</sub>, ..., there is a world containing any number of duplicates of each of those objects in any spatiotemporal arrangement (size and shape permitting).</td></tr></tbody></table>

The second aspect of the principle expresses “the Humean denial of necessary connections” (*ibid*., 87), that is, the idea that anything can *fail* to coexist with anything else. For “if there could be a talking head contiguous to the rest of a living human body, but there couldn't be a talking head separate from the rest of a human body, that too would be a failure of plenitude” (*ibid*). To express this a bit more rigorously, say that objects **a**1, **a**2, ..., are *independent of* objects **b**1, **b**2, ..., if no sum of any parts of the former are parts or duplicates of any sum of any parts of the latter and vice versa; then we have:

<table><tbody><tr><td><b>R2</b></td><td></td><td>For any world <b>w</b> any (finite or infinite number of) objects <b>a</b><sub>1</sub>, <b>a</b><sub>2</sub>, ..., in <b>w</b> and any objects <b>b</b><sub>1</sub>, <b>b</b><sub>2</sub>, ..., in <b>w</b> that are independent of <b>a</b><sub>1</sub>, <b>a</b><sub>2</sub>, ..., there is a world containing duplicates of <b>a</b><sub>1</sub>, <b>a</b><sub>2</sub>, ..., and no duplicates of <b>b</b><sub>1</sub>, <b>b</b><sub>2</sub>, ... .</td></tr></tbody></table>

Worlds that satisfy the concretist truth conditions for workaday possibilities like ([16][50]) are easily conceived as consisting of duplicates of relevant parts of the actual world — suitably organized to retain their actual properties, or not, as needed. Hence, the existence of such worlds does indeed appear to follow from the existence of the actual world by recombination. Worlds containing talking donkeys, exotic species resulting from a wholly different evolutionary history, worlds with silicon-based life forms, and so on present a bigger challenge to the view. Nonetheless, it is not entirely implausible to think such worlds exist given suitable duplication and reorganization of microphysical objects.\[[23][51]\]

Whether recombination completely captures our modal intuitions regarding plenitude is still a matter of some dispute.\[[24][52]\] However, even if it doesn't, it is less than clear whether this counts against the success of Lewis's reductionist project. For, as a realist about worlds, Lewis does not seem to be under any obligation to “derive” plenitude from more fundamental principles. Hence, there is no obvious reason why he cannot respond to charges of incompleteness by saying that it is simply a presupposition of his theory that logical space has no gaps, that there are always enough worlds to satisfy the concretist truth condition for any intuitive modal truth.\[[25][53]\] So understood, the role of recombination for a realist about worlds like Lewis is something like the role of such axioms as powerset and replacement for a realist about sets: given some sets, these principles provide us with a detailed — but always less than complete — characterization of what further sets there are. Their role, therefore, is to give us insight into the richness and diversity of set theoretic space, not a complete mechanism for proving which particular sets do or do not exist. Likewise recombination vis-à-vis worlds and logical space.

#### 2.1.5 A Brief Assessment of Concretism

Lewis's theory is particularly commendable for its striking originality and ingenuity and for the simple and straightforward answers **AW1** and **AE1** that it provides to our two questions **QW** and **QE** above. Furthermore, because worlds are (plausibly) defined entirely in nonmodal terms, the truth conditions provided by Lewis's translation scheme themselves appear to be free of any implicit modality. Hence, unlike many other popular accounts of possible worlds (notably, the abstractionist accounts discussed in the following section), Lewis's promises to provide a genuine *analysis* of the modal operators.

Perhaps the biggest — if not the most philosophically sophisticated — challenge to Lewis's theory is “the incredulous stare”, i.e., less colorfully put, the fact that its ontology is wildly at variance with common sense. Lewis faces this objection head on: His theory of worlds, he acknowledges, “*does* disagree, to an extreme extent, with firm common sense opinion about what there is” (1986, 133). However, Lewis argues that no other theory explains so much so economically. With worlds in one's philosophical toolkit, one is able to provide elegant explanations of a wide variety of metaphysical, semantical, and intentional phenomena. As high as the intuitive cost is, Lewis (135) concludes, the existence of worlds “ought to be accepted as true. The theoretical benefits are worth it.”

Additional discussion of, and objections to, concretism can be found in the supplemental document [Further Problems for Concretism][54].

### 2.2 Abstractionism

A rather different set of intuitions about situations is that they are *abstract* entities of a certain sort: They are *states* or *conditions*, of varying detail and complexity, that a concrete world could be in — they are *ways* that things, as a whole, could be.\[[26][55]\] Thus, returning to our original example, one very simple way things could be is for our philosopher Anne to be in her office. We can now imagine, as in our example, further detail being successively added to that description to yield more complex ways things could be: Anne working at her desk in her office; music being in the background; her husband being on the phone in the next room; her neighbor mowing the lawn next door; and so on. Roughly speaking, then, a possible world for an abstractionist is the *limit* of such a “process” of consistently extending and adding detail to some initial state of the world; it is a *total* way things could be, a consistent state of the world that settles every possibility; a consistent state to which no further detail could be added without rendering it inconsistent.

#### 2.2.1 Abstract Possible Worlds and Existence Therein

To give the notion of a state, or condition, of the world a little more metaphysical substance, abstractionists typically appeal to more traditional ontological categories. Thus, for example, that things could be in the simple state described above might be spelled out in one of the following ways:

-   The *proposition* **that Anne is in her office and at her desk** is possibly true.
-   The *set of propositions* {**that Anne is in her office**, **that Anne is at her desk**} is such that, possibly, all of its members are true.
-   The *property* **being such that Anne is in her office and at her desk** is possibly exemplified (by “things as a whole”).

Possible worlds are then defined as special cases of the type of entity in question that are in some relevant sense *total*. Adams (1974), for example, defines possible worlds to be consistent sets of propositions that are total in the sense of containing, for every proposition **p**, either **p** or its negation; Fine (1977), fleshing out ideas of Prior, defines a possible world to be a consistent proposition **w** that is total in the sense that, for every proposition **p**, **w** entails either **p** or its negation. For purposes here, however, we will sketch the fundamentals of the abstractionist view in terms of *states of affairs*, following the basic features of the account developed by Plantinga (1974, 1976), an account that, in the literature, frequently serves as a particularly trenchant abstractionist counterpoint to Lewis's concretism.\[[27][56]\]

States of affairs (SOAs) are abstract, intensional entities typically signified by sentential gerundives like “Algol's being John's pet” and “There being more than ten solar planets”. Importantly, SOAs constitute a primitive ontological category for the abstractionist; they are not defined in terms of possible worlds in the manner that propositions are in [§1.3][57]. Just as some propositions are true and others are not, some SOAs are *actual* and others are not.\[[28][58]\] Note, then, that to say an SOA is non-actual is *not* to say that it does not actually *exist*. It is simply to say that it is not, in fact, a condition, or state, that the concrete world is actually in. However, because ‘\_\_\_\_ is actual’ is often used simply to mean ‘\_\_\_\_ exists’, there is considerable potential for confusion here. So, henceforth, to express that an SOA is actual we will usually say that it *obtains*.

An SOA is said to be *possible* (*necessary*, *impossible*) insofar as it is possible (necessary, impossible) that it obtain. One SOA **s** is said to *include* another **t** if, necessarily, **s** obtains only if **t** does; **s** *precludes* **t** if, necessarily, **s** obtains only if **t** doesn't. So, for example, **Algol's being John's pet** includes **Algol's being someone's pet** and precludes **there being no pets**. Thus, on the abstractionist's understanding of a situation as a state or condition of the physical world rather than a concrete, structured piece of it, the inclusion of one situation in another is a purely *logical* relation, not a [mereological][59] one. Finally, say that an SOA **s** is *total* if, for every SOA **t**, **s** either includes or precludes **t**. (Abstractionists often use ‘maximal’ instead of ‘total’, but we have already introduced this term in the context of concretism.) Abstractionist possible worlds are now definable straightaway:

<table><tbody><tr><td><b>AW2</b></td><td></td><td><b>w</b> is a possible world =<sub><span size="-2"><i>def</i></span></sub> <b>w</b> is an SOA that is both possible and total.<sup>[<a href="https://plato.stanford.edu/entries/possible-worlds/notes.html#29" name="note-29">29</a>]</sup></td></tr></tbody></table>

It is easy to see that this definition covers the more intuitive characterizations of abstract possible worlds above: they are consistent — i.e., possible — states of the world that settle every possibility, consistent states to which no further detail could be added without rendering them inconsistent. Note also that, for the abstractionist, as for the concretist, the actual world is no different in kind from any other possible world; all possible worlds exist, and in precisely the same sense as the actual world. The actual world is simply the total possible SOA that, in fact, obtains. And non-actual worlds are simply those total possible SOAs that do not.

What of existence in such worlds? As we've seen, on Lewis's account, to exist in a concrete world **w** is literally to exist *in **w***, that is, within the spatiotemporal boundaries of **w**. Clearly, because SOAs are abstract, individuals cannot exist in abstractionist worlds in anything like the same literal, mereological sense. Accordingly, the abstractionist defines existence in a world simply to be a special case of the inclusion relation:

<table><tbody><tr><td><b>AE2</b></td><td></td><td>Individual <b>a</b> <i>exists in</i> possible world <b>w</b> =<sub><span size="-2"><i>def</i></span></sub> <b>w</b> includes <b><b>a</b>'s existing</b>.</td></tr></tbody></table>

Unlike concretism, then, abstractionism does not entail that individuals are worldbound; there is no inconsistency whatever in the idea that many distinct worlds can include the existence of one and the same individual. Indeed, typically, abstractionists are staunchly committed to transworld identity and hold that most any given individual exists in many possible worlds and, moreover, that contingent individuals, at least, can exemplify very different properties from world to world. Abstractionists, therefore, have no need to appeal to counterparts to understand *de re* modalities and can therefore accept the truth conditions for such modalities given by basic possible world semantics (spelled out, of course, in terms of their definitions **AW2** and **AE2**). In particular, they can take the standard possible world truth condition for, e.g., the right conjunct of ([16][61]) at face value: ‘◇(*E!a* ∧ ¬*Ta*)’ is true on the abstractionist's approach if and only if there is is a world in which Algol herself, rather than some counterpart of hers, exists but fails to be anyone's pet.

#### 2.2.2 Irreducible Modality and Intensional Entities

It is important to note that the possible worlds of abstractionism do not yield a reductive analysis of modality. The reason for this is clear: abstract possible worlds are defined in irreducibly modal terms — a possible world is an SOA that (among other things) *possibly* obtains; or a set of propositions such that it is *possible* that all of its members are true; or a property that is *possibly* exemplified; and so on. Hence, unpacked in terms of the abstractionist's definitions, the possible world truth conditions for modal propositions are themselves irreducibly modal. For example, when we unpack Plantinga's definition of a possible world in the semantic clause for sentences of the form ⌈◻ψ⌉ in order to derive the truth condition for [(17)][62], ‘□∀*x*(*Gx* → *Mx*)’, we end up with this:

<table><tbody><tr><td></td><td></td><td>For all SOAs <b>w</b>, if (i) <i>possibly</i>, <b>w</b> obtains and (ii) for all SOAs <b>s</b>, either (a) <em>necessarily</em>, <b>w</b> obtains only if <b>s</b> does or (b) <em>necessarily</em>, <b>w</b> obtains only if <b>s</b> doesn't, then, ‘∀<i>x</i>(<i>Gx</i> → <i>Mx</i>)’ is true at <b>w</b>.</td></tr></tbody></table>

If we now unpack the modal operators in (22) using the corresponding truth conditional clauses of standard possible world semantics, the result will contain further world quantifiers. And spelling out those world quantifiers in turn using Plantinga’s definition will re-introduce those same modal operators yet again.

More generally, and a bit more exactly, put: As noted above, the logical framework of basic possible world semantics is classical predicate logic. The logical framework of abstractionism is modal predicate logic. Hence, if possible world semantics is supplemented with abstractionist definitions of possible worlds, then the logical framework of possible world semantics becomes modal predicate logic as well and, as a consequence, the extensionality of the semantics is lost once again. (This point is expressed somewhat more formally in the supplemental document [The Intensionality of Abstractionist Possible World Semantics][63].) Since, as noted above, the central motivation for possible world semantics was to deliver an extensional semantics for modal languages, any motivation for abstractionism as a semantic theory is arguably undermined.\[[30][64]\]

However, it is not entirely clear that this observation constitutes an objection to abstractionism. For abstractionists can argue that the goal of their analysis is the converse of the reductionist's goal: The reductionist wants to understand modality in terms of worlds; the abstractionist, by contrast, wants to understand worlds in terms of modality. That is, abstractionists can argue that we begin with a primitive notion of modality and, typically upon a certain amount of philosophical reflection, we subsequently discover an intimate connection to the notion of a possible world, as revealed in the principles [**Nec**][65] and [**Poss**][66]. The analysis that abstractionists provide is designed to make this connection explicit, ideally, in such a way that **Nec** and **Poss** fall out as theorems of their theory (see, e.g., Plantinga 1985 and Menzel and Zalta 2014).

Hand in glove with the irreducible nature of modality is the nature of intensional entities. Concretists define intensional entities in terms of worlds, as described in [§2.1.3][67]. Abstractionists, by contrast, define worlds in terms of intensional entities. This divergence in their choice of ontological primitives reflects, not only their differing stances toward modality, but also an important methodological difference with regard to metaphysical inquiry. The concretist is far more pragmatic; notions of *property*, *relation*, *proposition*, and the like play certain roles in our theorizing and are subject to a “jumble of conflicting *desiderata*” (Lewis 1986, 54). Within a given theory, any entities that can play those roles fruitfully for the purposes at hand are justifiably identified with those notions — regardless of how well they comport with pre-theoretic intuitions. Thus, Lewis finds it to be a strength of his position that he is able to adopt the set theoretic definitions in §2.1.3. By contrast, at least some abstractionists — Plantinga (1987) perhaps most notably — believe that we have intuitive, pre-theoretic knowledge of intensional entities that precludes their being identified with set theoretic constructions of any sort.\[[31][68]\] (See Stalnaker 1976 for a particularly illuminating discussion of the contrast between concretism and abstractionism with respect to the treatment intensional entities.)

#### 2.2.3 Actuality and Actualism

As was noted in [§2.1.2][69], for the concretist, there is no special property of the actual world — *actuality* — that distinguishes it, in any absolute sense, from all of the others; it is simply the world that *we* inhabit. For abstractionists, however, actuality *is* a special property that distinguishes exactly one possible world from all others — the actual world is the only world that happens to *obtain*; it is the one and only way things could be that is the way things as a whole, in fact, *are*. However, for most abstractionists, the distinctiveness of the actual world does not lie simply in its actuality but in its ontological comprehensiveness: the actual world encompasses all that there is. In a word: most abstractionists are *actualists*.

[Actualism][70] is the thesis that everything that there is, everything that has *being* in any sense, is actual. In terms of possible worlds: Everything that exists in any world exists in the actual world.\[[32][71]\] Possibilism, by contrast, is the denial of actualism; it is the thesis that there are *mere possibilia*, i.e., things that are not actual, things that exist in other possible worlds but fail to exist in the actual world. Concretists are obviously not actualists (on their understanding of ‘actual’, at any rate).\[[33][72]\] Indeed, for the concretist, since individuals are worldbound, everything that exists in any nonactual possible world is distinct from everything in the actual world. However, although possibilism and abstractionism are entirely compatible — Zalta (1983), for example, embraces both positions — abstractionists *tend* to be actualists. The reason for this is clear: Basic possible world semantics appears to be committed to possibilism and abstractionism promises a way of avoiding that commitment.

The specter of possibilism first arises with regard to *non-actual* possible worlds, which would seem by definition to be prime examples of mere *possibilia*. However, we have just seen that the abstractionist can avoid this apparent commitment to possibilism by defining possible worlds to be SOAs of a certain sort. So defined, non-actual worlds, i.e., worlds that fail to obtain, can still actually exist. Hence, the commitment of basic possible world semantics to non-actual worlds does not in itself threaten the actualist's ontological scruples.

However, the specter of possibilism is not so easily exorcised. For non-actual worlds are not the only, or even the most compelling, examples of mere *possibilia* that seem to emerge out of basic possible world semantics. For instance, it is quite reasonable to think that evolution could have taken a very different course (or, if you like, that God could have made very different creative choices) and that there could have been individuals — call them *Exotics* — that are biologically very different from all actually existing individuals; so different, in fact, that no actually existing thing could possibly have been an Exotic. According to basic possible world semantics, the sentence ‘There could have been Exotics’ or, more formally,

is true just in case there is a world in which ‘∃*xEx*’ is true, i.e., when all is said and done, just in case:

<table><tbody><tr><td></td><td></td><td>There is a possible world <b>w</b> and an individual <b>a</b> in <b>w</b> such that <b>a</b> is an Exotic in <b>w</b>,</td></tr></tbody></table>

which, a bit less formally, is simply to say that

<table><tbody><tr><td></td><td></td><td>Some individual is an Exotic in some possible world.</td></tr></tbody></table>

However, since no actually existing thing could have been an Exotic, anything that is an Exotic in some possible world cannot be among the things that exist in the actual world. Thus, the truth conditions that basic possible world semantics assigns to some of our intuitive modal beliefs appear to entail that there are non-actual individuals as well as non-actual possible worlds. Defining possible worlds as SOAs provided a way for the actualist to embrace non-actual worlds without compromising her actualism. But how is the actualist to understand the apparent commitment to non-actual *individuals* in such truth conditions as (25)?

Answers that have been given to this question represent a rather deep divide between actualist abstractionists. On the one hand, “trace” actualists introduce actually existing entities into their ontologies that can play the role of mere *possibilia* in (25) and its like. Trace actualists come in two varieties: *new* actualists and *haecceitists*. New actualists like Linsky and Zalta (1996) and Williamson (1998, 2000, 2013) argue that, in fact, all individuals are actually existing, necessary beings but not all of them are necessarily *concrete*. Some concrete individuals — those traditionally (mis-)categorized as contingent beings — are only contingently concrete. Likewise, some non-concrete individuals — those, like possible Exotics, traditionally (mis-)categorized as contingently non-actual mere *possibilia* — are only contingently non-concrete.\[[34][73]\]

This novel take on modal metaphysics allows the new actualist to reinterpret possible world semantics so as to avoid possibilism. Notably, the domain **d**(**w**) of a world **w** is understood not as the set of things that exist in **w** — for all individuals exist in all worlds — but the set of things that are *concrete* in **w**.\[[35][74]\] Hence, for the new actualist, the correct truth condition for ([23][75]) is:

<table><tbody><tr><td></td><td></td><td>There is a possible world <b>w</b> and an individual <b>a</b> that is (i) concrete in <b>w</b> and (ii) an Exotic in <b>w</b>.</td></tr></tbody></table>

On the other hand, haecceitists like Plantinga introduce special properties — haecceities — to similar ends. The haecceity of an individual **a** is the property of being *that very individual*, the property **being **a****. A property is a *haecceity*, then, just in case it is possible that it is the haecceity of some individual.\[[36][76]\] It is a necessary truth that everything has a haecceity. More importantly, for haecceitists, haecceities are necessary beings. Thus, not only is it the case that, had any particular individual **a** failed to exist, its haecceity **ha** would still have existed, it is also the case that, for any “merely possible” individual **a**, there is an actually existing haecceity that would have been **a**'s haecceity had **a** existed. More generally (and more carefully) put: Necessarily, for any individual **a**, (i) **a** has a haecceity **h** and (ii) necessarily, **h** exists.

Like the new actualists, then, the metaphysics of the haecceitists enables them to systematically reinterpret possible world semantics in such a way that the truth conditions of modal discourse are expressed solely in term of actually existing entities of some sort rather than actual and non-actual individuals. More specifically, for the haecceitist, the domain **d**(**w**) of a world **w** is taken to be the set of haecceities that are *exemplified* in **w**, that is, the set of haecceities **h** such that **w** includes ****h**'s being exemplified**. Likewise, the **w**\-extension of a (1-place) predicate π is taken to be a *set* of haecceities — intuitively, those haecceities that are coexemplified in **w** with the property expressed by π. So reinterpreted, the truth condition for ([23][77]) is:

<table><tbody><tr><td></td><td></td><td>There is a possible world <b>w</b> and a haecceity <b>h</b> that is (i) exemplified in <b>w</b> and (ii) coexemplified with the property <b>being an Exotic</b> in <b>w</b>.</td></tr></tbody></table>

By contrast, “no-trace”, or *strict*, actualists like Prior (1957), Adams (1981), and Fitch (1996) hew closely to the intuition that, had a contingent individual **a** failed to exist, there would have been absolutely no trace, no metaphysical vestige, of **a** — neither **a** itself in some non-concrete state nor any abstract proxy for **a**. Hence, unlike trace actualism, there are no such vestiges in the actual world of objects that are not actual but only could have been. The logical consequences for no-trace actualists, however, appear to be severe; at the least they cannot provide a standard [compositional][78] semantics for modal languages, according to which (roughly) the meaning of a sentence is determined by its logical form and the meanings of its semantically significant constituents. In particular, if there is nothing to play the role of a “possible Exotic”, nothing that is, or represents, an Exotic in some other possible world — a mere *possibile*, a contingently non-concrete individual, an unexemplified haecceity — then the strict actualist cannot provide standard, compositional truth conditions for quantified propositions like ([23][79]) that yield the intuitively correct truth value. For, understood compositionally, ([23][80]) is true if and only if ‘∃*xEx*’ is true at some world **w**. And that, in turn, is true at **w** if and only if ‘*Ex*’ is true at **w** for some value of ‘*x*’. But, as just noted, for the strict actualist, there is no such value of ‘*x*’. Hence, for the strict actualist, ‘*Ex*’ is false at **w** for all values of ‘*x*’ and, hence, ([23][81]) is false as well. (These issues are explored in much greater detail in [§4][82] of the entry [Actualism][83].)

#### 2.2.4 A Brief Assessment of Abstractionism

Like concretism, abstractionism provides a reasonably clear and intuitive account of what worlds are and what it is to exist in them, albeit from a decidedly different perspective. Although, as noted in [§2.2.2][84], the fact that modality is a primitive in abstractionist definitions of possible worlds arguably compromises its ability to provide semantically illuminating truth conditions for the modal operators, those definitions can be taken to illuminate the connection between our basic modality concepts and the evocative notion of a possible world that serves as such a powerful conceptual tool for constructing philosophical arguments and for analyzing and developing solutions to philosophical problems. In this regard, particularly noteworthy are: Plantinga's (1974) influential work on [the ontological argument][85] and the free will defense against [the problem of evil][86]; Adams' (1974, 1981) work on [actualism][87] and actuality; and Stalnaker's (1968, 1987) work on [counterfactual conditionals][88] and [mental content][89].

A number of important objections have been voiced in regard to abstractionism. Some of these are addressed in the document [Problems with Abstractionism][90].

### 2.3 Combinatorialism

As its name might suggest, our third approach — *combinatorialism* — takes possible worlds to be recombinations, or rearrangements, of certain metaphysical simples. Both the nature of simples and the nature of recombination vary from theory to theory. Quine (1968) and Cresswell (1972), for example, suggest taking simples to be space-time points (modeled, perhaps, as triples of real numbers) and worlds themselves to be arbitrary sets of such points, each set thought of intuitively as a way that matter could be distributed throughout space-time. (A world *w*, so construed, then, is *actual* just in case a space-time point *p* is a member of *w* if and only if *p* is occupied by matter.) Alternatively, some philosophers define states a world could be in, and possible worlds themselves, simply to be maximally consistent sets of sentences\[[37][91]\] in an expressively rich language — “recombinations”, certainly, of the sentences of the language. (Lewis refers to this view as *linguistic ersatzism*.\[[38][92]\]) However, the predominant version of combinatorialism finds its origins in Russell's (1918/1919) theory of [logical atomism][93] and Wittgenstein's (1921, 1922, 1974) short but enormously influential [*Tractatus Logico-Philosophicus*][94]. A suggestive paper by Skyrms (1981) spelling out some of the ideas in the *Tractatus*, in turn, inspired a rich and sophisticated account that is developed and defended in great detail in an important series of books and articles by D. M. Armstrong (1978a, 1978b, 1986a, 1989, 1997, 2004b, 2004c). In this section, we present a somewhat simplified version of combinatorialism that draws primarily upon Armstrong's work. Unless otherwise noted, this is what we shall mean by ‘combinatorialism’ for the remainder.

#### 2.3.1 The Basic Ontology of Combinatorialism

Wittgenstein famously asserted that the world is the totality of *facts*, not of things (*ibid.*, §1.1). The combinatorialist spells out Wittgenstein's aphorism explicitly in terms of an ontology of objects (a.k.a., particulars), universals (a.k.a., properties and relations), and facts. Facts are either atomic or molecular. Every atomic fact — *Sachverhalt*, in the language of the *Tractatus* — is “constituted” by an *n*\-place relation (= property, for *n*\=1) and *n* objects that *stand in*, or *exemplify*, that relation. Thus, for example, suppose that John is 1.8 meters tall. Then, in addition to John and the property **being 1.8 meters tall**, there is for the combinatorialist the atomic fact of John's exemplifying that property. More generally, atomic facts exist according to the following principle:

<table><tbody><tr><td><b>AF</b></td><td></td><td>Objects <b>a</b><sub>1</sub>, ..., <b>a</b><sub><i>n</i></sub> exemplify <i>n</i>-place relation <b>R</b> iff there is the fact <b>a<sub>1</sub>, ..., a<sub><i>n</i></sub>'s exemplifying R</b> ([<b>R</b>,<b>a</b><sub>1</sub>,...,<b>a</b><sub><i>n</i></sub>], for short).</td></tr></tbody></table>

Say that the **a***i* are the *constituent objects* of the fact in question and **R** its *constituent universal*, and that **R** and the **a***i* all *exist in* \[**R**,**a**1,...,**a***n*\].

A fact is *monadic* if its constituent universal is a property. A *molecular* fact **f** is a conjunction of atomic facts. Its constituent objects and universals are exactly those of its conjuncts and an entity exists in **f** just in case it exists in one of its conjuncts. (For simplicity, we stipulate that an atomic fact has (only) itself as a conjunct and, hence, is “trivially” molecular.) One fact **f** *includes* another **g** if every conjunct of **g** is a conjunct of **f**. (Note, importantly, that inclusion, so defined, is quite different from the homonymous notion defined in the discussion of abstractionism above — most notably, combinatorial inclusion is not a *modal* notion.) For purposes below, say that an object **a** is a *bare particular in* a molecular fact **f** if there is no monadic conjunct of **f** of which **a** is the constituent object, no conjunct of the form **a exemplifies F**, for some property **F**. **a** is a *bare particular* if it is bare in every molecular fact. Intuitively, of course, a bare particular is an unpropertied object.

There is no upper bound on the “size” of a molecular fact and no restriction on which atomic facts can form a conjunction; for any atomic facts at all, there is a molecular fact whose conjuncts are exactly those facts. As a first cut, then, we can spell out Wittgenstein's characterization of the (actual) world as the totality of facts by defining the world to be the largest molecular fact, the molecular fact that includes all of the atomic facts.\[[39][95]\]

Although objects and universals are typically included along with facts in the basic ontology of combinatorialism, facts are typically considered more fundamental. Indeed, taking his queue from the Tractarian thesis that the world consists of facts, not things, Armstrong (1986a, 577) argues that facts alone are ontologically basic and that objects and universals are simply “aspects of, abstractions from” facts. Accordingly, he calls the object constituent of a fact of the form \[**P**,**a**\] a “thin” particular, an object “considered in abstraction from all its \[intrinsic\] properties” (1993, 433); and where **N** is the conjunction of “all the non-relational properties of that particular (which would presumably include **P**), the atomic fact **a's exemplifying N** itself is the corresponding “thick” particular ” (*ibid*., 434 — we will occasionally use italics to distinguish a thin particular *a* from the corresponding thick particular **a**). Though not all combinatorialists of every stripe buy into Armstrong's “factualist” metaphysics (Bricker 2006), they do generally agree that facts are more fundamental, at least to the extent that both the notion of a bare particular, i.e., an object exemplifying no properties, and that of an unexemplified property are considered incoherent; insofar as they exist at all, the existence of both particulars and universals depends on their “occurring” in some fact or other. Whatever their exact ontological status, it is an important combinatorialist thesis that exactly *what* objects and universals exist is ultimately a matter for natural science, not metaphysics, to decide.

Objects can be either simple or complex. An object is *simple* if it has no proper parts, and *complex* otherwise. Like objects, universals too divide into simple and complex. A universal is simple if it has no other universal as a constituent, and complex otherwise. Complex universals accordingly come in two varieties: conjunctive — the constituents of which are simply its conjuncts — and structural. A structural universal **U** is one that is exemplified by a complex object **O**, and its constituents are universals (distinct from **U**) exemplified by simple parts of **O** that are relevant to **O**'s being an instance of **U**.\[[40][96]\] It is important to note that, for Armstrong, the constituency relation is not the mereological parthood relation. Rather, complex universals (hence also complex facts of which they are constituents) enjoy a “non-mereological mode of composition” (1997, 119–123) that, in particular, allows for a richer conception of their structure.\[[41][97]\] (An assumption of our simplified account here will be that both the *proper part of* relation and the constituency relation are well-founded. It follows that (i) there is no [*gunk*][98], i.e., that every complex object is composed, ultimately, entirely of simples and (ii) complex universals — hence the complex facts in which they are exemplified — are ultimately “grounded” in simple facts, i.e., that they cannot be infinitely decomposed into further complex universals/facts.\[[42][99]\])

To illustrate the basic idea: in Figure 1, the left-hand diagram depicts a water molecule **W** comprising an oxygen atom **o** and two hydrogen atoms **h1** and **h2**. For the combinatorialist, “thick” particulars like the molecule itself as well as its constituent atoms are themselves facts: **o** is the fact \[**O**,*o*\] in which the universal **oxygen** (**O**) is exemplified by a thin particular *o*;\[[43][100]\] likewise **h1** and **h2**. **W** in turn comprises those monadic facts and the relational facts \[**B**,**o**,**h**1\], \[**B**,**o**,**h**2\] wherein the covalent bonding relation **B** holds between the oxygen atom and the two hydrogen atoms. The structural universal **Water** itself, then, shares this structure — it is, so to say, an *isomorph* consisting of the monadic universals **O** and **H** and the binary relation **B**, structured as indicated in the right-hand diagram of Figure 1.\[[44][101]\]

Figure 1: A Water Molecule **W** and the Structural Universal **Water**

#### 2.3.2 States of Affairs and Recombination

It should be clear from [principle **AF**][102] that all atomic facts *hold*; that is, all of them reflect actual exemplification relations. Obviously, however, possibility encompasses more than what is actual, that is, there are *possible* facts as well as actual facts; the world's universals might have been exemplified by its objects very differently. If they had — if the world's objects and universals had combined in a very different way — there would have been a very different set of atomic facts and, hence, a very different world.

To spell out the idea of a possible fact, the combinatorialist introduces the more general notion of an atomic *(combinatorial) state of affairs*, that is, an entity that simply has the *form* of an atomic fact — *n* objects exemplifying an *n*\-place relation — but without any requirement that the exemplification relation in question actually holds between them. More exactly:

<table><tbody><tr><td><b>AS</b></td><td></td><td>For any objects <b>a</b><sub>1</sub>, ..., <b>a</b><sub><i>n</i></sub> and any <i>n</i>-place relation <b>R</b>, there is an atomic (combinatorial) state of affairs <b>a</b><sub>1</sub>, ..., <b>a</b><sub><i>n</i></sub>'s exemplifying <b>R</b> (again, [<b>R</b>,<b>a</b><sub>1</sub>,...,<b>a</b><sub><i>n</i></sub>], for short).</td></tr></tbody></table>

Thus, even if the two hydrogen atoms **h**1 and **h**2 in a water molecule do not in fact stand in the covalent bonding relation **B**, there is nonetheless the (non-factual) state of affairs \[**B**,**h**1,**h**2\].

Combinatorialism takes facts to be literal, structured parts of the physical world. This suggests that a non-factual state of affairs — a merely *possible* fact — must be part of a merely possible physical world. This idea is at odds with the strong, scientifically-grounded form of actualism that typically motivates combinatorialism. Two options are available: The combinatorialist can follow the (actualist) abstractionists and define states of affairs to be philosophical or mathematical constructs consisting only of actual objects, properties, relations, and facts. For example, the state of affairs \[**R**,**a**1,...,**a***n*\] can simply be identified with the ordered *n*\-tuple ⟨**R**,**a**1,...,**a***n*⟩. So long as the combinatorialist is willing to adopt the additional metaphysical or set theoretic machinery, this sort of approach offers a way of introducing non-factual states of affairs that does not involve any untoward ontological commitments to merely possible entities. Alternatively, following Armstrong (1989, 46–51; 1997, 172–4), the combinatorialist can refuse to grant non-factual states of affairs any genuine ontological status and adopt a form of [modal fictionalism][103] that nonetheless permits one to speak *as if* such states of affairs exist. The exposition to follow will remain largely neutral between these options.

Constituency for states of affairs is understood as for facts. Additionally, analogous to molecular facts, there are molecular states of affairs — conjunctions of atomic states of affairs. Inclusion between states of affairs is understood exactly as it is between facts and being a *bare particular* in a molecular state of affairs **s** is understood as for facts: **a** is a bare particular in **s** if there is no monadic conjunct of **s** of the form ****a** exemplifies F**. The notion of recombination is now definable straightaway:

<table><tbody><tr><td></td><td></td><td><b>s</b> is a <em>recombination</em> of a molecular state of affairs <b>f</b> =<sub><i><span size="-2">def</span></i></sub> <b>s</b> is a molecular state of affairs whose constituent objects and constituent universals are exactly those of <b>f</b>. <b>s</b> is a <em>non-trivial</em> recombination of <b>f</b> if it does not include the same states of affairs as <b>f</b>.</td></tr></tbody></table>

Very roughly then, a *possible world* will be a certain sort of recombination of (some portion of) the *actual* world, the molecular fact that includes all of the atomic facts. This idea will be refined in the following sections.

#### 2.3.3 Structural States of Affairs and Supervenience

Say that a state of affairs is *structural* if it is atomic and its constituent universal is structural or it is molecular and includes a structural state of affairs; and say that it is *simple* otherwise. The difference between structural and simple universals and states of affairs is particularly significant with regard to the important concept of *supervenience* (Armstrong 1989, Ch 8).\[[45][104]\] Entity or entities **S** supervene on entity or entities **R** if and only if the existence of **R** necessitates that of **S** (*ibid.*, 103). (Necessitation here is, of course, ultimately to be spelled out in terms of combinatorial possible worlds.) Non-structural states of affairs supervene directly on their atomic conjuncts.\[[46][105]\] However, things are not in general quite so straightforward for structural states of affairs. For, although structural states of affairs are ultimately constituted entirely by simple states of affairs, unlike non-structural states of affairs, structural states of affairs typically supervene on more than the totality of their constituents. For, in many cases, whether or not a structural fact exists depends not only on the existence of its constituent facts but also on the *absence* of certain others (Armstrong 1997, 34ff). For example, as noted in our example above, our water molecule **W** comprises two further facts in which two hydrogen atoms **h**1 and **h**2 both stand in the covalent binding relation with an oxygen atom **o**. However, if **o** were to bind with a further hydrogen atom **h**3, then, despite the fact that the constituent facts of **W** would still hold, **W** would not be water; there would be no such fact as **W's being water**.\[[47][106]\] Rather, **W** would exist only as a complex part of a hydronium ion; the new binding \[**B**,**o**,**h**3\] would, so to say, “spoil” the instantiation of **Water**. Thus, more generally, whether or not a structural state of affairs **S** exists in a possible world typically requires something over and above its constituent states of affairs being “welded together” in the right sort of way (Armstrong, 1997, 36); it requires also that there be no relevant “spoilers” for **S**.\[[48][107]\] Armstrong draws directly on the initial passages of the *Tractatus*\[[49][108]\] for the necessary apparatus: a structural state of affairs **S** in any possible world **w**, supervenes, not simply on its constituent atomic states of affairs but on a certain *higher-order* state of affairs **T****w**, namely, the state of affairs that the (first-order) atomic states of affairs of **w** are *all the (first-order) atomic states of affairs* and, hence, that **w** includes no spoilers for **S**. Armstrong (*ibid.*, 35, 134–5, 196–201) calls **Tw** the *totality* state of affairs for the atomic states of affairs of **w**.\[[50][109]\]

#### 2.3.4 Combinatorial Possible Worlds and Existence Therein

The idea of possibility being rooted in arbitrary recombinations of the actual world, rearrangements of its objects and universals, is intuitively appealing. Clearly, however, not just any such recombination can count as a possible world. Some states of affairs are intuitively impossible — \[**being an elephant**, **e**\], where **e** is an individual electron, say — and some pairs of states of affairs, while individually possible, are not *com*possible — the states of affairs \[**having 1kg mass**, **a**\] and \[**having 2kg mass**, **a**\] for a given object **a**, or, for a given mereological sum **m** of simples, the states of affairs \[**being a baboon**, **m**\] and \[**being a hoolock**, **m**\]. But nothing that has been said rules out the existence of recombinations of the actual world — rearrangements of its objects and universals — that include such states of affairs. Obviously, however, such recombinations cannot be thought to represent genuinely possible worlds. Of course, like the abstractionist, the combinatorialist could simply stipulate as part of the definition that all legitimate recombinations must be genuinely *possible* states of affairs of a certain sort, genuinely *possible* recombinations. But this will not do. For, like concretism, combinatorialism purports to be a *reductive* account of modality, an account of possible worlds that does not depend ultimately on modal notions (see Armstrong 1989, 33).\[[51][110]\]

Here the distinction between simple and structural states of affairs together with the combinatorialist's strong notion of supervenience come to the fore. For, given that structural facts supervene on simple facts and the actual totality fact **T**@, the actual world can be defined more parsimoniously as the molecular fact that includes all the *simple* atomic facts and the totality fact **T**@. And at the level of simples, there are no limitations whatever on recombination (Wittgenstein 1921, 2.062-2.063); hence, any recombination of simple objects and universals is by definition considered possible. Thus Armstrong (1986a, 579):

> The simple individuals, properties, and relations may be combined in *all* ways to yield possible \[simple\] atomic states of affairs, provided only that the form of atomic facts is respected. That is the combinatorial idea.

Worlds, in particular, can be defined as special cases of such recombinations, together with appropriate totality facts. To state this, we need a condition that ensures the existence of a unique actual world:

<table><tbody><tr><td></td><td></td><td>States of affairs <b>s</b> and <b>t</b> are identical iff they include exactly the same states of affairs.</td></tr></tbody></table>

Given this, we have:

<table><tbody><tr><td></td><td></td><td>The (combinatorial) actual world =<sub><span size="-2"><i>def</i></span></sub> the fact @ that includes exactly all the simple atomic facts and the totality state of affairs <b>T</b><sub>@</sub> for the conjunction of those facts.</td></tr></tbody></table>

<table><tbody><tr><td><b>AW3</b></td><td></td><td><b>w</b> is a (combinatorial) possible world =<sub><span size="-2"><i>def</i></span></sub> <b>w</b> is a recombination of the simple atomic facts of the actual world conjoined with the totality fact <b>T<sub>w</sub></b> for that recombination.<sup>[<a href="https://plato.stanford.edu/entries/possible-worlds/notes.html#52" name="note-52">52</a>]</sup></td></tr></tbody></table>

Armstrong's ontological commitments are notoriously rather slippery but, given **AW3**, a reasonably complete notion of existence in a world is forthcoming. First, let us note that, for Armstrong, the “combinatorial idea” yields a substantial metaphysical thesis, as well, viz., the *ontological free lunch* (1986, 12ff), i.e., the thesis that “\[w\]hat supervenes is no addition of being”; that “whatever supervenes ... is not something ontologically additional to the subvenient entity or entities.” Hence, for Armstrong, it appears that *simple* states of affairs and their constituents exist most fundamentally and that the existence of more complex entities is in a certain sense *derivative*. Thus:

<table><tbody><tr><td></td><td></td><td>Entity <b>a</b> exists <em>fundamentally</em> in (combinatorial) possible world <b>w</b> =<sub><span size="-2"><i>def</i></span></sub> (i) <b>a</b> is a simple state of affairs that <b>w</b> includes or (ii) <b>a</b> is a constituent or conjunct of an entity that exists fundamentally in <b>w</b>.</td></tr></tbody></table>

Given this, existence in a world generally — both fundamental and derivative — both for simples and (*first-order*\[[53][112]\]) non-simples alike, is definable as follows:

<table><tbody><tr><td><b>AE3</b></td><td></td><td>Entity <b>a</b> exists in (combinatorial) possible world <b>w</b> =<sub><span size="-2"><i>def</i></span></sub> either (i) <b>a</b> exists fundamentally in <b>w</b> or (ii) <b>a</b> supervenes on entities that exist in <b>w</b>.</td></tr></tbody></table>

Semantics receives rather short shrift in Armstrong's version of combinatorialism — at least, semantics in the model theoretic sense of [§1.2][113] — but, as it has played an important role in our discussion of concretism and abstractionism, we note briefly how the ontology of combinatorialism might be taken to populate a possible world interpretation of the language of modal predicate logic. Specifically, we can take the range of the modal operators — understood, semantically, as quantifiers — to be all of the combinatorial possible worlds in the sense of **AW3**. The domain **d**(**w**) of each world **w** is the set of all simple and complex objects that exist in **w** according to **AE3** and the **w**\-extension **I**π(**w**) of a predicate π expressing a simple or complex universal **R** is the set of all *n*\-tuples, ⟨**a**1, ..., **a***n*⟩ such that the atomic fact \[**R**,**a**1,...,**a***n*\] exists in **w**.

#### 2.3.5 Analytic and Emergent Modalities; Essential Properties

There are, then, for the combinatorialist no intrinsically modal phenomena; there are just all of the various worlds that exist on unrestricted combinatorial grounds alone. Ultimately, all genuine possibilities, simple or not, are just states of affairs that exist in these combinatorial worlds in the sense of **AE3**. However, it is not immediately as clear how to understand many intuitive *necessities*/*impossibilities* involving complex structural universals, for example, the impossibilities noted in the previous section, viz., that something simultaneously have a mass of both 1kg and 2kg or simultaneously be both a baboon and a hoolock. Likewise, it is not entirely clear how combinatorialism accounts for intuitive facts about essential properties, such as that our water molecule **W** is essentially water or that Algol is essentially a dog. Combinatorialists argue that such modal facts can nevertheless be explained in terms that require no appeal to primitive modal features of the world (Armstrong 2004b, 15).

**Analytic Modalities.**  Armstrong argues that many intuitive modal facts — notably, the impossibility of an object exemplifying more than one determinate of the same determinable — can be understood ultimately as logical, or analytic, modalities that are grounded in meaning rather than any primitive modal features of reality. For example, intuitively it is impossible that an object simultaneously exemplify the structural properties **having 2kg mass** and **having 1kg mass**. The combinatorial reason for this (cf. Armstrong 1989, 79) is that, for an object **a** to exemplify the former property is simply for there to be a division of **a** into two wholly distinct parts, both of which exemplify the latter property. Moreover, this division into parts is entirely arbitrary, that is, for *any* part **a**1 of **a** exemplifying **having 1kg mass**, there is a (unique) part **a**2 of **a** wholly distinct from **a**1 that also exemplifies that property. It follows that, if our 2kg object **a** itself *also* exemplifies **having 1kg mass**, then, as **a** is a part of itself, there must be a 1kg part of **a** that is wholly distinct from **a**. And that is analytically false, false “solely by virtue of the meaning we attach to” the word ‘part’ (*ibid*., 80).\[[54][114]\]

**Emergent Modalities.**   Combinatorialism purports to explain a further class of intuitive modal facts as features that simply “emerge” from facts about structural properties.\[[55][115]\] The discussion of structural states of affairs and supervenience above provides an example. Let us suppose the actual world **w**1 includes our water molecule **W** from Figure 1 plus a further hydrogen atom **h**3. In this world, only **h**1 and **h**2 bind to **o**. Hence, this world includes the state of affairs **W's being water** but not the state of affairs **I's being hydronium** in which **o**, **h**1, **h**2, and **h**3 are so bonded as to constitute a hydronium ion **I**. Conversely, however, given the unrestricted nature of recombination, there is a world **w**2 that includes **W** structured as it actually is in **w**1 but which also includes the spoiler \[**B**,**o**,**h**3\] — where **o** and **h**3 bond — and, hence, the structural state of affairs **I's being hydronium**. Thus, the absence of \[**B**,**o**,**h**3\] in **w**1 enables the emergence of **W's being water** and precludes **I's being hydronium** whilst its presence in **w2** enables the emergence of the latter but precludes the former. As a consequence, it is impossible that the states of affairs **W's being water** and **I's being hydronium** coexist.\[[56][116]\]

Figure 2: **W**'s being water and (given a bond between **o** and **h**3) **I**'s being hydronium

Although more dramatic, large-scale examples of incompatible states of affairs — such as a thing's being simultaneously both a baboon and a hoolock — might be vastly more complex, there is no obvious reason why their impossibility could not have the same sort of combinatorial explanation.

**Essential Properties.**   It follows from the unrestricted nature of recombination that, for any simple object **a** and simple universal **P**, **a** recombines with **P** in some worlds and fails to recombine with **P** in others. Generalizing from this fact, it follows that no simple or sum of simples has any simple universal or conjunction of simple universals essentially. It also follows that no such object has any structural property essentially. For assume **o** is such an object and that it exemplifies a structural property **P**. Since **P** is structural, it supervenes on some set of simple states of affairs. But by the nature of recombination, there are combinatorial worlds in which those states of affairs do not exist and, hence, in which **P** doesn't but **o** — being a simple or a sum of simples — does.

Thick particulars like our water molecule **W** don't fare much better because of the possibility of spoilers. For Armstrong (1997, 35), **W** is simply the conjunction of its constituent states of affairs. As we've just seen, however, in the presence of spoilers, that conjunction would exist — hence, **W** would exist — without being **Water**. Hence, it would seem that at least some properties that, intuitively, are essential to their bearers turn out not to be for the combinatorialist. The problem is compounded by the fact that some intuitively non-essential properties of some thick particulars are arguably essential for the combinatorialist. The shape properties of a thick particular **A**, for example, would seem to be a function of its constituent states of affairs. Moreover, the exemplification of such properties are not obviously subject to spoilers the way that natural kind properties like **Water** are. Hence, as **A** is identical to the conjunction of its constituent states of affairs, it would seem that it will have the same shape in any world in which it exists, i.e., it will have that shape essentially.

That said, combinatorialism can arguably provide a reasonably robust analysis of intuitions about the essential properties of ordinary thick particulars like dogs or persons. Such objects can be taken to be temporal successions of sums of simples and each sum in the succession as its temporal parts. Sums in the same rough temporal neighborhood are composed of roughly the same simples and are structured in roughly the same way. Similarities between such objects across worlds in turn determine counterpart relations. Following Lewis, the essential properties of such objects can then be identified with those properties exemplified by (all of the temporal parts of) all of its counterparts in every world in which it exists (Armstrong 1997, 99–103, 169).\[[57][117]\]

#### 2.3.6 Fewer Things and Other Things: Modified Combinatorialism

Since a possible world is a recombination of the actual world and every recombination includes states of affairs involving every simple individual and every simple universal, by **AE3**, every simple entity exists in every world. Hence, there could not have been fewer of them; nor could there have been simples other than the ones there actually are. In this section, we address this issue and the issue of contingent existence generally in combinatorialism.

**Fewer things.**  Combinatorialism as it stands has no problem accounting for the general intuition that there could have been fewer things. We have already noted in [§2.3.3][118] and again in [§2.3.5][119] how our water molecule **W**, as such, might not have existed. More generally, given the unrestricted nature of recombination, for any **a** involving a structural fact **S**, there are recombinations of the actual world wherein either (a) some of the relations among **a**'s constituents that are critical to **S**'s structure fail to be exemplified by those constituents, or (b) there are further states of affairs included by those recombinations that act as spoilers for **S**. Consequently, the combinatorialist seems to have no difficulty explaining how there might have been fewer water molecules, humans, etc.

Intuitively, however, there isn't anything in the idea of a simple that suggests that simples are necessary beings — especially if, as combinatorialists generally agree, simples are physical things of some sort and simple universals are properties of, and relations among, those things. For there is nothing in the nature of a simple object to suggest that any given simple had to have existed. Likewise, there is nothing in the nature of a simple universal to suggest it had to have been exemplified and, hence, on the combinatorialist's own conception of universals, that it had to exist. Otherwise put, as simples exist only insofar as they are constituents of facts, there seems no reason why there couldn't have been a very small number of facts, indeed, just a single simple, atomic, monadic fact and, hence, a lone simple object and a lone simple universal.

In fact, however, **AW3** can be easily modified to accommodate these intuitions without doing any serious violence to combinatorialist intuitions. Specifically, the combinatorialist can admit “contracted” worlds in which fewer simples exist by allowing any recombination of *any* simple fact — that is, equivalently, by allowing any state of affairs — to count as a possible world:

<table><tbody><tr><td><b>AW3′</b></td><td></td><td><b>w</b> is a (combinatorial) possible world =<sub><span size="-2"><i>def</i></span></sub> <b>w</b> is a recombination of some simple fact <b>f</b> conjoined with the totality state of affairs <b>T<sub>w</sub></b> for that recombination.</td></tr></tbody></table>

**AE3** requires no modification, as it was defined with sufficient generality above. Under **AW3′**, however, **AE3** entails that all entities alike — objects and universals, simple and structural — are contingent and, indeed, that every simple object is the sole constituent of some combinatorial possible world.

**Other things.**  Intuitively, not only could there have been fewer things, there could have been more things or, more generally, things *other* than those that actually exist. As above, combinatorialism as it stands seems able to account for many instances of this intuition: Figure 2 illustrates how a non-actual hydronium ion **I** might exist in another world. Likewise, there seems no reason to deny, e.g., that there are rearrangements **w** of the actual world's simples wherein exist all of the human beings that actually exist (at, say, 0000GMT 1 January 2013) and more besides that are composed of simples that, in fact, constitute things other than human beings (Armstrong 1997, 165).\[[58][120]\] Combinatorialism also seems able to account for the possibility of conjunctive and structural universals that are simply rearrangements of actual simples. It is not implausible to think that such recombinations can give rise to, say, exotic biological kinds that have no actual instances (Armstrong 1989, 55–56). Thus, in particular, combinatorialism seems quite able to provide the truth condition ([24][121]) for ([23][122]) and, hence, can account for some possibilities involving “missing” universals that, intuitively, ought to be possible.

However, it is far from clear that such possibilities exhaust the modal intuition that other things could have existed. Notably, intuitively, there could have been different *simple* universals distinct from any that actually exist — different fundamental properties of simples, for example. Likewise for simple objects. Either way, there seems to be nothing in the idea of a simple object or simple universal that suggests there couldn't have been simples other than, or in addition to, the simples there are in fact. But **AW3**′ does not allow for this; the simples of every possible world are a subset of the actual simples and there is no obvious way of modifying the principle to accommodate the intuition. Nor is there any obvious way of modifying the principle to accommodate the intuition in question.\[[59][123]\]

The combinatorialist could of course abandon actualism and include merely possible simples into her ontology. Again, she could follow the new actualists and draw a division between actually concrete and non-actual, possibly concrete simples; or she could introduce Plantinga-style haecceities to go proxy for merely possible simples. But all of these options would be badly out of step with the strong, naturalist motivations for combinatorialism: There is but the one physical world comprising all of the facts; recombinations of (at least some of) those facts — arbitrary rearrangements of their simple objects and universals — determine the possible worlds. Mere *possibilia*, merely possible non-*concretia*, and non-qualitative haecceities have no real place in that picture.

The “purest” option for the combinatorialist is simply to brazen it out and argue that the actual simples are, in fact, all the simples there could be (Armstrong 1989, 54ff; Driggers 2011, 56–61). A more robust option suggested by Skyrms (1981) makes some headway against the problem by introducing an “outer”, or “second-grade” realm of possibility, but at the cost of moving beyond the basic intuitions of combinatorialism (Armstrong 1989, 60; 1997, 165–167). Finally, Sider (2005, 681) suggests that combinatorialists who (like Armstrong) are modal fictionalists can deal with the problem of missing entities simply by appealing to yet more fictionalism: As the combinatorialist fiction *already* includes non-actual states of affairs with actually existing constituents, there seems no reason not to extend the fiction to include non-actual states of affairs whose constituents include non-actual particulars and universals. Fictionalism itself, however, leaves the combinatorialist with the deep problems detailed by Kim (1986), Lycan (1993), and Rosen (1993).\[[60][124]\]

#### 2.3.7 A Brief Assessment of Combinatorialism

As with concretism and abstractionism, combinatorialism provides reasonably clear definitions of possible worlds and existence in a world and is noteworthy for its attempt to avoid what might be thought of as the metaphysical excesses of the two competing views. In contrast to concretism, combinatorialism is staunchly actualist: instead of an infinity of alternative physical universes, each with its own unique inhabitants existing as robustly as the inhabitants of the actual world, the worlds of combinatorialism are simply rearrangements of the universals and particulars of the actual world; and commitment even to them might be avoided if some version of fictionalism is tenable. Likewise, in contrast to abstractionism's rather rich and unrestrained ontology of SOAs, combinatorialism's states of affairs are comparatively modest. Moreover, in contrast to nearly all versions of abstractionism, combinatorialism shares with concretism the virtue of a reductive theory of modality: Modal statements, ultimately, are true or false in virtue of how things stand with respect to worlds that are themselves defined in non-modal terms.

Combinatorialism's ontological modesty, however, is also a weakness. For, unlike, the two competing approaches, there are modal intuitions that the combinatorialist is not easily able to account for, notably, the intuition that there could have been other things. Additional difficulties are discussed in the supplemental document [Further Problems for Combinatorialism][125].

[1]: https://plato.stanford.edu/entries/logic-classical/
[2]: https://plato.stanford.edu/entries/possible-worlds/notes.html#2
[3]: https://plato.stanford.edu/entries/logic-intensional/
[4]: https://plato.stanford.edu/entries/possible-worlds/notes.html#3
[5]: https://plato.stanford.edu/entries/possible-worlds/notes.html#4
[6]: https://plato.stanford.edu/entries/possible-worlds/notes.html#5
[7]: https://plato.stanford.edu/entries/possible-worlds/notes.html#6
[8]: https://plato.stanford.edu/entries/possible-worlds/notes.html#7
[9]: https://plato.stanford.edu/entries/possible-worlds/notes.html#8
[10]: https://plato.stanford.edu/entries/possible-worlds/#Nec
[11]: https://plato.stanford.edu/entries/possible-worlds/notes.html#9
[12]: https://plato.stanford.edu/entries/possible-worlds/#Nec
[13]: https://plato.stanford.edu/entries/possible-worlds/#EQDef
[14]: https://plato.stanford.edu/entries/possible-worlds/#Poss
[15]: https://plato.stanford.edu/entries/possible-worlds/#FalseNecessityExample
[16]: https://plato.stanford.edu/entries/possible-worlds/semantics-extensionality.html
[17]: https://plato.stanford.edu/entries/possible-worlds/notes.html#10
[18]: https://plato.stanford.edu/entries/prop-attitude-reports/
[19]: https://plato.stanford.edu/entries/belief/
[20]: https://plato.stanford.edu/entries/mental-representation/
[21]: https://plato.stanford.edu/entries/possible-worlds/notes.html#11
[22]: https://plato.stanford.edu/entries/possible-worlds/notes.html#12
[23]: https://plato.stanford.edu/entries/identity-transworld/
[24]: https://plato.stanford.edu/entries/essential-accidental/
[25]: https://plato.stanford.edu/entries/possible-worlds/notes.html#13
[26]: https://plato.stanford.edu/entries/david-lewis/
[27]: https://plato.stanford.edu/entries/possible-worlds/notes.html#14
[28]: https://plato.stanford.edu/entries/possible-worlds/notes.html#15
[29]: https://plato.stanford.edu/entries/possible-worlds/notes.html#16
[30]: https://plato.stanford.edu/entries/causation-counterfactual/
[31]: https://plato.stanford.edu/entries/possible-worlds/notes.html#17
[32]: https://plato.stanford.edu/entries/quine/
[33]: https://plato.stanford.edu/entries/hume/
[34]: https://plato.stanford.edu/entries/quine/#MetRegThe
[35]: https://plato.stanford.edu/entries/possible-worlds/notes.html#18
[36]: https://plato.stanford.edu/entries/possible-worlds/#DeDicto
[37]: https://plato.stanford.edu/entries/possible-worlds/#AE1
[38]: https://plato.stanford.edu/entries/possible-worlds/#Acc
[39]: https://plato.stanford.edu/entries/possible-worlds/#Acc
[40]: https://plato.stanford.edu/entries/possible-worlds/notes.html#19
[41]: https://plato.stanford.edu/entries/possible-worlds/#Ess
[42]: https://plato.stanford.edu/entries/possible-worlds/#ExtReg
[43]: https://plato.stanford.edu/entries/possible-worlds/#Applications
[44]: https://plato.stanford.edu/entries/possible-worlds/notes.html#20
[45]: https://plato.stanford.edu/entries/possible-worlds/notes.html#21
[46]: https://plato.stanford.edu/entries/possible-worlds/#Acc-Trans
[47]: https://plato.stanford.edu/entries/possible-worlds/#Acc
[48]: https://plato.stanford.edu/entries/possible-worlds/#Acc-Trans
[49]: https://plato.stanford.edu/entries/possible-worlds/notes.html#22
[50]: https://plato.stanford.edu/entries/possible-worlds/#Acc
[51]: https://plato.stanford.edu/entries/possible-worlds/notes.html#23
[52]: https://plato.stanford.edu/entries/possible-worlds/notes.html#24
[53]: https://plato.stanford.edu/entries/possible-worlds/notes.html#25
[54]: https://plato.stanford.edu/entries/possible-worlds/problems-concretism.html
[55]: https://plato.stanford.edu/entries/possible-worlds/notes.html#26
[56]: https://plato.stanford.edu/entries/possible-worlds/notes.html#27
[57]: https://plato.stanford.edu/entries/possible-worlds/#Applications
[58]: https://plato.stanford.edu/entries/possible-worlds/notes.html#28
[59]: https://plato.stanford.edu/entries/mereology/
[60]: https://plato.stanford.edu/entries/possible-worlds/notes.html#29
[61]: https://plato.stanford.edu/entries/possible-worlds/#Acc
[62]: https://plato.stanford.edu/entries/possible-worlds/#DeDicto
[63]: https://plato.stanford.edu/entries/possible-worlds/semantics-abstractionist-intensionality.html
[64]: https://plato.stanford.edu/entries/possible-worlds/notes.html#30
[65]: https://plato.stanford.edu/entries/possible-worlds/#Nec
[66]: https://plato.stanford.edu/entries/possible-worlds/#Poss
[67]: https://plato.stanford.edu/entries/possible-worlds/#Reductionism
[68]: https://plato.stanford.edu/entries/possible-worlds/notes.html#31
[69]: https://plato.stanford.edu/entries/possible-worlds/#Actuality
[70]: https://plato.stanford.edu/entries/actualism/
[71]: https://plato.stanford.edu/entries/possible-worlds/notes.html#32
[72]: https://plato.stanford.edu/entries/possible-worlds/notes.html#33
[73]: https://plato.stanford.edu/entries/possible-worlds/notes.html#34
[74]: https://plato.stanford.edu/entries/possible-worlds/notes.html#35
[75]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[76]: https://plato.stanford.edu/entries/possible-worlds/notes.html#36
[77]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[78]: https://plato.stanford.edu/entries/compositionality/
[79]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[80]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[81]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[82]: https://plato.stanford.edu/entries/actualism/index.html#ActualistResponses
[83]: https://plato.stanford.edu/entries/actualism/
[84]: https://plato.stanford.edu/entries/possible-worlds/#AbsModIntEnt
[85]: https://plato.stanford.edu/entries/ontological-arguments/
[86]: https://plato.stanford.edu/entries/evil/
[87]: https://plato.stanford.edu/entries/actualism/
[88]: https://plato.stanford.edu/entries/conditionals/#Sta
[89]: https://plato.stanford.edu/entries/content-nonconceptual/
[90]: https://plato.stanford.edu/entries/possible-worlds/problems-abstractionism.html
[91]: https://plato.stanford.edu/entries/possible-worlds/notes.html#37
[92]: https://plato.stanford.edu/entries/possible-worlds/notes.html#38
[93]: https://plato.stanford.edu/entries/logical-atomism/
[94]: https://plato.stanford.edu/entries/wittgenstein/#TLP
[95]: https://plato.stanford.edu/entries/possible-worlds/notes.html#39
[96]: https://plato.stanford.edu/entries/possible-worlds/notes.html#40
[97]: https://plato.stanford.edu/entries/possible-worlds/notes.html#41
[98]: https://plato.stanford.edu/entries/mereology/#AtoOthOptgunk
[99]: https://plato.stanford.edu/entries/possible-worlds/notes.html#42
[100]: https://plato.stanford.edu/entries/possible-worlds/notes.html#43
[101]: https://plato.stanford.edu/entries/possible-worlds/notes.html#44
[102]: https://plato.stanford.edu/entries/possible-worlds/#AF
[103]: https://plato.stanford.edu/entries/fictionalism-modal/
[104]: https://plato.stanford.edu/entries/possible-worlds/notes.html#45
[105]: https://plato.stanford.edu/entries/possible-worlds/notes.html#46
[106]: https://plato.stanford.edu/entries/possible-worlds/notes.html#47
[107]: https://plato.stanford.edu/entries/possible-worlds/notes.html#48
[108]: https://plato.stanford.edu/entries/possible-worlds/notes.html#49
[109]: https://plato.stanford.edu/entries/possible-worlds/notes.html#50
[110]: https://plato.stanford.edu/entries/possible-worlds/notes.html#51
[111]: https://plato.stanford.edu/entries/possible-worlds/notes.html#52
[112]: https://plato.stanford.edu/entries/possible-worlds/notes.html#53
[113]: https://plato.stanford.edu/entries/possible-worlds/#ExtReg
[114]: https://plato.stanford.edu/entries/possible-worlds/notes.html#54
[115]: https://plato.stanford.edu/entries/possible-worlds/notes.html#55
[116]: https://plato.stanford.edu/entries/possible-worlds/notes.html#56
[117]: https://plato.stanford.edu/entries/possible-worlds/notes.html#57
[118]: https://plato.stanford.edu/entries/possible-worlds/#Supervenience
[119]: https://plato.stanford.edu/entries/possible-worlds/#EmergentModalities
[120]: https://plato.stanford.edu/entries/possible-worlds/notes.html#58
[121]: https://plato.stanford.edu/entries/possible-worlds/#TC1-PossExoticsFormal
[122]: https://plato.stanford.edu/entries/possible-worlds/#PossExoticsFormal
[123]: https://plato.stanford.edu/entries/possible-worlds/notes.html#59
[124]: https://plato.stanford.edu/entries/possible-worlds/notes.html#60
[125]: https://plato.stanford.edu/entries/possible-worlds/problems-combinatorialism.html
