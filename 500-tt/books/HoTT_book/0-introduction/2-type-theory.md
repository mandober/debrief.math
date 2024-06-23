# Type theory

HoTT Book > Introduction > Type theory

*Type theory* was originally invented by Bertrand Russell as a solution to avoid the paradoxes in the logical foundations of mathematics that were under investigation at the time.

It was developed further by many people over the next few decades, particularly Church who combined it with his λ-calculus.

Although it is not generally regarded as the foundation for classical mathematics, set theory being more customary, type theory still has numerous applications, especially in computer science and the theory of programming languages.

Per Martin-Lof, among others, has developed a "predicative" modification of *Church's type system*, which is now usually called dependent, constructive, intuitionistic, or simply *Martin-Lof type theory*.

This is the basis of the system that we consider in this book; it was originally intended as a rigorous framework for the formalization of constructive mathematics. In what follows, we will often use "type theory" to refer specifically to this system and similar ones, although type theory as a subject is much broader.

In type theory, unlike set theory, objects are classified using a primitive notion of *type*, similar to data types used in programming languages. These elaborately structured types can be used to express detailed specifications of the objects classified, giving rise to principles of reasoning about these objects.

To take a very simple example, the objects of a product type `A × B` are known to be of the form `(a, b)`, and so one automatically knows how to construct them and how to decompose them. Similarly, an object of function type `A → B` can be acquired from an object of type `B` parametrized by objects of type `A`, and can be evaluated at an argument of type `A`.

This rigidly predictable behavior of all objects (as opposed to set theory's more liberal formation principles, allowing inhomogeneous sets) is one aspect of type theory that has led to its extensive use in verifying the correctness of computer programs.

The clear reasoning principles associated with the construction of types also form the basis of modern computer proof assistants, which are used for formalizing mathematics and verifying the correctness of formalized proofs.

One problem in understanding type theory from a mathematical point of view, however, has always been that the basic concept of type is unlike that of set in ways that have been hard to make precise.

From the perspective of homotopy theory, *types are viewed as spaces* (and not as strange sets). This solves the problem (?) of understanding how the notion of equality of elements of a type differs from that of elements of a set.

>In homotopy theory, one is concerned with spaces and continuous mappings between them, up to homotopy.

A homotopy between a pair of continuous maps 
`f : X → Y` and 
`g : X → Y` 
is a continuous map 
`H : X × [0,1] → Y` 
satisfying 
`H(x,0) = f(x)` and 
`H(x,1) = g(x)`.

The homotopy `H` may be thought of as a *"continuous deformation"* of `f` into `g`.

The spaces `X` and `Y` are said to be homotopy equivalent, `X ≃ Y`, if there are continuous maps going back and forth, the composites of which are homotopical to the respective identity mappings, i.e. if they are isomorphic "up to homotopy".

*Homotopy equivalent spaces* have the same algebraic invariants (e.g. homology, or the fundamental group), and are said to have the same *homotopy type*.
