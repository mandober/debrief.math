# Mathematics

Mathematics has developed through the use of *abstraction* and *logical reasoning*.

**Abstraction** is the process of extracting the underlying essence of a *mathematical concept*, removing any dependence on real world objects, with which it might originally have been connected, and *generalizing* it so that it has wider applications or matching among other abstract descriptions of equivalent phenomena.

Mathematicians investigate *mathematical concepts* trying to formulate *conjectures* and establish their truth by *rigorous deduction* from a set of fundamental *axioms* and previously defined *theorems* within a certain *formal system*.

**Logical reasoning** guides us in understanding and constructing proofs, it helpes us reason about formal *mathematical objects* (numbers, lists, trees, formulas, etc.).


## The system of logic

Mathematical proofs are not eternal, existing independently of any other concept, shape or form. A proof is a logical consequence of a specific theory that was developed in a certain formal system of logic. The theory and the proofs derived are valid only with regards to some logic system.

For example, the *classical logic* is a formal logic system that has two truth values (`true` and `false`) and it holds that a proposition is either true or false, not both and not neither.

This and other behaviours are enforced by the axioms, one of which, called *the law of excluded middle*, states that either a proposition is true, or that its negation is true. Another axioms, called *the principle of double negation*, states that if a statement is true, then it is not the case that the statement is not true.

On the other hand, the *intuitionistic logic*, which is also a mainstream system of logic, doesn't accept neither of these two axioms that are fundamental in the classic logic.


## Sand castle

Modern mathematics has the set-theoretic foundation (concretely ZF set theory), meaning the whole of mathematics could be derived from the set theory.

In fact, it would be better to say that the mainstream mathematics is based on set theory because majority of mathematicians today agree with that. However, there are other groups of mathematicians that have different views.

Recently the *category theory* has gained enough momentum to present itself as the alternative candidate for the foundations of mathematics. With the introduction of sets and soon after the related paradoxes, the type theory has started development, which makes another alternative for the foundations of math. The foundations of mathematics based on functions (lambda calculus and combinatory SK calculus) have been, and still are, investigated for this role as well.

The foundation of mathematics itself also became the mathematical discipline to encompass the effort of searching for mathematical foundations. However, it came about late in the history of mathematics, when many mathematical disciplines where already formed.

Namely, in the XIX century, after many surprises that questioned stability of mathematics, German mathematician David Hilbert has set forward the motion for *axiomatization of mathematics*.

The goal was to put the entirety of math on a solid cornerstone upon which the rest of mathematics could be build by devising a strong theory with a carefully chosen set of *axioms*.

Any *mathematical theory* consists of a set of *mathematical axioms*, given without the proof. Besides the axioms, *mathematical primitives* are similarly privileged, require no proof as well.

A theory may start its development with a mathemtical primitive as its most central concept, with axioms describing its behavior (primitive as the central entity whose behavior is described by the axioms). Alternatively, a primitive itself may be introduced into a theory as one of the axioms.

The fact that primitives and axioms require no proof has to do with infinite regression (also nicknamed vicious circle). Any theory has to start somewhere, it introduces some concept, some term that wasn't previously defined. If it were to define that term, then all the terms used in a definition would aslo require a definition of their own. And so on and on, ad nauseam. This is the vicious circle of regression that would prevent any theory to even begin.

Therefore, it is allowed to "make a cut" and arbitrarily choose the starting concept for a theory. That concept is usually the most fundamental concept of the theory, either introduced as a primitive or explicitly given as an axiom. Then, a minimal set of axioms (*compactness*) is chosen in such a way that it prohibits deriving contradictory statements within this system (*consistency*). Also the axioms should allow deriving all the true statements within the system (*completeness*). No axiom should be chosen if it can be derived from other axioms.

One can choose to construct the new set theory, adding an axiom as a fix for every encountered problem.



## The higher ground

Even if the foundation of mathematics is not unanimously agreed upon, there's no time to waste waiting for the concensus, so mathematicians proceed exploring their fields of interest anyway, forming new theories and deriving new proofs from them. This means that the proofs depend on the theory and if you accept the foundation of some theory, you can be certain that the proof will be correct within that theory. However, if the future shows that the foundation of that theory was wrong, there are always alternative to get on board with.

You can even work with respect to two opposing theories and then produce your work in both versions, which would be the case if you were to work within the systems of both classical and intuitionistic logic.

Whether one methematician chooses to construct natural numbers in set-theoretic terms (zero as the empty set, `{}`, the successor as `S(n) = n U {n}`), and another using lambda calculus (zero as the lack of function application, `λsz.z`, the successor as `λnfx.f(nfx)`), the other mathematicians will happily welcome them both at the next level of abstraction, where natural numbers are concerned as the standalone mathematical objects anyway, abstracted away by removing them from their foundational background.

So, just get to the higher abstraction level somehow and see everyone in agreement once again, at least initially.
