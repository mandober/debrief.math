# Variables

* Free variables

```js
fv x      = {x}
fv (M N)  = fv M ⋃ fv N
fv (λx.M) = fv M \ {x}
```

* Bound variables

```js
bv x      = ∅
bv (λx.M) = bv M ⋃ {x}
bv (M N)  = bv M ⋃ bv N
```

The name of a bound variable is immaterial and doesn't change the meaning of expression. Thus, it is said that the following examples are α-equivalent, or rather, they are isomorphic up to the α-equivalence (or: they are equal apart from their names):

`λa.a ≡ λp.p ≡ λα.α`

We can freely rename a bound parameter, but we need to rename its *binding occurrence* (in the head) and all of its *applied occurrences* (in the body). Latmus test: variables that were free before renaming must remain free; if a free variable becomes bound post-renaming, it's called a **name capture**.


## Free variables

> The set of free variables in a lambda term consists of those variables that are in the scope of the enclosing abstraction but are not bound by it.

* A free variable is one which doesn't fall within the scope of a quantifier.
* The set of free variables of a lambda term consists of variables not bound by the enclosing abstraction.
* A variable not bound within the considered lambda subexpression (but by some outer context).
