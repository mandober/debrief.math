---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/model-theory/
page-title:       Model Theory (Stanford Encyclopedia of Philosophy)
article-title:    Model Theory
---
# Model Theory (Stanford Encyclopedia of Philosophy)

Model theory began with the study of formal languages and their
interpretations, and of the kinds of classification that a particular
formal language can make. Mainstream model theory is now a
sophisticated branch of mathematics (see the entry on
 first-order model theory).
 But in a broader sense, model theory is the study of the
interpretation of any language, formal or natural, by means of
set-theoretic structures, with Alfred Tarski’s
 truth definition
 as a paradigm. In this broader sense, model theory meets philosophy
at several points, for example in the theory of logical consequence
and in the semantics of natural languages.
Model theory began with the study of formal languages and their interpretations, and of the kinds of classification that a particular formal language can make. Mainstream model theory is now a sophisticated branch of mathematics (see the entry on [first-order model theory][1]). But in a broader sense, model theory is the study of the interpretation of any language, formal or natural, by means of set-theoretic structures, with Alfred Tarski’s [truth definition][2] as a paradigm. In this broader sense, model theory meets philosophy at several points, for example in the theory of logical consequence and in the semantics of natural languages.

## 1\. Basic notions of model theory

Sometimes we write or speak a sentence SS that expresses nothing either true or false, because some crucial information is missing about what the words mean. If we go on to add this information, so that SS comes to express a true or false statement, we are said to *interpret* SS, and the added information is called an *interpretation* of SS. If the interpretation II happens to make SS state something true, we say that II is a *model* of SS, or that II *satisfies* SS, in symbols ‘I⊨SI⊨S’. Another way of saying that II is a model of SS is to say that SS is *true in* II, and so we have the notion of *model-theoretic truth*, which is truth in a particular interpretation. But one should remember that the statement ‘SS is true in II’ is just a paraphrase of ‘SS, when interpreted as in II, is true’; so model-theoretic truth is parasitic on plain ordinary truth, and we can always paraphrase it away.

For example I might say

> He is killing all of them,

and offer the interpretation that ‘he’ is Alfonso Arblaster of 35 The Crescent, Beetleford, and that ‘them’ are the pigeons in his loft. This interpretation explains (a) what objects some expressions refer to, and (b) what classes some quantifiers range over. (In this example there is one quantifier: ‘all of them’). Interpretations that consist of items (a) and (b) appear very often in model theory, and they are known as *structures*. Particular kinds of model theory use particular kinds of structure; for example mathematical model theory tends to use so-called *first-order structures*, model theory of modal logics uses *Kripke structures*, and so on.

The structure II in the previous paragraph involves one fixed object and one fixed class. Since we described the structure today, the class is the class of pigeons in Alfonso’s loft today, not those that will come tomorrow to replace them. If Alfonso Arblaster kills all the pigeons in his loft today, then II satisfies the quoted sentence today but won’t satisfy it tomorrow, because Alfonso can’t kill the same pigeons twice over. Depending on what you want to use model theory for, you may be happy to evaluate sentences today (the default time), or you may want to record how they are satisfied at one time and not at another. In the latter case you can relativise the notion of model and write ‘I⊨tSI⊨tS’ to mean that II is a model of SS at time tt. The same applies to places, or to anything else that might be picked up by other implicit indexical features in the sentence. For example if you believe in possible worlds, you can index ⊨⊨ by the possible world where the sentence is to be evaluated. Apart from using set theory, model theory is completely agnostic about what kinds of thing exist.

Note that the objects and classes in a structure carry labels that steer them to the right expressions in the sentence. These labels are an essential part of the structure.

If the same class is used to interpret all quantifiers, the class is called the *domain* or *universe* of the structure. But sometimes there are quantifiers ranging over different classes. For example if I say

> One of those thingummy diseases is killing all the birds.

you will look for an interpretation that assigns a class of diseases to ‘those thingummy diseases’ and a class of birds to ‘the birds’. Interpretations that give two or more classes for different quantifiers to range over are said to be *many-sorted*, and the classes are sometimes called the *sorts*.

