# 1. Untyped lambda calculus

## TOC
- 1.1 Input-output behaviour of functions
- 1.2 The essence of functions
- 1.3 Lambda-terms
- 1.4 Free and bound variables
- 1.5 Alpha conversion
- 1.6 Substitution
- 1.7 Lambda-terms modulo α-equivalence
- 1.8 Beta reduction
- 1.9 Normal forms and confluence
- 1.10 Fixed Point Theorem
- 1.11 Conclusions

## 1.1 Input-output behaviour of functions

- anonymous function
- map, mapping
- input value
  - formal parameter
  - arbitrary input value
  - abstract input value
- output value
- variable
- parameter
- argument
- expression
- abstraction


An expression like `λx.x²+1` means that this *anonymous function* will eventually, when an *argument* is provided, map a *variable* `x` to the expression `x²+1`. The notation expresses that `x` itself is not a concrete *input value* but an *abstraction* - it is a *formal parameter* of the function.

The so-called *variable* `x` acts as an *arbitrary* or *abstract input value*. In a concrete case, for example, when using input value 3, one must replace `x` with 3 in the expression. Function `x²+1` then delivers the output value 3²+1, which adds up to 10.

In order to emphasise the abstract role of variable `x` in an expression for a function, it is customary to use the special symbol `λ`: one adds `λx` in front of the expression, followed by a dot (`.`) as a separation marker. Hence, instead of just `x²+1`, we write `λx.x²+1`, which means the function mapping `x` to `x² + 1`. This notation expresses that `x` itself is not a *concrete input value*, but an abstraction.

As soon as a concrete input value comes in, e.g. 3, we may give it as an *argument* to the function, thus making a start with the calculation. Usually, one expresses this first stage by writing the input value, embraced in a pair of parentheses, after the function: `(λx.x²+1)(3)`.

Our first attempt leads to a system called **λ-calculus**. This system encapsulates a formalisation of the basic aspects of functions, in particular their construction and their use.

>λ-calculus formalizes the basic aspects of mathematical functions, particularly their construction, application and evaluation.

Lambda calculus was invented by **Alonzo Church** in the 1930's (Church, 1933). Church's aim was to use his lambda calculus as a foundation for a formal theory of mathematics, in order to establish which functions are computable by means of an algorithm.

In the present chapter we do not yet consider types, being an abstraction of the well-known process of classifying entities into greater units; for example, one may consider N as the type of all natural numbers. So this chapter deals with the **untyped λ-calculus**. In all the following chapters, however, we shall consider typed versions of λ-calculus, varying in nature, which will end up in a system suitable for doing mathematics in a formal manner.


## 1.2 The essence of functions

- construction principles
- evaluation rule
- abstraction (a lambda)
- application
- lambda body
- abstract output value (unknown but fixed value)
- β-reduction (evaluation rule)
- substitution
- compatibility rules for reduction
- arity
- nullary function
- unary function
- binary function
- polyadic function
- currying
- partial application


In dealing with functions there are *two construction principles* and one *evaluation rule*.

The construction principles for functions are
- **Abstraction**: from exp `M` and var `x` we can construct a new exp `λx.M`. We call this the abstraction of `x` over `M`.
- **Application**: from exps `M` and `N` we can construct exp `M N`. We call this application of `M` to `N`.

If necessary, some parentheses should be added during the construction process.

(Remarks 1.2.2) 
A "free" usage of these constructions allows expressions which don't have an obvious meaning, such as `x x` or `y(λu.u)`; but for now we treat them like others, not worrying about their apparent lack of meaning. They may be considered subexpression, parts of a bigger exp where the free vars are bound.

The function `square` is now `λx.x²`. The stand-alone expression `x²` is still available, but it is no longer a function, but an **abstract output value**, i.e. the square of an unknown but fixed value `x`. The difference is subtle: assuming that `x` ranges over ℕ, then `λx.x²` is a function `ℕ → ℕ`. But `x²` is not - it represents an ℕ.

λ-calculus is particularly suited for the description of simpler functions, which can be described by a simple mathematical expression. It takes some effort to use the λ-notation to describe multi-part functions like 'abs' or function with a certani domain and codomain.


