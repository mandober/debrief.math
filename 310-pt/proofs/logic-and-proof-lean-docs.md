---
created: 2021-08-29
tags: ["proofs", "logic"]
source: https://leanprover.github.io/logic_and_proof/introduction.html
---
# 1. Introduction to Logic and Proof

## 1.1. Mathematical Proof

Although there is written evidence of mathematical activity in Egypt as early as 3000 BC, many scholars locate the birth of mathematics proper in ancient Greece around the sixth century BC, when deductive proof was first introduced. Aristotle credited Thales of Miletus with recognizing the importance of not just what we know but how we know it, and finding grounds for knowledge in the deductive method. Around 300 BC, Euclid codified a deductive approach to geometry in his treatise, the _Elements_. Through the centuries, Euclid's axiomatic style was held as a paradigm of rigorous argumentation, not just in mathematics, but in philosophy and the sciences as well.

Here is an example of an ordinary proof, in contemporary mathematical language. It establishes a fact that was known to the Pythagoreans.

---

**Theorem.** 2 is irrational, which is to say, it cannot be expressed as a fraction a/b, where a and b are integers.

**Proof.** Suppose 2\=a/b for some pair of integers a and b. By removing any common factors, we can assume a/b is in lowest terms, so that a and b have no factor in common. Then we have a\=2b, and squaring both sides, we have a2\=2b2.

The last equation implies that a2 is even, and since the square of an odd number is odd, a itself must be even as well. We therefore have a\=2c for some integer c. Substituting this into the equation a2\=2b2, we have 4c2\=2b2, and hence 2c2\=b2. This means that b2 is even, and so b is even as well.

The fact that a and b are both even contradicts the fact that a and b have no common factor. So the original assumption that 2\=a/b is false.

---

In the next example, we focus on the natural numbers,

A natural number n greater than or equal to 2 is said to be _composite_ if it can be written as a product n\=m⋅k where neither m nor k is equal to 1, and _prime_ otherwise. Notice that if n\=m⋅k witnesses the fact that n is composite, then m and k are both smaller than n. Notice also that, by convention, 0 and 1 are considered neither prime nor composite.

---

**Theorem.** Every natural number greater than or equal to 2 can be written as a product of primes.

**Proof.** We proceed by induction on n. Let n be any natural number greater than 2. If n is prime, we are done; we can consider n itself as a product with one term. Otherwise, n is composite, and we can write n\=m⋅k where m and k are smaller than n and greater than 1. By the inductive hypothesis, each of m and k can be written as a product of primes, say m\=p1⋅p2⋅…⋅pu and k\=q1⋅q2⋅…⋅qv. But then we have

n\=m⋅k\=p1⋅p2⋅…⋅pu⋅q1⋅q2⋅…⋅qv,

a product of primes, as required.

---

Later, we will see that more is true: every natural number greater than 2 can be written as a product of primes in a unique way, a fact known as the _fundamental theorem of arithmetic_.

The first goal of this course is to teach you to write clear, readable mathematical proofs. We will do this by considering a number of examples, but also by taking a reflective point of view: we will carefully study the components of mathematical language and the structure of mathematical proofs, in order to gain a better understanding of how they work.

## 1.2. Symbolic Logic[¶][2]

Toward understanding how proofs work, it will be helpful to study a subject known as "symbolic logic," which provides an idealized model of mathematical language and proof. In the _Prior Analytics_, the ancient Greek philosopher set out to analyze patterns of reasoning, and developed the theory of the _syllogism_. Here is one instance of a syllogism:

---

Every man is an animal.

Every animal is mortal.

Therefore every man is mortal.

---

Aristotle observed that the correctness of this inference has nothing to do with the truth or falsity of the individual statements, but, rather, the general pattern:

---

Every A is B.

Every B is C.

Therefore every A is C.

---