The ideas above can still be useful if we start with a sentence SS that does say something either true or false without needing further interpretation. (Model theorists say that such a sentence is *fully interpreted*.) For example we can consider *misinterpretations* II of a fully interpreted sentence SS. A misinterpretation of SS that makes it true is known as a *nonstandard* or *unintended* model of SS. The branch of mathematics called nonstandard analysis is based on nonstandard models of mathematical statements about the real or complex number systems; see [Section 4][3] below.

One also talks of *model-theoretic semantics* of natural languages, which is a way of *describing* the meanings of natural language sentences, not a way of *giving* them meanings. The connection between this semantics and model theory is a little indirect. It lies in Tarski’s truth definition of 1933. See the entry on [Tarski’s truth definitions][4] for more details.

## 2\. Model-theoretic definition

A sentence SS divides all its possible interpretations into two classes, those that are models of it and those that are not. In this way it defines a class, namely the class of all its models, written Mod(S)Mod(S). To take a legal example, the sentence

> The first person has transferred the property to the second person, who thereby holds the property for the benefit of the third person.

defines a class of structures which take the form of labelled 4-tuples, as for example (writing the label on the left):

-   the first person = Alfonso Arblaster;
-   the property = the derelict land behind Alfonso’s house;
-   the second person = John Doe;
-   the third person = Richard Roe.

This is a typical model-theoretic definition, defining a class of structures (in this case, the class known to the lawyers as *trusts*).

We can extend the idea of model-theoretic definition from a single sentence SS to a set TT of sentences; Mod(T)Mod(T) is the class of all interpretations that are simultaneously models of all the sentences in TT. When a set TT of sentences is used to define a class in this way, mathematicians say that TT is a *theory* or a *set of axioms*, and that TT *axiomatises* the class Mod(T)Mod(T).

Take for example the following set of first-order sentences:

∀x∀y∀z(x+(y+z)\=(x+y)+z).∀x(x+0\=x).∀x(x+(−x)\=0).∀x∀y(x+y\=y+x).∀x∀y∀z(x+(y+z)\=(x+y)+z).∀x(x+0\=x).∀x(x+(−x)\=0).∀x∀y(x+y\=y+x).

Here the labels are the addition symbol ‘+’, the minus symbol ‘−−’ and the constant symbol ‘0’. An interpretation also needs to specify a domain for the quantifiers. With one proviso, the models of this set of sentences are precisely the structures that mathematicians know as *abelian groups*. The proviso is that in an abelian group AA, the domain should contain the interpretation of the symbol 0, and it should be closed under the interpretations of the symbols + and −−. In mathematical model theory one builds this condition (or the corresponding conditions for other function and constant symbols) into the definition of a structure.

Each mathematical structure is tied to a particular first-order language. A structure contains interpretations of certain predicate, function and constant symbols; each predicate or function symbol has a fixed arity. The collection KK of these symbols is called the *signature* of the structure. Symbols in the signature are often called *nonlogical constants*, and an older name for them is *primitives*. The first-order language of signature KK is the first-order language built up using the symbols in KK, together with the equality sign =, to build up its atomic formulas. (See the entry on [classical logic][5].) If KK is a signature, SS is a sentence of the language of signature KK and AA is a structure whose signature is KK, then because the symbols match up, we know that AA makes SS either true or false. So one defines the class of abelian groups to be the class of all those structures of signature ++, −−, 00 which are models of the sentences above. Apart from the fact that it uses a formal first-order language, this is exactly the algebraists’ usual definition of the class of abelian groups; model theory formalises a kind of definition that is extremely common in mathematics.

Now the defining axioms for abelian groups have three kinds of symbol (apart from punctuation). First there is the logical symbol = with a fixed meaning. Second there are the nonlogical constants, which get their interpretation by being applied to a particular structure; one should group the quantifier symbols with them, because the structure also determines the domain over which the quantifiers range. And third there are the variables x,yx,y etc. This three-level pattern of symbols allows us to define classes in a second way. Instead of looking for the interpretations of the nonlogical constants that will make a sentence true, we *fix* the interpretations of the nonlogical constants by choosing a particular structure AA, and we look for assignments of elements of AA to variables which will make a given formula true in AA.

For example let ZZ be the additive group of integers. Its elements are the integers (positive, negative and 0), and the symbols ++, −−, 00 have their usual meanings. Consider the formula

v1+v1\=v2.v1+v1\=v2.