Next to the two construction principles, there is also a rule for evaluation of λ-expressions. The formalisation of the evaluation process is called β-reduction and it makes use of substitution.

**Substitution** is formally expressed as `B[x:=A]` and means replacing the parameter `x` by an arg `A` throughout the function's body `B`.

**β-reduction**: an expression of the form `(λx.M)N` can be rewritten as the expression M[x:=N] signifying the expression `M` in which every `x` has been replaced with `N`. We call this process β-reduction of `(λx.M)N` to M[x:=N].

(λx.M)N ⟶ᵦ M[x:=N]

Reduction is also possible on applicable subexpressions: a subexp `(λx.M)N` may be rewritten as M[x:=N] provided that the rest of the expression is left unchanged. The full former exp, with subexp `(λx.M)N`, is then said to reduce to the full latter expression, with subexp M[x:=N].

>The rules describing how reduction extends from subexpressions to enclosing expressions is called the **compatibility rules for reduction**.

Example: by the compatibility rule `λz.((λx.x)(λy.y))` reduces to `λz.(λy.y)`.

(Remarks 1.2.5) The term "application" is deceptive: an application of `M` to `N` is not the result of applying `M` to `N` but only *the first step in the procedure*: we can only say that the application constructs a new expression, `M N`, which, at some later stage, may lead to the *actual execution of the function*. For example, the application of `λx.√x` to arg 7 produces the new exp `(λx.√x)(7)`, in which *the function has not yet been executed (applied)*. It is only *after the reduction* of this term that we obtain the result of the application, and the answer √7.

(Remark 1.2.6) λ-calculus is only works with *unary functions*. However, this is not a problem since any *polyadic function* can be converted into a composite of unary functions through **currying**. For example, a binary function like `λ(x,y).x²+y` is converted to `λx.λy.x²+y` and the latter function is called the *curryied version* of the former one. Currying also gives us the ability of *partial application* of functions. This idea can already be found in the work of Moses Schönfinkel (Schönfinkel, 1924).

There are subtle differences between the two versions when we provide them with two input values, for example: give `f = λ(x,y).(x²+y)` as argument the pair (3, 5), then `f(3, 5)` reduces to 3²+5. Similarly, we can give `g = λx.λy.x²+y` these two arguments, but only successively and in the correct order; so first 3 and then 5: the result is `(g(3))(5)`, which reduces again to `3²+5` (use the reduction rule twice). By the way: with function `g` we have the liberty to give only one argument and then stop the process: `g(3)` has a meaning in itself, it reduces to `λy.(3²+y)`. This is not possible with function `f`, which always needs a pair of arguments.


## 1.3 Lambda-terms

- variables
- abstraction
- application
- β-reduction
- lambda term
- lambda expression
- inductive definition of lambda terms
- recursive definition of lambda terms
- subterms of a lambda term (form a multiset)
- syntactical identity, `≡` (`≢`)
- subterm (subexp)
- proper subterm, subterm
- subset of lambda terms, multiset `Sub`
- reflexivity and transitivity of subterms
- subterm occurrences
- variable occurrences
- lambda binder
- binding occurrence
- parentheses convention



The main concern of the discipline of lambda calculus is the behaviour of functions in the simplest, most abstract view.

This means that we don't actually have anything predefined at the start, only the rules for construction and evaluation. Everything (numbers, Booleans, operations, data structures) will have to be encoded in terms of lambda functions.

Informally, the constructions of λ-calculus are
- variables (`x`, `y`, `z`, …), possibly decorated with primes and shit
- abstraction, `λx.M`
- application, `M N`
- β-reduction, the calculation (eval) rule, M[x:=N]


(Remark 1.3.1) Lambda calculus or λ-calculus was invented by A.Church in the 1930s (Church, 1933). Church's aim was to use his lambda calculus as a foundation for a formal theory of mathematics, in order to establish which functions are *computable* by means of an algorithm (and which are not).

>The expressions of λ-calculus are called **λ-terms**.

