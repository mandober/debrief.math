# Foundations of Functional Programming

https://en.wikiversity.org/wiki/Foundations_of_Functional_Programming

This and subsidiary pages, aim to document and discuss the conceptual and mathematical foundations of functional programming language design.

There is a vast body of research on the theory of functional programming languages, but much of this knowledge is only available in the form of academic papers. Here we aim to make this knowledge accessible to programmers without a background in mathematical logic.

These pages assume an acquaintance with FP. The goal is not to explain FP, but to explain its theoretical foundations. It is hoped that this information will be useful to functional programmers who wish to have a deeper understanding of the foundations of their practice, and to people who are considering designing a programming language.

Besides presenting objective information on the foundations of FP, it is also intended that these pages will be a place for fielding arguments for and against various approaches to FP language design.

Presently the focus of these pages is on statically typed, pure FLs. However, contributions on the theoretical foundations of other types of FLs are welcomed.





Choosing a λ-calculus basis for a functional language
- Extending a λ-calculus to a functional language
- Implementation issues

## λ-calculi

A λ-calculus is a simple formal system containing a theory of computable ## functions, and (usually) a theory of types. A λ-calculus can be thought of as 
the formalized core of a functional programming language. Pure functional 
programming languages can usually, without excessive inaccuracy, be thought of as λ-calculi with a lot of added syntactic sugar and additional primitive types.

λ-calculi form a very good framework for studying basic design decisions in functional programming languages, particularly those having to do with type systems. Many difficult and subtle issues arise in designing a complex type system like those found in statically typed functional languages. λ-calculi provide a simplified and clarified framework in which to work out these issues.

A principled way to design a functional language is to choose a λ-calculus, and add syntactic sugar and additional primitives to the λ-calculus until it becomes a usable programming language. By taking this approach, one can ensure the basic mathematical soundness of one's design.

We will use the term "λ-calculus" in a broad sense which includes, for example, Martin-Löf style type theories.

The following pages describe a selection of λ-calculi which the writers judge to be interesting from the point of view of functional language design. It should be emphasized that there are many λ-calculi in existence besides the ones discussed here. Barendregt (1992) is a good, more in depth reference on λ-calculi. Much (though not all) of the material below is intended to be a more accessible exposition of Barendregt.

Untyped λ-calculus
Typed λ-calculi
Implicitly typed λ-calculi
Simply typed λ-calculus
Second-order λ-calculus
Hindley-Milner type theory
The system of intersection types
Explicitly typed λ-calculi
Simply typed λ-calculus
Second-order λ-calculus
The λ-cube
Pure type systems
UTTΣ


The above organization of the space of λ-calculi, into untyped, implicitly typed, and explicitly typed, is due to Barendregt. The basic difference between implicitly and explicitly typed λ-calculi is that in explicitly typed λ-calculi, the arguments to functions have to be annotated with types, whereas in an implicitly typed λ-calculus, the types are inferred.

The division of λ-calculi into implicitly and explicitly typed is a useful one for two reasons. First, the explicitly typed λ-calculi share many technical similarities with each other, and likewise for the implicitly typed λ-calculi. Second, the division is of historical importance; the explicitly typed λ-calculi come from the school of Alonzo Church, and the implicitly typed λ-calculi come from the school of Haskell Curry.

### Comparison of λ-calculi

There are various theoretical desiderata a λ-calculus might or might not satisfy. These desiderata include Turing completeness, the possibility of inferring types, decidability of type checking, and consistency, to name a few. Not all of these desiderata can be satisfied at the same time. The article linked above contains a table comparing λ-calculi according to various properties they can have, with explanations of these properties.

## The Curry-Howard correspondence

One important insight about type theory, which has ramifications for software engineering, is that there is a correspondence between propositions and types. This correspondence is called the Curry-Howard correspondence. With simpler type theories, the correspondence has no great implications for software engineering; it is more or less a mathematical curiosity. In dependent type theories, it becomes a very important point. The reason is that in dependent type theories, it is possible to express types which correspond to arbitrary propositions about one's program.

Under the Curry-Howard correspondence, producing an object of a given type amounts to giving a proof of the proposition to which the type corresponds. Therefore, in a dependently typed language, one can prove arbitrary propositions about one's program by writing types which express the propositions, and constructing objects (proofs) which inhabit the types. Therefore, dependently typed languages are automatically also proof systems, and they can (at least in principle) be used to increase the reliability of programs by proving that the programs are correct.

The Curry-Howard correspondence gives rise to various design considerations for functional languages. Many functional languages, including Haskell and Idris, have inconsistent type systems, meaning that in these languages every type is inhabited, or by the Curry-Howard correspondence, every proposition is provable (including false propositions).

There is an obvious reason to think that having an inconsistent type system is a bad thing. However, it is not always obviously a problem. In the case of Haskell, the type system is too simple to express complicated propositions, and so the Curry-Howard correspondence is arguably not very important for Haskell. In the case of Idris, the inconsistency of the type system is a deliberate feature; Idris includes a built-in function believe_me : a -> b, which can be used to subvert the type system (and to prove arbitrary propositions), because this is sometimes useful or necessary.

These preliminary comments are only meant to indicate that it is a complex question whether one should require a consistent type system. The issue will be discussed in more detail in the main article.

## Choosing λ-calculus basis for a FL

This section lists articles which will discuss considerations bearing on the question of what λ-calculus one should choose as a basis for a functional language. These articles may represent the views of their authors.

- Evaluation strategy. Discusses the pros and cons of different evaluation strategies (primarily, eager and lazy).
- Pros and cons of dependent types. Discusses the relative merits of dependent type theories and non-dependent polymorphic type theories.
- Explicit versus implicit types.

## Extending a λ-calculus to a FL

This section discusses aspects of the problem of extending a base λ-calculus to create a complete design for a functional language.

Various FPL features are discussed to see how they can be understood as extensions of a base λ-calculus.
- let bindings
- algebraic data types (ADT)
- generalized algebraic data types (GADT)
- pattern matching
- implicit arguments
- type classes
- effect system
