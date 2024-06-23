# LC :: Lambda Calculus Syntax

The syntax of lambda calculus consists of the 3 *syntactic forms*, called *lambda terms*.

Untyped lambda calculus has no types, only terms. Typed lambda calculi add types on top of the terms of the untyped lambda calculus.

In fact, there is no "the" untyped lambda calculus - there are many variants of untyped LC we might as well call them collectively untyped lambda calculi.

Lambda calculus has 3 terms:
1. variable (x,y,z,…)
2. lambda abstraction, (λx.B)
3. lambda application, (M N)

LC syntax can be specified in BNF:

```bnf
e := x        variable
   | λx.e     abstraction
   | e e      application
```

Here, `e` means lambda expression, althouhg a more correct term would be lambda term. However, since a term and exp are used interchangibly we opt for `e` and exp, because in typed LC `t` will be used for types (staying consistent).

The grammar described by the BNF hides many details. Another presentation of the grammar, more in line with the BNF notation, would be:

```bnf
exp := var
     | abs
     | app

var := x | y | …
abs := 'λ' var '.' exp
app := exp exp
```

Arbitrary lambda expressions are often denoted using *metavariables* (M, N, …). So another presenttion would be

```
M := x
   | λx.M
   | M N
```

Implementing LC in the most easily done in FPLs, where the given BNF syntax translates almost verbatim into a datatype:

```hs
data Exp
  = Var String
  | Abs String Exp
  | App Exp Exp
```

Lambda expressions are build by combining the 3 lambda terms. However, any lambda expression is also a lambda term since it is rooted in a lambda term.

"Rooted" means that a lambda expression may be presented as a *tree structure* with the main term as the tree's root.

The 3 lambda terms, each comprising the entire labda expressions would be these 3 trees:

```hs
-- Var as the root
        x

-- Abs as the root
       λx
        |
        B

-- App as the root
        @
       / \
      M   N
```

The symbol `@` is often used for application which is normally denoted by juxtaposition of two lambda exp (sometimes with a space between them); e.g. `MN` or `M N`.

A more complex lambda exp, e.g. `(λx.λy.x)(λa.a)(λb.b)` can be represented by the following tree:

```hs
          @
        /   \
     λx       @
      |     /   \
     λy   λa    λb
      |    |     |
      x    a     b
```

There is always a single *toplevel* lambda expression.

That is, considered as a PL, the entire "program" would consists of a single, toplevel, standalone lambda expression.

To find out *programatically* which of the 3 lambda terms is the root of a lambda expression, we fix a PL (Haskell used here) and scrutinize (i.e. pattern match) the expression in order to reveal its data ctor (Var, Abs or App).

```hs
root :: Exp -> String
root e = case e of
  Var x   -> "variable"
  Abs x e -> "abstraction"
  App m n -> "application"
```

However coplex, a lambda expression only has one of these data ctors at its root. In fact, the `Var` data ctor is not much of a building block for constructing complex expressions - the only thing it constructs is a variable, and variables cannot be composed to build bigger expressions.
