# 1. Untyped lambda calculus

(from Type Theory and Formal Proof - An Introduction Rob Nederpelt, Herman Geuvers, 2014)


## TOC

- Input-output behaviour of functions
- The essence of functions
- Lambda-terms
- Free and bound variables
- Alpha conversion
- Substitution
- Lambda-terms modulo α-equivalence
- Beta reduction
- Normal forms and confluence
- Fixed Point Theorem

## Input-output behaviour of functions

Lambda calculus was invented by Alonzo Church in the 1930's (Church, 1933). Church's aim was to use his lambda calculus as a foundation for a formal theory of mathematics, in order to establish which functions are computable by means of an algorithm.

>λ-calculus formalizes the basic aspects of mathematical functions, particularly their construction, application and evaluation.

An exp like `λx.x²+1` means that this anonymous function will eventually (when an arg is provided) map a variable `x` to the exp `x²+1`. The notation expresses that `x` itself is not a concrete input value but an abstraction; it is a formal parameter of the function.


## The essence of functions

In dealing with functions there are two construction principles and one evaluation rule. The construction principles for functions are
- *Abstraction*: From an expression `M` and a variable `x` we can construct 
  a new expression: `λx.M`. We call this abstraction of `x` over `M`.
- *Application*: From exps `M` and `N` we can construct expression `M N`.
  We call this application of `M` to `N`.

* A "free" usage of these constructions allows expressions which don't have an obvious meaning, such as `x x` or `y(λu.u)`; but for now we treat them like others, not worrying about their apparent lack of meaning.

* The function "square" is now `λx . x²`. The stand-alone expression `x²` is still available, but it is no longer a function, but an *abstract output value*, viz. the square of (an unknown, but fixed) `x`. The difference is subtle: assuming that `x` ranges over ℕ, then `λx.x²` is a function, taking ℕ to ℕ. But `x²` is not: it represents an ℕ.

* λ-calculus is particularly suited for the description of "neat" functions, which can be described by a mathematical expression. It takes some effort to use the λ-notation to describe functions with a slightly more complicated description, such as multi-part functions like 'abs'.

Next to the two construction principles, there is also a rule for evaluation of λ-expressions. The formalisation of the evaluation process is *β-reduction*, which makes use of substitution, formally expressed as M[x:=N] and means replacing the parameter `x` by an arg `N` throughout the function's body `M`.

**β-reduction**: An expression of the form `(λx.M)N` can be rewritten as the expression M[x:=N] signifying the expression `M` in which every `x` has been replaced with `N`. We call this process β-reduction of `(λx.M)N` to M[x:=N].

Reduction is also possible on applicable subexpressions: a subexp `(λx.M)N` may be rewritten as M[x:=N] provided that the rest of the expression is left unchanged. The full former exp, with subexp `(λx.M)N`, is then said to reduce to the full latter expression, with subexp M[x:=N]. The rules describing how reduction extends from subexpressions to enclosing expressions is called the *compatibility rules for reduction*.

Example: by the compatibility rule `λz.((λx.x)(λy.y))` reduces to `λz.(λy.y)`.

The term "application" is deceptive: an application of `M` to `N` is not the result of applying `M` to `N` but only *the first step in the procedure*: we can only say that the application constructs a new expression, `M N`, which, at some later stage, may lead to the *actual execution of the function*.

For example, the application of `λx.√x` to 7 produces the new exp `(λx.√x)(7)`, in which *the function has not yet been executed*. It is only *after the reduction* of this term that we obtain the result of the application (namely the answer √7).

**Currying**: The λ-notation is for functions of one variable. A polyadic function can be converted into a composite of unary functions. For example, a binary function like `λ(x,y).x²+y` is converted into `λx.λy.x²+y`. Currying also gives us the ability of **partial application** of functions.

## Lambda-terms

The main concern of the discipline of lambda calculus is the behaviour of functions in the simplest, most abstract view. This means that we don't actually have anything predefined at the start, only the rules for construction and evaluation. Everything (numbers, Booleans, operations, data structures, …) will have to be encoded in terms of lambda functions.

Informally, the constructions of λ-calculus are
- variables (`x`, `y`, `z`, …), possibly decorated with primes and shit
- abstraction, `λx.M`
- application, `M N`
- β-reduction, the calculation rule, M[x:=N]


The expressions of λ-calculus are called **λ-terms**.

The following *inductive definition* formally establishes how the set `𝚲` of all λ-terms is constructed.

First, we assume the existence of an infinite set `𝓥` of variables (or more precisely, variable names), `𝓥 = {x, y, z, …}`.

[Definition 1.3.2] The set _𝚲_ of _λ-terms_
1. Variables:   If `u ∈ 𝓥` then `u ∈ 𝚲`
2. Application: If `M, N ∈ 𝚲` then `(M N) ∈ 𝚲`
3. Abstraction: If `u ∈ 𝓥` and `M ∈ 𝚲` then `(λu.M) ∈ 𝚲`

Saying that this is an inductive definition of `𝚲` means that these 3 ways are the only ones possible to construct elements of `𝚲`.

An alternative way to define `Λ` is via abstract syntax i.e. a grammar:

```
Λ := V | (Λ Λ) | (λV . Λ)

term := var
      | 'λ' var '.' term
      | ( term ) term
var  := x | y | z | …
```

With the following recursive definition we determine what the subterms of a given λ-term are; these form a multiset, since identical terms may occur more than once.

(Definition 1.3.5) Multiset of subterms, _Sub_
1. Base case:   `Sub(x) = {x}` for each `x ∈ V`
2. Application: `Sub(M N) = Sub(M) ⋃ Sub(N) ⋃ {M N}`
3. Abstraction: `Sub(λx.M) = Sub(M) ⋃ {λx.M}`