If we assign the number −3−3 to v1v1 and the number −6−6 to v2v2, the formula works out as true in ZZ. We express this by saying that the pair (−3,−6)(−3,−6) *satisfies* this formula *in* ZZ. Likewise (15,30) and (0,0) satisfy it, but (2,−4)(2,−4) and (3,3) don’t. Thus the formula *defines* a binary relation on the integers, namely the set of pairs of integers that satisfy it. A relation defined in this way in a structure AA is called a *first-order definable relation in* A. A useful generalisation is to allow the defining formula to use added names for some specific elements of A; these elements are called *parameters* and the relation is then *definable with parameters*.

This second type of definition, defining relations inside a structure rather than classes of structure, also formalises a common mathematical practice. But this time the practice belongs to geometry rather than to algebra. You may recognise the relation in the field of real numbers defined by the formula

v21+v22\=1.

It’s the circle of radius 1 around the origin in the real plane. Algebraic geometry is full of definitions of this kind.

During the 1940s it occurred to several people (chiefly Anatolii Mal’tsev in Russia, Alfred Tarski in the USA and Abraham Robinson in Britain) that the metatheorems of classical logic could be used to prove mathematical theorems about classes defined in the two ways we have just described. In 1950 both Robinson and Tarski were invited to address the International Congress of Mathematicians at Cambridge Mass. on this new discipline (which as yet had no name – Tarski proposed the name ‘theory of models’ in 1954). The conclusion of Robinson’s address to that Congress is worth quoting:

> \[The\] concrete examples produced in the present paper will have shown that contemporary symbolic logic can produce useful tools – though by no means omnipotent ones – for the development of actual mathematics, more particularly for the development of algebra and, it would appear, of algebraic geometry. This is the realisation of an ambition which was expressed by Leibniz in a letter to Huyghens as long ago as 1679. (Robinson 1952, 694)

In fact Mal’tsev had already made quite deep applications of model theory in group theory several years earlier, but under the political conditions of the time his work in Russia was not yet known in the West. By the end of the twentieth century, Robinson’s hopes had been amply fulfilled; see the entry on [first-order model theory][6].

There are at least two other kinds of definition in model theory besides these two above. The third is known as *interpretation* (a special case of the interpretations that we began with). Here we start with a structure A, and we build another structure B whose signature need not be related to that of A, by defining the domain X of B and all the labelled relations and functions of B to be the relations definable in A by certain formulas with parameters. A further refinement is to find a definable equivalence relation on X and take the domain of B to be not X itself but the set of equivalence classes of this relation. The structure B built in this way is said to be *interpreted in* the structure A.

A simple example, again from standard mathematics, is the interpretation of the group Z of integers in the structure N consisting of the natural numbers 0, 1, 2 etc. with labels for 0, 1 and +. To construct the domain of Z we first take the set X of all ordered pairs of natural numbers (clearly a definable relation in N), and on this set X we define the equivalence relation ∼ by

(a,b)∼(c,d) if and only if a+d\=b+c

(again definable). The domain of Z consists of the equivalence classes of this relation. We define addition on Z by

(a,b)+(c,d)\=(e,f) if and only if a+c+f\=b+d+e.

The equivalence class of (a,b) becomes the integer a−b.

When a structure B is interpreted in a structure A, every first-order statement about B can be translated back into a first-order statement about A, and in this way we can read off the complete theory of B from that of A. In fact if we carry out this construction not just for a single structure A but for a family of models of a theory T, always using the same defining formulas, then the resulting structures will all be models of a theory T′ that can be read off from T and the defining formulas. This gives a precise sense to the statement that the theory T′ is *interpreted in* the theory T. Philosophers of science have sometimes experimented with this notion of interpretation as a way of making precise what it means for one theory to be reducible to another. But realistic examples of reductions between scientific theories seem generally to be much subtler than this simple-minded model-theoretic idea will allow. See the entry on [intertheory relations in physics][7].

The fourth kind of definability is a pair of notions, implicit definability and explicit definability of a particular relation in a theory. See section 3.3 of the entry on [first-order model theory][8].

