# Functions in set theory

from *Topoi - the Categorial Analysis of Logic* - Robert Goldblatt, 1984


>Functions are sets?

A good illustration of the way in which set theory formalises an intuitive mathematical idea is provided by an examination of the notion of a function.

A function is an association between objects, a correspondence that assigns to a given object one and only one other object. It may be thought of as a rule, or operation, which is applied to something to obtain its associated thing. A useful way of envisaging a function is as an input-output process, a kind of "black box".

For a given input the function produces a uniquely determined output. For example, the instruction "multiply by 6" determines a function which for input 2 gives output 6 × 2 = 12, which associates with the number 1 the number 6, which assigns 24 to 4, and so on.

The inputs are called *arguments* of the function and the outputs *values*, or *images* of the inputs that they are produced by.

If f denotes a function, and x an input, then the corresponding output, the image of x under f, is denoted `f(x)`. The above example may then be displayed as that function f given by the rule f(x) = 6x.

If A is the set of all appropriate inputs to function f (in our example A will include the number 2, but not the Eiffel Tower), and B is a set that includes all the `f`-images of the members of A (and possibly the Eiffel Tower as well), then we say that f is a function from A to B. This is symbolised as `f : A -> B` or `A ⟼ B`. A is called the *domain or source* of f, and B is the *codomain or target*.

How does set theory deal with this notion?

To begin with we introduce the notion of an *ordered pair*, as consisting of two objects with one designated as first, and the other as second. The notation (x, y) is used for the ordered pair having x as first element and y as second. The essential property of this notion is that `(x, y) = (z, w)` if and only if x = z and y = w.

We now define a *binary relation* as being a set whose elements are all ordered pairs. This formalises the intuitive idea of an association referred to earlier. If `R` is a relation (set of ordered pairs) and `(x, y) ∈ R` (sometimes written `xRy`) then we think of x being assigned to y by the association that R represents.

For example the expression "is less than" establishes ail association between numbers and determines the set {(x, y): x is less than y}. Note that the pairs (1, 2) and (1, 3) both belong to this set, i.e. a relation may associate several objects to a given one.

From a function we obtain the relation *fʹ = { (x,y): y is the f-image of x }*

To distinguish those relations that represent functions we have to incorporate the central feature of functions, namely that a given input produces one uniquely corresponding output. This means that each x can be the first element of only one of the ordered pairs in f. That is

      if (x, y) ∈ f and (x, z) ∈ f, then y = z      (*)

This then is our set-theoretical characterisation of a function; as a set of ordered pairs satisfying the condition (*). 

>What happens next is a ploy often used in mathematics - a formal representation becomes an actual definition.

It is quite common, in books at all levels, to find near the beginning a statement to the effect that "a function is a set of ordered pairs such that…".

How successful is this set-theoretical formulation of the function concept?

Technically it works very well and allows an easy development of the theory of functions. But there are a number of rejoinders that can be made on the conceptual level.

Some would say that the set `f` is not a function at all, but is *the graph of the function* `f`. The word of course comes from co-ordinate geometry. If we plot in the plane the points with co-ordinates of the form (x, 6x) we obtain a straight line which is known as the graph of the function f(x)=6x. This usage is carried over to more general contexts, particularly in subjects like topology and analysis, where writers often explicitly distinguish the function from the graph of f as the set `{ (x, f(x)) : x ∈ A }`. Conflation of the two notions can easily lead to confusion.

Another difficulty relates to the notion of codomain.

Given a function f simply as a set of ordered pairs we can readily recover the domain (set of inputs) as the set 

    dom f = { c: for some y, (x, y) ∈ f }

But what about the codomain of f?

Recall that this can be any set that includes all the outputs of f. The outputs themselves form the so-called range or image of f, symbolically

    dom f = { y: for some x, (x, y) ∈ f }

In general, `f` can be called a function from A to B whenever `A = dom f` and `Im f ⊆ B`.

>Thus, a function given simply as a set of ordered pairs does not have a uniquely determined codomain.

This may seem a trifling point, but it leads to an interesting complication with the very important notion of *identity function*.

This function is characterised by the rule `f(x) = x`, i.e. the output assigned to a given input is just that input itself. Each set A has its own identity function, called the identity function on A, denoted `idA`, whose domain is the set `A`. Thus the image of idA is also A, i.e. `idA: A -> A`.

On the set-theoretic account, `idA ={(x, x): x ∈ A }`.

Now if A is a subset of a set B, then the rule `f(x) = x` provides a function from A to B. In this case we talk of the *inclusion function* from A to B. The use of a new word indicates a different intention. It conveys the sense of the function acting to include the elements of A amongst those of B.

>However even though the identity function on A and the inclusion map from A to B are conceptually quite different, as set-theoretical entities they are identical, i.e. exactly the same set of ordered pairs.

One way to cope with this point would be to modify the definition of function in the following way. Firstly, for sets A and B we define the *product set* or Cartesian product of A and B to be the set of all ordered pairs whose first elements are in A and second elements in B. This is denoted `A×B`, and so

    A × B = {(x,y) : x ∈ A and y ∈ B }

A function is now defined as a triple `f = (A, B, R)`, where A×B is a relation from A to B (the graph of f), such that for each x ∈ A there is one and only one y ∈ B for which (x,y) ∈ R. Thus the domain (A) and codomain (B) are incorporated in the definition of a function from the outset.

Although the modified definition does tidy things up a little it still presents a function as being basically a set of some kind - a fixed, static object. It fails to convey the "operational" or "transitional" aspect of the concept.

One talks of "applying" a function to an argument, of a function "acting" on a domain. There is a definite impression of action, even of motion, as evidenced by the use of the arrow symbol, the source-target terminology, and commonly used synonyms for "function" like "transformation" and "mapping".

The impression is analogous to that of a physical force acting on an object to move it somewhere, or replace it by another object. Indeed in geometry, transformations (rotations, reflections, dilations etc.) are functions that quite literally describe motion, while in applied mathematics forces are actually modelled as functions.

This dynamical quality that we have been describing is an essential part of the meaning of the word function as it is used in mathematics. The definition in terms of ordered pairs does not convey this idea.

>It is a formal set-theoretic model of the intuitive idea of a function, a model that captures an aspect of the idea, but not its full significance.
