# Reduction to WHNF

The syntax of untyped λ-calculus: `T := x | λx.T | T T`

The implementation in Haskell is more-less a direct translation:

`data Term = Var String | Abs String Term | App Term Term`

There is the *object language*, i.e. the λ-expressions written in the λ-calculus notation. This is the *concrete syntax*.

The definition of syntax is given in the *meta-language* (BNF), in which meta-variables, like `T`, range over lambda terms (meta-variables are usually given in uppercase). The variable `x` may be considered both an (object) variable, in which case it is the literal `x`, or a meta-variable `x`, in which case it is a placeholder for any object variable, e.g. `x`, `y`, `z`, etc. The difference, if important at all, is usually clear from the context; most commonly variables such as `x` belong to the object language, i.e. to the concrete syntax.

The *abstract syntax* is best presented as a tree of λ-terms. There may be a tree constructed from the object-language, but usually it is build after an expression is parsed into a meta-language (Haskell), presented as a tree of Haskell expresions (that represent parsed, but unevaluated, λ-terms).


```hs
-- proper tree
data Tree = Leaf String | Node Tree Tree

-- tree with 2 types of nodes
data Tree = Leaf String
          | Node2 String Tree
          | Node1 Tree   Tree

-- lambda-terms
data Term = Var String
          | Abs String Term
          | App Term   Term
```

Visually:
- `Var x`, with `s :: String` is always a leaf
- a "normal" type of node `App` has 2 childeren, both are subtrees of `Term`s
- a special type of node `Abs` has 2 childeren, but the left one is `String`

Markup:
- `Var x` is presented by `x` alone
- `App f a` represents `F A` and is presented by the node `@`
- `Abs p b` represents `λx.T` and is presented by the node `λ`

λ-expresion `(λab.b)(λx.x)(λy.y)`

```
(λab.b)(λx.x)(λy.y) reformatted:

((λa. λb. b) (λx. x)) (λy. y)
            |        |
            @²       |
                     @¹

             @¹
       ,-----|-----,
       |           |
       @²          λ
     /    \       / \
    λ      λ     y   y
   / \    / \
  a   λ  x   x
     / \
    b   b

or, more compactly:

     @¹
   /   \
  @²    λy
 /  \   |
λa  λx  y
|   |
λb  x
|
b
```


Evaluating a lambda expression to WHNF means performing the normal order reduction; it doesn't reduce under abstractions, i.e. *no reduction under abstraction*. Reduction to NF does reduction under abstraction.
