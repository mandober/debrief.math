# Induction-recursion

## Induction-recursion

https://en.wikipedia.org/wiki/Induction-recursion


In Intuitionistic Type Theory (ITT), 
**induction-recursion** is a feature 
for simultaneously declaring 
a type and function on that type.


Unlike induction usedin defining inductive types, 
induction-recursion allows creating larger types like universes. 
The types created still remain predicative inside ITT.


An inductive definition is given 
by rules for generating elements of a type. 

One can then define functions 
from that type 
by induction on the way 
the elements of the type are generated.


Induction-recursion generalizes this situation 
since one can simultaneously define 
the type and the function, 
because the rules for generating elements of the type 
are allowed to refer to the function.


"A general formulation of simultaneous inductive-recursive definitions in type theory", Peter Dybjer, 2000, Journal of Symbolic Logic. doi:10.2307/2586554
- http://www.cse.chalmers.se/~peterd/papers/Inductive_Recursive.pdf
- Peter Dybjer papers: http://www.cse.chalmers.se/~peterd/papers/


Induction-recursion can be used to define large types 
including various universe constructions. 
It increases the proof-theoretic strength 
of type theory substantially. 
And yet the inductive-recursive recursive definitions 
still remain predicative.

## Inductive-recursive type

https://ncatlab.org/nlab/show/inductive-recursive+type

In type theory, 
**induction-recursion** is a principle 
for mutually defining types of the form

`A : Type` and `B : A → Type`

where `A` is defined as an inductive type 
and `B` is defined by recursion on `A`. 
Crucially, the definition of `A` may use `B`. 
Without this last requirement, 
we could first define `A` 
and then `B` separately.

## Example

The *universe a la Tarski* is an example of 
an inductive-recursive definition, 
where a set `U` is defined inductively 
together with a recursive function `T : U → Set`.

The constructors for `U` 
may depend negatively on `T` 
applied to elements of `U`, 
as is the case e.g. 
if `U` is closed under 
dependent function spaces:

```
a : U     b : T a → U
----------------------
     π (a,b) : U
```

with `T (π (a,b) )` = `∏ {x : T a} T (b x)`

Here, `T : U → Set` is defined recursively.

However, sometimes you might not want 
to give `T u` completely 
as soon as `u : U` is introduced, 
but instead define `T` inductively as well. 
This is the principle of *induction-induction*.
