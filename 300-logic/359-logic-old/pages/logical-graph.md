---
downloaded:       2021-12-04
page-url:         https://en.wikiversity.org/wiki/Logical_graph
page-title:       Logical graph - Wikiversity
article-title:    Logical graph - Wikiversity
---
# Logical graph

A __logical graph__ is a graph-theoretic structure in one of the systems of graphical syntax that Charles Sanders Peirce developed for logic.

In his papers on *qualitative logic*, *entitative graphs*, and *existential graphs*, Peirce developed several versions of a graphical formalism, or a graph-theoretic formal language, designed to be interpreted for logic.

In the century since Peirce initiated this line of development, a variety of formal systems have branched out from what is abstractly the same formal base of graph-theoretic structures. This article examines the common basis of these formal systems from a bird's eye view, focusing on those aspects of form that are shared by the entire family of algebras, calculi, or languages, however they happen to be viewed in a given application.

## Abstract point of view

The bird's eye view in question is more formally known as the perspective of formal equivalence, from which remove one cannot see many distinctions that appear momentous from lower levels of abstraction. In particular, expressions of different formalisms whose syntactic structures are isomorphic from the standpoint of algebra or topology are not recognized as being different from each other in any significant sense. Though we may note in passing such historical details as the circumstance that Charles Sanders Peirce used a *streamer-cross symbol* where George Spencer Brown used a *carpenter's square marker*, the theme of principal interest at the abstract level of form is neutral with regard to variations of that order.

## In lieu of a beginning\[[edit][5] | [edit source][6]\]

Consider the formal equations indicated in Figures 1 and 2.

For the time being these two forms of transformation may be referred to as *axioms* or *initial equations*.

## Duality : logical and topological\[[edit][7] | [edit source][8]\]

There are two types of duality that have to be kept separately mind in the use of logical graphs - logical duality and topological duality.

There is a standard way that graphs of the order that Peirce considered, those embedded in a continuous manifold like that commonly represented by a plane sheet of paper - with or without the paper bridges that Peirce used to augment its topological genus - can be represented in linear text as what are called *parse strings* or *traversal strings* and parsed into *pointer structures* in computer memory.

A blank sheet of paper can be represented in linear text as a blank space, but that way of doing it tends to be confusing unless the logical expression under consideration is set off in a separate display.

For example, consider the axiom or initial equation that is shown below:

[![Logical Graph Figure 3 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Logical_Graph_Figure_3_Visible_Frame.jpg/500px-Logical_Graph_Figure_3_Visible_Frame.jpg)][9]

(3)