Unfortunately there used to be a very confused theory about model-theoretic axioms, that also went under the name of implicit definition. By the end of the nineteenth century, mathematical geometry had generally ceased to be a study of space, and it had become the study of classes of structures which satisfy certain ‘geometric’ axioms. Geometric terms like ‘point’, ‘line’ and ‘between’ survived, but only as the primitive symbols in axioms; they no longer had any meaning associated with them. So the old question, whether Euclid’s parallel postulate (as a statement about space) was deducible from Euclid’s other assumptions about space, was no longer interesting to geometers. Instead, geometers showed that if one wrote down an up-to-date version of Euclid’s other assumptions, in the form of a theory T, then it was possible to find models of T which fail to satisfy the parallel postulate. (See the entry on [geometry in the 19th century][9] for the contributions of Lobachevski and Klein to this achievement.) In 1899 David Hilbert published a book in which he constructed such models, using exactly the method of interpretation that we have just described.

Problems arose because of the way that Hilbert and others described what they were doing. The history is complicated, but roughly the following happened. Around the middle of the nineteenth century people noticed, for example, that in an abelian group the minus function is definable in terms of 0 and + (namely: −a is the element b such that a+b\=0). Since this description of minus is in fact one of the axioms defining abelian groups, we can say (using a term taken from J. D. Gergonne, who should not be held responsible for the later use made of it) that the axioms for abelian groups *implicitly define* minus. In the jargon of the time, one said not that the axioms define the function minus, but that they define the *concept* minus. Now suppose we switch around and try to define plus in terms of minus and 0. This way round it can’t be done, since one can have two abelian groups with the same 0 and minus but different plus functions. Rather than say this, the nineteenth century mathematicians concluded that the axioms only partially define plus in terms of minus and 0. Having swallowed that much, they went on to say that the axioms together form an implicit definition of the concepts plus, minus and 0 together, and that this implicit definition is only partial but it says about these concepts precisely as much as we need to know.

One wonders how it could happen that for fifty years nobody challenged this nonsense. In fact some people did challenge it, notably the geometer Moritz Pasch who in section 12 of his *Vorlesungen über Neuere Geometrie* (1882) insisted that geometric axioms tell us nothing whatever about the meanings of ‘point’, ‘line’ etc. Instead, he said, the axioms give us *relations* between the concepts. If one thinks of a structure as a kind of ordered n\-tuple of sets etc., then a class Mod(T) becomes an n\-ary relation, and Pasch’s account agrees with ours. But he was unable to spell out the details, and there is some evidence that his contemporaries (and some more recent commentators) thought he was saying that the axioms may not determine the meanings of ‘point’ and ‘line’, but they do determine those of relational terms such as ‘between’ and ‘incident with’! Frege’s demolition of the implicit definition doctrine was masterly, but it came too late to save Hilbert from saying, at the beginning of his *Grundlagen der Geometrie*, that his axioms give ‘the exact and mathematically adequate description’ of the relations ‘lie’, ‘between’ and ‘congruent’. Fortunately Hilbert’s mathematics speaks for itself, and one can simply bypass these philosophical faux pas. The model-theoretic account that we now take as a correct description of this line of work seems to have surfaced first in the group around Giuseppe Peano in the 1890s, and it reached the English-speaking world through Bertrand Russell’s *Principles of Mathematics* in 1903.

## 3\. Model-theoretic consequence

Suppose L is a language of signature K,T is a set of sentences of L and ϕ is a sentence of L. Then the relation

Mod(T)⊆Mod(ϕ)

expresses that every structure of signature K which is a model of T is also a model of ϕ. This is known as the *model-theoretic consequence relation*, and it is written for short as

T⊨ϕ

The double use of ⊨ is a misfortune. But in the particular case where L is first-order, the completeness theorem (see the entry on [classical logic][10]) tells us that ‘T⊨ϕ’ holds if and only if there is a proof of ϕ from T, a relation commonly written

T⊢ϕ

Since ⊨ and ⊢ express exactly the same relation in this case, model theorists often avoid the double use of ⊨ by using ⊢ for model-theoretic consequence. But since what follows is not confined to first-order languages, safety suggests we stick with ⊨ here.

Before the middle of the nineteenth century, textbooks of logic commonly taught the student how to check the validity of an argument (say in English) by showing that it has one of a number of standard forms, or by paraphrasing it into such a form. The standard forms were syntactic and/or semantic forms of argument in English. The process was hazardous: semantic forms are almost by definition not visible on the surface, and there is no purely syntactic form that guarantees validity of an argument. For this reason most of the old textbooks had a long section on ‘fallacies’ – ways in which an invalid argument may seem to be valid.

