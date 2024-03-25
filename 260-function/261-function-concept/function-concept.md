# The function concept

https://en.wikipedia.org/wiki/History_of_the_function_concept

https://encyclopediaofmath.org/index.php?title=Function
https://en.wikipedia.org/wiki/List_of_types_of_functions
https://en.wikipedia.org/wiki/List_of_types_of_sets
https://en.wikipedia.org/wiki/List_of_set_identities_and_relations
https://en.wikipedia.org/wiki/Elementary_function
https://en.wikipedia.org/wiki/Implicit_function
https://en.wikipedia.org/wiki/Simple_function


* History of the function concept - Wikipedia
https://en.wikipedia.org/wiki/History_of_the_function_concept

* List of set identities and relations - Wikipedia
https://en.wikipedia.org/wiki/List_of_set_identities_and_relations

* Alternativity - Wikipedia
https://en.wikipedia.org/wiki/Alternativity#left_alternative

* Jordan algebra - Wikipedia
https://en.wikipedia.org/wiki/Jordan_algebra#Jordan_identity

* Quasi-commutative property - Wikipedia
https://en.wikipedia.org/wiki/Quasi-commutative_property

* Saturated set - Wikipedia
https://en.wikipedia.org/wiki/Saturated_set

* Restriction (mathematics) - Wikipedia
https://en.wikipedia.org/wiki/Restriction_(mathematics)



https://en.wikipedia.org/wiki/Closed-form_expression

Starting in the 1660s, Isaac Newton and Gottfried Wilhelm Leibniz independently developed the infinitesimal calculus, which essentially consists of studying how an infinitesimal variation of a variable quantity induces a corresponding variation of another quantity which is a function of the first variable. Almost a century later, Leonhard Euler fixed the terminology of infinitesimal calculus, and introduced the notation y = f(x) for a function f, its variable x and its value y. Until the end of the 19th century, the word variable referred almost exclusively to the arguments and the values of functions.


https://en.wikipedia.org/wiki/Variable_(mathematics)

Other specific names for variables are:

- An *unknown* is a variable in an equation which has to be solved for.
- An *indeterminate* is a symbol, commonly called variable, that appears in a polynomial or a formal power series. Formally speaking, an indeterminate is not a variable, but a constant in the polynomial ring or the ring of formal power series. However, because of the strong relationship between polynomials or power series and the functions that they define, many authors consider indeterminates as a special kind of variables.
- A *parameter* is a quantity (usually a number) which is a part of the input of a problem, and remains constant during the whole solution of this problem. For example, in mechanics the mass and the size of a solid body are parameters for the study of its movement. In computer science, parameter has a different meaning and denotes an argument of a function.
- *Free variables* and *bound variables*

All these denominations of variables are of semantic nature, and the way of computing with them (syntax) is the same for all.

---

A function usually consists of the type declaration (type signature) and the definition (the actual implementation), so, for example, an identity function looks like

```js
f : A -> B
f(x) = x
```

In mathematics, the notion of function may be defined set-theoretically as a set, **function-as-set**; that is, as a set of ordered pairs. This set of ordered pairs is known as the *graph of a function*.

An ordered pair, `(a, b)`, consists of an input element `a` from domain `A`, and an associated element `b`, as output, from codomain `B`.

This allows the set of ordered pairs to be represented as a table, **function-as-table**. Under this interpretation, any table of input and output values is a function, which allows representing functions that have no specific rule about how an input value is transformed into an output value.

When a function operates over numerical values, an ordered pair may be understood as a point in a coordinate plane, so a function's graph may be plotted as a proper graph, **function-as-graph**.




Function may also be defined in terms of a rule, **function-as-rule**, that maps the elements of a domain to elements of a codomain.



A function is …
- a set
- a set of ordered pairs
- a specialized relation
- restricted association between sets

A function may be interpreted …
- a set
- a set of ordered pairs
- a set of associations between sets
- black box
- calculation rule
- computation rule
- expression of dependence between two quantities


## Functions as relations

A functions is a *set*, and a *set of ordered pairs* at that, and in this regard functions are the similar to relation. In fact, *all functions are relations*, although relations with some restrictions.

A relation is fully specified only as a triple `(D, G, C)`, where `D` is the domain set, `C` a codomain set, and `G` is a relation's graph, i.e. the set of ordered pairs that express the associations of elements in `D` to elements in `C`.

To be able to discover all the properties a relation may possess, all 3 components of the tuple `(D, G, C)` must be specified, i.e. domain, codomain, and graph. However, many properties are discoverable from partial specifications. In that regard, we may classify the discoverable properties as:
- fully-dependent on the complete spec of a relation, `(D, G, C)`
- semi-dependent, allowing the codomain to be left out, `(D, G)`
- independent from the domain and codomain set, only needing the graph `G`

Functions, being specialized relations, have the same dependence on the specification as well.



There are relational properties that simply cannot be determined from the graph `G` alone, but require the knowledge of both domain and codomain sets. Other properties can be dermined from knowing only the graph and the domain of a relation. And there are properties that can be inferred from a relation's graph alone.



Actually, just like not every relation can be represented by it graph only




## Functions as

- a set of ordered pairs `(x, f(x))` where `x` is its input, `f(x)` its output.


- defined by the graph plotted by the set of ordered pairs.

- A function expresses dependence between two quantities.
- A function is a black box that given some input produces some output.
- A function is a computation rule that given some input calculates the output


- A function is a mapping that associates input to output values.
- A function is a finite table of mappings.
- Functions are specializations of relations.


* The concept of function originated in mathematics, but with invention of computers it has quickly spread across computer science, where it took a meaning of its own, often different from a mathematical function. Functions have especially proliferated across many different programming languages, more or less diverging from the pure form of mathematical functions.

* A function expresses dependence between two quantities: one given (independent
variable), the other produced (dependent variable).




* In general, an arbitrary function is denoted by `ƒ(x) = y`, where `ƒ` or `f` stands for the function's name, while `x` and `y` represent some arbitrary input and output value, respectively.


* The interpretation of functions as black boxes is often present in CS, where it models the idea that the concrete implementation of a function should not be ragarded, with only the output it produces given a particular input being important.

Functions were originally the idealization of how a varying quantity depends on another quantity. For example, the position of a planet is a function of time.

A function is uniquely represented by the set of all pairs (x, f (x)), called the graph of the function.

This definition of "graph" refers to a set of pairs of objects. Graphs, in the sense of diagrams, are most applicable to functions from the real numbers to themselves. All functions can be described by sets of pairs but it may not be practical to construct a diagram for functions between other sets (such as sets of matrices).

When the domain and the codomain are sets of real numbers, each such pair may be thought of as the Cartesian coordinates of a point in the plane. The set of these points is called the graph of the function; it is a popular means of illustrating the function.

Functions are widely used in science, and in most fields of mathematics. It has been said that functions are "the central objects of investigation" in most fields of mathematics.

the general idea of a function

Sometimes a function has no name, and we see something like:

y = x2

But there is still:

an input (x)
a relationship (squaring)
and an output (y)
