# Function theory ∷ Notation

If `A` and `B` are sets:
- a function `f` from `A` to `B` may be denoted by `f : A -> B`
- an anonymous function mapping `A` to `B` may be denoted by `A ⟼ B`

The notation `f : A -> B` is called a *function's declaration* (sometimes also a *signature*) and it specifies only a function's domain and codomain. A declaration not only broadly specifyies a function, but it is the only place where the exact codomain is given, which is important for distiguishing functions that are virtually the same apart from their codomains. *Two functions with the same domain and range but different codomains are in fact distinct functions.* A function's codomain may almost always be expanded, which should produce a different function. Moreover, in the case of partial functions, neither the domain nor the codomain may be determined from the function's implementation.

Following its declaration, a *function's implementation* is usually stated, in general, denoted by `f(x) = y`, where `x` represents any function's inputs and ranges over the entire domain `A`, while `y = f(x)` stands for the corresponding output and is an element of the codomain `B`.

```js
f : A -> B        // generic function declaration
f(x) = y          // generic function implementation

sqn : ℕ -> ℕ       // concrete function declaration
sqn(x) = x²        // concrete function implementation

sqz : ℕ -> ℤ       // concrete function declaration
sqz(x) = x²        // concrete function implementation

sqz != sqn         // different codomain -> different function




x ∈ A, f(x) = y ∈ B

∀x(x ∈ A)             // all domain elements
∃y(y ∈ B ⋀ f(x) = y)  // some (up to all) codomain elements

f = { (x,y) | ∀x ∈ A. ∃y ∈ B. f(x) = y }
f = { (x,y) | ∀x(x ∈ A -> ∃y(y ∈ B ⋀ y = f(x))) }



dom(f) = A
dom(f) = { x | ∀x(x ∈ A) }
dom(f) = { x | ∀x(x ∈ A -> ∃y(y ∈ B ⋀ f(x) = y)) }

cod(f) = B
cod(f) = { y | ∀y(y ∈ B) }
cod(f) = { y | ∀x(x ∈ A -> ∃y(y ∈ B ⋀ f(x) = y)) }

ran(f) ⊆ cod(f)
ran(f) = { y | ∀y(f(x) = y -> y ∈ B) }
ran(f) = { y | ∀x(x ∈ A -> ∃y(y ∈ B ⋀ f(x) = y)) }


∀x(x ∈ A -> ∃y(y ∈ B) ⋀ y = f(x))
```


f(x) = y, f = { (x,y) | ∀x ∈ A. ∃y ∈ B. f(x) = y }


The terms implementation and definition are used interchangibly, although some authors use the term definition when referring to a function's signature and implementation together.

The most generic denotation for a function's implementation is `f(x) = y`



- set `A` is the domain of the function, `Dom(f) = A = { x | ∀x ∈ A }`
- set `B` is the codomain of the function, `Cod(f) = B`
- the range of the function, `Ran(f) = { f(x) | x ∈ A ⋀ f(x) ∈ B }`

`Cod(f) = B = { f x | ∀y ∈ B }`

and their cardinalities are `n = |A|` and `m = |B|`, 

a generic function `f` from `A` to `B` may be denoted `f : Aᵏ -> B`

where `k` stands for the function's arity i.e. the number of inputs (with the stipulation that there is always a single output), or, using the notation for anonymous functions as `Aᵏ ⟼ B`.
