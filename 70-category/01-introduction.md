# Introduction to Category Theory

Category theory is the source of new programming ideas, particularly well exploited by Haskell as the most prominent among the languages to recognize the importance and practicality of concepts therein.

Concepts that originated in category theory include functors, applicatives, monads, as well as many prefixed constructs like comonads, bifunctors, etc.

These concepts have endowed the language with new capabilities, such as the ability to abstract over a certain behavior or computation.

The category theory shifts the focuses from idiosyncratic properties and implementation details (including their elements) of structures, to the relations between them. This should be familiar and interesting to programmers, particularly because it's the kind of structure that's composable. And having composable elements are what the programming is all about.

The importance of composability doesn't only concern programmers, but people in general. It's a property we find essential in face of complexity, because, Teslas aside, we cannot intuitively grasp a very complex entity/concept in a comprehensive all-encompassing manner. Fortunatelly, equipped with the latest evolutionary upgrade, the mind with abstract thought support, we came up with a cunning strategy, for which we're infamous across the chordata phylum, codename "divide and conquer".

It's analysis followed by synthesis that gives us means to tackle some very complex problems. The analysis part is partitioning a huge problem into a bunch of smaller ones, until they are sufficiently small we can reason about them easily. Once we form a solid body of knowledge, we can start composing the smaller parts into bigger and bigger structures, working our way toward unifying solutions to the smaller problems, into the overall solution. Eventually, composing a single theory of everything.

> To understand something complex, destructure it to study its constituting parts, then compose them back together. (pro tip: animate with electricity)   
-- Victor F.


In category theory, the concept of an element, or a point, generalizes the more usual set theoretic concept of an element of a set to an object of any category. This idea often allows restating of definitions or properties of morphisms (such as monomorphism or product) given by a universal property in more familiar terms, by stating their relation to elements. Some very general theorems, such as Yoneda's lemma and the Mitchell embedding theorem, are of great utility for this, by allowing one to work in a context where these translations are valid. This approach to category theory, in particular the use of the Yoneda lemma in this way, is due to Grothendieck, and is often called the method of the functor of points.
