# Function


Functions classified by their mappings:
- one-to-one
- onto
- bijective (one-one and onto)
- identity
- inverse

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