The following inductive definition formally establishes how the set `𝚲` of all λ-terms is constructed.

First, we assume the existence of an infinite set `𝓥` of variables (or more precisely, variable names), `𝓥 = {x, y, z, …}`.

(Definition 1.3.2) 
The set _𝚲_ of λ-terms
- Var: If `u ∈ 𝓥` then `u ∈ 𝚲`
- App: If `M, N ∈ 𝚲` then `(M N) ∈ 𝚲`
- Abs: If `u ∈ 𝓥` and `M ∈ 𝚲` then `(λu.M) ∈ 𝚲`

Saying that this is an *inductive definition* of `𝚲` means that these 3 ways are the only ones possible to construct elements of `𝚲`.

An alternative way to define `𝚲` is via abstract syntax i.e. a grammar:

```
Λ := V | (Λ Λ) | (λV . Λ)

term := var
      | 'λ' var '.' term
      | ( term ) term
var  := x | y | z | …
```

Examples of λ-terms:
- with Var as construction principle: x, y, z
- with App as final construction step
  - xx
  - yx
  - x(xz)
- with Abs as final step
  - λx.xz
  - λy.λz.x
  - λx.λx.xx
- again with App as final step
  - (λx.xz)y
  - y(λx.xz)
  - (λx.x)(λx.x)


(Notation 1.3.4)
The representation of λ-terms
- We use letters x, y, z with subscripts and primes to denote vars in V
- To denote elements of Λ, we use L, M, N and variants thereof

**Syntactical identity**, `≡`, of two λ-terms is denoted with the symbol `≡`. So `(x z) ≡ (x z)`, but `(x z) ≢ (x y)`. Note that `M ≡ N` expresses that the actual λ-terms represented by M and N are identical.


With the following recursive definition we determine what the **subterms** of a given λ-term are; these form a *multiset* since identical terms may occur more than once.

(Definition 1.3.5) 
The **subset of lambda terms**, multiset `Sub`

```
Sub(x)    = {x}                            for each x ∈ V
Sub(M N)  = Sub(M) ⋃ Sub(N) ⋃ { M N }
Sub(λx.M) = Sub(M) ⋃ { (λx.M) }
```

Properties:
- `L` is a *subterm*        of `M` if `L ∈ Sub(M)`
- `L` is a *proper subterm* of `M` if `L ∈ Sub(M)` but `L ≠ M`

(Lemma 1.3.6)
- Reflexivity : for all λ-terms `M`, `M ∈ Sub(M)`
- Reflexivity: if `L ∈ Sub(M)` and `M ∈ Sub(N)` then `L ∈ Sub(N)`


Some λ-terms can occur several times as subterms in a given term. For example, in `x x`, the variable `x ∈ Sub(x x)` for two reasons: the first `x` is a subterm as is the second one. In such cases, subterms have different *occurrences*.


For example, `λx.x x` has 4 subterms:
- itself
- the app `x x`
- the left `x` var
- the right `x` var
- the `x` in the *λ-binder* is not s subterm but a *binding occurrence*

Tree representation of a λ-exp makes it easy to locate the subterms. 
For example, `y(λx.xz)`

```
  @
 / \
y   λx
    |
    @
   / \
  x   z
```

The subterms of a λ-term `M` correspond to the subtrees in the tree representation of `M`. Variables are always at the leaves, i.e. a subterm consisting of a single variable corresponds to a labeled leaf.

(Notation 1.3.10) The parentheses convention: 
Excess parentheses are reduced by these conventions
- parens in outermost position are omitted   
  M N ≡ (M N), λx.M ≡ (λx.M)
- App is left-associative
  M N L Q ≡ ((M N) L) Q
- Abs is right-associative
  λx.λy.λz.M ≡ λx.(λy.(λz.(M)))
- App takes precedence over Abs 
  λx.MN ≡ λx.(MN) ≢ (λx.M)N
- Successive binders are combined in one 
  λxyz.M ≡ λx.λy.λz.M

Be careful: `λy.y(xy)` should not be read as `(λy.y)(xy)`, but `λy.(y(xy))` (since App takes precedence over Abs).


