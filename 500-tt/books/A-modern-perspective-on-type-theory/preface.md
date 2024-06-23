# Preface

The first part consists of three chapters and deals with the evolution of type theory until the 1940s. We study the prehistory of type theory up to 1910 and its development between Russell and Whitehead's Principia Mathematica and Church's simply typed of 1940. 

We proceed by describing how the logical paradoxes entered the formal systems of Frege, Cantor and Peano concentrating on Frege's `Grundgesetze der Arithmetik` for which Russell applied his famous paradox and this led him to introduce the first formulation of a theory of types, the *Ramified Type Theory (RTT)* (based on Russell's work [131] of 1908 which succeeded [130]; this work is highly influenced by *Frege's concept of types*).

We present RTT formally using the modern notation for type theory. Ramified types have a double hierarchy: one of orders and the other of types. Ramified types had limitations and for this reason, Russell and Whitehead added the so-called *axiom of reducibility*. Ramified types and the reducibility axiom were not fully accepted. 

This led to various calls for deramification by many including Hilbert and Ackermann, Ramsey and Leon Chwistek. In this book, we concentrate on the *simple theory of types (STT)* as envisaged by Ramsey, 1926 (and also independently by Hilbert and Ackermann) which is a simplification of the ramified theory of types by removing the orders. 

In 1940, Church developed, using his and the simple theory of types, the first most influential type theory: *Church's simply typed λ-calculus*  (STLC). We present STT and Church's own STLC and we finish by comparing RTT, STT an STLC.

NOTE: Ramsey's Simple Theory Of Types (1926) existed before λC was invented by Church in 1932 and hence before Church's STLC of 1940. Nevertheless, nowadays, when one refers to simple type theory, one usually means Church's STLC of 1940. It should be noted furthermore, that Russell's type structure was different from that of Church. The former was set-based with linear sequences of types. The latter was function-based.

NOTE: We write `λᶜʰᵘʳᶜʰ` or `λᶜʰ` for the original calculus of Church as presented in [29]. Note that this is different from the calculus used in frameworks like the Barendregt cube and the Pure Type Systems found in [3].


---

## Pure Type Systems

PTSs focus on the heart of type theory: function abstraction and application.
This makes it possible to compare type systems in a very fundamental way,
without being hindered by things that do not touch the heart of the matter;

Though PTSs focus on the heart of type theory, they are easily extendible in
several ways. There are already many extensions described in the literature.
Below, we list a small number of such extensions:

Pure Type System extensions:
- PTSs with definitions
- PTSs with modalities
- PTSs with sum types
- PTSs with quotient types
- PTSs with subset types
- PTSs with parameters
- PTSs with explicit substitutions
- PTSs with Π-reduction


The meta-theory that has been developed for PTSs makes it easier to access,
develop and compare meta-theoretic properties of the various original type
systems.

By placing several systems in the PTS framework, we also find some omissions in this framework. In particular, there is no extension of PTSs with *parametric definitions*, while parametric definitions play an important role in the type systems underlying the proof checker AUTOMATH. Extending PTSs with parametric definitions not only opens the possibility of placing AUTOMATH more accurately in the framework of PTSs, it makes it also possible to give a better classification of more modern type systems and their applications. The third part of this book deals with various extensions of PTSs.


## Part I The Evolution of Type Theory until the 1940s

## Chapter 1: Prehistory

### 1a Paradox threats

The most fundamental idea behind type theory is being able to distinguish between different classes of objects (types).

### 1b Paradox threats in formal systems

In the 19th century, the need for a more precise style in mathematics arose. Controversial results had appeared in analysis. Many of these controversies were solved by the work of Cauchy. For instance, he introduced a precise definition of convergence in his Cours d'Analyse [26]. Due to the more exact definition of real numbers given by Dedekind [43], the rules for reasoning with real numbers became even more precise.

In 1879, Frege published his Begriffsschrifi [49], in which he presented the first formalisation of logic. Frege's reasoning was uncommonly precise for those days. Until then, it had been possible to make mathematical and logical concepts more clear by textual refinement in the natural language in which they were described.

