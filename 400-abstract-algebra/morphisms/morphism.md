# Morphism

https://en.wikipedia.org/wiki/Morphism

> A morphism, or arrow, is a structure-preserving mapping between mathematical structures (objects) of the same type.

Category theory is a formalization of the concept of mapping between math structures, provides a description language. A category consists of objects and morphisms between them.

Morphisms appear in many parts of math under different names:
- in set theory as relations and functions
- in group theory as group homomorphisms
- in topology as continuous functions
- in linear algebra as linear transformations

In category theory, morphism is a similar but more broad idea, since the objects need not be sets and the relations need not be maps, although morphisms, representing relations between objects, still have to behave similarly to maps as they have to be associative. In category theory, a morphism is an abstraction of a homomorphism. Much of the terminology of morphisms, as well as the intuition underlying them, comes from concrete categories, where the objects are simply sets with some additional structure, and morphisms are structure-preserving functions.


> Morphism ≅ Iso ≅ Homo

## Morphism
(the most general notion) A morphism or an arrow is a structure-preserving mapping between math objects of the same type.

## Isomorphism
An isomorphism is a mapping between two structures of the same type that can be reversed by an inverse mapping. It is a bijection (thus it can be reveresed). Two math objects are isomorphic if an isomorphism exists between them.

## Homomorphism
Homomorphism is a structure-preserving map between two algebraic structures of the same type.




## Automorphism
is an isomorphism whose source and target coincide. Automorphism is an isomorphism from a mathematical object to itself. It is, in some sense, a symmetry of the object, and a way of mapping the object to itself while preserving all of its structure. The set of all automorphisms of an object forms a group, called the *automorphism group*. It is, loosely speaking, the symmetry group of the object.

## Epimorphism
A morphism `f: X → Y` is called an epimorphism: 
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