`L` is a subterm of `M` if `L ∈ Sub(M)`.

(Lemma 1.3.6) The properties of subterms:
1. Reflexivity:  For all λ-terms M, `M ∈ Sub(M)`
2. Transitivity: If `L ∈ Sub(M)` and `M ∈ Sub(N)` then `L ∈ Sub(N)`

So, an exp is itself a λ-term, as well as all its subexp. Some λ-term can occur several times as subterms in a given term. For example, in `x x`, the variable `x ∈ Sub(x x)` for two reasons: the first `x` is a subterm as is the second one. In such cases, subterms have different *occurrences*.

For example, `λx.x x` has 4 subterms: itself, the app `x x`, the left `x` var, the right `x` var. The `x` in the λ-binder (λx) is not s subterm but a formal parameter.

Tree representation of a λ-exp makes it easy to locate the subterms. 
For example, `y (λx.x z)`

```
  @
 / \
y   λx
   / \
  x   z
```

The subterms of a λ-term `M` correspond to the subtrees in the tree representation of `M`. Variables are always at the leaves, i.e. a subterm consisting of a single variable corresponds to a labelled leaf.

`L` is a **proper subterm** of `M` if `L` is a subterm of `M` but `L ≠ M`.

The excess parentheses is reduced by following these *conventions*:
- Parentheses in an outermost position may be omitted, so `M N` stands for a λ-term `(M N)` and `λx.M` for `(λx.M)`
- Application is left-associative, so M N L is an abbreviation for `((M N)L)`
- Application takes precedence over abstraction, so we can write `λx . M N` instead of `λx.(M N)`
- Successive abstractions may be combined in a right-associative way under one λ, so we write `λxy.M` instead of `λx.(λy.M)`



## Free and bound variables

Variable occurrences in a λ-term can be divided into 3 categories:
1. free occurrences
2. bound occurrences
3. binding occurrences

Also, e.g. in a term `λx.x x`, the first `x` is the binding occurrence, while the `x` vars in the body are **application occurrences**.

An occurrence of `x` which is free in `M` becomes bound in `λx.M`. Otherwise said: abstraction of `x` over `M` binds all free occurrences of `x` in `M`; that is why the `x` in `λx.M` is called a binding variable occurrence.

(Definition 1.4.1) `FV(L)` denotes the set of free variables in λ-term `L`:
1. Var: `FV(x)    = {x}`
2. App: `FV(M N)  = FV(M) ⋃ FV(N)`
3. Abs: `FV(λx.M) = FV(M) ∖ {x}`

(Definition 1.4.3) Combinators - closed λ-terms, the set `Λ₀`
* A λ-term `M` is closed if `FV(M) = ∅`. A closed λ-term is a combinator.


## Alpha conversion

A particular name of the binding variable is not essential. Hence, the relation *α-conversion* or *α-equivalence* formally describes the process of renaming the binding and bound variables.

>(Definition 1.5.1) Renaming, M[x⟼ᵅy] 
The exp M[x:=⟼ᵅy] denotes the result of replacing every free occurrence of `x` by `y` in `M`. The renaming rel, `=α=`, is `λx.M =α= λy.M[x⟼ᵅy]` provided that:
1. `y ∉ FV(M)`
2. `y` is not a binding variable in `M`

The intended effect is that the binding variable `x` in `λx.M`, along with all its application occurrences in `M`, are renamed to `y`. The application occurrences of `x` are precisely the free `x` vars in `M`.

The two conditions make sure there are no accidental **name captures**.

The Renaming definition applies to the full λ-term only. In order to allow it more generally, we extend this definition to the following one:

>(Definition 1.5.2) α-conversion or α-equivalence, `=α=`
1. Renaming: `λx.M` =α= `λy.M[x:=⟼ᵅy]` as in the previous definition
2. Compatibility: if `M =α= N` then
  - `M L =α= N L`
  - `L M =α= L N`
  - `λz.M =α= λz.N` (for any `z`)
3. Reflexivity:   `M =α= M`
4. Symmetry:      `M =α= N` → `N =α= M`
5. Transitivity:  `L =α= M` ∧ `M =α= N` → `L =α= N`

Renaming is the basis of α-equivalence. The compatibility rules have the effect that one may also rename binding and application occurrences of variables in an arbitrary subterm of a given λ-term. Reflexivity, symmetry and transitivity make α-conversion an *equivalence relation*.

If `M =α= N`, then `M` and `N` are said to be α-convertible or α-equivalent. `M` is called an **α-variant** of `N` (and vice versa).

Using the **Barendregt convention** we avoid substitution, and thus renaming. It means that we make sure upfront that there's no need for renaming by picking distinct names per var (i.e. its binding and application occurrences).


## Substitution

(Definition 1.6.1) Substitution
1.      x[x:=N] ≡ N
2.      y[x:=N] ≡ y                   if x ≠ y
3.  (P Q)[x:=N] ≡ (P[x:=N]) (Q[x:=N])
4. (λy.P)[x:=N] ≡ λz.(P[y⟼z][x:=N])  if `λz.P[y⟼z]` is an α-variant    
                                      of `λy.P` such that `z ∉ FV(N)`

Renaming can be considered as a special case of substitution, since we can show that `M[x⟼u] =α= M[x:=u]` if the conditions of renaming are satisfied.

**Sequential substitution** is doing a number of substitutions consecutively, e.g. M[x:=N][y:=L]

The order of substitutions matters.

(Lemma 1.6.5) Let `x ≠ y` and assume `x ∉ FV(L)` then
M[x:=N][y:=L] ≡ M[y:=L][x:=N[y:=L]]


## Lambda-terms modulo α-equivalence




## Beta reduction




## Normal forms and confluence




## Fixed Point Theorem
