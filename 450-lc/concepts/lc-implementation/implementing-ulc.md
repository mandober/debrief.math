# LC :: Implementing untyped LC

- Syntax
- Values
- Axioms (rules)
  - α-equivalence
  - β-reduction
  - η-conversion
- Evaluation


## Syntax

The syntax of the untyped LC describes the 3 kinds of lambda terms: variables, lambda abstraction and application.

```hs
-- terms:
t := x
   | λx.t
   | t₁ t₂
```

### Variables

In LC, variables are names (identifiers) used the same way as in mathematical functions or functions in most PLs. The main role of variables is *name binding* - a variable binds an expression giving it a (temporarly) name. Abstractions introduce variables.

### Abstractions

A lambda abstraction defines an anonymous function or a *closure*. All functions (abstractions) in LC are unary - they only take a single argument. They also return a single value. Using *currying*, any polyadic function can be seen as set of nested unary functions.

An abstraction consists of a *head* and *body*.

The head of a lambda abstraction contains the **binder** - as the binder symbol `λ` - that marks this place as the **binding site**. This is the binding site of a variable writen after the `λ` symbol. The variable that follows the `λ` symbol is called the **parameter** of the function - that is, the function is *parameterized* by this variable (if the parameter represents time, we say it is a function of time).

The occurrence of the variable next to the binder (i.e. as a parameter) is also called the variable's **binding occurrence**.

The head of an abstraction is separated from the body with a dot (.).

The body of a lambda abstraction contains an arbitrary expression, comprised of the combinations of the 3 lambda terms.

For example, an arbitrary abstraction is usually denoted `λx.M`, where `M` is a **metavariable** that belongs to the *metalanguage*, and ranges over arbitrary lambda explanations. One instantiation of this formula could be the *identity function* `λx.x` (this instance is completely within the realm of the object language, i.e. LC).

For comparison, the same function can be denoted in math as `x ⟼ x`, although math usually likes to name functions, so `f(x) = x` represents the same function only named. In JS, the same function could be writen `x => x`. In Haskell, it is `\x -> x`, where the backslash replaces the `λ`, while `->` replaces the dot.

LC              | math                      | JS                        | Haskell
----------------|---------------------------|---------------------------|--------------------
λx.x            | x ⟼ x                    | x => x                    | \x -> x
λa.λb.a         | a ⟼ (b ⟼ x)             | a => b => a               | \a -> \b -> a
λf.λg.λx.fx(gx) | f ⟼ g ⟼ x ⟼ f(x)(g(x)) | f => g => x => f(x)(g(x)) | \f g x -> f x (g x)


Note how JS follows the mathematical notation, and how Haskell's notation is similar to LC. Being a functional languge, Haskell tries to minimize the syntax of the things that are used the most, so the function definition uses lambda-like style, while application is denoted by the minimal amount of characters - a single space. On the other hand, math and JS use the traditional notation for application that quickly accumulates too many parenthesis and gets unwieldy.

Denoting application:

```
fx(gx)          -- LC often even elides spaces
f(x)(g(x))      -- math and JS
f (x) (g (x))   -- breathable JS
f x (g x)       -- Haskell
f x $ g x       -- Haskell
```



If `M` doesn't mentioned the var `x` then the input of the function is completely divorced from its output, and such a function can only return an arbitrary value, e.g. `λx. 1` is a *constant function* that always returns 1 no matter the input. LC requires that a parameter exists - there is no way to declare the empty parameter list, a la JS, `() => 1`. Simlarly, LC also requires that the function be called with some actual term - there is no value liek `()` like is JS, e.g. `f()`, which means calling the function `f` with no arguments.

Therefore, any variable in a lambda expression is either bound - it is first declared as a parameter and then it is possibly used in the body. In fact, the occurrence of the parameter in the body is called the variable's **applied occurrence**. So, a variable first has a *binding occurrence* in the head, and then none, one, or multiple *applied occurrences* in the body of an abstraction.

In the body of an abstraction, a variable occurs either *bound* (having a binding occurrence) or *free* as it was bound somewhere outside the scope of the current subexpression. The binding occurrence of a variable is neither bound nor free.

So, in any lambda expression, all variables should be bound - it makes no sense for the overall expression to contain free variables - this is the same as having an undefined name in a PL. Normally, a variable should only occur free when a subexpression is considered - in the overall expression, it better be bound.

```
binding occurrence
 ↓
λx. x x
    ↑ ↑
applied occurrences
```

Variable `x` is bound in the overall expression `λx. x x`, but it is free in both applied occurrences in the subexpression `x x`, i.e. it is free in the body, i.e. when only the body of this abstraction is considered.





## Lambda term and lambda expression

In a narrow sense, a **lambda term** is any of the 3 syntactic terms of the LC. In a more wider sense, the phrase "lambda term" is also abused to refer to any lambda expression, although it is exactly the name **lambda expression** that should be used when referring to arbitrary expressions.