In 1847 George Boole changed this arrangement. For example, to validate the argument

> All monarchs are human beings. No human beings are infallible. Therefore no infallible beings are monarchs.

Boole would interpret the symbols P,Q,R as names of classes:

> P is the class of all monarchs.  
> Q is the class of all human beings.  
> R is the class of all infallible beings.

Then he would point out that the original argument paraphrases into a set-theoretic consequence:

(P⊆Q),(Q∩R\=0)⊨(R∩P\=0)

(This example is from Stanley Jevons, 1869. Boole’s own account is idiosyncratic, but I believe Jevons’ example represents Boole’s intentions accurately.) Today we would write ∀x(Px→Qx) rather than P⊆Q, but this is essentially the standard definition of P⊆Q, so the difference between us and Boole is slight.

Insofar as they follow Boole, modern textbooks of logic establish that English arguments are valid by reducing them to model-theoretic consequences. Since the class of model-theoretic consequences, at least in first-order logic, has none of the vaguenesses of the old argument forms, textbooks of logic in this style have long since ceased to have a chapter on fallacies.

But there is one warning that survives from the old textbooks: If you formalise your argument in a way that is *not* a model-theoretic consequence, it doesn’t mean the argument is *not valid*. It may only mean that you failed to analyse the concepts in the argument deeply enough before you formalised. The old textbooks used to discuss this in a ragbag section called ‘topics’ (i.e. hints for finding arguments that you might have missed). Here is an example from Peter of Spain’s 13th century *Summulae Logicales*:

> ‘There is a father. Therefore there is a child.’ … Where does the validity of this argument come from? From the relation. The maxim is: When one of a correlated pair is posited, then so is the other.

Hilbert and Ackermann, possibly the textbook that did most to establish the modern style, discuss in their section III.3 a very similar example: ‘If there is a son, then there is a father’. They point out that any attempt to justify this by using the symbolism

∃xSx→∃xFx

is doomed to failure. “A proof of this statement is possible only if we analyze conceptually the meanings of the two predicates which occur”, as they go on to illustrate. And of course the analysis finds precisely the relation that Peter of Spain referred to.

On the other hand if your English argument translates into an invalid model-theoretic consequence, a counterexample to the consequence may well give clues about how you can describe a situation that would make the premises of your argument true and the conclusion false. But this is not guaranteed.

One can raise a number of questions about whether the modern textbook procedure does really capture a sensible notion of logical consequence. For example in Boole’s case the set-theoretic consequences that he relies on are all easily provable by formal proofs in first-order logic, not even using any set-theoretic axioms; and by the completeness theorem (see the entry on [classical logic][11]) the same is true for first-order logic. But for some other logics it is certainly not true. For instance the model-theoretic consequence relation for some logics of time presupposes some facts about the physical structure of time. Also, as Boole himself pointed out, his translation from an English argument to its set-theoretic form requires us to believe that for every property used in the argument, there is a corresponding class of all the things that have the property. This comes dangerously close to Frege’s inconsistent comprehension axiom!

In 1936 Alfred Tarski proposed a definition of logical consequence for arguments in a fully interpreted formal language. His proposal was that an argument is valid if and only if: under any allowed reinterpretation of its nonlogical symbols, if the premises are true then so is the conclusion. Tarski assumed that the class of allowed reinterpretations could be read off from the semantics of the language, as set out in his [truth definition][12]. He left it undetermined what symbols count as nonlogical; in fact he hoped that this freedom would allow one to define different kinds of necessity, perhaps separating ‘logical’ from ‘analytic’. One thing that makes Tarski’s proposal difficult to evaluate is that he completely ignores the question we discussed above, of analysing the concepts to reach all the logical connections between them. The only plausible explanation I can see for this lies in his parenthetical remark about

> the necessity of eliminating any defined signs which may possibly occur in the sentences concerned, i.e. of replacing them by primitive signs.

This suggests to me that he wants his primitive signs to be *by stipulation* unanalysable. But then by stipulation it will be purely accidental if his notion of logical consequence captures everything one would normally count as a logical consequence.

