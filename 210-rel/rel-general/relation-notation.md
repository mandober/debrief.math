# Relations :: Basics :: Relation Notation

## Relation Notation

A binary relation `R` between sets A and B is denoted `R ⊆ A×B`. Similarly to the notation (signature) for functions, this may also be denoted `R : A → B`, although it appears less often.

`R ⊆ A×B` can be throught as the signature of the relation `R`. However, the fully typed and qualified notation for the relation `R` is given by the triple `⟨A, Gʀ, B⟩`, where `Gʀ` is the graph of the relation `R`. The source (domain) and target (codomain) sets must be specified since, in general, they cannot be derived from the graph alone.





In general, a relation on a set `A` may be denoted by any letter or symbol, but the capital letter `R` is the usual choice. A relation itself is a set - it is a set of ordered pairs coming from set `A`. Thus, when a pair of elements of `A` is related, we write `(x,y) ∈ R` and when it is not, `(x,y) ∉ R`.

The assertion `(x,y) ∈ R` is usually written more shortly as `xRy` and its negation, `(x,y) ∉ R`, as `¬xRy` or, more stictly as `¬(xRy)`.

Following the style of denoting predicates in logics (and knowing that relations and predicates are the same thing), we can also write it as `R(x,y)`, and its negation as `¬R(x,y)`.

Some relations are so common they get a unique name and own symbol - or at least the combination of the name and symbol uniquely determines a relation. For example, "less then or equal to" relation is denoted by `≤`, "divides",relation `∣`, and set membership relation by `∈`. However, the symbol `∈` is also (at minimum) used to denote class membership relation.


* A set equipped with the `<` relation may be denoted `A﹤`.

* A set equipped with an equivalence relation `∼` may be denoted `A͠`.
  - composites: `Ḛ Ã Ñ Õ Ũ Ĩ Ɫ `

* Quotient set by equivalence relation `~` may be denoted `R/~`
  - `R˜`, `R˷`
  - tilde operators: `∼ ≁ ∽`
  - combining tilde with letter R: `R̃  R̰  R̴  R͠  R̾  R͊ `



All functions are relations, but they have a distinguished notion - rather then writing `(x,y) ∈ f` to assert that function `f` associates `x` to `y`, we instead write `f(x) = y`. The part `f(x)` emphasises the fact that functions are computation processes (although they need not be) most of the time. This part appears standalone in function application and as a part of a function definition. `f(x)` denotes function application in general; if `f` is the successor function `S` defined on ℕ, we write its application to 0 as `S(0)`. And as a part of the function definition, `f(x) = y`, is "instantiated" as e.g. `S(x) = x + 1` defining the successor function, thus `y` denotes the function's body, i.e. the expression `x + 1`. Viewed as a set, the successor function is a set of input-output ordered pairs, `S = {(0,1), (1,2), (2,3), …}`. Finally, writing a function in predicate style, as ~~f(x,y)~~, is not practiced because it is ambiguous - is it a binary function or a binary relation? The shortcut notation of relations is also avoided for functions, especially since functions are usually denoted by a lowercase letter, so ~~xfy~~ looks weird.

The last remark implies that an n-ary function does not correspond to an n-ary relation: in fact, n-ary function corresponds to n+1-ary relation. That is, functions exclude the output parameter when counting arity, while relations count all parameters (inputs and the output). So a unary function `f(x) = y` corresponds to a binary relation, `(x,y) ∈ f`, and a binary function `f(x,y) = z` corresponds to a ternary relation, `(x,y,z) ∈ f`. *Their graphs are exactly the same*.

## Overview of notations

Notations involving a set `A` (`x` and `y` range over `A`) and binary endorelations on it: generic relations `R` and `∼`, and concrete relations.
- Positive: the relation holds between x and y
- Negative: the relation does not hold between x and y

```
(x, y) ∈ R    (x, y) ∉ R

(x, y) ∈ ≤    (x, y) ∉ ≤

(x, y) ∈ ∼    (x, y) ∈ =

(x, y) ∉ ∼    (x, y) ∉ =

xRy         ¬xRy       x¬Ry     ¬(xRy)

x∼y         x=y
x≁y         x≠y

R(x,y)        ¬R(x,y)

≤(x,y)        ¬≤(x,y)
x ≤ y
x ≰ y
¬(x ≤ y)
```
