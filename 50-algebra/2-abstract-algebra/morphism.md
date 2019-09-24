# Morphism

https://en.wikipedia.org/wiki/Morphism

> A morphism is a structure-preserving map between two mathematical structures of the same type.

Morphisms appear in many parts of math under different names:

area           | morphism
---------------|-----------------------
set theory     | functions (relations)
group theory   | group homomorphisms
topology       | continuous functions
linear algebra | linear transformations


## Morphisms in category theory

In category theory, morphism is a similar but more broad idea:    
the objects need not be sets and the relations need not be maps,    
although the morphisms, representing relations between objects,   
still have to behave similarly to maps as they have to be associative    
(composition of functions is associative).

In category theory, a morphism is an abstraction of a homomorphism. The study of morphisms and of the structures (called "objects") over which they are defined is central to category theory. Much of the terminology of morphisms, as well as the intuition underlying them, comes from concrete categories, where the objects are simply sets with some additional structure, and morphisms are structure-preserving functions. In category theory, morphisms are also called *arrows*.


## Classification of morphisms

Morphism or arrow is a structure-preserving mapping between mathematical objects/structures. The only objects available in category theory are mathematical structures and the morphisms between them. Moreover, mathematical  structures are completely abstract, usually represented with a mere dot; so, if math structures are sets, we can't refer to their elements, we can only ever refer to the arrows. Involved objects are exclusively defined in terms of arrows. (A/N surely the turn will reveal they're not as hopeless as the setup suggests, but, by god, what will prestige lay on our mortal souls? So anxious to find out).


## Homomorphism
is a structure-preserving map between two algebraic structures of the same type.
(same def as morphism?)

## Isomorphism
Isomorphism is a mapping that can be reversed by an inverse morphism. 
Two mathematical objects are isomorphic if an isomorphism exists between them.

## Automorphism
is an isomorphism whose source and target coincide. Automorphism is an isomorphism from a mathematical object to itself. It is, in some sense, a symmetry of the object, and a way of mapping the object to itself while preserving all of its structure. The set of all automorphisms of an object forms a group, called the automorphism group. It is, loosely speaking, the symmetry group of the object.


## Epimorphism
a morphism `f: X → Y` is called an epimorphism: 
if `g1 ∘ f = g2 ∘ f` implies `g1 = g2`, 
for all morphisms `g1, g2: Y → Z`. 
Epi for short, epic as an adjective.

$$f:X\to Y,\ g_i: Y\to Z, \quad (f \circ g_1 = f \circ g_2) \to (g_1=g_2)$$

```
     f       f             f : X → Y
Y ←----- X -----→ Y
|                 |
|g1             g2|    g1,g2 : Y → Z
↓                 ↓
Z -----→ X ←----- Z
    h1        h2       h1,h2 : Z → X
```


## Monomorphism
a morphism `f: X → Y` is called a monomorphism: 
if `f ∘ h1 = f ∘ h2` implies `h1 = h2` 
for all morphisms `h1, h2: Z → X`. 
Mono for short, monic as an adjective.

$$f:X\to Y,\ h_i: Z\to X, \quad (f \circ h_1 = f \circ h_2) \to (h_1=h_2)$$

In the context of abstract algebra or universal algebra, a monomorphism is an injective homomorphism. A monomorphism from X to Y is often denoted with the notation X ↪ Y.

In the more general setting of category theory, a monomorphism (also called a monic morphism or a mono) is a left-cancellative morphism. That is, an arrow f : X → Y such that for all objects Z and all morphisms g1, g2: Z → X,

{\displaystyle f\circ g_{1}=f\circ g_{2}\implies g_{1}=g_{2}.}{\displaystyle f\circ g_{1}=f\circ g_{2}\implies g_{1}=g_{2}.}
Monomorphisms are a categorical generalization of injective functions (also called "one-to-one functions"); in some categories the notions coincide, but monomorphisms are more general, as in the examples below.

The categorical dual of a monomorphism is an epimorphism, i.e. a monomorphism in a category C is an epimorphism in the dual category Cop. Every section is a monomorphism, and every retraction is an epimorphism.


## Diffeomorphism
Diffeomorphism is an isomorphism of smooth manifolds. It is an invertible function that maps one differentiable manifold to another such that both the function and its inverse are smooth.