Historians note a resemblance between Tarski’s proposal and one in section 147 of Bernard Bolzano’s *Wissenschaftslehre* of 1837. Like Tarski, Bolzano defines the validity of a proposition in terms of the truth of a family of related propositions. Unlike Tarski, Bolzano makes his proposal for propositions in the vernacular, not for sentences of a formal language with a precisely defined semantics.

On all of this section, see also the entry on [logical consequence][13].

## 4\. Expressive strength

A sentence S defines its class Mod(S) of models. Given two languages L and L′, we can compare them by asking whether every class Mod(S), with S a sentence of L, is also a class of the form Mod(S′) where S′ is a sentence of L′. If the answer is Yes, we say that L is *reducible to* L′, or that L′ is *at least as expressive as* L.

For example if L is a first-order language with identity, whose signature consists of 1-ary predicate symbols, and L′ is the language whose sentences consist of the four syllogistic forms (All A are B, Some A are B, No A are B, Some A are not B) using the same predicate symbols, then L′ is reducible to L, because the syllogistic forms are expressible in first-order logic. (There are some quarrels about which is the right way to express them; see the entry on the traditional [square of opposition][14].) But the first-order language L is certainly not reducible to the language L′ of syllogisms, since in L we can write down a sentence saying that exactly three elements satisfy Px, and there is no way of saying this using just the syllogistic forms. Or moving the other way, if we form a third language L″ by adding to L the quantifier Qx with the meaning “There are uncountably many elements x such that …”, then trivially L is reducible to L″, but the downward Loewenheim-Skolem theorem shows at once that L″ is not reducible to L.

These notions are useful for analysing the strength of database query languages. We can think of the possible states of a database as structures, and a simple Yes/No query becomes a sentence that elicits the answer Yes if the database is a model of it and No otherwise. If one database query language is not reducible to another, then the first can express some query that can’t be expressed in the second.

So we need techniques for comparing the expressive strengths of languages. One of the most powerful techniques available consists of the back-and-forth games of Ehrenfeucht and Fraïssé between the two players Spoiler and Duplicator; see the entry on [logic and games][15] for details. Imagine for example that we play the usual first-order back-and-forth game G between two structures A and B. The theory of these games establishes that if some first-order sentence ϕ is true in exactly one of A and B, then there is a number n, calculable from ϕ, with the property that Spoiler has a strategy for G that will guarantee that he wins in at most n steps. So conversely, to show that first-order logic can’t distinguish between A and B, it suffices to show that for every finite n, Duplicator has a strategy that will guarantee she doesn’t lose G in the first n steps. If we succeed in showing this, it follows that any language which does distinguish between A and B is not reducible to the first-order language of the structures A and B.

These back-and-forth games are immensely flexible. For a start, they make just as much sense on finite structures as they do on infinite; many other techniques of classical model theory assume that the structures are infinite. They can also be adapted smoothly to many non-first-order languages.

In 1969 Per Lindström used back-and-forth games to give some abstract characterisations of first-order logic in terms of its expressive power. One of his theorems says that if L is a language with a signature K,L is closed under all the first-order syntactic operations, and L obeys the downward Loewenheim-Skolem theorem for single sentences, and the compactness theorem, then L is reducible to the first-order language of signature K. These theorems are very attractive; see Chapter XII of Ebbinghaus, Flum and Thomas for a good account. But they have never quite lived up to their promise. It has been hard to find any similar characterisations of other logics. Even for first-order logic it is a little hard to see exactly what the characterisations tell us. But very roughly speaking, they tell us that first-order logic is the unique logic with two properties: (1) we can use it to express arbitrarily complicated things about finite patterns, and (2) it is hopeless for discriminating between one infinite cardinal and another.

These two properties (1) and (2) are just the properties of first-order logic that allowed Abraham Robinson to build his *nonstandard analysis*. The background is that Leibniz, when he invented differential and integral calculus, used infinitesimals, i.e. numbers that are greater than 0 and smaller than all of 1/2, 1/3, 1/4 etc. Unfortunately there are no such real numbers. During the nineteenth century all definitions and proofs in the Leibniz style were rewritten to talk of limits instead of infinitesimals. Now let R be the structure consisting of the field of real numbers together with any structural features we care to give names to: certainly plus and times, maybe the ordering, the set of integers, the functions sin and log, etc. Let L be the first-order language whose signature is that of R. Because of the expressive strength of L, we can write down any number of theorems of calculus as sentences of L. Because of the expressive weakness of L, there is no way that we can express in L that R has no infinitesimals. In fact Robinson used the compactness theorem to build a structure R′ that is a model of exactly the same sentences of L as R, but which has infinitesimals. As Robinson showed, we can copy Leibniz’s arguments using the infinitesimals in R′, and so prove that various theorems of calculus are true in R′. But these theorems are expressible in L, so they must also be true in R.