There is also a notion of proper subterm, which excludes the Reflexivity.

(Definition 1.3.8) **Proper subterm**: 
L is a proper subterm of M if L is a subterm of M, but L ≢ M


## 1.4 Free and bound variables

- variable occurrences
- bound vs free variables
- binding vs application variable occurrences
- binding occurrence
- bound occurrence
- free occurrence
- application occurrence
- set of free variables, `FV`
- combinator
- set of combinators `Λ₀`
- closed expression
- open expression


**Variable occurrences** in a λ-term can be divided into 3 categories:
- Free occurrence
- Binding occurrence
- Bound (application) occurrence

For example, in `λx.x x`, the first `x` is the *binding occurrence*, while the `x` vars in the body are *application occurrences*.

An occurrence of `x` which is free in `M` becomes bound in `λx.M`. That is, abstraction of `x` over `M` *binds* all free occurrences of `x` in `M`. This is why `x` in `λx.M` is called a *binding occurrence*.



(Definition 1.4.1) 
**Set of free variables**, `FV`. 
The set of free variables of a λ-term `L` is `FV(L)`

```hs
FV(x)    = {x}
FV(M N)  = FV(M) ⋃ FV(N)
FV(λx.M) = FV(M) ∖ {x}
```


But `FV (x(λx . xy)) = {x, y}`. This demonstrates that Definition 1.4.1 collects the variables which are free somewhere in a λ-term. However, other occurrences of that variable in the same term may be bound. In `x(λx.xy)`, both `x` and `y` occur free, but only the first occurrence of `x` is free.

When inspecting the tree representation of a λ-term, it is easy to see whether a certain occurrence of a variable is free or bound: start with a variable occurrence, say x, at a leaf of the tree. Now follow the 'root path' upwards, that is: follow the branch from that leaf to the root (the uppermost node). If we pass an 'abstraction node' with the same x inside, then the original x is bound; otherwise it is free.

Ending this section, we define an important subset of the set of all λ-terms by giving a name to terms without free variables:

(Definition 1.4.3) **Combinators**, Λ₀
- A combinator is a closed λ-term
- The set of all combinator is denoted `Λ₀`
- Lambda term M is closed if FV(M) = ∅

Examples: `λxyz.xxy` and `λxy.xxy` are closed λ-terms, `λx.xxy` is not.


## 1.5 Alpha conversion

- variable name is not important
- renaming variables, M[x:=xʹ]
- renaming relation `=α=`
- name capture
- α-conversion
- α-equivalence
- compatibility rules
- α-conversion is an equivalence relation (refl, symm, trans)
- α-convertible or α-equivalent
- α-convertibility or α-equivalence
- α-variant
- Barendregt convention: no conflicting var names


A particular name of the binding variable is not essential. Hence, the relation *α-conversion* or *α-equivalence* formally describes the process of renaming the binding and bound variables.


(Definition 1.5.1) **Renaming**, `M[x :=ᵅ xʹ]`. 
The exp `M[x := xʹ]` denotes the result of replacing 
every free occurrence of `x` by `xʹ` in the exp `M`.

**Renaming relation**, `=α=`
`λx.M` =α= `λxʹ.M[x := xʹ]`, provided that
1. `xʹ ∉ FV(M)` and
2. `xʹ` is not a binding variable in `M`


`λx.M` =α= `λxʹ.M[x := xʹ]`



The two conditions make sure there are no accidental **name captures**.

The intended effect is that the binding variable `x` in `λx.M`, along with all its application occurrences in `M`, are renamed to `xʹ`. The application occurrences of `x` are precisely the free `x` vars in `M`.

λx.λx.xy     x ∉ FV(λx.xy)     λx.λx.xy =α= λxʹ.λx.xy
λy.λx.xy     y ∈ FV(λx.xy)     λy.λx.xy =α= λyʹ.λx.xyʹ
λx.x(λx.xy)  x ∈ FV(x(λx.xy))  λx.x(λx.xy) =α= λxʹ.xʹ(λx.xy)
λy.x(λx.xy)  y ∈ FV(x(λx.xy))  λy.x(λx.xy) =α= λyʹ.x(λx.xyʹ)


