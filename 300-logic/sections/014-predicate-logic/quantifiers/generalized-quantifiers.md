---
downloaded:       2022-01-14
page-url:         https://plato.stanford.edu/entries/generalized-quantifiers/
page-title:       Generalized Quantifiers (Stanford Encyclopedia of Philosophy)
article-title:    Generalized Quantifiers
---
# Generalized Quantifiers (Stanford Encyclopedia of Philosophy)

Generalized quantifiers are now standard equipment in the toolboxes of
both logicians and linguists. The purpose of this entry is to describe
these tools: where they come from, how they work, and what they can be
used to do. The description is by necessity sketchy, but several more
comprehensive surveys exist in the literature and will be referred to
when appropriate. To fully appreciate the text below, basic
familiarity with elementary set theoretic terminology, and with the
language of first-order logic will be helpful.
Generalized quantifiers are now standard equipment in the toolboxes of both logicians and linguists. The purpose of this entry is to describe these tools: where they come from, how they work, and what they can be used to do. The description is by necessity sketchy, but several more comprehensive surveys exist in the literature and will be referred to when appropriate. To fully appreciate the text below, basic familiarity with elementary set theoretic terminology, and with the language of first-order logic will be helpful.

## 1\. Preliminaries

The term "generalized quantifier" reflects that these entities were introduced in logic as generalizations of the standard quantifiers of modern logic, ∀∀ and ∃∃.\[[1][1]\] In retrospect one may say that ∀∀ and ∃∃ have been found to be just two instances of a much more general concept of quantifier, making the term "generalized" superfluous. Today it is also common to use just "quantifier" for the general notion, but "generalized quantifier" is still frequent for historical reasons. This article employs both terms, with a tendency to insert "generalized" in logical contexts, and to drop it in linguistic contexts.

We distinguish *quantifier expressions* from what they signify or denote, the (generalized) quantifiers themselves. In logical languages, quantifier expressions are variable-binding operators. Thus, ∃∃ is the familiar operator such that in a formula ∃xφ∃xφ,\[[2][2]\] ∃x∃x binds all free occurrences of *x* in φφ. It signifies the quantifier "there exists"-we'll see shortly exactly what this object is. Likewise, the symbol Q0Q0 is often used as a variable-binding operator signifying "there exist infinitely many".

In natural languages a variety of expressions have been seen as quantifier expressions, for example, each of the following English expressions:

everything, nothing, three books, the ten professors, John, John and Mary, only John, firemen, every, at least five, most, all but ten, less than half of the, John's, some student's, no…except Mary, more male than female, usually, never, each other.\[[3][3]\]

What, then, are generalized quantifiers? Before answering that question, a brief historical prelude is helpful.

## 2\. Aristotle

Aristotle's syllogistics can be seen as a formal study of the meaning of the four basic quantifier expressions all, no, some, not all, and of their properties. For example, the validity, according to Aristotle, of the syllogism

all(A,B) all(B,C)

---

some(A,C)

shows that he considered, in contrast with modern logical usage, all to have *existential import*, so that All A are B entails that A is not an empty term. Likewise, the validity of the syllogism

some(A,B) all(B,C)

---

all(A,C)

expresses that some is *monotone increasing* (as we now put it) in the second argument. Each valid syllogism formalizes part of the meaning of these quantifier expressions, but Aristotle's study of their properties went beyond the syllogistics. He observed, for example, that some and no are *convertible* or, as we might now say, *symmetric*, since they satisfy the scheme

in contrast with all and not all. Further, he studied how various forms of *negation* combined with quantifier expressions in (what was later called) the *square of opposition*.\[[4][4]\] Medieval logicians continued in Aristotle's tradition, but also extended syllogistic reasoning to cases where A,B could themselves be quantified expressions, thus dealing with premises and conclusions like Some donkey of every man doesn't run (example from John Buridan, 14th century). Even though Aristotelian logic falls short of the expressivity and precision of modern logic, the syllogistics certainly was a decisive contribution to the study of quantification. In fact, syllogistic systems of various expressive power have recently been studied in mathematical logic, precisely because of their affinity to natural reasoning and their simple computational properties; see [section 18][5] below.

Especially interesting in the present context is the fact that these quantifier expressions take *two* arguments or terms, and thus can be seen as *binary relations*, both syntactically (as Aristotle no doubt saw them) and semantically: given that terms signify sets of individuals, the expression some can be taken to signify the relation of overlap, i.e., of having non-empty intersection, between two sets, and all signifies the inclusion relation. Note that these are not relations between individuals but between sets of individuals-*second-order* relations. Indeed, they are exactly the generalized quantifiers *some* and *all*, respectively (on a given universe).

This thread-that quantifier expressions signify second-order relations-was not picked up by any of Aristotle's medieval followers (as far as we know). Instead, they picked up on the fact that the two terms have different status: the first combines with the quantifier expression to form a noun phrase (as we now say), which is the *subject* of the sentence, whereas the second is a verb phrase constituting the *predicate*. This led them to focus on what the subject-all men, some dogs, no sailors-signified, which conceptually seems to be a harder question. One might surmise that all men signifies every man (or the set of men), and that some dogs signifies some particular dog, but what about no sailors? In fact, one can show that approaches like these are doomed to failure.\[[5][6]\] The modern "solution" is that noun phrases signify *sets of sets* of individuals, so that, for example some dogs signifies the set of sets containing at least one dog-but that appears to require a more abstract and mathematical approach to semantics than the idea, which is at least implicit in Aristotle, that quantifier phrases signify relations between (the denotations of) terms.

## 3\. Frege

