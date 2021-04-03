# Alpha conversion

Alpha conversion (α-conversion) is one of the 3 operations and one of the 3 theorems of the lambda calculus, along with β-reduction and η-reduction.

≡α - alpha equivalence

```
λx.x ≡α λy.y

λx.zx ≡α λy.zy

(λf.(f λx.x) λf.(f f)) ≡α (λf.(f λx.x) λs.(s s))
```

One aspect of α-conversion is theoretical and related to equality of functions. Two functions (purity is assumed) are equal if they produce the same output result for the same input. This is the *intensional equality*. The *extensional equality* compares functions' definitions, character-wise, to determine equality (it is like checking equality of strings, only strings are actually tokens used as symbols to define the function). However, two functions can still be equal, according to the extensional approach, but differ in the names of parameters.

For example, these two functions are equal despite the different parameter names: `λx.λy.x ≡ λa.λb.a`. It is said that they are *alpha-equivalent*. A phrase that occurs frequently enough "up to *alpha-equivalence*" has to do with two entities being equal apart from the possible differences in, e.g., names of involved variables and similar identifiers.

In LC, α-conversion occurs as a part of β-reduction. If a parameter, `x`, is bound, its binding context, `λx.`, will occur somewhere in the lambda term. A binder's jurisdiction begins immediately following the dot, all the way to the right as possible, only minding (enclosing) parenthesis.

```
λx . (...) (...) x y
    \              /
      jurisdiction

(λx . (...)) (...) x y
     \    /
jurisdiction
```

Alpha conversion is about renaming *bound variable*, before applying substitution, in order to avoid name capture.

Alpha conversion renames the parameter's binding and every application occurance (there are at least two occurances; if there's just one, in the binder, meaning the param is not even used in the body, then probably the renaming is not needed).

A parameter is bound from the aspect of its binding context, but restricting the "view" of a lambda term only to the binder's jurisdiction, i.e. after the dot (the so-called body), that parameter occurs free therein. So, alpha conversion first renames the binding occurance, then all the occurances in the body, that is, more precisely (since other params may have the same name in the body): we have to find all and only the free params in the body that have the same name as the parameter in the binding occurance, and only change their names.

Alpha conversion is about renaming a relatively-free varible: free in the body associated to its binding context; but from the point of view of the binder, that variable is very much bound.


---


Name capture may occur if we naively substitute, e.g. `x` by `z` in `zx`, 
`[x/z]zx` in `((λx.zx) z)`; we'd get (zz) which is incorrect. We first need to alpha rename the expresion to (λx.yx) before applying it to z, ((λx.yx) z), ending up with `yz`.


A name clash arises when a β-reduction places an expression with a free variable in the scope of a bound variable with the same name as the free variable.


(λa.λx.ax) y
↑
λx.yx       <<< starting expr
↓
((λx.yx) b)
↓
[x/b]yx
↓
yb

Consider this constant function that always returns y: `(λx.y x)` where `x` is bound and `y` is free. When applying this function to an arg `(λa.y a)` navely,

(λx.y x) (λa.y a) ~~> 
y (λa.y a)

which is incorrect as it suggests that both `y` are the same. It've been

(λx.y x) (λa.y a) ~~> 
(λx.z x) (λa.y a) ~~> 
z (λa.y a)

where the free `y` is first renamed to `z` and only then β-reduction proceeds.
