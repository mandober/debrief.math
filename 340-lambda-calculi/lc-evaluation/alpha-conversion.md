# Alpha conversion

The α-conversion is one of the 3 operations and theorems of the lambda calculus, along with β- and η- reduction. `≡ᵃ` signifies α-equivalence.

```js
λx. x ≡ₐ λy. y
λx. z x ≡ₐ λy. z y
```

One aspect of α-conversion is theoretical and related to the *intensional equality* functions.

> Two pure functions are equal if they produce same output for same input.

The *extensional equality* compares functions' definitions, character-wise, to determine equality (like checking equality of strings). However, two functions may be extensionally equal, even though their parameter names differ.

For example, this two are equal despite the different parameter names, `λx.λy.x` and `λa.λb.a`; they are *alpha-equivalent*.

The phrase "up to alpha-equivalence" has to do with two entities being equal, apart from the possible differences in names of some (dummy) identifiers.

* In LC, α-conversion occurs as a part of β-reduction.

* If param `x` is bound, its binding context `λx.` occurs somewhere in the lambda term. A binder's scope begins immediately after its dot and extens all the way to the right, as much as possible (minding the enclosing parenthesis).

> α-conversion is about renaming bound vars before applying substitutions so as to avoid name captures.

* α-conversion renames parameters: a parameter has a *binding occurence* (in the head of an abstraction) and any number of *application occurances* (in the body of an abstraction).

* A parameter with the binding occurence but no application occurances (because it is not even used) need not be renamed.

* A parameter is bound from the aspect of its binding context; if we focus only on an inner subexpression, then the param is considered to occur free in there.

* α-conversion proceeds by first renaming a param's binding occurance, then its application occurances. It identifies free variables in the abs's body (with the same name as the parameter's binding occurance), renaming them.

* Whether we consider a var free or bound depends on which part of a lambda expression we scrutinize. If we consider the entire top level expression, it should make no sense if it contains unbound vars.


* **Name capture** may occur if we naively substitute `x` with `z` in `z x`, 
`[x ⟼ z](z x)` in the app `(λx. z x) z`.

* First we check whether the variable `z` (the name of the var that repr the arg) is contained in the set of free vars of the lambda term that represents the abs's body.

```js
// given the application
(λp. B) y
// we check whether
y ∈ FV(B) ?
  y ∉ fv(B) --> skip renaming
  y ∈ fv(B) --> rename
```


* examine the arg (`z`) and the abs `(λx. z x)`, finding out that it contains the free var with the same name (`z`).

the eponymous param exists in the abs (that is to be applied to the arg).


* We first need to rename the parameter `x` in the abs `λx. y x` before we apply it to the argument `z`.


`(λx. y x) z`


* A *name capture* arises when the β-reduction places an expr with a free var in the scope of an eponymous bound var (var with the same name as the free var).

```js
(λa.λx.ax) y
↑
λx.yx       <<< starting expr
↓
((λx.yx) b)
↓
[x/b]yx
↓
yb
```

Consider this constant function that always returns y: `(λx.y x)` where `x` is bound and `y` is free. When applying this function to an arg `(λa.y a)` navely,

(λx.y x) (λa.y a) ~~> 
y (λa.y a)

which is incorrect as it suggests that both `y` are the same. It'd been

(λx.y x) (λa.y a) ~~> 
(λx.z x) (λa.y a) ~~> 
z (λa.y a)

where the free `y` is first renamed to `z` and only then β-reduction proceeds.
