section    : math
subsection : Type Theory
title      : Simple Type Theory
filename   : simple-type-theory.md
parent     : 90-type-theory
path       : 90-type-theory/simple-type-theory.md
link       : [Simple Type Theory](90-type-theory/simple-type-theory.md)

---

# Simple Type Theory

In 1920s, Chwistek and Ramsey noticed that, if one is willing to give up the vicious circle principle, the hierarchy of levels of types in the RTT can be collapsed. 

The **vicious circle principle** states that no object or property may be introduced by a definition that depends on that object or property itself.

This resulted in the theory of simple types, commonly called, simple type theory (STT). In 1940 Alonzo Church reformulated it as **simply typed lambda calculus**.

The adjective "simple" in STT doesn't mean the theory is simple, but restricted: types of different orders are not allowed to mix. Mixed types, such as classes containing individuals and classes as elements, and also transfinite types, such as the class of all classes of finite types, are excluded.

In 1944, in his book _Russell's mathematical logic_, Kurt Gödel mentioned the STT writing that it does avoid all known paradoxes thus enabling the derivation of all mathematics, but that it needs further development and elucidation.


---

in 1967, de Bruijn created the **Automath type theory** as a mathematical foundation for the Automath system which could verify the correctness of proofs. It allowed expressing complete mathematical theories in such a way that an included automated proof checker can verify their correctness. The system developed and added features over time as type theory developed.

In 1972, Per Martin-Löf founded a type theory that corresponded to predicate logic by introducing dependent types, which became known as **intuitionistic type theory** (ITT) or **Martin-Löf type theory** (MTT). One of its key features is that it unifies set theory and logic.

In 1991, Barendregt introduced the **lambda cube**, which wasn't a type theory but a categorization of existing type theories. The eight corners of the cube included some existing theories with simply typed lambda calculus at the lowest corner and the calculus of constructions at the highest.

In 2006, Awodey and Warren, and Voevodsky, discovered that intuitionistic type theory has homotopical models which led to the development of **category type theory**.
