# Kernel of function

https://en.wikipedia.org/wiki/Kernel_(set_theory)

**The kernel of a function** `f`
is the equivalence relation `~`
on the domain of the function `f`
expressing the property 
that equivalent elements 
have the same image 
under the function `f`, 
`x ∼ xʹ ⇔ f x = f xʹ`


The **equivalence kernel** of a function `f` 
is the equivalence relation `∼` defined by 
`x ∼ xʹ ⇔ f x = f xʹ`.


>The **equivalence kernel** of injective function is the *identity relation*. 
A way of seeing that this is an equivalence relation is to note that it is induced by the partition `{ f⁻¹({y}) | y ∈ f(X) }`. Since `f` is injective iff the inverse image of singletons is either empty or a singleton, the conclusion will follow.


## Contents

- Kernel of function
- Kernel of family of sets
- Definition
- Quotients
- As a subset of the square
- Algebraic structures
- In topology

## Kernel of function

In set theory, the **kernel of a function** `f`, or **equivalence kernel**, may be taken to be either

>the equivalence relation on the function's domain that roughly expresses the idea of *"equivalent as far as the function `f` can tell"*, or

>the corresponding partition of the domain.

## Kernel of family of sets

An unrelated notion is that of the *kernel of a non-empty family of sets* `𝓕`, which by definition is the intersection of all its elements: 

`ker 𝓕 = ⋂{b ∈ 𝓕}B`

This definition is used in the theory of filters to classify them as being free or principal.

## Definition

### Kernel of a function

For the formal definition, let `f : X → Y` be a function between two sets. Elements `x₁,x₂ ∈ X` are equivalent if `f x₁` and `f x₂` are equal; that is, if `f x₁` and `f x₂` are the same element, in Y.

`x₁ ~ x₂ ⇒ f x₁ = f x₂`

>The kernel of `f` is the equivalence relation thus defined.

### Kernel of a family of sets

The kernel of a family `𝓕 ≠ ∅` of sets is

`ker 𝓕 = ⋂{b ∈ 𝓕}B`

The kernel of 𝓕 is also sometimes denoted by `⋂𝓕`. 

The kernel of the empty set, `ker ∅`, is typically left undefined. 

* A family is **fixed** and has non-empty intersect if its kernel is non empty
* A family is **free** if it's not fixed; i.e. if its kernel is the empty set.

## Quotients

Like any equivalence relation, the kernel can be modded out to form a quotient set, and the quotient set is the partition:

`{ {w ∈ X | f x = f w} | x ∈ X }` = `{ f⁻¹(y) | y ∈ f(X) }`


>The kernel for general maps between sets is an equivalence relation: 
if `f : X → Y`, 
then the kernel is the equivalence relation `∼ᶠ` defined by 
`a ∼ᶠ b ⇔ f a = f b`.

This relation is identified with the partition induced by it:    
`{ {w ∈ X | f x = f w } | x ∈ X }`

where, `{ w ∈ X | f x = f w } = { w ∈ X | x ∼ᶠ w }` 
is the equivalence class (or level set) of `x`.



This quotient set `X/f` is called the **coimage of the function `f`** or a **variation** and denoted `coim(f)`.

The coimage is naturally isomorphic (in the set-theoretic sense of a bijection) to the image, `im(f)`. Specifically, the equivalence class of x in X - which is an element of ⁡`coim(f)` - corresponds to `f(x)` in Y - which is an element of `im(f)`.


## As a subset of the square


## Algebraic structures


## In topology
