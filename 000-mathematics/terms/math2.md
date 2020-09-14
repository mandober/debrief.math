

Abstraction is the process of extracting the essence from a concept, removing its material world dependences, then generalizing it softly until it bleeds utility.


Mathematicians investigate *mathematical concepts* trying to formulate *conjectures* and establish their truth by *rigorous deduction* from a set of fundamental *axioms* and previously defined *theorems* within a certain *formal system*.

**Logical reasoning** guides us in understanding and constructing proofs, it helpes us reason about formal *mathematical objects* (numbers, lists, trees, formulas, etc.).


## What is math

https://infinityplusonemath.wordpress.com/2017/06/17/what-is-math/

The goal of science is to understand *what is*, by describing and understanding the universe. Mathematics, on the other hand, seeks to understand *what must be*. The basis for deciding what must be are the definitions and axioms.

**Definitions** describe the things we talk about. For instance, a straight line (versus a curved one) might be defined as "a line which lies evenly with the points on itself", as in Euclid.

**Axioms** describe what we can do with the things we've defined. These tend to be very basic, "obvious" things. For example, the axiom of symmetry says that "If A=B, then B=A". In this example, you could see the axiom as something you can do ("You can switch the sides of an equation") or as defining what two things being equal really means. On top of this foundation, mathematics is built with logic. Given the definitions and axioms, certain conclusions follow as inescapable consequences. These conclusions we call *theorems*.

Mathematics is not static, and the axioms and definitions we use are not discovered (as in they were here all along waiting to be revealed) but invented. As we seek deeper understanding, we often come to a point where we realize our earlier understanding was incomplete or even incorrect, and we seek to fix the foundations. This has occurred over and over again in the history of mathematics.

Mathematics is a quest for understanding what must be, but the very concepts we try to understand are not set in stone. The objects of mathematics are defined by people, and as we understand them better, the definitions and axioms we base our understanding on change.

## Where do axioms come from?
https://infinityplusonemath.wordpress.com/2017/06/21/where-do-axioms-come-from/

Math is a quest of understanding what must be. The basis for this quest are the axioms and definitions of mathematics. Definitions describe what we are talking about, while axioms describe what we assume those objects can do.

Another way that definitions are invented is when mathematicians want to generalize an idea to a more general situation. Another way to say this is that mathematicians are trying to somehow identify the intrinsic something of an idea. This is a major theme of modern mathematics. "What does it mean to be a shape?", "What does it mean to multiply things?". These two questions lead to the complete reformulations of branches of mathematics.

Until Bernhard Riemann, a shape was always visualized in the plane or in space (or perhaps a higher dimensional $$\mathbb{R}^n$$). Pondering the question of what makes a shape a shape, Riemann concluded that the essential property of shapes is that, at any point of the shape, one can travel in a certain number of directions. The usual visualization of shapes in space was a crutch that distracted us from the intrinsic properties of that shape. These "many-fold quantities", as Riemann called them, or *manifolds*, as we call them now, have become the basis for geometry.

By generalizing multiplication, group theory in abstract algebra emerged. A group is a collection of things you can multiply. It's immaterial whether these things are matrices, functions, numbers, shapes, symmetries, etc.; as long as they follow the group axioms, you will know how to multiply them.

These kinds of generalization often seem to further complicate something that is already complex. But abstracting away the details and focusing on the core ideas turns out to be very valuable. First, sometimes it makes it easier to prove results you care about. Second, by unifying very disparate ideas (such as matrix multiplication and rotations and normal multiplication), if you can prove a theorem about groups in general, than it applies to all of these very different situations.


## The system of logic

Mathematical proofs are not eternal, existing independently of any other concept, shape or form. A proof is a logical consequence of a specific theory that was developed in a certain formal system of logic. The theory and the proofs derived are valid only with regards to some logic system.

For example, the *classical logic* is a formal logic system that has two truth values (`true` and `false`) and it holds that a proposition is either true or false, not both and not neither.

This and other behaviours are enforced by the axioms, one of which, called *the law of excluded middle*, states that either a proposition is true, or that its negation is true. Another axioms, called *the principle of double negation*, states that if a statement is true, then it is not the case that the statement is not true.

On the other hand, the *intuitionistic logic*, which is also a mainstream system of logic, doesn't accept neither of these two axioms that are fundamental in the classic logic.


## Sand castle

Modern mathematics has the set-theoretic foundation (concretely ZF set theory), meaning the whole of mathematics could be derived from the set theory.

In fact, it would be better to say that the mainstream mathematics is based on set theory because majority of mathematicians today agree with that. However, there are other groups of mathematicians that have different views.

Recently the *category theory* has gained enough momentum to present itself as the alternative candidate for the foundations of mathematics. With the introduction of sets and soon after the related paradoxes, the type theory has started development, which makes another alternative for the foundations of math. The foundations of mathematics based on functions (lambda calculus and combinatory SK calculus) have been, and still are, investigated for this role as well.

The foundation of mathematics itself also became the mathematical discipline to encompass the effort of searching for mathematical foundations. However, it came about late in the history of mathematics, when many mathematical disciplines were already formed.