We can substitute various properties for A, B, and C; try substituting the properties of being a fish, being a unicorn, being a swimming creature, being a mythical creature, etc. The various statements that result may come out true or false, but all the instantiations will have the following crucial feature: if the two hypotheses come out true, then the conclusion comes out true as well. We express this by saying that the inference is _valid_.

Although the patterns of language addressed by Aristotle's theory of reasoning are limited, we have him to thank for a crucial insight: we can classify valid patterns of inference by their logical form, while abstracting away specific content. It is this fundamental observation that underlies the entire field of symbolic logic.

In the seventeenth century, Leibniz proposed the design of a _characteristica universalis_, a universal symbolic language in which one would express any assertion in a precise way, and a _calculus ratiocinatur_, a "calculus of thought" which would express the precise rules of reasoning. Leibniz himself took some steps to develop such a language and calculus, but much greater strides were made in the nineteenth century, through the work of Boole, Frege, Peirce, Schroeder, and others. Early in the twentieth century, these efforts blossomed into the field of mathematical logic.

If you consider the examples of proofs in the last section, you will notice that some terms and rules of inference are specific to the subject matter at hand, having to do with numbers and the properties of being prime, composite, even, odd, and so on. But there are other terms and rules of inference that are not domain specific, such as those related to the words "every," "some," "and," and "if … then." The goal of symbolic logic is to identify these core elements of reasoning and argumentation and explain how they work, as well as to explain how more domain-specific notions are introduced and used.

To that end, we will introduce symbols for key logical notions, including the following:

-   A→B, "if A then B"
    
-   A∧B, "A and B"
    
-   A∨B, "A or B"
    
-   ¬A, "not A"
    
-   ∀xA, "for every x, A"
    
-   ∃xA, "for some x, A"
    

We will then provide a formal proof system that will let us establish, deductively, that certain entailments between such statements are valid.

The proof system we will use is a version of _natural deduction_, a type of proof system introduced by Gerhard Gentzen in the 1930s to model informal styles of argument. In this system, the fundamental unit of judgment is the assertion that a statement, A, follows from a finite set of hypotheses, Γ. This is written as Γ⊢A. If Γ and Δ are two finite sets of hypotheses, we will write Γ,Δ for the _union_ of these two sets, that is, the set consisting of all the hypotheses in each. With these conventions, the rule for the conjunction symbol can be expressed as follows:

![](https://leanprover.github.io/logic_and_proof/_static/introduction.1.png)

This should be interpreted as saying: assuming A follows from the hypotheses Γ, and B follows from the hypotheses Δ, A∧B follows from the hypotheses in both Γ and Δ.

We will see that one can write such proofs more compactly leaving the hypotheses implicit, so that the rule above is expressed as follows:

![](https://leanprover.github.io/logic_and_proof/_static/introduction.2.png)

In this format, a snippet of the first proof in the previous section might be rendered as follows:

![](https://leanprover.github.io/logic_and_proof/_static/introduction.3.png)

The complexity of such proofs can quickly grow out of hand, and complete proofs of even elementary mathematical facts can become quite long. Such systems are not designed for writing serious mathematics. Rather, they provide idealized models of mathematical inference, and insofar as they capture something of the structure of an informal proof, they enable us to study the properties of mathematical reasoning.

The second goal of this course is to help you understand natural deduction, as an example of a formal deductive system.

## 1.3. Interactive Theorem Proving[¶][3]

Early work in mathematical logic aimed to show that ordinary mathematical arguments could be modeled in symbolic calculi, at least in principle. As noted above, complexity issues limit the range of what can be accomplished in practice; even elementary mathematical arguments require long derivations that are hard to write and hard to read, and do little to promote understanding of the underlying mathematics.

Since the end of the twentieth century, however, the advent of computational proof assistants has begun to make complete formalization feasible. Working interactively with theorem proving software, users can construct formal derivations of complex theorems that can be stored and checked by computer. Automated methods can be used to fill in small gaps by hand, verify long calculations axiomatically, or fill in long chains of inferences deterministically. The reach of automation is currently fairly limited, however. The strategy used in interactive theorem proving is to ask users to provide just enough information for the system to be able to construct and check a formal derivation. This typically involves writing proofs in a sort of "programming language" that is designed with that purpose in mind. For example, here is a short proof in the _Lean_ theorem prover:

section
variables (P Q : Prop)

theorem my\_theorem : P ∧ Q → Q ∧ P :=
assume h : P ∧ Q,
have P, from and.left h,
have Q, from and.right h,
show Q ∧ P, from and.intro ‹Q› ‹P›

end

If you are reading the present text in online form, you will find a button above the formal "proof script" that says "try it!" Pressing the button opens the proof in an editor window and runs a version of Lean inside your browser to process the proof, turn it into an axiomatic derivation, and verify its correctness. You can experiment by varying the text in the editor; any errors will be noted in the window to the right.

Proofs in Lean can access a library of prior mathematical results, all verified down to axiomatic foundations. A goal of the field of interactive theorem proving is to reach the point where any contemporary theorem can be verified in this way. For example, here is a formal proof that the square root of two is irrational, following the model of the informal proof presented above:

import data.nat.prime
open nat

theorem sqrt\_two\_irrational {a b : ℕ} (co : gcd a b \= 1) :
  a^2 ≠ 2 \* b^2 :=
assume h : a^2 \= 2 \* b^2,
have 2 ∣ a^2,
  by simp \[h\],
have 2 ∣ a,
  from prime.dvd\_of\_dvd\_pow prime\_two this,
exists.elim this $
assume (c : nat) (aeq : a \= 2 \* c),
have 2 \* (2 \* c^2) \= 2 \* b^2,
  by simp \[eq.symm h, aeq\];
    simp \[pow\_succ', mul\_comm, mul\_assoc, mul\_left\_comm\],
have 2 \* c^2 \= b^2,
  from mul\_left\_cancel' dec\_trivial this,
have 2 ∣ b^2,
  by simp \[eq.symm this\],
have 2 ∣ b,
  from prime.dvd\_of\_dvd\_pow prime\_two this,
have 2 ∣ gcd a b,
  from dvd\_gcd ‹2 ∣ a› ‹2 ∣ b›,
have 2 ∣ (1 : ℕ),
  by simp \* at \*,
show false, from absurd ‹2 ∣ 1› dec\_trivial

The third goal of this course is to teach you to write elementary proofs in Lean. The facts that we will ask you to prove in Lean will be more elementary than the informal proofs we will ask you to write, but our intent is that formal proofs will model and clarify the informal proof strategies we will teach you.

## 1.4. The Semantic Point of View[¶][4]

As we have presented the subject here, the goal of symbolic logic is to specify a language and rules of inference that enable us to get at the truth in a reliable way. The idea is that the symbols we choose denote objects and concepts that have a fixed meaning, and the rules of inference we adopt enable us to draw true conclusions from true hypotheses.

One can adopt another view of logic, however, as a system where some symbols have a fixed meaning, such as the symbols for "and," "or," and "not," and others have a meaning that is taken to vary. For example, the expression P∧(Q∨R), read "P and either Q or R," may be true or false _depending on the basic assertions that_ P, Q, _and_ R _stand for_. More precisely, the truth of the compound expression depends only on whether the component symbols denote expressions that are true or false. For example, if P, Q, and R stand for "seven is prime," "seven is even," and "seven is odd," respectively, then the expression is true. If we replace "seven" by "six," the statement is false. More generally, the expression comes out true whenever P is true and at least one of Q and R is true, and false otherwise.

From this perspective, logic is not so much a language for asserting truth, but a language for describing possible states of affairs. In other words, logic provides a specification language, with expressions that can be true or false depending on how we interpret the symbols that are allowed to vary. For example, if we fix the meaning of the basic predicates, the statement "there is a red block between two blue blocks" may be true or false of a given "world" of blocks, and we can take the expression to describe the set of worlds in which it is true. Such a view of logic is important in computer science, where we use logical expressions to select entries from a database matching certain criteria, to specify properties of hardware and software systems, or to assert constraints that we would like a constraint solver to satisfy.

There are important connections between the syntactic / deductive point of view on the one hand, and the semantic / model-theoretic point of view on the other. We will explore some of these along the way. For example, we will see that it is possible to view the "valid" assertions as those that are true under all possible interpretations of the non-fixed symbols, and the "valid" inferences as those that maintain truth in all possible states and affairs. From this point of view, a deductive system should only allow us to derive valid assertions and entailments, a property known as _soundness_. If a deductive system is strong enough to allow us to verify _all_ valid assertions and entailments, it is said to be _complete_.

The fourth goal of this course is to convey the semantic view of logic, and to lead you to understand how logical expressions can be used to specify states of affairs.

## 1.5. Goals Summarized[¶][5]

To summarize, these are the goals of this course:

-   You should learn to write clear, "literate," mathematical proofs.
    
-   You should become comfortable with symbolic logic and the formal modeling of deductive proof.
    
-   You should learn how to use an interactive proof assistant.
    
-   You should understand how to use logic as a precise language for making claims about systems of objects and the relationships between them, and specifying certain states of affairs.
    

Let us take a moment to consider the relationship between some of these goals. It is important not to confuse the first three. We are dealing with three kinds of mathematical language: ordinary mathematical language, the symbolic representations of mathematical logic, and computational implementations in interactive proof assistants. These are very different things!

Symbolic logic is not meant to replace ordinary mathematical language, and you should not use symbols like ∧ and ∨ in ordinary mathematical proofs any more than you would use them in place of the words "and" and "or" in letters home to your parents. Natural languages provide nuances of expression that can convey levels of meaning and understanding that go beyond pattern matching to verify correctness. At the same time, modeling mathematical language with symbolic expressions provides a level of precision that makes it possible to turn mathematical language itself into an object of study. Each has its place, and we hope to get you to appreciate the value of each without confusing the two.

The proof languages used by interactive theorem provers lie somewhere between the two extremes. On the one hand, they have to be specified with enough precision for a computer to process them and act appropriately; on the other hand, they aim to capture some of the higher-level nuances and features of informal language in a way that enables us to write more complex arguments and proofs. Rooted in symbolic logic and designed with ordinary mathematical language in mind, they aim to bridge the gap between the two.

This book also aims to show you how mathematics is built up from fundamental concepts. Logic provides the rules of the game, and then we work our way up from properties of sets, relations, functions, and the natural numbers to elementary number theory, combinatorics, and properties of the real numbers. The last chapter rounds out the story with a discussion of axiomatic foundations.

## 1.6. About this Textbook[¶][6]

Both this online textbook and the _Lean_ theorem prover are new and ongoing projects. You can learn more about Lean from its [project page][7], the Leann [community pages][8], and the online textbook, [Theorem Proving in Lean][9].

We are grateful for feedback and corrections from a number of people, including Bruno Cuconato, William DeMeo, Tobias Grosser, Lyle Kopnicky, Alexandre Rademaker, Matt Rice, and Jason Siefken.

[1]: https://leanprover.github.io/logic_and_proof/introduction.html#mathematical-proof "Permalink to this headline"
[2]: https://leanprover.github.io/logic_and_proof/introduction.html#symbolic-logic "Permalink to this headline"
[3]: https://leanprover.github.io/logic_and_proof/introduction.html#interactive-theorem-proving "Permalink to this headline"
[4]: https://leanprover.github.io/logic_and_proof/introduction.html#the-semantic-point-of-view "Permalink to this headline"
[5]: https://leanprover.github.io/logic_and_proof/introduction.html#goals-summarized "Permalink to this headline"
[6]: https://leanprover.github.io/logic_and_proof/introduction.html#about-this-textbook "Permalink to this headline"
[7]: http://leanprover.github.io/
[8]: http://leanprover-community.github.io/
[9]: http://leanprover.github.io/theorem_proving_in_lean/