Since arguments using infinitesimals are usually easier to visualise than arguments using limits, nonstandard analysis is a helpful tool for mathematical analysts. Jacques Fleuriot in his Ph.D. thesis (2001) automated the proof theory of nonstandard analysis and used it to mechanise some of the proofs in Newton’s *Principia*.

## 5\. Models and modelling

To *model* a phenomenon is to construct a formal theory that describes and explains it. In a closely related sense, you *model* a system or structure that you plan to build, by writing a description of it. These are very different senses of ‘model’ from that in model theory: the ‘model’ of the phenomenon or the system is not a structure but a theory, often in a formal language. The *Universal Modeling Language*, UML for short, is a formal language designed for just this purpose. It’s reported that the Australian Navy once hired a model theorist for a job ‘modelling hydrodynamic phenomena’. (Please don’t enlighten them!)

A little history will show how the word ‘model’ came to have these two different uses. In late Latin a ‘modellus’ was a measuring device, for example to measure water or milk. By the vagaries of language, the word generated three different words in English: mould, module, model. Often a device that measures out a quantity of a substance also imposes a form on the substance. We see this with a cheese mould, and also with the metal letters (called ‘moduli’ in the early 17th century) that carry ink to paper in printing. So ‘model’ comes to mean an object in hand that expresses the design of some other objects in the world: the artist’s model carries the form that the artist depicts, and Christopher Wren’s ‘module’ of St Paul’s Cathedral serves to guide the builders.

Already by the late 17th century the word ‘model’ could mean an object that shows the form, not of real-world objects, but of mathematical constructs. Leibniz boasted that he didn’t need models in order to do mathematics. Other mathematicians were happy to use plaster or metal models of interesting surfaces. The models of model theory first appeared as abstract versions of this kind of model, with theories in place of the defining equation of a surface. On the other hand one could stay with real-world objects but show their form through a theory rather than a physical copy in hand; ‘modelling’ is building such a theory.

We have a confusing halfway situation when a scientist describes a phenomenon in the world by an equation, for example a differential equation with exponential functions as solutions. Is the model the theory consisting of the equation, or are these exponential functions themselves models of the phenomenon? Examples of this kind, where theory and structures give essentially the same information, provide some support for Patrick Suppes’ claim that “the meaning of the concept of model is the same in mathematics and the empirical sciences” (1969, 12). Several philosophers of science have pursued the idea of using an informal version of model-theoretic models for scientific modelling. Sometimes the models are described as non-linguistic – this might be hard to reconcile with our definition of models in section 1 above.

Cognitive science is one area where the difference between models and modelling tends to become blurred. A central question of cognitive science is how we represent facts or possibilities in our minds. If one formalises these mental representations, they become something like ‘models of phenomena’. But it is a serious hypothesis that in fact our mental representations have a good deal in common with simple set-theoretic structures, so that they are ‘models’ in the model-theoretic sense too. In 1983 two influential works of cognitive science were published, both under the title *Mental Models*. The first, edited by Dedre Gentner and Albert Stevens, was about people’s ‘conceptualizations’ of the elementary facts of physics; it belongs squarely in the world of ‘modelling of phenomena’. The second, by Philip Johnson-Laird, is largely about reasoning, and makes several appeals to ‘model-theoretic semantics’ in our sense. Researchers in the Johnson-Laird tradition tend to refer to their approach as ‘model theory’, and to see it as allied in some sense to what we have called model theory.