The second major historical contribution to the theory of generalized quantifiers came from the "inventor" of modern logic, Gottlob Frege, in the 1870s. In fact, Frege's contribution is twofold. As every philosophy student knows, he introduced the language of predicate logic, with sentential connectives, identity, and the variable-binding operator ∀∀ (though his 2-dimensional logical notation is no longer used). These are the quantifiers that logicians during the 1950's began to "generalize". But Frege also explicitly formulated the abstract notion of a quantifier as a second-order relation, or, as he called it, a *second level concept* ("*Begriff zweiter Stufe*"). He was well aware that the four Aristotelian quantifiers were prime examples, but he wanted to avoid the focus on subject-predicate form, which he (with much justification) saw as having been a major obstacle to the development of logic after Aristotle. It was therefore an important discovery that these quantifiers could all be defined in terms of ∀∀ and sentential operators (replacing all(A,B)(A,B) by ∀x(A(x)→B(x)∀x(A(x)→B(x)), some(A,B)(A,B) by ¬∀x(A(x)→¬B(x)¬∀x(A(x)→¬B(x)), etc.).

In fact, the only significant difference between Frege's notion of a second-level concept and the modern notion of a generalized quantifier is that Frege did not have the idea of an *interpretation* or *model*, which we now (since the advent of model theory in the 1950s) see as a *universe* that the quantifiers range over, plus an assignment of suitable semantic objects to the non-logical symbols. Frege's symbols all had fixed meanings, and the only universe he considered was the totality of everything. But apart from this, one may well say that it was Frege who discovered generalized quantifiers. This aspect of Frege's logic, however, remained in the background for a long time, and model theorists in the 50s and 60s seem not to have been aware of it.

## 4\. Generalizing the Universal and Existential Quantifier

Modern predicate logic fixes the meaning of ∀∀ and ∃∃ with the respective clauses in the truth definition, which specifies inductively the conditions under which a formula φ(x1,…,xn)φ(x1,…,xn) (with at most x1,…,xnx1,…,xn free) is *satisfied* by corresponding elements a1,…,ana1,…,an in a model M\=(M,I)M\=(M,I) (where *M* is the universe and *I* the interpretation function assigning suitable extensions to non-logical symbols): M⊨φ(a1,…,an)M⊨φ(a1,…,an). The clauses are (where "iff" as usual stands for "if and only if")

-   (1) M⊨∀xψ(x,a1,…,an)M⊨∀xψ(x,a1,…,an) iff for each a∈Ma∈M, M⊨ψ(a,a1,…,an)M⊨ψ(a,a1,…,an)
-   (2) M⊨∃xψ(x,a1,…,an)M⊨∃xψ(x,a1,…,an) iff there is some a∈Ma∈M s.t. M⊨ψ(a,a1,…,an)M⊨ψ(a,a1,…,an)

To introduce other quantifiers, one needs to appreciate what kind of expressions ∀∀ and ∃∃ are. Syntactically, they are operators binding one variable in one formula. To see how they work semantically it is useful to rewrite [(1)][7] and [(2)][8] slightly. First, every formula ψ(x)ψ(x) with one free variable denotes in a model MM a subset of *M*; the set of individuals in *M* satisfying ψ(x)ψ(x). More generally, if ψ(x,x1,…,xn)\=ψ(x,ˉx)ψ(x,x1,…,xn)\=ψ(x,x¯) has at most the free variables shown and ˉa\=a1,…,ana¯\=a1,…,an are elements of *M*, let

ψ(x,ˉa)M,x\={a∈M:M⊨ψ(a,ˉa)}

ψ(x,a¯)M,x\={a∈M:M⊨ψ(a,a¯)}

be the *extension* of ψ(x,ˉx)ψ(x,x¯) in MM relative to a1,…,ana1,…,an. Then we can reformulate [(1)][9] and [(2)][10] as follows:

-   (3)M⊨∀xψ(x,ˉa)M⊨∀xψ(x,a¯) iff ψ(x,ˉa)M,x\=Mψ(x,a¯)M,x\=M
-   (4)M⊨∃xψ(x,ˉa)M⊨∃xψ(x,a¯) iff ψ(x,ˉa)M,x≠∅ψ(x,a¯)M,x≠∅

Thus, the conditions on the right hand side emerge as *properties of the sets* ψ(x,ˉa)ψ(x,a¯). In fact, we can think of ∀∀ and ∃∃ as denoting these properties, i.e., the property of being identical to the universe, and of being non-empty, respectively. And now it is easy to think of other properties of sets that can also be treated as quantifiers, for example, the property of containing at least 5, or exactly 3, elements, or of being infinite.\[[6][11]\]

Note that these properties depend only on the universe *M*, not on the rest of the model. Extensionally, they are simply sets of subsets of *M*. This leads to the following definition. essentially from Mostowski (1957):

**Definition 1**

A *generalized quantifier *Q* of type ⟨1⟩⟨1⟩* is

-   (5) a. syntactically, a variable-binding operator such that whenever φφ is a formula so is QxφQxφ, and QxQx binds all free occurrences of *x* in φφ;
-   b. semantically, a mapping from arbitrary universes (non-empty sets) *M* to a set QMQM of subsets of *M*, which interprets formulas of the form QxφQxφ according to the clause M⊨Qxψ(x,ˉa) iff ψ(x,ˉa)M,x∈QM
    
    M⊨Qxψ(x,a¯) iff ψ(x,a¯)M,x∈QM(i)
    

Here we use the same symbol for the quantifier expression and the mapping that it signifies or denotes. Thus, ∀∀ is now taken to denote the universal quantifier, also written ∀∀, which is the mapping given by

∀M\={M}

∀M\={M}

for all *M*. Similarly, ∃∃ denotes the mapping defined by

∃M\={A⊆M:A≠∅}

∃M\={A⊆M:A≠∅}

And here are some other generalized quantifiers:

(∃≥5)M\={A⊆M:|A|≥5}(|X| is the size orcardinality of X)(∃\=3)M\={A⊆M:|A|\=3}(Q0)M\={A⊆M:A is infinite}(QR)M\={A⊆M:|A|\>|M−A|} (the "Rescherquantifier")(Qeven)M\={A⊆M:|A| is even}

(∃≥5)M(∃\=3)M(Q0)M(QR)M(Qeven)M\={A⊆M:|A|≥5}\={A⊆M:|A|\=3}\={A⊆M:A is infinite}\={A⊆M:|A|\>|M−A|}\={A⊆M:|A| is even}(|X| is the size orcardinality of X) (the "Rescherquantifier")(6)

We now have a precise notion of a generalized quantifier, of which ∀∀ and ∃∃ are instances, along with infinitely many others. Moreover, we see how to extend first-order logic *FO* to a logic FO(Q)FO(Q), by adding the clause [(5a)][12] to the formation rules, and the clause [(5b-i)][13] to the truth definition. Similarly if we add more than one generalized quantifier: FO(Q1,…,Qn)FO(Q1,…,Qn).

In such a logic one may be a able to say things that are not expressible in *FO*. For example, it is well-known that in *FO* the notion of finiteness cannot be expressed. Thus there is no way to say, of an ordering relation <<, that each element has only finitely many predecessors, for instance. But this is just the sort of thing one can express in FO(Q0)FO(Q0):

∀x¬Q0y(y<x)

∀x¬Q0y(y<x)(7)

Likewise, one cannot say in *FO* that a (finite) set *A* contains exactly half of the elements of the universe *M*, but that is expressible in FO(QR)FO(QR):

¬QRxA(x)∧¬QRx¬A(x)

¬QRxA(x)∧¬QRx¬A(x)(8)

(The first conjunct says that |A|≤|M−A||A|≤|M−A|, and the second that |M−A|≤|A||M−A|≤|A|.)

## 5\. Generalized Quantifiers of Arbitrary Types

Further generalization is possible. First, we can let *Q* bind one variable in two or more formulas. Second, we can let it simultaneously bind two or more variables in (some of) these formulas. The *typing* of *Q* indicates this: *Q* is of type ⟨n1,…,nk⟩⟨n1,…,nk⟩ (where each nini is a natural number ≥1≥1) if it applies to *k* formulas, and binds nini variables in the *i*th formula. This explains why the quantifiers in the previous section were said to be of type ⟨1⟩⟨1⟩.

In the general case, one normally chooses distinct variables xi1,xi1,…,xini\=ˉxixini\=x¯i for 1≤i≤k1≤i≤k, so that a formula beginning with *Q* has the form

Qˉx1,…,ˉxk(φ1,…,φk)

Qx¯1,…,x¯k(φ1,…,φk)

where all free occurrences of xi1,…,xinixi1,…,xini in φiφi become bound. Now *Q* associates with each universe *M* a *k*\-ary relation QMQM between relations over *M*, where the *i*th argument is an nini\-ary relation between individuals. The corresponding clause in the truth definition becomes

M⊨Qˉx1,…,ˉxk(ψ1(ˉx1,ˉa),…,ψk(ˉxk,ˉa)) iff QM(ψ1(ˉx1,ˉa)M,ˉx1,…,ψk(ˉxk,ˉa)M,ˉxk)

M⊨Qx¯1,…,x¯k(ψ1(x¯1,a¯),…,ψk(x¯k,a¯)) iff QM(ψ1(x¯1,a¯)M,x¯1,…,ψk(x¯k,a¯)M,x¯k)(9)

Here ψi(ˉxi,ˉy)ψi(x¯i,y¯) is a formula with at most the free variables shown, ˉaa¯ is a sequence of elements of *M* corresponding to ˉyy¯, and ψi(ˉxi,ˉa)M,ˉxiψi(x¯i,a¯)M,x¯i is the extension of ψi(ˉxi,ˉy)ψi(x¯i,y¯) in MM relative to ˉaa¯, i.e., the set of nini\-tuples ˉbib¯i such that M⊨ψi(ˉbi,ˉa)M⊨ψi(b¯i,a¯).

This is the official concept of a generalized quantifier in this article. It was introduced by Lindström (1966), and these quantifiers are sometimes called "Lindström quantifiers".\[[7][14]\] If we fix *M* to the universe containing "everything", we essentially have Frege's notion of a second-level concept.\[[8][15]\]

*Q* is *monadic* if on each universe *M* it is a relation between subsets of *M*, i.e., if its type is ⟨1,…,1⟩⟨1,…,1⟩; otherwise it is *polyadic*. For example, the Aristotelian quantifiers mentioned earlier are of type ⟨1,1⟩⟨1,1⟩:\[[9][16]\]

allM(A,B)⟺A⊆BsomeM(A,B)⟺A∩B≠∅noM(A,B)⟺A∩B\=∅not allM(A,B)⟺A⊈B

allM(A,B)someM(A,B)noM(A,B)not allM(A,B)⟺A⊆B⟺A∩B≠∅⟺A∩B\=∅⟺A⊈B(10)

Here are some more type ⟨1,1⟩⟨1,1⟩ quantifiers:\[[10][17]\]

(at least five)M(A,B)⟺|A∩B|≥5(exactly three)M(A,B)⟺|A∩B|\=3(infinitely many)M(A,B)⟺A∩B is infinitemostM(A,B)⟺|A∩B|\>|A−B|(an even number of)M(A,B)⟺|A∩B| is evenMOM(A,B)⟺|A|\>B|IM(A,B)⟺|A|\=|B| (the "Härtigquantifier")

(at least five)M(A,B)(exactly three)M(A,B)(infinitely many)M(A,B)mostM(A,B)(an even number of)M(A,B)MOM(A,B)IM(A,B)⟺|A∩B|≥5⟺|A∩B|\=3⟺A∩B is infinite⟺|A∩B|\>|A−B|⟺|A∩B| is even⟺|A|\>B|⟺|A|\=|B| (the "Härtigquantifier")(11)

With monadic quantifiers it is convenient to use just *one* variable, and let *Q* bind that same variable in each of the formulas. Thus, to say that most *A*s are not *B*, for example, one may write

mostx(A(x),¬B(x))

mostx(A(x),¬B(x))

in the corresponding logical language, rather than mostx,y(A(x),¬B(y))mostx,y(A(x),¬B(y)).

Here are a few polyadic quantifiers:

WM(R)⟺R is a well-ordering of Mtype ⟨2⟩(Qn0)M(R)⟺there is an infinite⟺ A⊆Ms.t.An⊆Rtype ⟨n⟩Resk(most)M(R,S)⟺|R∩S|\>|R−S|type ⟨k,k⟩RECIPM(A,R)⟺for all distinct a,b∈A⟺  there is n≥1⟺  and c0,…,cns.t.c0\=a⟺ &cn\=b&ciRci+1 for i<ntype ⟨1,2⟩

WM(R)(Qn0)M(R)Resk(most)M(R,S)RECIPM(A,R)⟺R is a well-ordering of M⟺there is an infinite⟺ A⊆Ms.t.An⊆R⟺|R∩S|\>|R−S|⟺for all distinct a,b∈A⟺  there is n≥1⟺  and c0,…,cns.t.c0\=a⟺ &cn\=b&ciRci+1 for i<ntype ⟨2⟩type ⟨n⟩type ⟨k,k⟩type ⟨1,2⟩(12)

*W* and Qn0Qn0 come from logic and set theory. Resk(most)Resk(most) is the *resumption* of *most* to *k*\-tuples. Resumption can be applied to any quantifier (in the syntax, this means replacing each individual variable by a corresponding *k*\-tuple of variables); it has logical uses but also, like *RECIP*, uses in the interpretation of certain sentences in natural languages; see [section 16][18] below.

## 6\. Topic Neutrality

Both Mostowski and Lindström had one additional condition in their definitions of generalized quantifiers: they should not distinguish isomorphic models. Informally, they are "topic-neutral": the truth of a statement of the form φ\=Qx,yz(A(x),R(y,z))φ\=Qx,yz(A(x),R(y,z)), say, in a model MM doesn't depend on the particular individuals *M* consists of. If the individuals of *M* are mapped in a one-one fashion onto the individuals of another universe M′M′, and if *A* and *R* are mapped accordingly, one obtains an *isomorphic* model M′M′. *Isomorphism Closure* then says that M⊨φM⊨φ iff M′⊨φM′⊨φ.

More formally, if M\=(M,I)M\=(M,I) and M′\=(M′,I′)M′\=(M′,I′) are models for the same vocabulary *V* of non-logical symbols, *f* is an *isomorphism* from MM to M′M′, iff

-   *f* is a bijection (a one-one onto function) from *M* to M′M′;
-   whenever *P* is an *n*\-ary predicate symbol in *V* and a1,…,an∈Ma1,…,an∈M, (a1,…,an)∈I(P) iff (f(a1),…,f(an))∈I′(P);
    
    (a1,…,an)∈I(P) iff (f(a1),…,f(an))∈I′(P);
    
-   whenever *c* is an individual constant in *V*, I′(c)\=f(I(c))I′(c)\=f(I(c)).

MM and M′M′ are *isomorphic*, in symbols,

M≅M′

M≅M′

if there is an isomorphism from one to the other. Now if *Q* is a generalized quantifier of type ⟨n1,…,nk⟩⟨n1,…,nk⟩, PiPi is an nini\-ary predicate symbol for 1≤i≤k1≤i≤k, M\=(M,I)M\=(M,I) is a model for the vocabulary {P1,…,Pk}{P1,…,Pk}, and Ri\=I(Pi)Ri\=I(Pi), we also write

M\=(M,R1,…,Rk)

M\=(M,R1,…,Rk)

Then *Q* satisfies *Isomorphism Closure*, or just Isom, if the following holds:

If (M,R1,…,Rk)≅(M′,R′1,…,R′k), then QM(R1,…,Rk)⇔QM′(R′1,…,R′k).

If (M,R1,…,Rk)≅(M′,R′1,…,R′k), then QM(R1,…,Rk)⇔QM′(R′1,…,R′k).(13)

One easily checks that all the generalized quantifiers exemplified so far are indeed Isom. We did not include this requirement in the definition of generalized quantifiers however, since there are natural language quantifiers that do not satisfy it; see below. But logic is supposed to be topic-neutral, so Isom is almost always imposed. Then two important things follow. First, as indicated above, sentences in logical languages do not distinguish isomorphic models. More precisely, we have the following

**Fact 2**

If L\=FO(Q1,…,Qn)L\=FO(Q1,…,Qn), each QiQi is Isom, φφ is an *L-sentence*, and M≅M′M≅M′, then M⊨φ⇔M′⊨φM⊨φ⇔M′⊨φ.

Second, Isom takes a particularly interesting form for *monadic* quantifiers. If M\=(M,A1,…,Ak)M\=(M,A1,…,Ak), where Ai⊆MAi⊆M for each *i*, then A1,…,AkA1,…,Ak *partition* *M* into 2k2k pairwise disjoint subsets (some of which may be empty); let us call them the *parts* of MM. We illustrate with k\=2k\=2 and M\=(M,A,B)M\=(M,A,B):

Figure 1

Now it is not hard to see that only the *sizes of the parts* determine whether two models of this kind are isomorphic or not:

**Fact 3**

(M,A1,…,Ak)≅(M′,A′1,…,A′k)(M,A1,…,Ak)≅(M′,A′1,…,A′k) iff the cardinalities of the corresponding parts are the same.

This shows that monadic and Isom generalized quantifiers indeed deal only with *quantities*, i.e., with *sizes* of sets rather than the sets themselves. The list (11)[(11)][19] of type ⟨1,1⟩⟨1,1⟩ generalized quantifiers clearly illustrates this, but also the Aristotelian quantifiers can be formulated in terms of cardinalities,

allM(A,B)⟺|A−B|\=0someM(A,B)⟺|A∩B|\>0

allM(A,B)someM(A,B)⟺|A−B|\=0⟺|A∩B|\>0

etc., and similarly for the type ⟨1⟩⟨1⟩ examples we gave.

More generally, under Isom, monadic quantifiers can be seen as relations between (cardinal) numbers. For example, if *Q* is of type ⟨1⟩⟨1⟩, then define (using the same symbol *Q* for the relation between numbers)

Q(κ,λ)⟺there is (M,A)s.t.|M−A|\=κ&|A|\=λ&QM(A)

Q(κ,λ)⟺there is (M,A)s.t.|M−A|\=κ&|A|\=λ&QM(A)

Isom guarantees that this is well-defined, and we have

QM(A)⟺Q(|M−A|,|A|)

QM(A)⟺Q(|M−A|,|A|)

## 7\. Relativization

Every statement involving a generalized quantifier *Q* takes place within some universe *M*. Sometimes it is useful to be able to mirror this relativization to a universe *inside* *M*. This means defining a new quantifier with one extra set argument which says that *Q* behaves on the universe restricted to that argument exactly as it behaves on *M*. Thus, if *Q* is of type ⟨n1,…,nk⟩⟨n1,…,nk⟩, we define QrelQrel of type ⟨1,n1,…,nk⟩⟨1,n1,…,nk⟩ as follows:

(Qrel)M(A,R1,…,Rnk)⟺defQA(R1↾A,…,Rnk↾A)

(Qrel)M(A,R1,…,Rnk)⟺defQA(R1↾A,…,Rnk↾A)(14)

where Ri⊆MniRi⊆Mni and Ri↾ARi↾A is the *restriction* of RiRi to *A*, i.e., the set of nini\-tuples in Ri∩AniRi∩Ani.

We have in fact already seen several examples of relativization: since one easily verifies (see the lists (6)[(6)][20] and (11)[(11)][21]) that

all\=∀relsome\=∃relat least five\=(∃≥5)relexactly three\=(∃\=3)relinfinitely many\=(Qo)relmost\=(QR)relan even number of\=(Qeven)rel

allsomeat least fiveexactly threeinfinitely manymostan even number of\=∀rel\=∃rel\=(∃≥5)rel\=(∃\=3)rel\=(Qo)rel\=(QR)rel\=(Qeven)rel(15)

## 8\. Expressive Power

We described how generalized quantifiers can be added to *FO*, resulting in more expressive logics. A *logic* in this sense roughly consist of a set of sentences, a class of models, and a truth relation (or a satisfaction relation) between sentences and models. Such logics are often called *model-theoretic logics*, since they are defined semantically in terms of models and truth, rather than proof-theoretically in terms of a deductive system for deriving theorems.\[[11][22]\] Here we restrict attention to logics of the form FO(Q1,Q2,…)FO(Q1,Q2,…), formed by adding generalized quantifiers to *FO*, where each quantifier comes with a formation rule and a semantic clause for the truth definition as described in [section 5][23] above.

There is an obvious way to compare the expressive power of model-theoretic logics. L2L2 is *at least as expressive as* L1L1, in symbols,

L1≤L2

L1≤L2

if every L1L1\-sentence φφ is *logically equivalent* to some L2L2\-sentence ψψ, i.e., φφ and ψψ are true in the same models. Also, L1L1 and L2L2 have the *same expressive power*, L1≡L2L1≡L2, if L1≤L2L1≤L2 and L2≤L1L2≤L1, and L2L2 is *stronger* than L1L1, L1<L2L1<L2, if L1≤L2L1≤L2 but L2≰L1L2≰L1. Thus, L1<L2L1<L2 if everything that can be said in L1L1 can also be said in L2L2, but there is some L2L2\-sentence which is not equivalent to any sentence in L1L1.

How does one establish facts about expressive power? It seems as if in order to show L1≤L2L1≤L2 one has to go through all of the infinitely many sentences in L1L1 and for each one find an equivalent in L2L2. But in practice it suffices to show that the generalized quantifiers in L1L1 are *definable* in L2L2. If *Q* is of type ⟨1,2⟩⟨1,2⟩, say, *Q* is *definable* in L2L2 if there is an L2L2\-sentence ψψ whose non-logical vocabulary consists exactly of one unary and one binary predicate symbol, such that for all models M\=(M,A,R)M\=(M,A,R),

QM(A,R)⟺(M,A,R)⊨ψ

QM(A,R)⟺(M,A,R)⊨ψ

Similarly for other types. For example, the quantifier *all* is definable in *FO*, since the following holds:

allM(A,B)⟺(M,A,B)⊨∀x(A(x)→B(x))

allM(A,B)⟺(M,A,B)⊨∀x(A(x)→B(x))

Likewise, QRQR is definable in FO(most)FO(most), since

(QR)M(A)⟺(M,A,B)⊨mostx(x\=x,A(x))

(QR)M(A)⟺(M,A,B)⊨mostx(x\=x,A(x))

(note that all our logics contain the logical apparatus of *FO*, so they are all extensions of *FO*). The latter is an instance of the following observation:

-   (16) For any generalized quantifier *Q*, *Q* is definable in FO(Qrel)FO(Qrel).

Such facts about definability can be easy or hard to establish,\[[12][24]\] but they suffice to establish positive facts about expressivity, since we have:

**Fact 4**

FO(Q1,…,Qn)≤LFO(Q1,…,Qn)≤L if and only if each QiQi is definable in *L*.

On the other hand, to prove *inexpressibility*, i.e., that some sentence is *not* equivalent to any *L*\-sentence, is harder. One way that sometimes works is to establish that L1L1 has some property that L2L2 lacks; then one might be able to conclude that L1≰L2L1≰L2. Some properties that are typical of *FO*, but fail for most stronger logics, are:

-   The *Löwenheim property*: If a sentence is true in some infinite model, it is also true in some countable model.
    
-   The *Tarski property*: If a sentence is true in some countably infinite model, it is also true in some uncountable model.
    
-   The *compactness property*: If no model makes every element of the set of sentences ΦΦ true, then there is a finite subset ΨΨ of ΦΦ such that no model makes every sentence in ΨΨ true.
    
-   The *completeness property*: The set of valid sentences is recursively enumerable (i.e., can be generated by some formal system).
    

For example, FO(Q0)FO(Q0) does not have the compactness property.\[[13][25]\] This can be seen by looking at the set of sentences

Φ\={¬Q0x(x\=x)∪{θn:n\=1,2,…}

Φ\={¬Q0x(x\=x)∪{θn:n\=1,2,…}

where θnθn is an *FO*\-sentence saying that there are at least *n* elements in the universe. If you take any finite subset Φ′Φ′ of ΦΦ, and *M* is a universe whose cardinality is the largest *n* such that θnθn belongs to Φ′Φ′, then all sentences in Φ′Φ′ are true in *M*. But no universe can make all sentences in ΦΦ true. And this shows that Q0Q0 is not definable in *FO*, i.e., that FO(Q0)≰FOFO(Q0)≰FO, since otherwise we could replace ΦΦ by an equivalent set of *FO*\-sentences, but *FO* does have the compactness property, so that it impossible.

However, this way of proving inexpressibility only works for logics with properties like those above. Moreover, they only work if infinite universes are allowed, but interesting inexpressibility facts hold also for finite models, for example, the fact that QRQR and QevenQeven are not definable in *FO*, or that *most* = (QR)rel(QR)rel is not definable in FO(QR)FO(QR). Logicians have developed much more direct and efficient methods of showing undefinability results that work also for finite models.\[[14][26]\]

The above properties in fact *characterize* *FO*, in the sense that no proper extension of *FO* can have (certain combinations of) them. This is the content of a celebrated theorem about model-theoretic logics, Lindström's Theorem, a version of which is given below. For an accessible proof see, for example, Ebbinghaus, Flum, and Thomas (1994). We say that a logic L\=FO(Q1,…,Qn)L\=FO(Q1,…,Qn) *relativizes* if the "converse" of [(16)][27] holds for each QiQi, i.e., if each (Qi)rel(Qi)rel is definable in *L*.

**Theorem 5 (Lindström)** If *L* is compact and has the Löwenheim property, then L≡FOL≡FO. Also, provided *L* relativizes, if *L* is complete and has the Löwenheim property, or if *L* has both the Löwenheim and the Tarski properties, then L≡FOL≡FO.

## 9\. Generalized Quantifiers and Computation

In addition to the truth conditions associated with generalized quantifiers, one may study the computations required to establish the truth of a quantified statement in a model. Indeed, generalized quantifiers turn up in various places in the part of computer science that studies *computational complexity*. In this context, we restrict attention to *finite* universes, and assume Isom throughout. So a quantifier is essentially a set of finite models; by Isom we can assume that models of cardinality *m* all have the same domain M\={1,…,m}M\={1,…,m}. Such models can be coded as *words*, i.e. finite strings of symbols. For example, a model (M,A)(M,A) of type ⟨1⟩⟨1⟩ can be seen as a binary word a1…ama1…am, where aiai is 1 if i∈Ai∈A and 0 otherwise. Thus |A||A| is the number of 1's and |M−A||M−A| the number of 0's; by Isom, the order in the string doesn't matter. So *Q* becomes a set WQWQ of words, that is, a *formal language*: a subset of the set of all finite strings of coding symbols.\[[15][28]\]

We can now ask what it takes to recognize that a word belongs to WQWQ. The abstract notion of an *automaton* gives an answer; automata are machines that *accept* or *reject* words, and they are classified according to the complexity of the operations they perform. The language *recognized* by an automaton is the set of words it accepts.\[[16][29]\]

A *finite automaton* has a finite number of *states*, including a start state and at least one accepting state. It starts scanning a word at the leftmost symbol in the start state, and at each step it moves one symbol to the right and enters a (possibly) new state, according to a given *transition function*. If it can move along the whole word ending in an accepting state, the word is accepted. The application of automata theory to generalized quantifiers was initiated in van Benthem (1986) (Ch. 7, "Semantic automata"). It is easy to construct a finite automaton recognizing ∀∀ (or ∀rel\=∀rel\= *all*), i.e., checking that *w* consists only of 1's: just remain in the start state = accepting state as long as 1's are encountered, but go to a rejecting state as soon as a 0 is scanned, and remain there whatever is encountered afterwards. A slightly more complex automaton recognizes QevenQeven: again there are two states, a start state = the accepting state and a rejecting state, and this time remain in the same state when 0's are scanned, but go to the *other* state when a 1 is scanned. To end in the accepting state it is then necessary and sufficient that there are an even number of 1's. This machine essentially uses *cycles* of length 2, whereas the first example had only 1-cycles. Call an automaton of the latter kind *acyclic*. Van Benthem showed that the *FO*\-definable quantifiers are exactly the ones accepted by finite automata that are acyclic and permutation closed.\[[17][30]\]

A slightly more complex automaton, the *pushdown* automaton, has rudimentary memory resources in the form a of stack of symbols that can be pushed or popped from the top, enabling it to keep track to some extent of what went on at earlier steps. Another result by van Benthem is that the type ⟨1⟩⟨1⟩ quantifiers accepted by pushdown automata are precisely those for which the corresponding binary relation between numbers is definable (with first-order means) in *additive arithmetic*, i.e., in the model (N,+)(N,+), where N\={0,1,2,…}N\={0,1,2,…}. An example is QRQR (or its relativization *most*): we have QR(m,n)⇔m<nQR(m,n)⇔m<n, and the right hand side is definable in (N,+)(N,+) by ∃x(x≠0∧m+x\=n)∃x(x≠0∧m+x\=n).\[[18][31]\]

Thus, an algorithmic characterization is matched with a logical one. This is one prominent direction in the study of algorithmic complexity. Consider now the most general abstract automata or computational devices, i.e., *Turing machines*. One (of many) interesting complexity classes is PTIME: a problem, identified with its corresponding set of words, is PTIME if there is a polynomial p(x)p(x) and a Turing machine accepting *W* such that whenever w∈Ww∈W has length *n*, the accepting computation takes at most p(n)p(n) steps. PTIME problems are usually considered "tractable", whereas more complex problems are "intractable", such as EXPTIME ones, where the number of steps required may grow exponentially. An early result by Immerman and Vardi is that the PTIME sets of (words coding) finite models are precisely those describable by single sentences in FO(LFP)FO(LFP), which is *FO* logic with an added mechanism for forming *least fixed-points*.\[[19][32]\] Here we need to represent not just monadic models but arbitrary ones. For example, a binary relation on the universe {1,…,m}{1,…,m} can be represented by a word w11⋯w1m#…#wm1⋯wmmw11⋯w1m#…#wm1⋯wmm, where the relation holds of (i,j)(i,j) iff wij\=1wij\=1. But this time the order does seem to matter, and in fact the Immerman and Vardi result just mentioned only holds for models with a given linear order and a binary predicate symbol standing for that order.

Logics like FO(LFP)FO(LFP) can be recast as logics of the form FO(Q1,Q2,…)FO(Q1,Q2,…). Here infinitely many quantifiers may be required, but in some cases a single one suffices. As to FO(LFP)FO(LFP), it suffices to add all the resumptions (see the end of [section 5][33] above) of a single quantifier. More generally, let FO∗(Q1,Q2,…)FO∗(Q1,Q2,…) be like FO(Q1,Q2,…)FO(Q1,Q2,…) but with mechanisms for making relativizations ([section 7][34]) and for resuming each QiQi to *k*\-tuples for each *k*. Then there is a single quantifier *Q* such that FO(LFP)\=FO∗(Q)FO(LFP)\=FO∗(Q).

So generalized quantifiers remain a simple and versatile way of adding expressive power to *FO*. One natural question was if the logical characterization of PTIME mentioned above could be improved using generalized quantifiers, in particular if one could remove the restriction to ordered structures in this way. The answer, however, turned out to be negative, since Hella (1989) proved that the PTIME computable properties of arbitrary finite structures cannot be characterized by adding a finite number of generalized quantifiers to *FO*, or even to FO(LFP)FO(LFP). The question of whether PTIME can be characterized by a logic of the form FO∗(Q)FO∗(Q) remains open, however (indeed, solving it would be a major breakthrough in complexity theory).

## 10\. Generalized Quantifiers and Natural Language

In the late 1960s Richard Montague showed how the semantics of significant parts of natural languages could be handled with logical tools.\[[20][35]\] One of his main insights was that noun phrases (NPs) can be interpreted as sets of subsets of the domain, i.e., as (what we now call) type ⟨1⟩⟨1⟩ quantifiers. Montague worked in type theory, but around 1980 a number of linguists and logicians began to apply the model-theoretic framework of logics with generalized quantifiers to natural language semantics.\[[21][36]\] Consider the structure of a simple English sentence whose subject is a quantified NP:\[[22][37]\]

-   (17)  

The (subject) NP consists of a determiner and a noun (N). Both the noun and the verb phrase (VP) have sets as extensions, and so the determiner is naturally taken to denote a binary relation between sets, i.e., a type ⟨1,1⟩⟨1,1⟩ quantifier. An utterance of [(17)][38] has a (discourse) universe in the background (say, the set of people at a particular university), but the meaning of most, every, at least five and similar expressions is not tied to particular universes. For example, the meaning of all in

-   (18) a. All cats like milk.
-   b. All electrons have negative charge.
-   c. All natural numbers have a successor.
-   d. All twins like each other.
-   e. All compact subsets of Hausdorff spaces are closed.

has nothing to do with cats or electrons or numbers or twins or Hausdorff spaces, nor with the discourse universes that may be associated with the above examples. It simply stands for the inclusion relation, regardless of what we happen to be talking about. Therefore, the generalized quantifier *all*, which with each universe *M* associates the inclusion relation over *M*, is eminently suitable to interpret all, and similarly for other determiners.

However, it is characteristic of sentences of the form [(17)][39] that the noun argument and the VP argument are not on a par. The noun combines with the determiner to form the NP, a separate constituent, and this constituent can also be taken to signify a generalized quantifier, this time of type ⟨1⟩⟨1⟩. Thus, at least five students denotes the set of subsets of the universe which contain at least five students. This quantifier results from *freezing* the first argument of the type ⟨1,1⟩⟨1,1⟩ *three* to the set of students; we write this *three*studentstudent. In general, if *A* is a fixed set and *Q* a type ⟨1,1⟩⟨1,1⟩ quantifier, one may define the type ⟨1⟩⟨1⟩ quantifier QAQA by

(QA)M(B)⟺defQM∪A(A,B)

(QA)M(B)⟺defQM∪A(A,B)(19)

for any *M* and any B⊆MB⊆M. In a compositional semantics it is natural to take each constituent part of a sentence to have a separate signification or meaning, and the default significations of noun phrases are type ⟨1⟩⟨1⟩ quantifiers.

This holds also for some NPs that lack determiners, such as proper names. While the lexical item John is assigned some individual *j* by an interpretation, the NP John can be taken to denote the quantifier IjIj, defined, for any *M*, by

(Ij)M\={B⊆M:j∈B}

(Ij)M\={B⊆M:j∈B}

This is in fact well motivated, not only because the interpretation of NPs becomes more uniform, but also because John can combine with quantified NPs:

-   (20)John and three professors came to the meeting.

Here it is convenient if John and three professors have the same semantic category. Note that generalized quantifiers-in contrast with individuals!-have a clear Boolean structure; define (here in the type ⟨1⟩⟨1⟩ case, but similarly for any other type)

(Q1∧Q2)M(A)⟺(Q1)M(A) and (Q2)M(A)(¬Q)M(A)⟺ not QM(A)

(Q1∧Q2)M(A)(¬Q)M(A)⟺(Q1)M(A) and (Q2)M(A)⟺ not QM(A)

Then we can take the complex determiner in [(20)][40] to denote Ij∧threeprofessorIj∧threeprofessor. Similarly, the complex NP in

-   (21)John and Mary came to the meeting.

signifies Ij∧ImIj∧Im.

The first argument (coming from the noun) of a type ⟨1,1⟩⟨1,1⟩ determiner denotation is often called its *restriction*, and the second its *scope*. The difference in syntactic status between these two arguments turns out to have a clear semantic counterpart.

## 11\. Conservativity

It was observed early on that type ⟨1,1⟩⟨1,1⟩ quantifiers denoted by determiners in natural languages have the following property:

-   (22) *Conservativity* (Conserv):  
    For all *M* and all A,B⊆MA,B⊆M, QM(A,B)⟺QM(A,A∩B).
    
    QM(A,B)⟺QM(A,A∩B).
    

This can be seen from sentence pairs such as the following, where it is clear that the second sentence is just an awkward way of expressing the first:

-   (23) a. Most students smoke.
-   b. Most students are students who smoke.
-   (24) a. At least five professors were absent.
-   b. At least five professors were absent professors.
-   (25) a. More than one third of the graduate students are foreigners.
-   b. More than one third of the graduate students are foreign graduate students.

Conserv says that only the part of *B* which is common to *A* matters for the truth of QM(A,B)QM(A,B). That is, the part B−AB−A in Figure 1 doesn't matter. This appears to hold for all determiner denotations, but it fails for perfectly natural logical quantifiers, such as *MO* and *I* from the list (11)[(11)][41] above. The reason is that it is characteristic of determiner denotations that the restriction argument *restricts the domain of quantification* to that argument.

## 12\. Extension

Actually, the idea of domain restriction has one further ingredient. To restrict the domain of quantification to a subset *A* of *M* means not only that B−AB−A is irrelevant but the whole part of *M* that lies outside *A*, and hence also the part M−(A∪B)M−(A∪B) in Figure 1. This in turn is an instance of a more general property, applicable to arbitrary generalized quantifiers:

-   (26)*Extension* (Ext):  
    If *Q* is of type ⟨n1,…,nk⟩⟨n1,…,nk⟩, Ri⊆MniRi⊆Mni for 1≤i≤k1≤i≤k, and M⊆M′M⊆M′, then QM(R1,…,Rk)⟺QM′(R1,…,Rk).
    
    QM(R1,…,Rk)⟺QM′(R1,…,Rk).
    

That is, nothing happens when the universe is extended, or shrunk, as long as the arguments are not changed. Now recall that for type ⟨1⟩⟨1⟩ quantifiers we already provided a logical mechanism for restricting the quantification domain to a subuniverse, in terms of relativization ([section 7][42]). We can now see (in (b) below) that the combination of Conserv and Ext amounts to exactly the same thing:

**Fact 6**

1.  For any quantifier *Q*, QrelQrel satisfies Ext.
2.  A type ⟨1,1⟩⟨1,1⟩ quantifier is Conserv and Ext if and only if it is the relativization of a type ⟨1⟩⟨1⟩ quantifier.\[[23][43]\]

Again, all determiner denotations appear to satisfy Ext. At first sight, nothing in principle would seem to prevent a language from containing a determiner, say evso, which meant *every* on universes with less than 10 elements and *some* on larger universes. But not only is there in fact no such determiner in any language-there couldn't be, if the noun argument of a determiner is to restrict the domain of quantification to the denotation of that noun.

A quantifier such as evso is intuitively *not constant*, in the sense that it doesn't mean the same, or is not interpreted by the same rule, on every universe. Ext can be seen as a strong requirement of constancy: the rule interpreting *Q* doesn't even mention the universe. Indeed, many quantifiers from language and logic are Ext. As we saw, all relativized quantifiers are Ext, and all the other quantifiers in the lists (10)[(10)][44]-(12)[(12)][45] as well, except *W*.\[[24][46]\] In fact, it seems that all quantifiers taking more than one argument that show up in natural language contexts are Ext. And many type ⟨1⟩⟨1⟩ quantifiers are Ext too, for example, ∃∃, IjIj, QAQA (when *Q* is Ext; see (19)[(19)][47] above), and all in the list (6)[(6)][48] except QRQR.

But ∀∀ and QRQR are not Ext. Yet one is inclined to say for them too that they mean the same on every universe. The case of ∀∀ is particularly interesting since one might argue that it interprets NPs like everything or every thing. The crux here is thing. If this expression is seen as a logical constant that always denotes the universe, then these NPs do denote ∀∀: for all *M* and all B⊆MB⊆M,

(everything)M(B)⟺everyM(M,B)⟺M⊆B⟺M\=B⟺∀M(B)

(everything)M(B)⟺everyM(M,B)⟺M⊆B⟺M\=B⟺∀M(B)

When Ext holds, we can usually drop the subscript *M* and write, for example,

Q(A,B)

Q(A,B)

rather than QM(A,B)QM(A,B). That is, a suitable universe can be presupposed but left in the background.

## 13\. Symmetry and Monotonicity

Other properties are not shared by all natural language quantifiers but single out important subclasses. We mentioned two already in [section 2][49] above: *symmetry* and *monotonicity*. Typical symmetric quantifiers are *some, no, at least five, exactly three, an even number of, infinitely many,* whereas *all, most, at most one-third of the* are non-symmetric. Another way to express symmetry is to say that the truth-value of Q(A,B)Q(A,B) only depends on the set A∩BA∩B. More precisely, call *Q* *intersective* if for all *M* and all A,A′,B,B′⊆MA,A′,B,B′⊆M:

-   (27) If A∩B\=A′∩B′A∩B\=A′∩B′ then QM(A,B)⇔QM(A′,B′)QM(A,B)⇔QM(A′,B′).

One easily verifies:

**Fact 7**

For conservative type ⟨1,1⟩⟨1,1⟩ quantifiers, symmetry and intersectivity are equivalent.\[[25][50]\]

We noted that some of the syllogisms express monotonicity properties. In more succinct notation, a type ⟨1,1⟩⟨1,1⟩ quantifier *Q* is

*right increasing* (*right decreasing*) iff for all *M* and all A,B⊆B′⊆MA,B⊆B′⊆M (all A,B′⊆B⊆MA,B′⊆B⊆M), QM(A,B)QM(A,B) implies QM(A,B′)QM(A,B′).

Similarly for *left* increasing or decreasing, and indeed for monotonicity in any given argument place of a generalized quantifier. In particular, it is clear what it means for a type ⟨1⟩⟨1⟩ quantifier to be monotone. Monotonicity is ubiquitous among natural language quantifiers. It seems that syntactically simple English NPs all denote monotone (increasing or decreasing) type ⟨1⟩⟨1⟩ quantifiers, and almost all syntactically simple English determiners denote right monotone quantifiers.\[[26][51]\] We also have:

-   (28) a. The quantifiers IjIj (proper names) are increasing
-   b. QAQA is increasing (decreasing) iff *Q* is right increasing (decreasing).

The Aristotelian *all, some, no* are monotone in both arguments (e.g. *all* is right increasing and left decreasing), as are *at least five, no more than ten, infinitely many*, whereas *most, at least two-thirds of the* are right increasing but neither increasing nor decreasing in the left argument. *Exactly three, between two and seven* are non-monotone, though both of these are conjunctions of a (right and left) increasing and a decreasing quantifier (e.g. *at least three and at most three*), in contrast with *an even number of*, which is not a (finite) Boolean combination of monotone quantifiers.

Both symmetry and monotonicity have important explanatory roles for certain linguistic phenomena. Symmetry is a feature of (most of) the quantifiers allowed in so-called existential there sentences (e.g.  There are at least five men in the garden is fine, but There are most men in the garden is not). Monotonicity is crucial for explaining the distribution of polarity items (No one will ever succeed is fine but Someone will ever succeed is not: negative polarity items such as ever require a decreasing environment).\[[27][52]\] Furthermore, monotonicity is crucially involved in *natural forms of reasoning*; see [section 18][53].

## 14\. Determiners that are not ISOM

Consider

-   (29)John's books were stolen.
-   (30) Some student's books have not been returned.
-   (31) No professor except Mary came to the meeting.
-   (32) All beach goers except a few enthusiastic swimmers were fully clothed.
-   (33) More male than female students smoke.

The expressions John's, some student's, no \_ except Mary, all \_ except a few enthusiastic swimmers, more male than female are quite naturally seen as determiners: when combined with nouns they form phrases that behave like ordinary NPs. Also, the type ⟨1,1⟩⟨1,1⟩ quantifiers they signify are Conserv and Ext. For example, the sentences in the following pair are trivially equivalent:

-   (34) a. John's books were stolen.
-   b. John's books are books that were stolen.

But in contrast with the previous examples, they are not Isom, since they involve some fixed individual or property: if John's books were stolen, and the number of stolen books is the same as the number of red pencils (in some discourse universe), and the number of books that weren't stolen is the same as the number of pencils that aren't red, it does *not* follow that John's pencils are red, as Isom would have it.

However, just as the non-Isom quantifier *three*studentstudent results by freezing the restriction argument of the Ext quantifier *three*, the non-Isom quantifiers above result by freezing arguments in more abstract relations, which *are* Isom. We illustrate this with the possessive determiner John's.\[[28][54]\]

Given that John denotes an individual *j*, the determiner John's can be defined, for all *M* and all A,B⊆MA,B⊆M, by\[[29][55]\]

John'sM(A,B)⟺∅≠A∩Rj⊆B

where Rj\={b∈M:R(j,b)} and *R* is some "possessor" relation; it is well-known that this relation varies a lot with the circumstances-one could be talking about the books that John owns, or has written, or borrowed, or bought as a present to Mary, etc. Suppose *R* is ownership. Then [(29)][56] says that John owns at least one book, and that all of the books he owns were stolen. Now consider the more general "quantifier" defined, for a∈M, R⊆M2, and A,B⊆M, by

PM(a,R,A,B)⟺∅≠A∩Ra⊆B

We could say that this is a generalized quantifier of type ⟨0,2,1,1⟩, letting 0 stand for individuals. P is Isom (extending definition (13) in the obvious way to quantifiers of this type), and John's results by freezing the first two arguments to suitable values.

Similar constructions work for other cases of quantifier expressions in natural languages that denote non-Isom quantifiers. For example, the determiner no \_ except Mary denotes (given that Mary refers to *m*)

(no \_ except Mary)M(A,B)⟺A∩B\={m}

That is, [(31)][57] says that Mary is a professor, that she came to the meeting, and that no other professor did. Again, a corresponding Isom quantifier of type ⟨0,1,1⟩ is readily defined. So in this way Isom can be retrieved for natural language quantifiers. On the other hand, associating type ⟨1,1⟩ quantifiers with determiners agrees better with syntax, and allows many generalizations concerning determiner denotations to hold in the non-Isom case as well.

## 15\. Constancy

Isom, i.e., topic neutrality, is standardly seen as at least a necessary condition for being a *logical constant*.\[[30][58]\] It is possible to distinguish *logicality* from *constancy* in the earlier mentioned sense of meaning the same over different universes. For one thing, logicality is a property that ought to be *closed under definability*, whereas it is not at all clear that constancy should be similarly closed. Note, for example, that the class of Ext quantifiers is not closed under first-order definability. More precisely, it is closed under the usual Boolean operations, but not under *inner negation* and hence not under taking *duals*, where the inner negation of a type ⟨1⟩ quantifier *Q* is defined by (Q¬)M(A)⇔QM(M−A), and the dual by Qd\=¬(Q¬). For example, ∃d\=∀.

One intuition might be that Ext suffices for constancy. But a different intuition is that a quantifier meaning the same on all universes in particular should satisfy Isom, which forces *Q* to be the "same" on all universes of the same cardinality. These two ideas are incompatible, since together they would imply that Ext implies Isom, which is manifestly false. Clearly, the vague notion of meaning the same across different universes admits of different precisifications. On closer inspection, it seems unlikely that there is one precise version that would accommodate all intuitions about sameness.

In this situation, a suggestion would be to simply stipulate that constancy amounts to Ext + Isom. This would be a Carnapian explication of constancy. Quantifiers with this combination of properties seem certain to mean the same on all universes. On the other hand, Ext but non-Isom quantifiers like *three*student or *some professor's* would not have the same meaning across different domains, which as we saw accords with one intuition. Furthermore, the few natural non-Ext quantifiers we have encountered are all definable from Ext + Isom quantifiers.\[[31][59]\]

## 16\. Polyadic Natural Language Quantifiers

Consider a typical English sentence where both subject and object are quantified:

-   (35)Most films were reviewed by two critics.

The truth conditions of [(36)][60] can be given in terms of a *polyadic* quantifier, of type ⟨1,1,2⟩ (omitting *M*):

Q(A,B,R)⟺most(A,{a:two(B,Ra)})

(This is the "narrow scope" reading; the "wide scope" reading would be instead two(B,{b:most(A,(R−1)b)).) But this polyadic quantifier results from two type ⟨1,1⟩ quantifiers by a ubiquitous construction that we call *iteration*. If Q,Q′ are of type ⟨1⟩, defined the type ⟨2⟩ quantifier Q⋅Q′ by

Q⋅Q′(R)⟺Q({a:Q′(Ra)})

Then we obtain the iteration of two type ⟨1,1⟩ quantifiers Q1,Q2 as above with QA1⋅QB2. Properties of iterations are studied in van Benthem (1989), Keenan (1992), Westerståhl (1994), and Steinert-Threlkeld and Icard (2013).

Keenan thinks of iteration as the *Frege boundary*. As he and others pointed out, there appear to be many natural language quantifiers beyond that boundary, i.e. not definable as iterations. We give a few examples here; many more can be found in the references just given. The next sentence may look like expressing an iteration but in fact doesn't.

-   (37)Different students answered different questions at the exam.

Example (37) presumably has various interpretations, for example one using the following type ⟨1,1,2⟩ quantifier:

Q(A,B,R)⟺∀a,b∈A(a≠b⇒B∩Ra≠B∩Rb)

This quantifier is still first-order definable but not an iteration.\[[32][61]\] Next, consider

-   (38) a. People usually are grateful to firemen who rescue them.
-   b. Men seldom make passes at girls who wear glasses. (Dorothy Parker)

Adverbs like usually, seldom, always, never can be taken to denote generalized quantifiers (an observation originally made in Lewis (1975)). For example, Dogs never meow is roughly synonymous with No dogs meow. But for [(38)][62] it can be argued that there is a reading where the quantifier applies to *pairs*: among the pairs consisting of a person and a fireman who rescues that person, a majority are such that the person is grateful. This is just the *resumption* of *most* to pairs, that we defined in (12):

Res2(most)(R,S)⟺|R∩S|\>|R−S|

So in [(38b)][63], R(a,b) iff a∈person and b∈fireman and arescued b, and S(a,b) iff *a* *is grateful to* *b*. It can be shown that for many quantifiers, in particular *most*, Resn(Q) is not definable in FO(Q). In fact, Res2(most) is not definable from any finite number of monadic quantifiers, so it is an example of an irreducibly polyadic quantifier.\[[33][64]\]

Next:

-   (39) a. Five Boston pitchers sat alongside each other.
-   b. Most of the parliament members refer to each other indirectly.

Here (39a) can have the truth conditions

∃X⊆Boston pitcher\[|X|\=5&RECIP(X,sat alongside)\]

where *RECIP* is the type ⟨1,2⟩ quantifier defined in (12). That is, there is a set of five Boston pitchers such that if you take any two of those, either they sit next to each other, or there is one pitcher, or two, or at most three (all in the chosen set), between them. Similarly for [(39b)][65]. This is just one of several constructions of polyadic quantifiers that occur in reciprocal sentences.\[[34][66]\]

Finally, consider the sentence

-   (40) Most boys in your class and most girls in my class have all dated each other.

(40) has been put forward as an example of *branching quantification*, which can be written in a two-dimensional logical format as

-   (41)  

where the intended reading is that there is a subset *X* of *A* containing most of the elements of *A*, and a similarly large subset *Y* of *B*, such that each pair (a,b) where a∈X and b∈Y belongs to the relation *R*. More generally, we have a polyadic quantifier of type ⟨1,1,2⟩ defined for any Q1,Q2 of type ⟨1,1⟩ by

Br(Q1,Q2)(A,B,R)⟺∃X⊆A∃Y⊆B\[Q1(A,X)&Q2(B,Y)&X×Y⊆R\]

Quite plausibly, this gives a reading of [(40)][67]. Note that *x* and *y* here are *independent* of each other. If one instead would use any one of the linear sentences

mostx(A(x),mosty(B(y),R(x,y)))mosty(B(y),mostx(A(x),R(x,y)))

then either *y* depends on *x* or vice versa. The two-dimensional syntax in [(41)][68] reflects this semantic independence.\[[35][69]\]

It can be shown that Br(most,most) is not expressible in FO(most) alone; indeed not with any finite number of monadic quantifiers (for a proof, see Hella, Väänänen, and Westerståhl (1997)). On the other hand, branching quantifiers are obtained with a "lifting" operation applied to monadic quantifiers, and similarly for resumption. Indeed, although natural language exhibits numerous polyadic quantifiers well beyond the Frege boundary, one might still make a case for the claim that these are all obtained *from* monadic quantifiers in systematic ways.

## 17\. GQ Theory and Linguistics

The advent of generalized quantifiers had a huge impact on linguistic semantics via Montague's work in the late 60s, reinforced by the application of model-theoretic methods in the early 80s by Barwise and Cooper, Keenan and Stavi, and others (see note [21)][70]. In almost all examples in these works, the natural language was English. Linguists have since applied and tested the tools and methods of "GQ theory" on other languages. The collection Bach et al. (1995) has, among many other things, seven case studies of quantification in other languages. It also emphasizes the distinction between *D-quantification* and *A-quantification*. In D-quantification, which most of our examples so far exhibit, the quantifier expression is (usually) a determiner which applies to a noun. A-quantification is performed by other means-A stands for adverbs, auxiliaries, affixes, and argument-structure adjusters. Many languages prefer A-quantification, some exclusively. English has both types; recall the adverbs of quantification in [(38)][71].\[[36][72]\]

More recently, the volumes Keenan and Paperno (2012) and Paperno and Keenan (2017) have a separate chapter answering a fixed set of questions about expressing quantification for each of 34 different languages (different also from those mentioned above), in order to make an extensive inventory of their expressive resources.\[[37][73]\] The approach is semantic: the questions are of the form "Can one express X in your language, and if so in what ways?", which allows precise questions about conservativity, monotonicity, polarity items, monadic vs. polyadic quantification, etc. to be put to each language. The summary in the last chapter shows that many of the generalizations that hold for English, concerning the existence of expressions denoting certain quantifiers and the properties of those, hold in all or most of the other languages studied as well (Keenan and Paperno list 25 such generalizations).

On the other hand, beginning in the 1990s some linguists have argued that GQ theory is unable to account for a range of important semantic phenomena-in English and other languages-related to quantification. Szabolcsi (2010) gives a detailed account of these developments. One issue is that GQ theory appears to have nothing to say about the compositional meaning of *complex determiners*. For example, how is the meaning of more than five derived from the meanings of its parts? Or consider most, which is often treated as a simple determiner, even though its meaning must somehow come from being a superlative of more.

Another problematic phenomenon is *scope*. While GQ theory in principle seems to allow all theoretically possible scopings of nested quantifier expressions, natural languages have restrictions regulating which of these are actually allowed. Indeed, scope is a major topic in linguistic syntax and semantics, and a complex one. The problem is also methodological: how to determine if a given sentence *S* *can* actually mean *Y* (where *Y* corresponds to a particular scoping)? First, one must filter out cases where the unavailability of *Y* depends on facts about the world, not about language. Second, whose intuitions should count: the linguist's, or those of native speakers in a test situation, or perhaps statistical evidence should play a role? Still, while it is true that many readings that seem impossible at first sight are in fact available in sufficiently specific contexts, it is plausible that languages have scope restrictions beyond the reach of GQ theory.\[[38][74]\]

The "GQ theorist" could reply that her tools were never meant to fully explain scope, or enable compositional analyses of every complex expression. The model-theoretic framework is first of all *descriptive*: it provides mathematical objects that can serve as (models of) meaning, and formulate properties of and relations between these objects. Sometimes, facts about the mathematical objects reveal insights about the things they are modeling, as in the case of monotonicity and polarity items, or the case of the meaning of conjoined noun phrases. But there is no reason to expect this to happen in every case.

These are positions in an ongoing debate about the role of formal methods, and in particular of model-theoretic tools, in semantics; a debate which is by no means settled. What seems clear is that the phenomena related to quantification in natural languages continue to provide excellent material for that discussion.

## 18\. Quantification and Cognition

In recent years there has been an explosion of work connecting semantics, reasoning, and cognition, much of it related to how speakers understand and learn and reason with quantified expressions. A major strand of research concerns *monotonicity* (section 13). Already Barwise and Cooper (1981) noted the ubiquity of monotone quantifiers in natural languages, and suggested a way of showing that monotone quantifiers are easier to process than non-monotone ones, and that increasing quantifiers are easier than decreasing ones. They also suggested that psychological experiments might be used to test their hypothesis. Their technical proposal was developed further in van Benthem (1986), which introduced a notion of *count complexity* and showed that, under some assumptions, the quantifiers with minimal count complexity are precisely the ones with a certain strong monotonicity property.\[[39][75]\]

Monotonicity is also involved in what van Benthem has called "one-step" reasoning, which appears to be easily available to speakers. The monotonicity behavior of basic determiners already shows how such reasoning is licensed. Marking right increasing (decreasing) type ⟨1,1⟩ quantifiers with a + (a −) to the right, and similarly for left monotonicity, we have, for example:

−every+ +some+ −no− ⋅most+ ⋅exactly three⋅

where ⋅ marks that the position is neither decreasing nor increasing. A nice example is the following inference (from Icard and Moss (2014), adapting an example in Geurts and Slik (2005)):

(43)

Most Americans who know a foreign language speak it at home

---

Most Americans who know a foreign language speak it at home or at work

The premise is a "donkey sentence" with most, and it is notoriously hard to pin down the exact truth conditions of these. In fact, several readings are possible.\[[40][76]\] In spite of this, speakers seem to have no problem making this inference, apparently since *most* is right increasing (the VP argument *speak it at home* is extended to *speak it at home or at work*), regardless of what the subject noun phrase (the same in both sentences) exactly means.

Many other expressions and phrases besides determiners show fixed monotonicity patterns. Beginning with van Benthem (1986) this has led to algorithms for how *polarity markers* are assigned to the nodes of analysis trees of sentences (relative to a given grammar), or how to incorporate such markers directly in the type notation; see Icard and Moss (2014) for an overview and further references. Besides their role in inference, such marking can also explain, and sometimes even predict, the distribution of negative polarity items in languages (end of [section 13][77]). Moreover, in many cases no syntactic analysis is necessary: inferences can be made directly on surface form, and would in this sense be available "on the fly" to speakers; compare [(43)][78]. The paper just mentioned also presents a complete axiomatization of a formal *Monotonicity Calculus*, in which many varieties of reasoning with monotonicity can be expressed.\[[41][79]\]

A somewhat parallel development has been the formal study of various *syllogistic fragments*; we noted in [section 2][80] that many syllogisms express monotonicity properties. These fragments, most of which were studied by Ian Pratt-Hartmann and above all Larry Moss, range from those containing only simple sentences like *allXY* or *someXY* to ones allowing complements, relative clauses, transitive verbs, non-first-order quantifiers like *most*, and other features. Here is an example (Moss p.c.) of an inference in such a fragment:

Everyone likes everyone who likes Pat Pat likes every clarinetist

---

Everyone likes everyone who likes everyone who likes every clarinetist

This illustrates how quite involved reasoning can be expressed in a simple syllogistic-like language. The inference is valid, but one has to think a bit to see that.\[[42][81]\] A main feature of most of these fragments is that, in addition to having explicit complete axiomatizations, validity in them is *decidable*, in contrast with first-order logic. This also holds for some fragments with quantifiers that are not *FO*\-definable. Like the monotonicity calculus, the study of syllogistic fragments is part of the enterprise somewhat loosely called *natural logic*, resulting in well-behaved subsystems of more familiar logics, in the sense of being both closer to natural language and computationally more tractable; see Moss (2015) for a survey.\[[43][82]\]

On the cognitive side, questions of understanding and learning related to quantification and monotonicity have been studied both in psychology and neuroscience. Geurts and Slik (2005) asked subjects whether certain inferences involving monotonicity were valid or not; the results largely corroborated Barwise and Cooper's earlier hypotheses. The meaning of individual determiners has also been studied empirically; Pietroski et al. (2009) investigated most, where the method was to show subjects a picture with yellow and blue dots for a very short time (to eliminate counting) and ask, say, if it is true or false that most of the dots are yellow. Variations of this kind of experiment are common in the literature; a recent instance is Odic et al. (2018), which studies the mass/count distinction in cognition and semantics. Both studies involve the human *number sense* and its relation to understanding quantificational language. One might entertain a "Whorfian" hypothesis that the latter is a prerequisite for the former. This was tested with neurobiological methods (brain-scan methods combined with psychological tests with patients suffering from various brain disorders) in Clark and Grossman (2007). They did not find any empirical support for that hypothesis; see also Clark (2011a) for a description of the experiment and more on research on quantification and number sense.

There are by now a fair number of empirical studies of how various classes of quantifiers identified by logical or computational means are reflected in terms of learning, understanding, cognitive load, etc. Conversely, linguistic and cognitive facts suggest new theoretical questions. For example, as regards computational complexity, Sevenster (2006) showed that the branching of *most* as in [(40)][83] in [section 9][84] is intractable.\[[44][85]\] Subsequently, Szymanik observed that if the operations of *resumption* and *iteration* (as in [(38)][86] and [(36)][87], respectively) are applied to PTIME quantifiers, the result is again in PTIME, in contrast with branching. Similarly, some forms of reciprocal constructions preserve PTIME computability whereas other don't: "lifting" *exactly five* with *RECIP* as in [(39a)][88] does, but similarly lifting *most* as in [(39b)][89] does not.

In van Benthem's semantic automata setting ([section 9)][90], Steinert-Threlkeld and Icard (2013) proved that the Frege boundary ([section 16][91]) is robust in the sense that if two Conserv and Ext type ⟨1,1⟩ quantifiers are recognizable by finite (or push-down) automata, then so is their iteration. Moreover, Steinert-Threlkeld (2016) showed that for large classes of type ⟨1,1,2⟩ quantifiers, it is decidable whether they are iterations of type ⟨1,1⟩ quantifiers or not. A recent presentation of both theoretical and empirical results around the cognitive aspects of quantifier recognition is Szymanik (2016).

Computational models of *learning* the meaning of quantifiers have been given; for example by Clark (2011a) in the semantic automata setting. In a recent development, Steinert-Threlkeld and Szymanik (forthcoming) studies learnability with the technology of neural networks, testing whether certain quantifiers satisfying three commonly proposed *universals*-that simple determiner denotations are monotone, Isom, and Conserv, respectively-are easier to learn than quantifiers that do not have these properties. For each universal, the time it takes the network to learn a quantifier satisfying it is compared to the time it takes to learn a quantifier that doesn't. It turns out that monotone and Isom are easier than non-monotone and non-Isom ones, whereas there is no detectable difference for Conserv.\[[45][92]\]

These are just glimpses of ongoing research. The investigation of how speakers process quantified expressions, combining the basic model-theoretic analysis with methods from psychology, neuroscience, and computer science, is by now a rich area in the study of generalized quantifiers.

[1]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-1
[2]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-2
[3]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-3
[4]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-4
[5]: https://plato.stanford.edu/entries/generalized-quantifiers/#QuanCogn
[6]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-5
[7]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-all
[8]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-some
[9]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-all
[10]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-some
[11]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-6
[12]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-Qsyn
[13]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-Qsem
[14]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-7
[15]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-8
[16]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-9
[17]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-10
[18]: https://plato.stanford.edu/entries/generalized-quantifiers/#PolyNatuLangQuan
[19]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist3
[20]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist1
[21]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist3
[22]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-11
[23]: https://plato.stanford.edu/entries/generalized-quantifiers/#GeneQuanArbiType
[24]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-12
[25]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-13
[26]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-14
[27]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-rel1
[28]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-15
[29]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-16
[30]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-17
[31]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-18
[32]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-19
[33]: https://plato.stanford.edu/entries/generalized-quantifiers/#GeneQuanArbiType
[34]: https://plato.stanford.edu/entries/generalized-quantifiers/#Rela
[35]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-20
[36]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-21
[37]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-22
[38]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-npvp
[39]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-npvp
[40]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-john3
[41]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist3
[42]: https://plato.stanford.edu/entries/generalized-quantifiers/#Rela
[43]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-23
[44]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist2
[45]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist4
[46]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-24
[47]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-QA
[48]: https://plato.stanford.edu/entries/generalized-quantifiers/#mjx-eqn-ex-qlist1
[49]: https://plato.stanford.edu/entries/generalized-quantifiers/#Aris
[50]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-25
[51]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-26
[52]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-27
[53]: https://plato.stanford.edu/entries/generalized-quantifiers/#QuanCogn
[54]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-28
[55]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-29
[56]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-poss1
[57]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-except1
[58]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-30
[59]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-31
[60]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-film
[61]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-32
[62]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-res
[63]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-res1
[64]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-33
[65]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-recip2
[66]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-34
[67]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-boysgirls
[68]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-bwbr
[69]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-35
[70]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-21
[71]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-res
[72]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-36
[73]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-37
[74]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-38
[75]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-39
[76]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-40
[77]: https://plato.stanford.edu/entries/generalized-quantifiers/#SymmMono
[78]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-foreign
[79]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-41
[80]: https://plato.stanford.edu/entries/generalized-quantifiers/#Aris
[81]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-42
[82]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-43
[83]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-boysgirls
[84]: https://plato.stanford.edu/entries/generalized-quantifiers/#GeneQuanComp
[85]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-44
[86]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-res
[87]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-film
[88]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-recip
[89]: https://plato.stanford.edu/entries/generalized-quantifiers/#ex-recip2
[90]: https://plato.stanford.edu/entries/generalized-quantifiers/#GeneQuanComp
[91]: https://plato.stanford.edu/entries/generalized-quantifiers/#PolyNatuLangQuan
[92]: https://plato.stanford.edu/entries/generalized-quantifiers/notes.html#note-45