### 1b1 Functions and their course of values

The introduction of a very general definition of function was the key to the formalisation of logic. In the `Begriffsschrift`, Frege defined what we will call the *Abstraction Principle*:

**Abstraction Principle 1.1**   
>"If in an expression, […] a simple or a compound sign has one or more occurrences and if we regard that sign as replaceable in all or some of these occurrences by something else (but everywhere by the same thing), then we call the part that remains *invariant in the expression a function*, and the replaceable part the *argument of the function*".    
(Begriffsschrift, Section 9)

**Abstraction Principle 1.2**
>"If, given a function, we think of a sign¹ that was hitherto regarded as not replaceable as being replaceable at some or all of its occurrences, then by adopting this conception we obtain a function that has a new argument in addition to those it had before."    
(Begriffsschrift, Section 9)

¹ [footnote by Frege]: We can now regard a sign that previously was considered replaceable as replaceable also in those places in which up to this point it was considered fixed.

This could be interpreted as if Frege was aware of some typing rule that does not allow to substitute functions for object variables or objects for function variables. In his paper `Function and Concept` [51], Frege more explicitly stated:
>"Now just as functions are fundamentally different from objects, so also functions whose arguments are and must be functions are fundamentally different from functions whose arguments are objects and cannot be anything else. I call the latter first-level, the former secondlevel".

>"In regard to second-level functions with one argument, we must make a distinction, according as the role of this argument can be played by a function of one or of two arguments".

Therefore, we may safely conclude that Frege avoided the two paradox threats in the Begriffsschrift. In Function and Concept we even see that he was aware of the fact that making a difference between first-level and second-level objects is essential in preventing certain paradoxes.

In modern terminology, we could say that the functions and have
the same course-of-values if they have the same graph.

Frege did not provide a satisfying intuition for the formal notion of courseof-values of a function. He treated courses-of-values as ordinary objects. As a
consequence, a function that takes objects as arguments could have its own courseof-values as an argument. In modern terminology: a function that takes objects as
arguments can have its own graph as an argument. All essential information of
a function is contained in its graph. So intuitively, a system in which a function
can be applied to its own graph should have similar possibilities as a system in
which a function can be applied to itself. Frege excluded the paradox threats from
his system by forbidding self-application, but due to his treatment of courses-ofvalues these threats were able to enter his system through a back door.

### 1b2 The Russell Paradox in Grundgesetze

Only six days later, Frege answered Russell that Russell's derivation of the paradox was incorrect [55]. He explained that the self-application is not possible
in the Begriffsschrift. is a function, which requires an object as an argument,
and a function cannot be an object in the Begriffsschrift (see Section 1b1)

In the same letter, however, Frege explained that Russell's argument could be
amended to a paradox in the system of his Grundgesetze, using the course-ofvalues of functions. Frege's amendment was shortly explained in that letter, but he
added an appendix of eleven pages to the second volume of his Grundgesetze in
which he provided a very detailed and correct description of the paradox.

### 1b3 How wrong was Frege?

In the history of the Russell paradox, Frege is often depicted as the pitiful person whose system was inconsistent. This suggests that Frege's system was the only one that was inconsistent, and that Frege was very inaccurate in his writings. On these points, history does Frege an injustice. In fact, Frege's system was much more accurate than other systems of those days. Peano's work, for instance, was less precise on several points:
- Peano hardly paid any attention to logic, especially not to quantification
theory
- Peano did not make a strict distinction between his symbolism and the objects underlying this symbolism. Frege was much more accurate on this point (see also his paper Über Sinn und Bedeutung [53])
- Frege made a strict distinction between a proposition (as an object of interest or discussion) and the assertion of a proposition. Frege denoted a proposition, in general, by `A`, and the assertion of the proposition by `|- A`. The symbol is still widely used in logic and type theory. Peano did not make this distinction and simply wrote `A`.

