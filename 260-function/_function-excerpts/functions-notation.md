# Functions :: Function notations

Annotating a domain and codomain of a function:
- `f : A -> B`

where
- `f` is the name of the function
- `A` is the domain
- `B` the codomain

The specification a function's domain and codomain may be called a *function's signature* and thought of as a *function's declaration*, somewhat resembling what is typically done in the statically-typed FPLs such as Haskell (in which manually specifying function signatures is considered good style, even though they are rarely obligatory - the compiler abides).

Generally in PLs, declaring a type first, even if it's not used until much later, (among other reasons) is sometimes necessary in order to let the compiler know how much space it should reserve for values of that type. Most compilers need to know (asap) the amount of space each type takes, so they can manage the space requirements appropritrly.



as not terribly revealing, but it is. It makes the input and output sets precise, and depending on what those are, 
that many information about it has been revealed
Fixing a function's its domain to the set `A` and the codomain to the set `B`.
This specifies a function in the extent that broad , 

---

* Notation for a generic function defintion: `f(x) = y`

with `f` as the name of the function, `x` representing the input such that `x ∈ A`, and `y` representing the output such that `y ∈ A` and `y = f(x)`.


--- 

Math

```js math
// this notation is pretty type-theoretic
f : A -> B

// as if saying that `f` has the type `A -> B`

f(x) = y

// the graph of the function f is the set of ordered pairs, {(x, f(x))}
f = { (x, f(x)) | ∀x ∈ A. ∃y ∈ B. f(x) = y }

f = { (x, f(x)) | ∀x(x ∈ A -> (∃y(y ∈ B) ⋀ f x = y)) }

f = { (x, f(x)) | (∀x. x : A -> (∃y. y : B) ⋀ f x = y) }

f = { (x,y) | ∀x ∈ A. ∃y ∈ B. f(x) = y }
```


Haskell

```hs
f :: A -> B
f x = y

f = { (x,y) | ∀x(x ∈ A -> ∃y(y ∈ B) ⋀ f x = y) }

f :: A -> A
f x = y

f = { (x,y) | ∀x(x ∈ A -> ∃y(y ∈ A) ⋀ f x = y) }

f = [ (x,y) | x <- xs, y = f x ]

fx :: forall a. a -> (forall b. b)
fx = undefined
```