This can be written inline as ![{\displaystyle {}^{\backprime \backprime }{\texttt {(}}~{\texttt {(}}~{\texttt {)}}~{\texttt {)}}=\quad {}^{\prime \prime }\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb2541d7ace55ecfe0a50659ff8fb6f4c2333e33) or set off in a text display as follows:

When we turn to representing the corresponding expressions in computer memory, where they can be manipulated with utmost facility, we begin by transforming the planar graphs into their topological duals. The planar regions of the original graph correspond to nodes (or points) of the dual graph, and the boundaries between planar regions in the original graph correspond to edges (or lines) between the nodes of the dual graph.

For example, overlaying the corresponding dual graphs on the plane-embedded graphs shown above, we get the following composite picture:

[![Logical Graph Figure 4 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Logical_Graph_Figure_4_Visible_Frame.jpg/500px-Logical_Graph_Figure_4_Visible_Frame.jpg)][10]

(4)

Though it's not really there in the most abstract topology of the matter, for all sorts of pragmatic reasons we find ourselves compelled to single out the outermost region of the plane in a distinctive way and to mark it as the *root node* of the corresponding dual graph. In the present style of Figure the root nodes are marked by horizontal strike-throughs.

Extracting the dual graphs from their composite matrices, we get this picture:

[![Logical Graph Figure 5 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Logical_Graph_Figure_5_Visible_Frame.jpg/500px-Logical_Graph_Figure_5_Visible_Frame.jpg)][11]

(5)

It is easy to see the relationship between the parenthetical expressions of Peirce's logical graphs, that somewhat clippedly picture the ordered containments of their formal contents, and the associated dual graphs, that constitute the species of rooted trees here to be described.

In the case of our last example, a moment's contemplation of the following picture will lead us to see that we can get the corresponding parenthesis string by starting at the root of the tree, climbing up the left side of the tree until we reach the top, then climbing back down the right side of the tree until we return to the root, all the while reading off the symbols, in this case either ![{\displaystyle {}^{\backprime \backprime }{\texttt {(}}{}^{\prime \prime }\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/34770f60b144df1835c7d31a2b973407fd747187) or ![{\displaystyle {}^{\backprime \backprime }{\texttt {)}}{}^{\prime \prime },\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/abcd00f3b9c1b819f30937445d9eb3ed7a3f5057) that we happen to encounter in our travels.

[![Logical Graph Figure 6 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Logical_Graph_Figure_6_Visible_Frame.jpg/500px-Logical_Graph_Figure_6_Visible_Frame.jpg)][12]

(6)

This ritual is called *traversing* the tree, and the string read off is called the *traversal string* of the tree. The reverse ritual, that passes from the string to the tree, is called *parsing* the string, and the tree constructed is called the *parse graph* of the string. The speakers thereof tend to be a bit loose in this language, often using *parse string* to mean the string that gets parsed into the associated graph.

We have treated in some detail various forms of the initial equation or logical axiom that is formulated in string form as ![{\displaystyle {}^{\backprime \backprime }{\texttt {(}}~{\texttt {(}}~{\texttt {)}}~{\texttt {)}}=\quad {}^{\prime \prime }.~\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/73935ecdd7e7549ba95581f74fa1c1e633132176) For the sake of comparison, let's record the plane-embedded and topological dual forms of the axiom that is formulated in string form as ![{\displaystyle {}^{\backprime \backprime }{\texttt {(}}~{\texttt {)(}}~{\texttt {)}}={\texttt {(}}~{\texttt {)}}{}^{\prime \prime }.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d59e14457e9499e010306f2520890902870c1554)

First the plane-embedded maps:

[![Logical Graph Figure 7 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Logical_Graph_Figure_7_Visible_Frame.jpg/500px-Logical_Graph_Figure_7_Visible_Frame.jpg)][13]

(7)

Next the plane-embedded maps and their dual trees superimposed:

[![Logical Graph Figure 8 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Logical_Graph_Figure_8_Visible_Frame.jpg/500px-Logical_Graph_Figure_8_Visible_Frame.jpg)][14]

(8)

Finally the dual trees by themselves:

[![Logical Graph Figure 9 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Logical_Graph_Figure_9_Visible_Frame.jpg/500px-Logical_Graph_Figure_9_Visible_Frame.jpg)][15]

(9)

And here are the parse trees with their traversal strings indicated:

[![Logical Graph Figure 10 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Logical_Graph_Figure_10_Visible_Frame.jpg/500px-Logical_Graph_Figure_10_Visible_Frame.jpg)][16]

(10)

We have at this point enough material to begin thinking about the forms of analogy, iconicity, metaphor, morphism, whatever you want to call them, that are pertinent to the use of logical graphs in their various logical interpretations, for instance, those that Peirce described as *entitative graphs* and *existential graphs*.

## Computational representation\[[edit][17] | [edit source][18]\]

The parse graphs that we've been looking at so far bring us one step closer to the pointer graphs that it takes to make these maps and trees live in computer memory, but they are still a couple of steps too abstract to detail the concrete species of dynamic data structures that we need. The time has come to flesh out the skeletons that we've drawn up to this point.

Nodes in a graph represent *records* in computer memory. A record is a collection of data that can be conceived to reside at a specific *address*. The address of a record is analogous to a demonstrative pronoun, on which account programmers commonly describe it as a *pointer* and semioticians recognize it as a type of sign called an *index*.

At the next level of concreteness, a pointer-record structure is represented as follows:

[![Logical Graph Figure 11 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Logical_Graph_Figure_11_Visible_Frame.jpg/500px-Logical_Graph_Figure_11_Visible_Frame.jpg)][19]

(11)

This portrays the pointer ![{\displaystyle {\mathit {index}}_{0}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/affa1e4a3e18c1cf528058966efb50cbfad6c38a) as the address of a record that contains the following data:

![{\displaystyle {\mathit {datum}}_{1},{\mathit {datum}}_{2},{\mathit {datum}}_{3},\ldots ,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7c7eace81711a15e924447a30e4722c7df702b82) and so on.

What makes it possible to represent graph-theoretical structures as data structures in computer memory is the fact that an address is just another datum, and so we may have a state of affairs like the following:

[![Logical Graph Figure 12 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Logical_Graph_Figure_12_Visible_Frame.jpg/500px-Logical_Graph_Figure_12_Visible_Frame.jpg)][20]

(12)

Returning to the abstract level, it takes three nodes to represent the three data records illustrated above: one root node connected to a couple of adjacent nodes. The items of data that do not point any further up the tree are then treated as labels on the record-nodes where they reside, as shown below:

[![Logical Graph Figure 13 Visible Frame.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Logical_Graph_Figure_13_Visible_Frame.jpg/500px-Logical_Graph_Figure_13_Visible_Frame.jpg)][21]

(13)

Notice that drawing the arrows is optional with rooted trees like these, since singling out a unique node as the root induces a unique orientation on all the edges of the tree, with *up* being the same direction as *away from the root*.

## Quick tour of the neighborhood\[[edit][22] | [edit source][23]\]

This much preparation allows us to take up the founding axioms or initial equations that determine the entire system of logical graphs.

### Primary arithmetic as semiotic system\[[edit][24] | [edit source][25]\]

Though it may not seem too exciting, logically speaking, there are many reasons to make oneself at home with the system of forms that is represented indifferently, topologically speaking, by rooted trees, balanced strings of parentheses, or finite sets of non-intersecting simple closed curves in the plane.

-   One reason is that it gives us a respectable example of a sign domain on which to cut our semiotic teeth, non-trivial in the sense that it contains a countable infinity of signs.

-   Another reason is that it allows us to study a simple form of computation that is recognizable as a species of *[semiosis][26]*, or sign-transforming process.

This space of forms, along with the two axioms that induce its partition into exactly two equivalence classes, is what George Spencer Brown called the *primary arithmetic*.

The axioms of the primary arithmetic are shown below, as they appear in both graph and string forms, along with pairs of names that come in handy for referring to the two opposing directions of applying the axioms.

Let ![{\displaystyle S\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ebca8014cfb8a1cbd89f085a458f03bbc1c8c30) be the set of rooted trees and let ![{\displaystyle S_{0}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9babb7e51ac33a5de874e5e573fe15ed2693bd25) be the 2-element subset of ![{\displaystyle S\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ebca8014cfb8a1cbd89f085a458f03bbc1c8c30) that consists of a rooted node and a rooted edge.

Simple intuition, or a simple inductive proof, assures us that any rooted tree can be reduced by way of the arithmetic initials either to a root node [![Rooted Node.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Rooted_Node.jpg/16px-Rooted_Node.jpg)][27] or else to a rooted edge [![Rooted Edge.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Rooted_Edge.jpg/12px-Rooted_Edge.jpg)][28] .

For example, consider the reduction that proceeds as follows:

[![Logical Graph Figure 16.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Logical_Graph_Figure_16.jpg/500px-Logical_Graph_Figure_16.jpg)][29]

(16)

Regarded as a semiotic process, this amounts to a sequence of signs, every one after the first serving as the *interpretant* of its predecessor, ending in a final sign that may be taken as the canonical sign for their common object, in the upshot being the result of the computation process. Simple as it is, this exhibits the main features of any computation, namely, a semiotic process that proceeds from an obscure sign to a clear sign of the same object, being in its aim and effect an action on behalf of clarification.

### Primary algebra as pattern calculus\[[edit][30] | [edit source][31]\]

Experience teaches that complex objects are best approached in a gradual, laminar, modular fashion, one step, one layer, one piece at a time, and it's just as much the case when the complexity of the object is irreducible, that is, when the articulations of the representation are necessarily at joints that are cloven disjointedly from nature, with some assembly required in the synthetic integrity of the intuition.

That's one good reason for spending so much time on the first half of [zeroth order logic][32], represented here by the primary arithmetic, a level of formal structure that C.S. Peirce verged on intuiting at numerous points and times in his work on logical graphs, and that Spencer Brown named and brought more completely to life.

There is one other reason for lingering a while longer in these primitive forests, and this is that an acquaintance with "bare trees", those as yet unadorned with literal or numerical labels, will provide a firm basis for understanding what's really at issue in such problems as the "ontological status of variables".

It is probably best to illustrate this theme in the setting of a concrete case, which we can do by reviewing the previous example of reductive evaluation shown in Figure 16.

The observation of several *semioses*, or sign-transformations, of roughly this shape will most likely lead an observer with any observational facility whatever to notice that it doesn't really matter what sorts of branches happen to sprout from the side of the root aside from the lone edge that also grows there - the end result will always be the same.

Our observer might think to summarize the results of many such observations by introducing a label or variable to signify any shape of branch whatever, writing something like the following:

[![Logical Graph Figure 17.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Logical_Graph_Figure_17.jpg/500px-Logical_Graph_Figure_17.jpg)][33]

(17)

Observations like that, made about an arithmetic of any variety, germinated by their summarizations, are the root of all algebra.

Speaking of algebra, and having encountered already one example of an algebraic law, we might as well introduce the axioms of the *primary algebra*, once again deriving their substance and their name from the works of Charles Sanders Peirce and George Spencer Brown, respectively.

The choice of axioms for any formal system is to some degree a matter of aesthetics, as it is commonly the case that many different selections of formal rules will serve as axioms to derive all the rest as theorems. As it happens, the example of an algebraic law that we noticed first, ![{\displaystyle a{\texttt {(}}~{\texttt {)}}={\texttt {(}}~{\texttt {)}},~\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5aa7e2e6c46b96462c64204b59500a6ea81dcc2f) as simple as it appears, proves to be provable as a theorem on the grounds of the foregoing axioms.

We might also notice at this point a subtle difference between the primary arithmetic and the primary algebra with respect to the grounds of justification that we have naturally if tacitly adopted for their respective sets of axioms.

The arithmetic axioms were introduced by fiat, in an *a priori* fashion, though of course it is only long prior experience with the practical uses of comparably developed generations of formal systems that would actually induce us to such a quasi-primal move. The algebraic axioms, in contrast, can be seen to derive their motive and their justice from the observation and summarization of patterns that are visible in the arithmetic spectrum.

## Formal development\[[edit][34] | [edit source][35]\]

What precedes this point is intended as an informal introduction to the axioms of the primary arithmetic and primary algebra, and hopefully provides the reader with an intuitive sense of their motivation and rationale.

The next order of business is to give the exact forms of the axioms that are used in the following more formal development, devolving from Peirce's various systems of logical graphs via Spencer-Brown's *Laws of Form* (LOF). In formal proofs, a variation of the annotation scheme from LOF will be used to mark each step of the proof according to which axiom, or *initial*, is being invoked to justify the corresponding step of syntactic transformation, whether it applies to graphs or to strings.

### Axioms\[[edit][36] | [edit source][37]\]

The axioms are just four in number, divided into the *arithmetic initials*, ![{\displaystyle I_{1}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a13ae81ae0594cbf3ecbebcb1670993ac0eee674) and ![{\displaystyle I_{2},\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d62dc159eda0b311ae4e7b02e103a353d1d7118d) and the *algebraic initials*, ![{\displaystyle J_{1}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba6fafdc6cc7f687417f39e567c43be314ed1736) and ![{\displaystyle J_{2}.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/487f9cdc49c6763fbc71fb5150ca7b6c57d91e88)

One way of assigning logical meaning to the initial equations is known as the *entitative interpretation* (EN). Under EN, the axioms read as follows:

![{\displaystyle {\begin{array}{ccccc}I_{1}&:&\operatorname {true} \ \operatorname {or} \ \operatorname {true} &=&\operatorname {true} \\I_{2}&:&\operatorname {not} \ \operatorname {true} \ &=&\operatorname {false} \\J_{1}&:&a\ \operatorname {or} \ \operatorname {not} \ a&=&\operatorname {true} \\J_{2}&:&(a\ \operatorname {or} \ b)\ \operatorname {and} \ (a\ \operatorname {or} \ c)&=&a\ \operatorname {or} \ (b\ \operatorname {and} \ c)\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/743ed3f77d603e285898d2c07cece0784187e782)

Another way of assigning logical meaning to the initial equations is known as the *existential interpretation* (EX). Under EX, the axioms read as follows:

![{\displaystyle {\begin{array}{ccccc}I_{1}&:&\operatorname {false} \ \operatorname {and} \ \operatorname {false} &=&\operatorname {false} \\I_{2}&:&\operatorname {not} \ \operatorname {false} &=&\operatorname {true} \\J_{1}&:&a\ \operatorname {and} \ \operatorname {not} \ a&=&\operatorname {false} \\J_{2}&:&(a\ \operatorname {and} \ b)\ \operatorname {or} \ (a\ \operatorname {and} \ c)&=&a\ \operatorname {and} \ (b\ \operatorname {or} \ c)\\\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2db5a9ea05a29ae86b4014ccf6281b4b32acffa9)

All of the axioms in this set have the form of equations. This means that all of the inference steps that they allow are reversible. The proof annotation scheme employed below makes use of a double bar ![{\displaystyle =\!=\!=\!=\!=}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4a649fd90a540d0ac1ace3b2a3b22e8c160e7e45) to mark this fact, although it will often be left to the reader to decide which of the two possible directions is the one required for applying the indicated axiom.

### Frequently used theorems\[[edit][38] | [edit source][39]\]

The actual business of proof is a far more strategic affair than the simple cranking of inference rules might suggest. Part of the reason for this lies in the circumstance that the usual brands of inference rules combine the moving forward of a state of inquiry with the losing of information along the way that doesn't appear to be immediately relevant, at least, not as viewed in the local focus and the short run of the moment to moment proceedings of the proof in question. Over the long haul, this has the pernicious side-effect that one is forever strategically required to reconstruct much of the information that one had strategically thought to forget in earlier stages of the proof, if "before the proof started" can be counted as an earlier stage of the proof in view.

For this reason, among others, it is very instructive to study equational inference rules of the sort that our axioms have just provided. Although equational forms of reasoning are paramount in mathematics, they are less familiar to the student of conventional logic textbooks, who may find a few surprises here.

By way of gaining a minimal experience with how equational proofs look in the present forms of syntax, let us examine the proofs of a few essential theorems in the primary algebra.

#### C1. Double negation\[[edit][40] | [edit source][41]\]

The first theorem goes under the names of *Consequence 1* ![{\displaystyle (C_{1})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/935250cc9926df3bedb7f4c5225d731a6948451e), the *double negation theorem* (DNT), or *Reflection*.

[![Double Negation 1.0 Splash Page.png](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Double_Negation_1.0_Splash_Page.png/500px-Double_Negation_1.0_Splash_Page.png)][42]

(24)

The proof that follows is adapted from the one that was given by George Spencer Brown in his book *Laws of Form* (LOF) and credited to two of his students, John Dawes and D.A. Utting.

The steps of this proof are replayed in the following animation.

[![Double Negation 2.0 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/2/22/Double_Negation_2.0_Animation.gif)][43]

(26)

#### C2. Generation theorem\[[edit][44] | [edit source][45]\]

One theorem of frequent use goes under the nickname of the *weed and seed theorem* (WAST). The proof is just an exercise in mathematical induction, once a suitable basis is laid down, and it will be left as an exercise for the reader. What the WAST says is that a label can be freely distributed or freely erased anywhere in a subtree whose root is labeled with that label. The second in our list of frequently used theorems is in fact the base case of this weed and seed theorem. In LOF, it goes by the names of *Consequence 2* ![{\displaystyle (C_{2})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bef7adca8ee030bc6789bd09e49003b9abdc45cd) or *Generation*.

[![Generation Theorem 1.0 Splash Page.png](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Generation_Theorem_1.0_Splash_Page.png/500px-Generation_Theorem_1.0_Splash_Page.png)][46]

(27)

Here is a proof of the Generation Theorem.

The steps of this proof are replayed in the following animation.

[![Generation Theorem 2.0 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/a/ad/Generation_Theorem_2.0_Animation.gif)][47]

(29)

#### C3. Dominant form theorem\[[edit][48] | [edit source][49]\]

The third of the frequently used theorems of service to this survey is one that Spencer-Brown annotates as *Consequence 3* ![{\displaystyle (C_{3})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/826609567db26949b7761cbec49fb1c4a5e580db) or *Integration*. A better mnemonic might be *dominance and recession theorem* (DART), but perhaps the brevity of *dominant form theorem* (DFT) is sufficient reminder of its double-edged role in proofs.

[![Dominant Form 1.0 Splash Page.png](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Dominant_Form_1.0_Splash_Page.png/500px-Dominant_Form_1.0_Splash_Page.png)][50]

(30)

Here is a proof of the Dominant Form Theorem.

The following animation provides an instant re\*play.

[![Dominant Form 2.0 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/e/e4/Dominant_Form_2.0_Animation.gif)][51]

(32)

### Exemplary proofs\[[edit][52] | [edit source][53]\]

Based on the axioms given at the outest, and aided by the theorems recorded so far, it is possible to prove a multitude of much more complex theorems. A couple of all-time favorites are given next.

#### Peirce's law\[[edit][54] | [edit source][55]\]

*Main article* : [Peirce's law][56]

Peirce's law is commonly written in the following form:

![{\displaystyle ((p\Rightarrow q)\Rightarrow p)\Rightarrow p\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0822abe3f43d1d4ac5c041c28404feb00c2dd5fd)

The existential graph representation of Peirce's law is shown in Figure 33.

[![Peirce's Law 1.0 Splash Page.png](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Peirce%27s_Law_1.0_Splash_Page.png/500px-Peirce%27s_Law_1.0_Splash_Page.png)][57]

(33)

A graphical proof of Peirce's law is shown in Figure 34.

The following animation replays the steps of the proof.

[![Peirce's Law 2.0 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/5/58/Peirce%27s_Law_2.0_Animation.gif)][58]

(35)

#### Praeclarum theorema\[[edit][59] | [edit source][60]\]

An illustrious example of a propositional theorem is the *praeclarum theorema*, the *admirable*, *shining*, or *splendid* theorem of Leibniz.

If *a* is *b* and *d* is *c*, then *ad* will be *bc*.

This is a fine theorem, which is proved in this way:

*a* is *b*, therefore *ad* is *bd* (by what precedes),

*d* is *c*, therefore *bd* is *bc* (again by what precedes),

*ad* is *bd*, and *bd* is *bc*, therefore *ad* is *bc*. Q.E.D.

(Leibniz, *Logical Papers*, p. 41).

Under the existential interpretation, the praeclarum theorema is represented by means of the following logical graph.

[![Praeclarum Theorema 1.0 Splash Page.png](https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Praeclarum_Theorema_1.0_Splash_Page.png/500px-Praeclarum_Theorema_1.0_Splash_Page.png)][61]

(36)

And here's a neat proof of that nice theorem.

The steps of the proof are replayed in the following animation.

[![Praeclarum Theorema 2.0 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/7/78/Praeclarum_Theorema_2.0_Animation.gif)][62]

(38)

#### Two-thirds majority function\[[edit][63] | [edit source][64]\]

Consider the following equation in boolean algebra, posted as a [problem for proof][65] at [MathOverFlow][66].

![{\displaystyle {\begin{matrix}ab{\bar {c}}+a{\bar {b}}c+{\bar {a}}bc+abc\\[6pt]\iff \\[6pt]ab+ac+bc\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffcf44aac22bb4874f50d99a97dcbfb8f478cdd1)

    

The required equation can be proven in the medium of logical graphs as shown in the following Figure.

Here's an animated recap of the graphical transformations that occur in the above proof:

[![Two-Thirds Majority Function 500 x 250 Animation.gif](https://upload.wikimedia.org/wikipedia/commons/b/b5/Two-Thirds_Majority_Function_500_x_250_Animation.gif)][67]

(40)

## Bibliography\[[edit][68] | [edit source][69]\]

-   Leibniz, G.W. (1679-1686 ?), "Addenda to the Specimen of the Universal Calculus", pp. 40-46 in G.H.R. Parkinson (ed. and trans., 1966), *Leibniz : Logical Papers*, Oxford University Press, London, UK.

-   Peirce, C.S. (1931-1935, 1958), *Collected Papers of Charles Sanders Peirce*, vols. 1-6, Charles Hartshorne and Paul Weiss (eds.), vols. 7-8, Arthur W. Burks (ed.), Harvard University Press, Cambridge, MA. Cited as (CP volume.paragraph).

-   Peirce, C.S. (1981-), *Writings of Charles S. Peirce : A Chronological Edition*, Peirce Edition Project (eds.), Indiana University Press, Bloomington and Indianapolis, IN. Cited as (CE volume, page).

-   Peirce, C.S. (1885), "On the Algebra of Logic : A Contribution to the Philosophy of Notation", *American Journal of Mathematics* 7 (1885), 180-202. Reprinted as CP 3.359-403 and CE 5, 162-190.

-   Peirce, C.S. (*c.* 1886), "Qualitative Logic", MS 736. Published as pp. 101-115 in Carolyn Eisele (ed., 1976), *The New Elements of Mathematics by Charles S. Peirce, Volume 4, Mathematical Philosophy*, Mouton, The Hague.

-   Peirce, C.S. (1886 a), "Qualitative Logic", MS 582. Published as pp. 323-371 in *Writings of Charles S. Peirce : A Chronological Edition, Volume 5, 1884-1886*, Peirce Edition Project (eds.), Indiana University Press, Bloomington, IN, 1993.

-   Peirce, C.S. (1886 b), "The Logic of Relatives : Qualitative and Quantitative", MS 584. Published as pp. 372-378 in *Writings of Charles S. Peirce : A Chronological Edition, Volume 5, 1884-1886*, Peirce Edition Project (eds.), Indiana University Press, Bloomington, IN, 1993.

-   Spencer Brown, George (1969), *Laws of Form*, George Allen and Unwin, London, UK.

## Resources\[[edit][70] | [edit source][71]\]

-   [PlanetMath][72]
    -   [Logical Graph : Introduction][73]
    -   [Logical Graph : Formal Development][74]

-   Bergman and Paavola (eds.), [Commens Dictionary of Peirce's Terms][75]
    -   [Existential Graph][76]
    -   [Logical Graph][77]

-   [Dau, Frithjof][78]
    -   [Peirce's Existential Graphs : Readings and Links][79]
    -   [Existential Graphs as Moving Pictures of Thought][80] - Computer Animated Proof of Leibniz's Praeclarum Theorema

-   [Kauffman, Louis H.][81]
    -   [Box Algebra, Boundary Mathematics, Logic, and Laws of Form][82]

-   [MathWorld : A Wolfram Web Resource][83]
    -   [Weisstein, Eric W.][84], [Spencer-Brown Form][85]

-   Shoup, Richard (ed.), [Laws of Form Web Site][86]
    -   Spencer-Brown, George (1973), [Transcript Session One][87], [AUM Conference][88], Esalen, CA.

## Translations\[[edit][89] | [edit source][90]\]

-   [Grafo lógico][91], [Portuguese Wikipedia][92].

## Syllabus\[[edit][93] | [edit source][94]\]

### Focal nodes\[[edit][95] | [edit source][96]\]

-   [Inquiry Live][97]
-   [Logic Live][98]

### Peer nodes\[[edit][99] | [edit source][100]\]

-   [Logical Graph @ InterSciWiki][101]
-   [Logical Graph @ Subject Wikis][102]
-   [Logical Graph @ Wikiversity][103]
-   [Logical Graph @ Wikiversity Beta][104]

### Logical operators\[[edit][105] | [edit source][106]\]

### \[[edit][107] | [edit source][108]\]

### Relational concepts\[[edit][109] | [edit source][110]\]

### Information, Inquiry\[[edit][111] | [edit source][112]\]

### Related articles\[[edit][113] | [edit source][114]\]

## Document history\[[edit][115] | [edit source][116]\]

Portions of the above article were adapted from the following sources under the [GNU Free Documentation License][117], under other applicable licenses, or by permission of the copyright holders.

-   [Logical Graph][118], [InterSciWiki][119]
-   [Logical Graph 1][120], [PlanetMath][121]
-   [Logical Graph 2][122], [PlanetMath][123]
-   [Logical Graph][124], [Semantic Web][125]
-   [Logical Graph][126], [Wikinfo][127]
-   [Logical Graph][128], [Wikiversity][129]
-   [Logical Graph][130], [Wikiversity Beta][131]
-   [Logical Graph][132], [Wikipedia][133]

[1]: https://en.wikiversity.org/wiki/Logic_Live "Logic Live"
[2]: https://en.wikiversity.org/wiki/Inquiry_Live "Inquiry Live"
[3]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=1 "Edit section: Abstract point of view"
[4]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=1 "Edit section: Abstract point of view"
[5]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=2 "Edit section: In lieu of a beginning"
[6]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=2 "Edit section: In lieu of a beginning"
[7]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=3 "Edit section: Duality : logical and topological"
[8]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=3 "Edit section: Duality : logical and topological"
[9]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_3_Visible_Frame.jpg
[10]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_4_Visible_Frame.jpg
[11]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_5_Visible_Frame.jpg
[12]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_6_Visible_Frame.jpg
[13]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_7_Visible_Frame.jpg
[14]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_8_Visible_Frame.jpg
[15]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_9_Visible_Frame.jpg
[16]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_10_Visible_Frame.jpg
[17]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=4 "Edit section: Computational representation"
[18]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=4 "Edit section: Computational representation"
[19]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_11_Visible_Frame.jpg
[20]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_12_Visible_Frame.jpg
[21]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_13_Visible_Frame.jpg
[22]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=5 "Edit section: Quick tour of the neighborhood"
[23]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=5 "Edit section: Quick tour of the neighborhood"
[24]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=6 "Edit section: Primary arithmetic as semiotic system"
[25]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=6 "Edit section: Primary arithmetic as semiotic system"
[26]: https://en.wikiversity.org/w/index.php?title=Semiosis&action=edit&redlink=1 "Semiosis (page does not exist)"
[27]: https://en.wikiversity.org/wiki/File:Rooted_Node.jpg
[28]: https://en.wikiversity.org/wiki/File:Rooted_Edge.jpg
[29]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_16.jpg
[30]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=7 "Edit section: Primary algebra as pattern calculus"
[31]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=7 "Edit section: Primary algebra as pattern calculus"
[32]: https://en.wikiversity.org/wiki/Zeroth_order_logic "Zeroth order logic"
[33]: https://en.wikiversity.org/wiki/File:Logical_Graph_Figure_17.jpg
[34]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=8 "Edit section: Formal development"
[35]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=8 "Edit section: Formal development"
[36]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=9 "Edit section: Axioms"
[37]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=9 "Edit section: Axioms"
[38]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=10 "Edit section: Frequently used theorems"
[39]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=10 "Edit section: Frequently used theorems"
[40]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=11 "Edit section: C1. Double negation"
[41]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=11 "Edit section: C1. Double negation"
[42]: https://en.wikiversity.org/wiki/File:Double_Negation_1.0_Splash_Page.png
[43]: https://en.wikiversity.org/wiki/File:Double_Negation_2.0_Animation.gif
[44]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=12 "Edit section: C2. Generation theorem"
[45]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=12 "Edit section: C2. Generation theorem"
[46]: https://en.wikiversity.org/wiki/File:Generation_Theorem_1.0_Splash_Page.png
[47]: https://en.wikiversity.org/wiki/File:Generation_Theorem_2.0_Animation.gif
[48]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=13 "Edit section: C3. Dominant form theorem"
[49]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=13 "Edit section: C3. Dominant form theorem"
[50]: https://en.wikiversity.org/wiki/File:Dominant_Form_1.0_Splash_Page.png
[51]: https://en.wikiversity.org/wiki/File:Dominant_Form_2.0_Animation.gif
[52]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=14 "Edit section: Exemplary proofs"
[53]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=14 "Edit section: Exemplary proofs"
[54]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=15 "Edit section: Peirce's law"
[55]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=15 "Edit section: Peirce's law"
[56]: https://en.wikiversity.org/wiki/Peirce%27s_law "Peirce's law"
[57]: https://en.wikiversity.org/wiki/File:Peirce%27s_Law_1.0_Splash_Page.png
[58]: https://en.wikiversity.org/wiki/File:Peirce%27s_Law_2.0_Animation.gif
[59]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=16 "Edit section: Praeclarum theorema"
[60]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=16 "Edit section: Praeclarum theorema"
[61]: https://en.wikiversity.org/wiki/File:Praeclarum_Theorema_1.0_Splash_Page.png
[62]: https://en.wikiversity.org/wiki/File:Praeclarum_Theorema_2.0_Animation.gif
[63]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=17 "Edit section: Two-thirds majority function"
[64]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=17 "Edit section: Two-thirds majority function"
[65]: http://mathoverflow.net/questions/9292/newbie-boolean-algebra-question
[66]: http://mathoverflow.net/
[67]: https://en.wikiversity.org/wiki/File:Two-Thirds_Majority_Function_500_x_250_Animation.gif
[68]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=18 "Edit section: Bibliography"
[69]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=18 "Edit section: Bibliography"
[70]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=19 "Edit section: Resources"
[71]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=19 "Edit section: Resources"
[72]: https://planetmath.org/
[73]: https://planetmath.org/LogicalGraphIntroduction
[74]: https://planetmath.org/LogicalGraphFormalDevelopment
[75]: http://www.helsinki.fi/science/commens/dictionary.html
[76]: http://www.helsinki.fi/science/commens/terms/graphexis.html
[77]: http://www.helsinki.fi/science/commens/terms/graphlogi.html
[78]: http://dr-dau.net/index.shtml
[79]: http://dr-dau.net/eg_readings.shtml
[80]: http://web.archive.org/web/20070706192257/http://dr-dau.net/pc.shtml
[81]: http://www.math.uic.edu/~kauffman/
[82]: http://www.math.uic.edu/~kauffman/Arithmetic.htm
[83]: http://mathworld.wolfram.com/
[84]: http://mathworld.wolfram.com/about/author.html
[85]: http://mathworld.wolfram.com/Spencer-BrownForm.html
[86]: http://www.lawsofform.org/
[87]: http://www.lawsofform.org/aum/session1.html
[88]: http://www.lawsofform.org/aum/
[89]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=20 "Edit section: Translations"
[90]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=20 "Edit section: Translations"
[91]: https://pt.wikipedia.org/wiki/Grafo_l%C3%B3gico
[92]: https://pt.wikipedia.org/
[93]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=21 "Edit section: Syllabus"
[94]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=21 "Edit section: Syllabus"
[95]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=22 "Edit section: Focal nodes"
[96]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=22 "Edit section: Focal nodes"
[97]: https://en.wikiversity.org/wiki/Inquiry_Live "Inquiry Live"
[98]: https://en.wikiversity.org/wiki/Logic_Live "Logic Live"
[99]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=23 "Edit section: Peer nodes"
[100]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=23 "Edit section: Peer nodes"
[101]: http://intersci.ss.uci.edu/wiki/index.php/Logical_graph
[102]: http://ref.subwiki.org/wiki/Logical_graph
[103]: https://en.wikiversity.org/wiki/Logical_graph
[104]: https://beta.wikiversity.org/wiki/Logical_graph
[105]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=24 "Edit section: Logical operators"
[106]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=24 "Edit section: Logical operators"
[107]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=25 "Edit section: Related topics"
[108]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=25 "Edit section: Related topics"
[109]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=26 "Edit section: Relational concepts"
[110]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=26 "Edit section: Relational concepts"
[111]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=27 "Edit section: Information, Inquiry"
[112]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=27 "Edit section: Information, Inquiry"
[113]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=28 "Edit section: Related articles"
[114]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=28 "Edit section: Related articles"
[115]: https://en.wikiversity.org/w/index.php?title=Logical_graph&veaction=edit&section=29 "Edit section: Document history"
[116]: https://en.wikiversity.org/w/index.php?title=Logical_graph&action=edit&section=29 "Edit section: Document history"
[117]: https://en.wikiversity.org/wiki/GNU_Free_Documentation_License "GNU Free Documentation License"
[118]: http://intersci.ss.uci.edu/wiki/index.php/Logical_graph
[119]: http://intersci.ss.uci.edu/
[120]: https://planetmath.org/LogicalGraphIntroduction
[121]: https://planetmath.org/
[122]: https://planetmath.org/LogicalGraphFormalDevelopment
[123]: https://planetmath.org/
[124]: http://semanticweb.org/wiki/Logical_graph
[125]: http://semanticweb.org/
[126]: http://wikinfo.org/w/index.php/Logical_graph
[127]: http://wikinfo.org/w/
[128]: https://en.wikiversity.org/wiki/Logical_graph
[129]: https://en.wikiversity.org/
[130]: https://beta.wikiversity.org/wiki/Logical_graph
[131]: https://beta.wikiversity.org/
[132]: https://en.wikipedia.org/w/index.php?title=Logical_graph&oldid=67277491
[133]: https://en.wikipedia.org/