Nevertheless, Peano's work was very popular, for several reasons:
- Peano had able collaborators, and in general had a better eye for presentation and publicity. For instance, he bought his own press, so that he could supervise the printing of his journal Rivista di Matematica and Formulaire
- Peano used a symbolism much more familiar to the notations that were used in those days by mathematicians (and many of his notations, like for "is an element of", and for logical implication, are also used in Russell's Principia Mathematica, and are actually still in use).

Frege's work did not have these advantages and was hardly read before 19023. In the last paragraph of [54], Frege concluded: "...I observe merely that the Peano notation is unquestionably more convenient for the typesetter, and in many cases takes up less room than mine, but that these advantages seem to me, due to the inferior perspicuity and logical defectiveness, to have been paid for too dearly - at any rate for the purposes I want to pursue."

When Peano published his formalisation of mathematics in 1889 [116] he clearly did not know Frege's Begriffsschrift, as he did not mention the work, and was not aware of Frege's formalisation of quantification theory. Peano considered quantification theory to be "abstruse" in [117], on which Frege proudly reacted: "In this respect my conceptual notion of 1879 is superior to the Peano one. Already, at that time, I specified all the laws necessary for my designation of generality, so that nothing fundamental remains to be examined. These laws are few in number, and I do not know why they should be said to be abstruse. If it is otherwise with the Peano conceptual notation, then this is due to the unsuitable notation".

### 1b4 The importance of Russell's Paradox

Russell's paradox was certainly not the first or only paradox in history. Paradoxes
were already widely known in antiquity. The first known paradox is the Achilles
paradox of Zeno of Elea. It is a purely mathematical paradox. Due to a precise formulation of mathematics and especially the concept of real numbers, the paradox
can now be satisfactorily solved.
The oldest logical paradox is probably the Liar's paradox, also known as the
paradox of Epimenides. It can be very shortly formulated by the sentence "This
sentence is not true". The paradox was widely known in antiquity. For instance,
it is referred to in the Bible (Titus 1:12). It is based on the confusion between
language and meta-language.
The Burali-Forti paradox ([22], 1897) is the first of the modern paradoxes. It
is a paradox within Cantor's theory on ordinal numbers. Cantor's paradox on the
largest cardinal number occurs in the same field. It must have been discovered by
Cantor around 1895, but was not published before 1932.
The logicians considered these paradoxes to be out of the scope of logic: the
paradoxes based on the Liar's paradox could be regarded as a problem of linguistics, and the paradoxes of Cantor and Burali-Forti occurred in a questionable (in
those days highly) part of mathematics: Cantor's Set Theory.
The Russell paradox, however, was a paradox that could be formulated in all
the systems that were presented at the end of the 19th century (except for Frege's
Begriffsschrift). It was at the very basics of logic. It could not be disregarded, and
a solution to it had to be found.


## Chapter 2: Type theory in Principia Mathematica

Vicious Circle Principle 2.1: "Whatever involves all of a collection must not be one of the collection."

The logical part of the Principia was based on the works of Frege. This was acknowledged by Whitehead and Russell in the preface, and can also be seen throughout the description of Type Theory. The notion of function is based on Frege's Abstraction Principles 1.1 and 1.2.

An important difference is that Whitehead and Russell treated functions as firstclass citizens. Frege used courses-of-values as a way of speaking about functions (and was confronted with a paradox); in the Principia a direct approach was possible. Equality, for instance, was defined for objects as well as for functions by means of *Leibniz equality*.

### 2a Principia's propositional functions

Frege generalised the notion of function from analysis. For Russell's formalisation of mathematics within logic, a special kind of these functions was needed: the so-called propositional functions. A propositional function (pf) always returns a proposition when it is applied to suitable arguments.

The definition of propositional function in the Principia is as follows: "By a "propositional function" we mean something which contains a variable and expresses a proposition as soon as a value is assigned to".

Pfs are, however, constructed from propositions1 with the use of the Abstraction Principles: they arise when in a proposition one or more occurrences of a sign are replaced by a variable.

## Chapter 3: Deramification
