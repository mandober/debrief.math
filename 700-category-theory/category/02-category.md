# Category Theory


## Category Theory

Category Theory studies mathematical objects and morphisms that connect them.

Objects and arrows are the primitives in category theory.

The standard example of a category is the category of sets and functions, denoted by $$\textbf{Set}$$. Categories may be considered as a generalization of sets and functions, where sets are abstracted into objects, functions into arrows. However, the objects in a category are not sets, they are opaque objects, we can't examine them directly, only indirectly through relations an object has with other objects.

These relations are represented by arrows. To probe an object for a structure, we can map into another object, using the structure-preserving mappings. It turns out we can infer a lot about objects this way.

## Category

A **category** is a collection of objects and arrows, where each object has the identity arrow and the composition of arrows is associative.

Category theory is about composing arrows. However, not any pair of arrows is composable; to qualify, the target object of one arrow must be the same as the source object of another.

The composition of arrows must be associative and every object must have a unique identity arrow that is the identity element of composition.

The concept of Category requires the arrows satisfy 2 axioms:
1. associativity: composition of arrows is associative
2. identity: every object has the identity arrow (which is unique)

**Associativity** imposes that if there is an arrow $$f:A\to B$$ and an arrow $$g:B\to C$$, then there **must be** an arrow $$h:A\to C$$ i.e. the composition of $$g$$ and $$f$$, denoted by $$g\circ f$$ ("g after f"):

$$(f:a\to b)\land (g:b\to c)\to (g\circ f: a \to c)$$

```
             g ∘ f
      ;---→---------→----;
      ↑   f    B    g    ↓
Ia ↻ ● ------→ ● ------→ ● ↺ Ic
     A       Ib↻        C
```


## Formal definition

A category $$C$$ is
- a collection $$ObC$$ of objects, which are denoted by $$a,b,\dots,A,B,\dots$$
- a collection $$MorC$$ of arrows denoted by $$f,g,\dots$$
- two operations $$dom$$ and $$cod$$ assigning to each arrow $$f$$ two objects respectively called *source* or *domain* (beginning of an arrow), and *target* or *codomain* (receives the business end of an arrow) of $$f$$
- an operation $$id$$ assigning to each object $$b$$ the identity morphism $$Id_b$$, such that $$dom(Id_b) = cod(Id_b) = b$$
- the composition operation assigning to each pair of arrows, $$f, g$$, such that $$dom(f) = cod(g)$$, an arrow $$f \circ g$$ such that $$dom(f \circ g) = dom(g) \land cod(f \circ g) = cod(f)$$. Informally: wherever there's anobject at which one arrow ends and another begins, there must be a third arrow which is a composition of these two (see associativity).
- identity law:    $$Id_b \circ f = f = f \circ Id_a$$
- associative law: $$(f \circ g ) \circ h = f \circ (g \circ h)$$


The axiom of identity:    
$$(\forall{f}{g}.dom(f) = a \land cod(f) = b) \to
Id_b \circ f = f = f \circ Id_a$$

The axiom of associativity:    
$$(\forall{fgh}.dom(f) = cod(g) \land dom(g) = cod(h)) \to 
(f \circ g ) \circ h = f \circ (g \circ h)$$



## Morphism

**Mathematical structure** on a set is an additional object that attaches or relates to that set, endowing it with some extra meaning. Relations that preserve the structure, do so by mapping structures in the domain to the equivalent structures in the codomain:
- **homomorphisms** preserve algebraic structures
- **homeomorphisms** preserve topological structures
- **diffeomorphisms** preserve differential structures

Samuel Eilenberg and Saunders Mac Lane introduced the concepts of categories in 1940's in their study of algebraic topology, with the goal of understanding the processes that preserve mathematical structure.

Category theory formalizes mathematical structure in terms of a labeled directed graph called a **category** whose vertices are called **objects** and whose edges are called **morphisms** or **arrows**.

Category (labeled directed graph):
1. objects (vertices)
2. morphisms (edges)


[![text][pic]][link]

[link]: https://www.wikiwand.com/en/Category_theory
[pic]: https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Commutative_diagram_for_morphism.svg/320px-Commutative_diagram_for_morphism.svg.png "A category with objects X,Y,Z and morphisms f, g, g∘f"

A **morphism** is a structure-preserving map from one mathematical structure to another one of the same type.

Morphisms:
- set theory: morphisms are functions
- linear algebra: morphisms are linear transformations
- group theory: morphisms are group homomorphisms
- topology: morphisms are continuous functions
- etc.

In category theory, morphism is an abstract idea: mathematical objects need not be sets and the relationship between them may be more general than a mapping relation - but it still has to behave similarly to maps, for instance, function composition must be associative.

The study of morphisms and the objects over which they are defined is central to category theory.

Much of the terminology of morphisms, as well as the intuition underlying them, comes from concrete categories, where the objects are simply sets with some additional structure, and morphisms are structure-preserving functions.
