# Types of functions

Types of mappings
- a relation
- a function
  - every function is a relation
  - a function is a relation that is functional and serial
  - functional relation: left-unique (wrt to the ordered pairs)
  - serial relation: right-serial (wrt to the ordered pairs)
- injection: one-to-one mapping
- surjection: onto mapping
- bijective: one-one and onto mapping
- identity function
- inverse function
  - inverse of a mapping is not necessarily a function (inverse relation)
- total function: usual definition of a function
- partial function allows for unassociated elements in the domain



## ajections

Mappings
- injection: one-to-one mapping
- surjection: onto mapping
- bijective: one-to-one and onto mapping

**Injection**: the main propery is that the mapping is *one-to-one*. Injection is a mapping `f: A -> B` associates a unique `a ∈ A` to a unique `b in B`:
- `∀a ∈ A. ∃!b ∈ B. f(a)=b`
- `∀a,a' ∈ A. f(a) = f(a') <-> a = a'`

Normally, a function can associate an element in a codomain to more then one element in a domain; that is, the same element `b` may be at the head of more then one arrow from A to B, `f(a)=b ∧ f(a')=b ∧ a ≠ a'`.

**Surjection** is a function with two properties, one "bad" and one "good".
The good property ensures that *the entire codomain is involved in the mapping* - all elements in B are associated. The bad property is that some elements may be associated more then once.

**Bijection** takes an injection and the good property of surjection, so it is a mapping that is both one-to-one and onto (the entire codomain is associated).




## Functional relations

Functions define many interesting relations between sets.
*Isomorphism* is the most important relation:

Sets D and C are *isomorphic*    
if there exist a pair of functions    
f:D->C and g:C->D    
such that   
g . f is the identity function for D   
and    
f . g is the identity function for C.   
The maps (functions) f and g are called *isomorphisms*.

D = {...}    f:D->C    I(D) = g . f
C = {...}    g:C->D    I(C) = f . g

D=[1,2,3,4], f:D->C, f(d)=c = `f(d)=d*2` : f([1,2,3,4]) => [2,4,6,8]
C=[2,4,6,8], g:C->D, g(c)=d = `g(c)=c/2` : g([2,4,6,8]) => [1,2,3,4]

I(D) = I(d)=d : [1,2,3,4] => [1,2,3,4]
I(C) = I(c)=c : [2,4,6,8] => [2,4,6,8]

I(D) = g.f ? g(f(d)) : g(f([1,2,3,4])) => g([2,4,6,8]) => [1,2,3,4]
I(C) = f.g ? f(g(c)) : f(g([2,4,6,8])) => f([2,4,6,8]) => [2,4,6,8]

...thus, f and g are isomorphisms and the sets D and C are isomorphic.

A function is an isomorphism if and only if it is *bijective* i.e. both, one-one and onto.

The inverse f^-1 of isomorphism f is also an isomorphism, as 
f^-1 . f 
and 
f . f^-1 
are both identities.
