# Logic in CS

Logic is about reasoning, but the traditional goal of logic, to teach people how to reason correctly, has turned out to be too complex and ingrateful task, so it was adjusted to a more resonable one - treaching computers instead.

Computers start with a blank slates, and all the knowledge that we try to impart on them is never deemed trivial or commonplace. A computer may know only that part of the entirety of human knowledge that it was thought explicitly, or, that it derived from another body of knowledge stored in its knowledge base (kb).

It is impossible to make all the human knowledge available to computers directly, e.g. as a ginormous database of facts; it is far more desired to store only some part of that knowledge and teach computers how to derive new information from it. We should particularly avoid storing the knowledge that can be easily inferred, e.g. we can store just the premises and let the computer derive the conculsion. From then on, it can reuse that conclusion to make future inference.

Teaching machine how to reason seems an unachievable task, but like all the complex tasks we can analyze it and try to break it down into the smallest tractable problems. A supplementary goal that would make teaching computers things much more easier is gettingth em to understand natural language. However, although it has made enormous advances, natural language processing (NLP) still cannot support a comfortable human-computer interaction.

One of the best tools we have for the task is logic, so we must implement a means for automated reasoning, as an advanced kind of *query processing*. Predicate logic seems to be a good fit, especially since logical programming languages, like `Prolog`, have already demonstrated good approaches and usable techics.

MAthematical proofs have been around for a long time, at least from the 6th century BCE when ancient Greeks proved the first mathematical theorems. A theorem may be derived from other statements that we already "know", either because they were previously derived, or because they are the most elementaryn otions we have agreed to take for granted, without proof, and call them *axioms*.

The work toward modern logic took more than 2000 years to develop the necessary methods. It culminated in 1870s and the the subsequent decades in the works of Georg Cantor, Gottlob Frege, Charles S. Peirce, Bertrand Russell, David Hilbert, of their followers. Today, the logical techniques developed by them allow for an axiomatic reconstruction of any mathematical theory that is based on a stable system of principles.

Total axiomatic reconstruction is called formalization. The results of such reconstruction are called formal theories (the terms "formal systems" and "deductive systems" also are used) emphasizing that in these theories no step of reasoning can be done without a reference to an exactly formulated list of axioms and rules of inference.

We can think of formal theories as knowledge bases. In these bases, knowledge is stored in the form of propositions, also called axioms. The simplest kind of axioms are facts. The second component are rules representing constraints called predicates. Knowledge bases are equipped with a query processing language. 

The first distinctive feature of a formal theory (or, knowledge base) must be a precisely defined ("formal") language used to express its propositions. "Precisely defined" means here that there is an algorithm allowing to determine, is a given character string a correct proposition, or not.

The second distinctive feature of a formal theory must be a precisely defined ("formal") notion of proof. Each proof proves some proposition, that is called (after being proved) a theorem. Thus, theorems form a subset of propositions.

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
