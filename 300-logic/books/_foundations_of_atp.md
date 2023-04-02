# Logic for CS

`Logic For CS - Foundations of Automatic Theorem Proving` - Jean Gallier, 2003



## Introduction

Logic is concerned mainly with two concepts: *truth* and *provability*.

We'll focus on a mathematically well-defined logical system known as *first-order logic* (FOL) and *many-sorted logic*, and try to prove some basic properties of these systems. In particular, we focus on *algorithmic methods for proving theorems*, often referred to as *automatic theorem proving*.

Every *logical system* consists of a *language* used to write *statements*, which are also called *propositions* or *formulas*.

Normally, every formula has some intended *interpretation*. For example, a formula may assert a true property about the natural numbers.

This implies that a formula has a well-defined *semantics*. But how do we define this meaning precisely? In logic, we usually define the meaning of a formula as its *truth value*. A formula can be either true, i.e. *valid*, or false.

Defining rigorously the notion of truth is actually not as obvious as it appears. We shall present a concept of truth due to Tarski. Roughly speaking, a formula is true if it is *satisfied* in *all possible interpretations*.

So far, we have used the intuitive meaning of such words as interpretation, truth, and similar, but we must define these terms rigorously when dealing with FOL.

The branch of logic in which *abstract structures* and the properties true in these structures are studied is known as *model theory*.

Once the concept of truth has been defined rigorously, the next question is to investigate whether it is possible to find methods for deciding in a finite number of steps whether a formula is *valid* (i.e. true). Due to Church, there is no such general method for first-order logic. However, there is another familiar method for testing whether a formula is true: to give a *proof* of this formula. Of course, to be of any value, a *proof system* should be *sound*, which means that *every provable formula is true*.

We also need to rigorously define *the notion of proof*, and *proof system* for FOL. The branch of logic concerned with the study of proof is known as *proof theory*. Now, if we have a sound proof system, we know that every provable formula is true. Is the proof system strong enough that it is also possible to prove every true formula (of FOL)? A major theorem due to Godel shows that there are logical proof systems in which every true formula is provable. This is referred to as the *completeness* of the proof system.

To summarize the situation, if one is interested in algorithmic methods for testing whether a FOL formula is valid, there are two logical results of central importance: one positive, *Godel's completeness theorem*, and one negative, *Church's undecidability of validity*.

Roughly speaking, Godel's completeness theorem asserts that there are logical calculi in which every true formula is provable, and Church's theorem asserts that there is no decision procedure (which always terminates) for deciding whether a formula is true/valid. Hence, any algorithmic procedure for testing whether a formula is true (or equivalently, by Godel's completeness theorem, provable, in a complete system) must run forever when given certain non-true formulae as input.

We'll investigate Godel's positive result and its applications to automatic theorem proving (ATP), following thw main thread of *Gentzen-like sequent calculi*. Despite the theoretical limitation imposed by Church's result, the goal of ATP is to find efficient algorithmic methods for finding proofs of valid formulas.

A fairly intuitive method for finding such algorithms is the *completeness proof for Gentzen-like sequent calculi*. This approach yields a complete search procedure for proving valid formulae of FOL. However, it is not very practical so we'll try to improve it or find more efficient ones. And for that, we'll need to analyze the structure of proofs carefully.

Fundamental results of Gentzen and Herbrand show that, if a formula is provable, then the proof has a particular form, called the *normal form*. The existence of such normal forms can be exploited to reduce the size of the proof search space.

The existence of normal forms is also fundamental because it reduces the problem of finding a proof of a *first-order formula* to the problem of finding a proof of a simpler type of formula, called a proposition. *Propositions* are much simpler than first-order formulae. There are efficient algorithms for deciding their truth value - one of them, based on the reduction technique, is the *resolution method*.

Besides looking for general methods applying to the class of all true first order formulae, it is interesting to consider subclasses for which simpler or more efficient proof procedures exist. Some subclasses even have *decision procedures*. This is the case for propositions, and for quantifier-free formulae.

Unfortunately, even in cases in which algorithms exist, another difficulty emerges. A decision procedure may take too much time and space to be practical. For example, even testing whether a proposition is true may be very costly.

ATP techniques can be used to *axiomatize* structures and prove the properties of programs working on these structures. Logic is also used in CS to model computations and as a PL. *Prolog* programs are specified by sets of assertions, a computation is a proof, and the output of a program is the extracted proof. Since programs are essentially logical formulae, establishing their correctness is claimed to be trivial. This is not quite so, because the concept of *correctness* is relative, and the semantics of a Prolog program needs to be expressed in a language other than Prolog.
