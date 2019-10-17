# The axioms

Each algebraic structure is defined by the set of axioms that must be upheld. That is, whenever the attached operation operates on the elements of the underlying set, the prescribed axioms must hold.

Partial list of axioms:
- totality (closure)
- identity
- associativity
- invertibility (inverse)
- commutativity

## Totality
If combining any two elements of the set gives an element that is also a member of that set, we say that the binary operation ("star", `*`) closes over the set.

$$(\forall x,y \in A) \to (x \star y \in A)$$

A binary operation, `*`, that combines any two elements of the set `A` must give a result that is also in `A`.

For example, addition is closed over the natural numbers, but division is not.

## Identity
There must be an identity element in the carrier set, such that when it is combined with any other element in the set it leaves the other element unchanged.

$$(!\exists\ e,\ \forall x \in A) \to (e \star x = x = x \star e)$$

## Invertibility

$$(!\exists e, \ \forall x, \ \exists x^{-1}\in A)\ .\ x\star x^{-1} = e = x^{-1}\star x$$


## Associativity

$$\forall x,y,z\ .\ x \star (y \star z) = (x \star y) \star z$$

## Commutativity

$$\forall x,y\ .\ x \star y = y \star x$$

## Distributivity

Algebraic structures consisting of 2 binary operations (e.g. ring) are subject to distributivity of one operation over the other.

Given a set `S` and 2 binary operators `*` and `+` on `S`:
- the operation `*` is **left-distributive** over `+` if    
  $$(\forall x,y,z \in S)\ .\ x*(y+z) = (x*y) + (x*z)$$
- the operation `*` is **right-distributive** over `+` if     
  $$(\forall x,y,z \in S)\ .\ (y+z)*x=(y*x)+(z*x)$$
- the operation `*` is **distributive** over `+` if it both left and right-distributive.
- when `*` is commutative, these 3 conditions are logically equivalent
