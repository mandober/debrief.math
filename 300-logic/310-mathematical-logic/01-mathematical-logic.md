# Mathematical Logic

https://en.wikipedia.org/wiki/Mathematical_logic

Mathematical logic is a subfield of mathematics exploring the applications of formal logic to mathematics. It bears close connections to metamathematics, the foundations of mathematics, philosophy, and theoretical computer science.

The unifying themes in mathematical logic include the study of the expressive power of formal systems and the deductive power of formal proof systems.

Mathematical logic is often divided across the mathematical fields of
- set theory
- model theory
- recursion theory
- proof theory

These fields share basic results on logic, particularly first-order logic, and definability.

---
from `A Concise Introduction to Mathematical Logic`, 2006, Wolfgang Rautenberg

*Traditional logic* as a part of philosophy is one of the oldest scientific disciplines. It can be traced back to the Stoics and to Aristotle. It is one of the roots of what is nowadays called *philosophical logic*.

*Mathematical logic*, however, is a relatively young discipline, having arisen from the efforts of Peano, Frege and Russell to reduce mathematics entirely to logic, the movement called *logicism*. It steadily developed during the XX century into a broad discipline with several subareas and numerous applications in mathematics, computer science, linguistics, and philosophy.

One of the features of modern logic is a clear distinction between *object language* and *metalanguage*.

Since this book concerns mathematical logic, its language is similar to the language common to all mathematical disciplines. There is one essential difference though. In mathematics, metalanguage and object language strongly interact with each other and the latter is semiformalized in the best of cases. This method has proved successful. Separating object language and metalanguage is relevant only in special context, for example in axiomatic set theory, where formalization is needed to specify how certain axioms look like. Strictly formal languages are met more often in computer science. In analysing complex software or a programming language, like in logic, formal linguistic entities are the objects of consideration.

The way of arguing about formal languages and theories is traditionally called the *metatheory*. An important task of a metatheoretical analysis is to specify procedures of logical inference by the so-called logical calculi, which operate purely syntactically. There are many different *logical calculi*. The choice may depend on the formalized language, on the logical basis, and on certain aims of the formalization. Basic metatheoretical tools are in any case the naive natural numbers and inductive proof procedures. We will sometimes call them *proofs by meta-induction*, in particular when talking about formalized theories that may speak about natural numbers and induction themselves. Induction can likewise be carried out on certain sets of strings over a fixed alphabet, or on the system of rules of a logical calculus.

## Historical remarks

In the relatively short period of development of modern mathematical logic in the last century, some highlights may be distinguished, of which we mention just a few.

The first was the *axiomatization of set theory* in various ways. The most important approaches are the ones of Zermelo (improved by Fraenkel and von Neumann) and the *theory of types* by Whitehead and Russell. The latter was to become the sole remnant of Frege's attempt to reduce mathematics to logic. Instead it turned out that mathematics can be based entirely on set theory as a first-order theory. Actually, this became more salient after the rest of the hidden assumptions (e.g. the notion of ordered pairs is set-theoretical and not logical) by Russell and others were removed from axiomatic set theory around 1915. Right after these axiomatizations were completed, Skolem discovered that there are countable models of the set-theoretic axioms, a drawback for the hope for an axiomatic definition of a set.

Just then, two distinguished mathematicians, Hilbert and Brouwer, entered the scene and started their famous quarrel on the foundations of mathematics. As a next highlight, Gödel proved the completeness of Hilbert's rules for predicate logic. Thus, to some extent, a dream of Leibniz became real, namely to create an *ars inveniendi* for mathematical truth. Meanwhile, Hilbert had folded his view on a foundation of mathematics into a program. It aimed at proving the consistency of arithmetic and perhaps the whole of mathematics including its non-finitistic set-theoretic methods by finitary means. But Gödel showed by his incompleteness theorems in 1931 that Hilbert's original program fails or at least needs thorough revision.

Many logicians consider Gödel's theorems to be the top achivements of mathematical logic in the XX century. A consequence of these theorems is the existence of consistent extensions of Peano arithmetic in which true and false sentences live in peaceful coexistence with each other, called "dream theories". It is an intellectual adventure of holistic beauty to see wisdoms from number theory known for ages, like the Chinese remainder theorem, or simple properties of prime numbers and Euclid's characterization of coprimeness unexpectedly assuming pivotal positions within the architecture of Gödel's proofs.

The methods developed by Gödel were also fundamental for the creation of *recursion theory* around 1936. Church's proof of the undecidability of the tautology problem marks another distinctive achievement. After having collected sufficient evidence by his own investigations and by those of Turing, Kleene, and some others, Church formulated his famous *Church thesis*, despite that in 1936 no computers, in the modern sense existed, nor was it foreseeable that *computability* would ever play the basic role it does today.

Hilbert's program had to be revised. A decisive step was undertaken by Gentzen with his calculi of natural deduction, considered to be another groundbreaking achievement of mathematical logic and the starting point of contemporary *proof theory*.

Gödel discovered that it is not the axiom of choice (AC) that creates the consistency problem in set theory. Set theory with AC and the continuum hypothesis (CH) is consistent provided set theory without AC and CH is. This is a basic result of mathematical logic that would not have been obtained without the use of strictly formal methods. The same applies to the *independence proof of AC and CH* from the axioms of set theory by P. Cohen in 1963.

The above indicates that mathematical logic is closely connected with the aim of giving mathematics a solid foundation. Nonetheless, we confine ourself to logic and its fascinating interaction with mathematics. History shows that it is impossible to establish a programmatic view on the foundations of mathematics that pleases everybody in the mathematical community. Mathematical logic is the right tool for treating the technical problems of the foundations of mathematics, but it cannot solve its epistemological problems.