Second condition says `xʹ` is not a binding variable in `M`. If this were permitted, then this binding `xʹ` could unintentionally bind a 'new' `x`ʹ replacing an `x`. For example, if exp is `λx.λy.x` then [x:=y](λx.λy.x) becomes `λy.λy.y` which is incorrect since `y` is now bound by the nearest binder.

In short: in the renaming of `λx.M` to `λy.M[x→y]`, it is prevented that the 'new' binding variable `y` binds 'old' free `y`s; and that any 'old' binding `y` binds a 'new' `y`.


The Renaming definition applies to the *full λ-term only*. In order to allow it more generally, we extend this definition to the following one:

(Definition 1.5.2) 
**α-conversion** or **α-equivalence**, `=α=`
1. Renaming:
  `λx.M` =α= `λy.M[x:= y]` as in the previous definition

2. Compatibility:
  if `M =α= N` then
   `M L =α= N L` 
   `L M =α= L N` 
  `λz.M =α= λz.N`  for any `z`

3. Reflexivity:   `M =α= M`
4. Symmetry:      `M =α= N` ⇒ `N =α= M`
5. Transitivity:  `L =α= M` ∧ `M =α= N` ⇒ `L =α= N`


Renaming is the basis of α-equivalence. The **compatibility rules** have the effect that one may also rename binding and application occurrences of variables in an arbitrary subterm of a given λ-term. Reflexivity, symmetry and transitivity make *α-conversion an equivalence relation*.



If `M =α= N`, then `M` and `N` are said to be *α-convertible or α-equivalent*. `M` is called an **α-variant** of `N` (and vice versa).


**Barendregt convention** means that we make sure upfront that there is no need for renaming by picking distinct names for variables (i.e. its binding and application occurrences). Using this convention we can avoid renaming, but not always - even if an exp is closed and follows the Barendregt convention, there may still be situations when renaming is required. 

The recursive nature of beta reductions implies that in the right subtree of a lambda abstraction, a variable may be free, even though it is bound when the entire tree is considered.


    (λf.λx.fx)(λf.λx.fx) ≡ λxʹx.xʹx ≢ λxx.xx
                         = λxʹx.xʹx
                         = λyx.yx


This exp is closed but fails the Barendregt convention. Proceeding with reduction as is, leads to name capture - it better be renamed first aas per the Barendregt convention:

    (λf.λx.fx)(λf.λx.fx) =α= (λf.λx.fx)(λs.λz.sz)



>Incorrect reductions:
```
(λf.λx.fx)(λf.λx.fx)     ⟶ᵦ [f:=λf.λx.fx](λx.fx)
= λx.(λf.λx.fx)x         ⟶ᵦ λx. [f:=x](λx.fx)
≠ λx.(λx.xx)            ...oops! x is captured by the inner binder
≠ λx.λx.xx
≠ λxx.xx

(start again)
(λf.λx.fx)(λf.λx.fx)    ⟶ᵦ [f:=λf.λx.fx](λx.fx)
= λx.(λf.λx.fx)x        ⟶ᵦ λx. [f:=x](λx.fx)
= λx. λf.λx.fx x           Are these parens are surpufluous? Operationally?
                           Would they be stripped automatically?
                           They def shouldn't be stripped cos that would cause
                           the last x to become bound by the nearest λx binder!
                           So what should we rename?!
                           seems we need to rename prior exp? but how?!
= λxʹ.(λf.λx.fx)xʹ      =α= [x:=xʹ](λx.(λf.λx.fx)x)   ?!?!

(start again)
(λf.λx.fx)(λf.λx.fx)     ⟶ᵦ [f:=λf.λx.fx](λx.fx)
(λf.λx.fx)(λf.λx.fx)     =α= [x:=xʹ](λf.λx.fx)(λf.λx.fx) ???
```

