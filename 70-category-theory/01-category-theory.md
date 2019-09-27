# Category

Category Theory studies mathematical **objects** and **morphisms**, also called **arrows**, connecting the objects. Objects and arrows are the primitives in category theory.

Objects are not sets, they're not collections of elements, so we can't examine their contents nor refer to their (possible) elements directly. Category Theory sits at the very high level of abstraction, where objects appear (the same way as they are usually drawn) as tiny atomic dots, and we're all out of microscopes.

The only thing we can see and refer to are the arrows connecting the objects. Arrows are a generalization of functions and they can only be composed with other arrows.

A **category** consists of objects and arrows; arrows' composition is associative and every object must have an identity arrow that is the identity element of arrow composition.


## Analysis and synthesis

When faced with an overly complex problem people almost exclusively rely on "divide and conquer" strategy. That is, partitioning the big problem into smaller ones, solving the smaller problems, then combining the solutions into the overall solution. If there's one thing we're famous for in the chordata phylum, it's analysis followed by synthesis.
``
The smaller problems are easier to manage and reason about. We can study the individual pieces and categorize them by functionality. When we gain sufficient knowledge about them, we can start combining them. We gradually progress as we compose the smaller pieces into bigger ones. This marks the synthesis part. Acquiring more confidence, we can gradually start abstracting away the myriad of details about the smaller pieces, in order to focus to the bigger compositions.

To understand something, we first destructure it (via a model), examine all the constituent parts, then compose it back together, trying to reconstruct it as close to the original as possible.


## Definition

Category Theory is a theory of arrows (connecting the objects) and the only basic operation is composition.

The concept of Category requires the arrows satisfy two axioms:
1. associativity: composition of arrows is associative
2. identity: every object has the identity arrow (which is unique)

Associativity imposes that if there is an arrow $$f:A\to B$$ and an arrow $$g:B\to C$$, then *there must be an arrow* $$h:A\to C$$ i.e. the composition of $$g$$ and $$f$$, denoted by $$g\circ f$$ ("g after f").

Denotation: $$(f:a\to b)\land (g:b\to c)\to (g\circ f: a \to c)$$



Formal definition: a category $$C$$ is
- a collection $$ObC$$ of objects, which are denoted by $$a,b,\dots,A,B,\dots$$
- a collection $$MorC$$ of arrows denoted by $$f,g,\dots$$
- two operations $$dom$$ and $$cod$$ assigning to each arrow $$f$$ two objects respectively called *source* or *domain* (beginning of an arrow), and *target* or *codomain* (receives the business end of an arrow) of $$f$$
- an operation $$id$$ assigning to each object $$b$$ the identity morphism $$Id_b$$, such that $$dom(Id_b) = cod(Id_b) = b$$
- the composition operation assigning to each pair of arrows, $$f, g$$, such that $$dom(f) = cod(g)$$, an arrow $$f \circ g$$ such that $$dom(f \circ g) = dom(g) \land cod(f \circ g) = cod(f)$$. Informally: wherever there's anobject at which one arrow ends and another begins, there must be a third arrow which is a composition of these two (see associativity).
- identity law:    $$Id_b \circ f = f = f \circ Id_a$$
- associative law: $$(f \circ g ) \circ h = f \circ (g \circ h)$$

```
            g ∘ f
       _________________
      /   f        g    ↘
Ia ↻ ● ------→ ● ------→ ● ↺ Ic
     a       Ib↻        c
```


↻ ↻ ∘ ↷ ↶ ↘ ⇲ ⇘ ● → ← ↙ ↘ ↗ ↖ 


Formally presented identity law:    
$$(\forall{f}{g}.dom(f) = a \land cod(f) = b) \to
Id_b \circ f = f = f \circ Id_a$$

Formally presented associativity law:    
$$(\forall{fgh}.dom(f) = cod(g) \land dom(g) = cod(h)) \to 
(f \circ g ) \circ h = f \circ (g \circ h)$$
