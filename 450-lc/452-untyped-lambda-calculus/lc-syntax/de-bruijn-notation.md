# de Bruijn notation

https://en.wikipedia.org/wiki/De_Bruijn_notation

The **De Bruijn notation** is a syntax for terms in LC where instead of placing an arg to a function after that function, the arg is placed next to its corresponding binder. It was invented and named after the Dutch mathematician Nicolaas Govert de Bruijn, and it can be seen as a reversal of the common application syntax.

## Formal definition

In the De Bruijn notation, terms are variables or have a *wagon prefix*:
- *abstractor wagon*, denoted by `[v]`, corresponds to the usual λ-binder
- *applicator wagon*, denoted by `(M)`, corresponds to an arg in application

Terms in the traditional syntax can be converted to the De Bruijn notation by defining an inductive function `𝓘` for which:

```js
𝓘(v)    = v
𝓘(λv.M) = [v] 𝓘(M)
𝓘(M N)  = (𝓘(N)) 𝓘(M)
```

All operations on λ-terms commute with respect to the `𝓘` translation. For example, the usual β-reduction, (λv.M)N ---->ᵦ M[v:=N] in the De Bruijn notation is, predictably,

(N)[v]M \longrightarrow \beta M[v:=N].



## Abstract

(from: de Bruijn Notation as a Nested Datatype. Richard S. Bird and Ross Paterson, 1999. In Journal of Functional Programming. Vol. 9. No. 1. Pages 77-91. 1999. http://www.cs.ox.ac.uk/publications/publication2646-abstract.html)


The **de Bruijn notation** is a coding of lambda terms in which each occurrence of a bound variable is replaced by a natural number indicating its "distance" from its binding context.

One might suppose that in any datatype for representing de Bruijn terms, the distance restriction on numbers would have to maintained as an explicit datatype invariant. However, by using a nested (or non-regular) datatype, we can define a representation in which all terms are well-formed, so that the invariant is enforced automatically by the type system.

Programming with *nested types* is only a little more difficult than programming with regular types, provided we stick to well-established structuring techniques.

These involve expressing inductively defined functions in terms of an appropriate fold function for the type, and using fusion laws to establish their properties.

In particular, the definition of lambda abstraction and beta reduction is particularly simple, and the proof of their associated properties is entirely mechanical.

## Intro

In Haskell, the standard representation of lambda terms with variables of type `v` involves essentially the following datatype:

```hs
data Term v = Var v
            | Lam v (Term v)
            | App (Term v, Term v)
```

The problem with the standard representation is that while abstraction is easy to implement, application is not.

Application of a lambda term `Lam x b` to an argument `t` involves substituting `t` for all free occurrences of `x` in `b`. Care has to be taken to avoid the capture of free variables in `t` by bound variables in `b`.

To overcome this problem, N. de Bruijn (de Bruijn, 1972) proposed a notation for lambda expressions in which bound variables do not occur. In his notation, no variable appears after the constructor `Lam`, and bound variables appear as natural numbers.

The number assigned to an occurrence of a bound variable `x` is the depth of nesting of `Lam` terms between that occurrence and the (closest) binding occurrence of `x`.

For example, `λx.x (λy.x y (λz.x y z))` translates to `λ.0 (λ.1 0 (λ.2 1 0))`.

```
λx.x ⟿
λ .0

λx.x (λy.x y) ⟿
λ .0 (λ .1 0)

λx.x (λy.x y (λz.x y z)) ⟿
λ.0  (λ .1 0 (λ .2 1 0))

(λn.λf.λx.f(n f x)) (λs.λz.s(s z)) ⟿
(λ .λ .λ .1(2 1 0)) (λ .λ .1(1 0))

Y := λf. (λx.f (x x)) (λx.f (x x))
Y := λ . (λ .1 (0 0)) (λ .1 (0 0)) relative
Y := λ₁. (λ₂.1 (2 2)) (λ₃.1 (3 3)) absolute
```