>Correct reduction:
```hs
(λf.λx.fx)(λf.λx.fx)     ⟶ᵦ [f:=λf.λx.fx](λx.fx)
= λx.(λf.λx.fx)x         =α= [x:=y](λx.(λf.λx.fx)x)
= λy.(λf.λx.fx)y         ⟶ᵦ λy.[f:=y](λx.fx)
= λy.(λx.yx)             (superfluous parens)
= λy.λx.yx               (contract binders)
= λyx.yx
```


## 1.6 Substitution

(Definition 1.6.1) **Substitution**


1.      x[x:=N] ≡ N                   since x = x
1.      y[x:=N] ≡ y                      if x ≠ y
2.  (M N)[x:=N] ≡ (M[x:=N]) (N[x:=N])
3. (λy.B)[x:=A] ≡ λz.(B[y→z][x:=A])
   if `λz.B[y→z]` is an α-variant 
   of `λy.B` such that `z ∉ FV(A)`



The (3) is how we push the substitution inside an abstraction. Thereby we have to be careful that free variables `y` of N do not become unintentionally bound by the binding var `y` of `λy.P` when N is substituted for the free `x`'s in P; this is the reason for taking a 'new' `z` (if necessary) such that `z ∉ FV(N)`.

(Remark 1.6.3)
1. When y ∉ FV (N), then the definition permits us to let binding variable `y` stay as it is: `(λy.P)[x:=N] ≡ λy.(P[x:=N])`, since `P[y→y] ≡ P`.
2. This also holds when `x ∉ FV(P)`, since then there's no `x` to substitute for
3. Renaming can be considered as a special case of substitution, since we can show that `M[x→u]` =α= `M[x:=u]` if the conditions of renaming are satisfied.

When we disregard the condition (3) and do not rename `y` in `λy.yx`, we obtain `λy.((yx)[x:=xy])`, which is `λy.y(xy)`. But this is clearly wrong, since the free `y` in `xy` has become bound in `λy.y(xy)`. Hence, one first should rename all `y`s in `λy.yx`, to, e.g. `z`.


**Sequential substitution** is doing a number of substitutions consecutively, e.g. (M[x:=N])[y:=L]. The order of substitutions matters.

In order to compensate on the right-hand side for the fact that, on the left-hand side, free `y`s in `N` become subject to the substitution [y:=L]. Thus, on the right-hand side we have N[y:=L] instead of N, being substituted for `x`.

However, this still is not enough. One should also prevent free `x`s in L, which are left untouched on the left-hand side, becoming subject to the substitution [x:=N[y:=L]] on the right-hand side. It suffices to require that `x ∉ FV(L)`. So we obtain:

(Lemma 1.6.5) 
Let `x ≠ y` and assume `x ∉ FV(L)` then M[x:=N][y:=L] ≡ M[y:=L][x:=N[y:=L]]

## 1.7 Lambda-terms modulo α-equivalence

*α-conversion* relates λ-terms that are in a sense equal: if `M =α= N`, then the structures of M and N are the same save for the names of the binding variables and the corresponding bound ones.

This implies that M and N have similar trees: a variable, λ or `a` in M's tree exactly matches with a corresponding one in N. Corresponding free variables have identical names; all combinations of binding and bound variables in M show exactly the same pattern as in N.

In a sense, such α-equivalent M and N represent the same λ-term. As to 'behaviour', there is no difference between them. Moreover, α-equivalence is conserved by elementary processes of term construction, as witnessed by the following lemma.

(Lemma 1.7.1) 
Let M₁ =α= N₁ and M₂ =α= N₂. Then also:
1.      M₁N₁ =α= M₂N₂
2.     λx.M₁ =α= λx.M₂
3. M₁[x:=N₁] =α= M₂[x:=N₂]

(In (1) and (2) we repeat (a variant of) the compatibility rules of Definition 1.5.2. Part (3) is stated without proof)

As a consequence of the above, it does not really matter which one to choose in a class of α-equivalent λ-terms: the results of manipulating such terms are always α-equivalent again. Therefore, we take the liberty to consider a full class of α-equivalent λ-terms as one abstract λ-term. We can also express this as follows: we abstract from the names of the bound (and binding) variables, by treating α-equivalent terms as equal; that is to say, we consider *λ-terms modulo α-equivalence*.