Pictures and diagrams seem at first to hover in the middle ground between theories and models. In practice model theorists often draw themselves pictures of structures, and use the pictures to think about the structures. On the other hand pictures don’t generally carry the labelling that is an essential feature of model-theoretic structures. There is a fast growing body of work on reasoning with diagrams, and the overwhelming tendency of this work is to see pictures and diagrams as a form of language rather than as a form of structure. For example Eric Hammer and Norman Danner (1996) describe a ‘model theory of Venn diagrams’; the Venn diagrams themselves are the syntax, and the model theory is a set-theoretical explanation of their meaning. (A curious counterexample is the horizontal line diagrams of the 12th century Baghdad Jewish scholar Abū l-Barakāt they represent structures and not propositions, and Abū l-Barakāt uses them to express model-theoretic consequence in syllogisms. Further details are in Hodges 2018 on model-theoretic consequence.)

The model theorist Yuri Gurevich introduced *abstract state machines* (ASMs) as a way of using model-theoretic ideas for specification in computer science. According to the Abstract State Machine website (see Other Internet Resources below),

> any algorithm can be modeled at its natural abstraction level by an appropriate ASM. … ASMs use classical mathematical structures to describe states of a computation; structures are well-understood, precise models.

The book of Börger and Stärk cited below is an authoritative account of ASMs and their uses.

Today you can make your name and fortune by finding a good representation system. There is no reason to expect that every such system will fit neatly into the syntax/semantics framework of model theory, but it will be surprising if model-theoretic ideas don’t continue to make a major contribution in this area.

The sections above considered some of the basic ideas that fed into the creation of model theory, noting some ways in which these ideas appeared either in mathematical model theory or in other disciplines that made use of model theory. None of this is particularly philosophical, except in the broad sense that philosophers work with ideas. But as mathematical model theory has become more familiar to philosophers, it has increasingly become a source of material for philosophical questions. In 2018 two books appeared that directly addressed this philosophical use of model theory, though in very different ways.

In the first book, Button and Walsh 2018, the authors present an invitation to the reader to help create a discipline, ‘philosophy and model theory’, which is gradually coming into existence. (This is partly belied by the large amount of carefully-worked material in the book.) Mathematics in general is a source of fundamental philosophical worries. For example mathematicians refer to entities that we have no causal interaction with (such as the number π or the set of real numbers), and this creates questions about how we can identify these entities to ourselves or each other, and how we can discover facts about them. These problems are not new or peculiar to model theory; but mathematical model theory is the part of mathematics most concerned with ‘reference’ and ‘isomorphism types’ and ‘indiscernibility’, notions which go directly to the philosophical problem areas. The authors give clear analyses of exactly what the issues are in key discussions in these areas.

The second book, Baldwin 2018, presents mathematical model theory of the period from 1970 to today as a source of material for the discipline of philosophy of mathematical practice. This discipline studies the work of particular mathematicians within their historical context, and asks such questions as: Why did this mathematician prefer classifications in terms of *X* to classifications in terms of *Y*? Why did this group of mathematical researchers choose to formalise their subject matter using such-and-such a language or set of symbols? How did they decide what to formalise and what to leave unformalised? The discipline is partly historical, but it looks for conceptual justifications of the historical choices made. (See the entries [mathematical style][16] and [explanation in mathematics][17].) Baldwin has a long history of work in mathematical model theory, so he can answer questions like those above from personal knowledge. This book gives a rich supply of examples, explained with helpful pictures and remarkably little technical notation.

[1]: https://plato.stanford.edu/entries/modeltheory-fo/
[2]: https://plato.stanford.edu/entries/tarski-truth/
[3]: https://plato.stanford.edu/entries/model-theory/#Exp
[4]: https://plato.stanford.edu/entries/tarski-truth/
[5]: https://plato.stanford.edu/entries/logic-classical/
[6]: https://plato.stanford.edu/entries/modeltheory-fo/
[7]: https://plato.stanford.edu/entries/physics-interrelate/
[8]: https://plato.stanford.edu/entries/modeltheory-fo/
[9]: https://plato.stanford.edu/entries/geometry-19th/
[10]: https://plato.stanford.edu/entries/logic-classical/
[11]: https://plato.stanford.edu/entries/logic-classical/
[12]: https://plato.stanford.edu/entries/tarski-truth/
[13]: https://plato.stanford.edu/entries/logical-consequence/
[14]: https://plato.stanford.edu/entries/square/
[15]: https://plato.stanford.edu/entries/logic-games/
[16]: https://plato.stanford.edu/entries/mathematical-style/
[17]: https://plato.stanford.edu/entries/mathematics-explanation/