## Values

Since LC has only functions - function definition and function application - the only kind of values in LC are abstractions.

It's not sensible that the overall (top-level) expression is a Var term - such variable wouldn't mean anything - it would be a "undefined name" error.

App as the top term is not possible since it would have been reduced at some point.

Abs is the only sensible overall expression for thing to make sense. More precisely, a *combinator*, i.e. a *closed lambda expression* (without free variables anywhere) is usually what is left after the evaluation. Combinators and other closed expressions usually represent lambda-encoded data structures.


## Axioms

There are 3 fundamental axioms (or rules) in LC
- α-equivalence
- β-reduction
- η-conversion

### β-reduction

β-reduction is the only axiom that is also a *rule of computation*. 
β-reduction is associated to application of two lambda terms




## Evaluation strategy

An evaluation strategy must specify the exact way a reducable expression, called a **redex**, gets reduced.

A redex is an application, `M N`, where both `M` and `N` stand for arbitrary lambda expressions, and where `M` is a left operand and `N` is the right operand. Actually, `M` cannot be an arbitrary expression - it must resolve into an Abs for the App to make sense.


- direction: R2L or L2R
- order (nesting): outermost or innermost redex first?
- reduction under lambda?
- left operand is evaluated first until a function is revealed
- argument is evaluated first



## Recursion

```hs

----------------------------------- E-Fix
fix (λx.T) --> [x ↦ fix (λx.T)]T


-- fix (λx.x) = fix (λx. fix (λx.x)) = …
```

We make a worker function that will be built into the recursive function we want
- it needs to be fed a copy of itself as the first argument
- then, recursive calls can use that argument
- "fix worker" ties the recursive knot and gives us our recursive function
- It's like "unrolling the loop" in a functional context
- Simplification uses `E-Fix` rule to supply another layer for each rec. call

```hs
worker =
  λf.
   λn.
    if n == 0
      true
      (if n == 1
        false
        (f (n - 2)))

is_even = fix worker
```

### The `Y` and `Z` combinators for recursion

```hs
-- Y combinator
combY = \f -> ((\x -> (f (x x)))
               (\x -> (f (x x))))

-- Z combinator (i.e. lazy Y combinator)
combZ = \f -> ((\x -> (f (\y -> x x y)))
               (\x -> (f (\y -> x x y))))

evenF = Lam "rec"
  $ Lam "n"
    $ If (Equal vn (Num 0)) Tru
      $ If (Equal vn (Num 1)) Fls
        $ App (Var "rec")
          (Sub vn (Num 2))

iseven = App ycomb evenF
```

## Renaming

If x, y are variables, and M is a term, we write `M{y/x}` for the result of renaming `x` to `y` in `M`. Renaming is formally defined as follows:

```
{x:=y}x      ≡ y
{x:=y}z      ≡ z                       if x ≠ z

{x:=y}(M N)  ≡ {x:=y}M ({x:=y}N)

{x:=y}(λx.M) ≡ λy.({x:=y}M)
{x:=y}(λx.M) ≡ λz.({x:=y}M)            if x ≠ z
```

Note that this kind of renaming replaces all occurrences of `x` by `y`, whether free, bound, or binding. We will only apply it in cases where `y` does not already occur in `M`.

**α-equivalence** is the smallest congruence relation `=α` on lambda terms, such that for all terms M and all variables y that do not occur in `M`, 
`λx.M =α λy.({x:=y}M)`.

A relation on lambda terms is an *equivalence relation* if it satisfies the rules of refl, symm and trans. It is a *congruence relation* if it also satisfies rules of `cong` and `ξ`. Thus, by definition, α-equivalence is the smallest relation on lambda terms satisfying the six rules in the table below.

```hs

-------- (refl)
M = M


M = N
-------- (symm)
N = M


M = N   N = P
--------------- (trans)
    M = P


M = M′    N = N′
------------------ (cong)
    M N = M′ N′


   M = M′
---------------- (ξ)
λx.M = λx.M′


      y ∉ M
--------------------- (α)
λx.M = λy.({x:=y}M)
```


## Substitution

The capture-avoiding substitution of `N` for free occurrences of `x` in `M`, writen `[x:=]M`, is defined as follows:

```hs
[x:=N]x      ≡ N                      -- since x = x
[x:=N]y      ≡ y                            if x ≠ y

[x:=N](M P)  ≡ [x:=N]M ([x:=N]P)

[x:=N](λx.M) ≡ λx .              M    -- since x = x
[x:=N](λy.M) ≡ λy . ([x:=N]      M)         if x ≠ y, y ∉ FV(N)
[x:=N](λy.M) ≡ λy′. ([x:=N]{y′/y}M)         if x ≠ y, y ∈ FV(N), and fresh y′
```
