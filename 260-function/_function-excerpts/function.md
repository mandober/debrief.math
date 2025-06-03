# Function

There are many relations between two sets, from the full (total) relation that is equal to the dot product of the two sets, to the null (empty) relation. Relations are also sets, but their elements are ordered pairs exclusively.

Functions are relations, therefore also sets, but they are a special kind of relation. Maybe it's better said that functions make a proper subset of relations between two sets. For a relation to be consider a function it has to uphold several constraints: **each member of the domain must be associated with at most one element from the codomain**.



$$\displaystyle \forall a \in A, \exists !b \in B \mid f(a) = b$$



Functions, like relations, are sets whose members are ordered pairs exclusively.

Given two sets `A = {0,1,2}` and `B = {1,2,3,4}` a function `f` that goes from `A` to `B`, denoted by `f::A -> B`, is defined by the set of the ordered pairs `(x,y)`, where each `x` comes from the domain `A`, and `y` is the element in the codomain under the function `f`, i.e. `y = f(a)`.

If this association is defined as `f(a)=a^2`, then this function `f` is defined by all the ordered pairs `(a,b)` that participate in this relation (function), which, considering sets `A` and `B`, are: `f = { (0,1), (1,1), (2,4) }`.

Note that:
1. All domain elements participate in the relation
2. Not all codomain elements participate in the relation
3. Each domain element is associated with exactly one codomain element
4. A codomain element may be associated with *none or more* domain elements

The last point implies that there may be elements in codomain that are not associated at all, that do not participate is the relation. Those codomain elements that do participate make up the set called **image**. An image set is a subset of the codomain set.

An image set consists of those elements of the codomain that are associated with an element in domain. However, not each codomain element needs to participate in this relation for it to be a function (e.g. element `3 ∈ B` is not associated at all). Those elements of codomain that are not, do not have a special name, but they could be denoted by $$Cod \cap Img$$.

Looking at the set of ordered pairs that make up the relation i.e. function `f` above, we see that functions cannot have a domain element appearing more then once as the first component in an ordered pair, i.e. all ordered pair's first components must be a different domain element; also, each element of domain must be represented in an ordered pair (as the 1st component).
