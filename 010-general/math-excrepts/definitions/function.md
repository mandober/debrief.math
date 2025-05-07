# Function

Function is a special type of relation. The primary property of function is that any domain element cannot be associated with more than one codomain element; this is allowed for relations but not for functions. The secondary property of functions is that all domain elements must participate in a relation.

However, a relation is allowed to have an object `x` in the first set be related to more than one object in the second set. So a relation may not be represented by a function machine, because, given the object `x` as the input to the machine, the machine cannot spit out a unique output object that is associated with `x`.


A function is a type of relation. However, while a relation is allowed to have an object `x` in the first set be related to more than one object in the second set, function does not - each element of domain set must be related to exactly one element of the codomain.

Viewed as a black box or a machine, a function takes an object `x` as the input and spits out a unique output object `y` associated with `x`.

f : A → B   
f x = y

## Injective function

f : A → B

∀xy ∈ A. f x = f y ⇒ x = y

## Surjective function

∀y ∈ B. ∃x ∈ A. f x = y

## Bijective function

Bijective function is both injective and surjective.

## Total function

∀x ∈ A. ∃y ∈ B. f x = y

## Partial function

Partial function, `f : A → B` is not defined on the entire domain `A`. There are some elements `x ∈ A` such that `f x` is undefined.