From now on, we identify *α-convertible λ-terms*. With a slight abuse of notation, we use `≡` also for **syntactical identity modulo α-equivalence**. So the relation α-equivalence gets out of sight: for example, instead of `λx.x =α= λy.y` we simply write `λx.x ≡ λy.y`.

Since this convention permits us to choose the names of binding and bound variables at will, it is convenient to agree on the *Barendregt convention*: We choose the names for the binding variables in a λ-term in such a manner that they are all different, and such that each of them differs from all free variables occurring in the term. So, we do not write `(λxy.xz)(λxz.z)`, but e.g. `(λxy.xz)(λuv.v)`.

We also stretch out the Barendregt convention to 'intermediate' expressions with unexecuted substitutions; so we will not write `(λx.xyz)[y:=λx.x]`, or `(λx.xyz)[y:=λy.y]`, or `(λx.xyz)[y:=λz.z]`, but, e.g. `(λx.xyz)[y:=λu.u]`, in line with the Barendregt convention.




## 1.8 Beta reduction


## 1.9 Normal forms and confluence


(Definition 1.9.6) 
Weak normalisation, strong normalisation
1. M is weakly normalising if there is an N in β-normal form such that M β N
2. M is strongly normalising if there are no infinite reduction paths starting from M


(Theorem 1.9.8)  
*Church-Rosser*; *Confluence*.
Suppose that for a given λ-term M, we have M ->>ᵦ N₁ and M ->>ᵦ N₂. Then there is a λ-term N₃ such that N₁ ->>ᵦ N₃ and N₂ ->>ᵦ N₃.

```
    M
  /   \
N₁     N₂
  \   /
    N₃
```

The importance of the Church-Rosser Theorem lies in the consequence that the outcome of a calculation (if it exists) is independent of the order in which the calculations are executed.

A corollary to the Church-Rosser Theorem says that any pair of convertible terms has a common reduct.

(Lemma 1.9.10)
1. If M has N as β-normal form, then M ->>ᵦ N
2. A λ-term has at most one β-normal form

Speaking informally, the consequences of this lemma are:
1. If a λ-term has an outcome, then this outcome can be reached by 'forward calculation' (i.e. β-reduction)
2. An outcome of a calculation, if it exists, is unique. (There cannot be two different outcomes for one λ-term.)

## 1.10 Fixed Point Theorem

A remarkable aspect of untyped lambda calculus is that every λ-term L has a fixed point, i.e. for each L there exists a λ-term M such that `L M =ᵦ= M`.

A fixed point combinator is a closed term which constructs a fixed point for an arbitrary input term. One such fixpoint combinator is Y.

    Y ≡ λy.(λx.y(xx))(λx.y(xx))

## 1.11 Conclusions

### Positive properties of untyped lambda calculus

- It formally describes the input-output behaviour of functions, including the essential construction principles, abstraction and application, and the evaluation rule, β-reduction, as well as dealing with variable binding.
- Substitution is a fundamental mechanism for function evaluation, and it has some very tricky corner cases. However, substitution can be treated rigorously in untyped lambda calculus.
- Conversion is an extension of reduction. It covers the notion of being equivalent by means of calculations (β-equvalence, α-equvalence).
- β-normal form defines the notion of possible outcome of a calculation.
- Confluence, a desired property for calculations, is guaranteed.
- The consequence of confluence is the uniqueness of β-normal forms (if the β-normal form exists): a calculation cannot have more than one outcome.
- Fixpoints can be sued to solve recursive equations.
- Untyped lambda calculus is Turing-complete, in fact it is equal model of computation to Turing machine.

### Negative properties of untyped lambda calculus

- Self-application is allowed, although very counter-intuitive.
- Existence of normal forms for λ-terms is not guaranteed, so we have the real possibility of undesired infinite calculations.
- Each λ-term is guaranteed to have a fixed point, which is not in accordance with the proper behaviour of functions.

~ ~ ~

Next we investigate STLC and then systems obtained with further progression of abstractions and enhancements, each with own special features and advantages.

## 1.12 Further reading

## 1.13 Exercises
