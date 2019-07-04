# Mathematical Foundations

- Mathematics
  - Pure mathematics
  - Applied mathematics
- Mathematical proof
- Conjecture
- Theory
- Theorem
- Mathematical method
  - Primitives
  - Axioms
  - Inference rules
  - Rigorous argumentation


- math studies quantity, structure, space, change.
- word origin: Greek μάθημα |máthēma| (knowledge, study, learning)
- main branches: pure and applied


## Math development

Mathematics is the science concerned with abstract concepts such as number, structure, space, change. *Pure mathematics* , one of the two main branches of math, deals with these abstract concepts for their own sake (`maths-pur-maths`); the other branch, *applied mathematics*, looks for applications of math to other science.

Mathematicians try to curb complexity of various systems found in the universe, or inspired by them, by focusing on a particular system, then searching for recurring patterns which inspire new *conjectures*, which might lead to the discovery of new knowledge.

*Mathematical proof* is the process used by mathematicians to analyze a conjecture, possibly resolving its truth value through the use of *rigorous argumentation*. Sometimes the effort to resolve conjectures takes years, even centuries; or it happens that the established proof is only later found incorrect. But often the correct proof benefits from the previous attempts. Sometimes the proof is never obtained; many conjectures are still neither proven true nor false. It can also happened that a conjecture is not provable at all, but there are never hints whether that might be the case.

Mathematics has started from counting, calculation and measurement, and further developed as the systematic study of objects from the nature, but then the use of abstractions propelled it into the science of abstract, widening its interest to also include the idealized objects living only in our minds. When mathematical objects and structures are good models of real phenomena, then mathematical reasoning can provide insight or predictions about nature.

*Rigorous argumentation* was championed by ancient Greeks, most notably by Euclid. His book "Elements", from ~300 BCE, featured theorems, of what will later be known as *Euclidean geometry*, that were all deduced from a small set of axioms. Euclid justifies each proposition by a demonstration in the form of chains of syllogisms, showcasing excellence in rigor that set the standard for the future.

> "Elements" is one of the all-time most influential works, having served as the geometry textbook from the time of publication until the early XX century.

Mathematics developed at a relatively slow pace until the Renaissance, when mathematical innovations interacting with new scientific discoveries led to a rapid increase in the rate of mathematical discovery.

Since the pioneering work of Giuseppe Peano (1858–1932), David Hilbert (1862–1943), and others, on *axiomatic systems* in the late 19th century, it has become customary to view **mathematical method** as establishing truth by *rigorous deduction* from appropriately chosen *axioms* and *definitions*.

> *Mathematical method*, championed by the ancient Greeks, is used to discover new truths and logically organize existing body of knowledge through the use of *rigorous deduction* that stems from appropriately chosen *axioms* and *definitions*.

Mathematical method is employed to build theories, using *primitive concepts* and *axioms* as the building blocks, and *rigorous argumentation* for deriving proof.

**Primitive notion** is a given concept, a concept not defined in terms of previously defined concepts, that is to be taken for granted. Frequently, the primitive notions are unavoidable, either because the theory has to start somewhere, lest digress into infinity of definitions, or because a term is not defined (or it is undefinable). Therefore, primitives, like axioms, do not require proof.

**Axioms** are statements taken to be true that serve as starting premises for deriving further arguments. In philosophy, an axiom is a statement that is so evident or well-established that it is accepted without question or controversy.

The initiative to establish the foundations of mathematics came about very late in the course of math development, at the end of the XIX century, when some aspects of math were found to suffer from paradoxes and inconsistencies.

In 1900, at the international conference in Paris, David Hilbert presented a collection of 23 important mathematical problems, later known as **Hilbert's problems**, pushing for their solutions by the end of the XX century. One of the issues was about establishing the foundations of mathematics i.e. coming up with the basic set of axioms from which the whole of math could follow. Hilbert wanted to ground all existing math theories to a finite and complete set of axioms, together with the proof of consistency of these axioms.

The *foundation of a mathematical field* refers to analysis of the most fundamental concepts within a field, an investigation into mean to convert that field into a coherent body of knowledge and integrate it with the rest of the human knowledge.

The **foundation of mathematics** can be regarded as the study of the basic mathematical concepts, especially the fundamental ones that form the language of mathematics, such as formulas, theories, models, definitions, proofs, algorithms, etc.

Hilbert's challenge was in response to the **foundational crisis of mathematics** that emerged at the end of XIX century, as a consequence of discovering inconsistencies and paradoxes in prevailing mathematical theories.


The search for theory that will serve as the foundations of all math settled down during the XX century, putting forward a ZF set theory. Recently, the commotion started again as the *Category theory* began to draw support as the new contender for the title. Still, to this day the winner is undecided (undecidability as leitmotif).



## Informal description
When developing a new theory, you might start by defining a concept that's central to the theory. But then the terms used in the definition also have to be defined. And these terms too, forming an infinite chain. ~~So you keep defining terms until you reach the low-level fabric of the existence, at which point you politely restrain yourself on the account of spacetime a) needed for proper deposition; b) wasted on trivial demonstration; c) discontinuation; a call upon intuitive understanding is presumed to suppress rigorous argumentation when paired with authoritative use of the word "indeed".A solid line of reasoning should form where the higher concepts clearly follow (yes sequitur) from the terms below; sound complete consistent arguments that hold even in reference to the borderline cases from the edges of their domain. History warns the unsoundness of argument may provoke unsoundness of mind. The relief, inspired by the literally device from ancient Greek tragedies, was promptly put to practice - the theorists were granted a spell used to break the chain of infinity!~~


```rust
struct Theory<Axiom> {
  primitives: Vec<Primitive>, // Primitive is undefined
  axioms: Vec<Axiom>,
}

impl RigorousArgumentation for Theory {
  fn rigorous_argumentation(&self) -> Proof<Theory> {
    let theory: Proof<Theory> = inference_rules(self.axioms);
    return theory;
  }
}
```