Namely, in the XIX century, after many surprises that questioned stability of mathematics, German mathematician David Hilbert has set forward the motion for *axiomatization of mathematics*.

The goal was to put the entirety of math on a solid cornerstone upon which the rest of mathematics could be build by devising a strong theory with a carefully chosen set of *axioms*.

Any *mathematical theory* consists of a set of *mathematical axioms*, given without the proof. Besides the axioms, *mathematical primitives* are similarly privileged, require no proof as well.

A theory may start its development with a mathemtical primitive as its most central concept, with axioms describing its behavior (primitive as the central entity whose behavior is described by the axioms). Alternatively, a primitive itself may be introduced into a theory as one of the axioms.

The fact that primitives and axioms require no proof has to do with infinite regression (also nicknamed vicious circle). Any theory has to start somewhere, it introduces some concept, some term that wasn't previously defined. If it were to define that term, then all the terms used in a definition would aslo require a definition of their own. And so on and on, ad nauseam. This is the vicious circle of regression that would prevent any theory to even begin.

Therefore, it is allowed to "make a cut" and arbitrarily choose the starting concept for a theory. That concept is usually the most fundamental concept of the theory, either introduced as a primitive or explicitly given as an axiom. Then, a minimal set of axioms (*compactness*) is chosen in such a way that it prohibits deriving contradictory statements within this system (*consistency*). Also the axioms should allow deriving all the true statements within the system (*completeness*). No axiom should be chosen if it can be derived from other axioms.

One can choose to construct the new set theory, adding an axiom as a fix for every encountered problem.



## The higher ground

Even if the foundation of mathematics is not unanimously agreed upon, there's no time to waste waiting for the consensus, so mathematicians proceed exploring their fields of interest anyway, forming new theories and deriving new proofs from them. This means that the proofs depend on the theory and if you accept the foundation of some theory, you can be certain that the proof will be correct within that theory. However, if the future shows that the foundation of that theory was wrong, there are always alternative to get on board with.

You can even work with respect to two opposing theories and then produce your work in both versions, which would be the case if you were to work within the systems of both classical and intuitionistic logic.

Whether one mathematician chooses to construct natural numbers in set-theoretic terms (zero as the empty set, `{}`, the successor as `S(n) = n U {n}`), and another using lambda calculus (zero as the lack of function application, `λsz.z`, the successor as `λnfx.f(nfx)`), the other mathematicians will happily welcome them both at the next level of abstraction, where natural numbers are concerned as the standalone mathematical objects anyway, abstracted away by removing them from their foundational background.

So, just get to the higher abstraction level somehow and see everyone in agreement once again, at least initially.



---------


Mathematicians seek and use patterns to formulate new *conjectures*; they resolve the truth or falsity of conjectures by *mathematical proof*.

When mathematical structures are good models of real phenomena, then *mathematical reasoning* can provide insight or predictions about nature.

Through the use of *abstraction* and *logic*, mathematics developed from *counting*, *calculation*, *measurement*, and the systematic study of the *shapes* and *motions* of physical objects.

*Practical mathematics* has been a human activity from as far back as written records exist.

The research required to solve *mathematical problems* can take years or even centuries of sustained inquiry.

*Rigorous arguments* first appeared in Greek mathematics, most notably in *Euclid's Elements*.

Since the pioneering work of *Giuseppe Peano* (1858–1932), *David Hilbert* (1862–1943), and others on *axiomatic systems* in the late 19th century, it has become customary to view *mathematical research* as establishing truth by *rigorous deduction* from appropriately chosen *axioms* and *definitions*.

Mathematics developed at a relatively slow pace until the Renaissance, when mathematical innovations interacting with new scientific discoveries led to a rapid increase in the rate of mathematical discovery that has continued to the present day.

Mathematics is essential in many fields, including natural science, engineering, medicine, finance, and the social sciences.

*Applied mathematics* has led to entirely new mathematical disciplines, such as *statistics* and *game theory*. Mathematicians engage in *pure mathematics* without having any application in mind, but practical applications for what began as pure mathematics are often discovered later.

---

Many areas of mathematics began with the study of real world problems, before the underlying rules and concepts were identified and defined as *abstract structures*.

For example, geometry has its origins in the calculation of distances and areas in the real world; algebra started with methods of solving problems in arithmetic.

# Nature of mathematics

Definitions of mathematics – Mathematics has no generally accepted definition. Different schools of thought, particularly in philosophy, have put forth radically different definitions, all of which are controversial.
Philosophy of mathematics – its aim is to provide an account of the nature and methodology of mathematics and to understand the place of mathematics in people's lives.

https://en.wikipedia.org/wiki/Definitions_of_mathematics
https://en.wikipedia.org/wiki/Philosophy_of_mathematics


## What is Mathematics

Mathematics is an academic discipline – branch of knowledge that is taught at all levels of education and researched typically at the college or university level. Disciplines are defined (in part), and recognized by the academic journals in which research is published, and the learned societies and academic departments or faculties to which their practitioners belong.
a formal science – branch of knowledge concerned with the properties of formal systems based on definitions and rules of inference. Unlike other sciences, the formal sciences are not concerned with the validity of theories based on observations in the physical world.
