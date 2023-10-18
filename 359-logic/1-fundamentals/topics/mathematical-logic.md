# Mathematical Logic

Mathematical logic is often divided into 4 major areas:
- set theory
- model theory
- computability (recursion) theory
- proof theory


*Mathematical proofs* have been around for a long time, at least from the 6th century BCE when ancient Greeks proved the first *mathematical theorems*.

A *theorem* may be derived from other statements, either because they were previously derived, or because they are the most elementary notions we have agreed upon. Such notions that we take for granted (without proof) are called *axioms*.


The work toward *modern logic* took more than 2000 years to develop the necessary methods. It culminated in 1870s and the the subsequent decades in the works of Georg Cantor, Gottlob Frege, Charles S. Peirce, Bertrand Russell, David Hilbert, of their followers. Today, the logical techniques developed by them allow for an *axiomatic* reconstruction of any mathematical theory that is based on a stable system of principles.


Total axiomatic reconstruction is called *formalization*. The results of such reconstruction are called *formal theories* - the terms *formal systems* and *deductive systems* also are used - emphasizing that in these theories no step of reasoning can be done without a reference to an exactly formulated list of *axioms* and *rules of inference*.


We can think of formal theories as *knowledge bases*. In these bases, knowledge is stored in the form of propositions, also called *axioms*. The simplest kind of axioms are *facts*. The second component are rules representing *constraints* called *predicates*. Knowledge bases are equipped with a *query processing language*.

The first distinctive feature of a formal theory (or, knowledge base) must be a precisely defined (i.e. formal) language used to express its *propositions*. "Precisely defined" means that there is an algorithm allowing us to determine if a given string is a correct proposition or not.

The second distinctive feature of a formal theory must be a precisely defined *notion of proof*. Each proof proves some proposition, which, once proven, is called a *theorem*. Thus, theorems form a subset of propositions.


The most general definition is very simple, and it does not mention neither axioms, nor rules of inference: precisely defined notion of proof means that there is an algorithm allowing to determine, is a given text a correct proof, or not.

Neither "self-evident" axioms, nor "plausible" rules of inference are distinctive features of the "formality". Speaking strictly, "self-evident" is synonymous to "accepted without argument". Hence, axioms and/or rules of inference may be "good, or bad", "true, or false", and so may be the theorems obtained by means of them. The only definitely verifiable thing is here the fact that some theorem has been, indeed, proved by using some definite set of axioms, and by means of some definite set of inference rules. And this fact must be verifiable by means of an algorithm - by a procedure that can be implemented on a computer.

Thus, a theory `T` is called a *formal theory* iff there is a pair of algorithms that allow us to verify whether a given string of symbols
1. is a correct proposition of `T`
2. is a correct proof according to the principles of `T`

If somebody is going to publish a "mathematical text" calling it "proof of a
theorem in theory T", then we must be able to verify whether the text in
question is really a correct proof according to the standards of proving
accepted in theory T. Thus, in a formal theory, the standards of reasoning
should be defined precisely enough to implement verification of proofs on a
computer. But note that we are discussing here verification of ready proofs,
and not the much more difficult problem - is some proposition provable in T

Axioms and rules of inference represent the most popular of the possible
techniques of formalization.

One of the most important properties of formal theories is showing that the set of all theorems of a formal theory is *algorithmically enumerable*, i.e. that, for any formal theory `T`, one can build an algorithm AT that generates and prints out on an endless paper tape all theorems of this theory (and nothing else).

Mathematicians are mainly interested in whether a given proposition is provable in `T`. Having a relatively simple algorithm for checking the *correctness of a proof*, the problem of *determining provability* can be a very complicated one.

`T` is called a solvable theory (more precisely - algorithmically solvable theory) if and only if there is an algorithm allowing to check whether some proposition is provable by using the principles of `T`.

Determining the provability of propositions is a much more complicated task than checking the correctness of ready proofs. It can be proved that most mathematical theories are unsolvable, the elementary (first order) arithmetic of natural numbers included. There is no algorithm allowing to determine, is some arithmetical proposition provable from the axioms of arithmetic.

Normally, formal theories contain the negation symbol not. In such theories,
solving of the problem stated in a proposition A means proving either A, or
proving notA ("disproving A", "refuting A"). We could try to solve the problem
by using the enumeration algorithm of the Exercise 1.1.4: let us wait until A or
notA is printed. In general, we have four possibilities here:
a) A will be printed, but notA will not (then the problem A has a positive
solution);
b) notA will be printed, but A will not (then the problem A has a negative
solution);
c) A and notA will be printed both;
d) neither A, nor notA will be printed.
In the case c), by using principles of T, some proposition and its negation can
be proved simultaneously, i.e., T is an inconsistent theory. This means that
the principles of T must be re-examined (to determine the cause of
inconsistency) and corrected.
In the case d) we may be waiting forever, yet nothing interesting will happen:
by using the principles of T one can neither prove nor disprove the proposition
A, and for this reason such a theory is called an incomplete theory. The
famous Incompleteness Theorem proved by Kurt Gödel in 1930 says that most
mathematical theories are either inconsistent or incomplete


## SL

* `(A → B) → ((B → C) → (A → C))` is a version of the *Law of Syllogism* by Aristotle, or the *transitivity property of implication*.

* `(A → (B → C)) → (B → (A → C))` is a version of the *premise permutation law*.
