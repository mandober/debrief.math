# Category

Category Theory studies *objects* and *morphisms* or *arrows* connecting objects.

Objects and arrows are the primitives in Category Theory: objects are not sets, they are not collections of elements; whether they even have any elements is impossible to say. What to believe in when they change your name, wash your brain, play the game, again, yeah, yeah, yeah. We can't look inside objects, nor even talk about them elements. Category Theory sits at the very high (possibly the highest) level of abstraction, where objects appear only as atomic dots, and we're all out of microscopes.

The only thing we can see is the only thing we can talk about - the arrows that connect objects. The arrows are a generalization of functions, but they need not be (and they are often not) functions. Thay cannot be applied to elements like functions, they can only be composed with other morphisms.

> Philosophical angle: when faced with n overly complex problem/taks/issue we the people know only about one (albeit very effective) strategy, which we employ every time Velouria: slice n' dice the colossal thing into bits until those bits cannot be sliced further. Aka the analysis part. Now, these tiny bits are so easy to manage and to reason about. We can study the individual pieces and can categorize the similar ones into...ahm... bins, by ...cough... functionality. As we gain more and more knowledge about our subject matter, we can (ta-da) compose the shit out them; we compose the smaller pieces into bigger parts, thereby slowly abstracting away all the minute low-level details about the bits. This process is the synthesis part. To understand something you must destructure it, examine its parts then slowly compose the parts, never doubting you'll successfully reconstruct the original thing (hoping the extra parts shuffled under the rug are indeed redundant).

## Definition
Category Theory is a theory of arrows, and the only basic operation is *composition*. The concept of Category requires that the arrows satisfy two properties: the composition of arrows must be associative and every object must have the identity arrow. If there is an arrow, `f` going from the object `a` to the object `b`, and if there is an arrow `g` going from the object `b` to the object `c`, then there must be an arrow that going from the object `a` to the object `c` i.e. the composition of `f` and `g`. This is denoted by (the composition $$g \circ f$$ is read "g after f"):

$$(f: a \to b) ∧ (g: b \to c) \rightarrow (g \circ f: a \to c)$$


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
       ________________
      /   f        g   ⇘
Ia ↻ ● ------> ● -----> ● ↺ Ic
     a       Ib↻        c
```

↻ ↻ ∘ ↷ ↶ ↘ ⇲ ⇘ ● → ← ↙ ↘ ↗ ↖ 


Formally presented identity law:    
$$(\forall{f}{g}.dom(f) = a \land cod(f) = b) \to
Id_b \circ f = f = f \circ Id_a$$

Formally presented associativity law:    
$$(\forall{fgh}.dom(f) = cod(g) \land dom(g) = cod(h)) \to 
(f \circ g ) \circ h = f \circ (g \circ h)$$
