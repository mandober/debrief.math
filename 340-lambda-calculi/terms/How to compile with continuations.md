---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/cps-conversion/
page-title:       How to compile with continuations
article-title:    How to compile with continuations
article-length:   13006
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# How to compile with continuations

In terms of unreasonable effectiveness,
the transformation to 
continuation-passing style (CPS)
ranks with the Y combinator.
In terms of unreasonable effectiveness, the transformation to [continuation-passing style (CPS)][1] ranks with the [Y combinator][2].

During compilation, high-level control constructs ranging from coroutines and exceptions to while loops and break statements steadily desugar into a mixture of two constructs: calls to functions and calls to continuations.

Then, during CPS transformation, continuations desugar into functions.

A single control construct remains: lambda.

The drop in complexity is substantial:

![](http://matt.might.net/articles/cps-conversion/images/cps-conversion.png)

Knowing how to convert code into CPS, either by hand or algorithmically, is a powerful weapon in the programmer's arsenal.

Yet, there are many methods for transforming into CPS.

[Danvy, Millikin and Nielsen][3] have been able to connect some of these methods, including the well-known treatments in Appel's [Compiling with Continuations][4]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=052103311X) and Queinnec's [Lisp in Small Pieces][5]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0521545668).

Even with these connections, *learning* CPS transformation remains difficult.

The goal of this article is to introduce CPS transforms in small, individually digestible pieces before stitching them back together as a unified whole.

(Code is available in [Racket][6]; techniques applicable to any language.)

## Continuation-passing style

If you're new to continuation-passing style, I recommend my earlier [post on continuation-passing style by example][7].

For the first three transforms, the input language is the lambda calculus:

 <expr> ::= (λ (<var>) <expr>)
         |  <var>
         |  (<expr> <expr>)

and, they will all target the same CPS form:

 <aexp> ::= (λ (<var>\*) <cexp>)
         |  <var>

 <cexp> ::=  (<aexp> <aexp>\*)

The CPS world has two kind of expressions: atomic and complex.

Atomic expressions always produce a value and never cause side effects.

Complex expressions may not terminate, and they may produce side effects.

For the fourth transform, it will become partitioned CPS, and for the final transform, it will be a more realistic intermediate language with side effects, conditionals, basic values and explict recursion.

## The naive transformation

The naive transformation likely dates to Plotkin's earliest work.

It is the transformation that newcomers often discover for themselves.

In this transformation, we have two functions, `M` and `T`:

-   `M : expr => aexp` converts an atomic value (a variable or a lambda term) into an atomic CPS value; and
-   `T : expr × aexp => cexp` takes an expression and a syntactic continuation, and applies the continuation to a CPS-converted version of the expression.

The expression `(T expr cont)` might be read "the transformation of `expr` into continuation-passing style, such that `cont` will be invoked on its result."

The `M` function only has to watch for lambda terms. When it sees a lambda term, it adds a fresh continuation parameter, `$k`, and then transforms the body of the lambda term into continuation passing style, asking it to invoke `$k` on the result. Variables are unchanged:

(define (M expr)
  (match expr
    \[\`(λ (,var) ,expr)
      ; =>
      (define $k (gensym '$k))
     \`(λ (,var ,$k) ,(T expr $k))\]
    
    \[(? symbol?)  #;=>  expr\]))

The transform `(T expr cont)` will transform `expr` into a CPS value, and then construct a call site that applies the term `cont` to that value:

(define (T expr cont)
  (match expr
    \[\`(λ . ,\_)     \`(,cont ,(M expr))\]
    \[ (? symbol?)  \`(,cont ,(M expr))\]
    \[\`(,f ,e)    
      ; =>
      (define $f (gensym '$f))
      (define $e (gensym '$e))
      (T f \`(λ (,$f)
              ,(T e \`(λ (,$e)
                       (,$f ,$e ,cont)))))\]))

In the function-application transform, the values of both the function and the argument have to be converted into CPS.

The transform converts each with `T`, and then catches their results in newly-created continuations. (Both of those lambda terms are continuations.)

### Examples

Even while this transformation is simple, its results are poor.

For example, the following:

 (T '(g a) 'halt) 

produces:

 ((λ ($f1445) 
  ((λ ($e1446) 
   ($f1445 $e1446 halt)) a)) g) 

when, clearly, it would have been better to produce:

  (g a halt)

The transformation of function application is the main culprit: the transform assumes that the function and its argument are complex expressions, even though most of the time, they will be atomic.

## The higher-order transform

The higher-order CPS transform is a response to the drawbacks of the previous CPS transform.

The wrinkle in the previous transform was that it forced function application to bind its function and its arguments to variables, even if they were already atomic.

If the transform receives a real function expecting the atomic version of a the supplied expression, then the transform can check whether it is necessary to bind it to a variable.

In the higher-order transform, the function `T : expr × (aexp => cexp) => cexp` will receive a function instead of a syntactic continuation; this callback function will be passed an atomized version of the expression, and it is expected to produce a complex CPS form that utilizes it:

(define (T expr k)
  (match expr
    \[\`(λ . ,\_)      (k (M expr))\]
    \[ (? symbol?)   (k (M expr))\]
    \[\`(,f ,e)    
      ; =>
      (define $rv (gensym '$rv))
      (define cont \`(λ (,$rv) ,(k $rv)))
      (T f (λ ($f)
             (T e (λ ($e)
                    \`(,$f ,$e ,cont)))))\]))
     
(define (M expr)
  (match expr
    \[\`(λ (,var) ,expr)
      ; =>
      (define $k (gensym '$k))
     \`(λ (,var ,$k) ,(T expr (λ (rv) \`(,$k ,rv))))\]
    
    \[(? symbol?)  #;=>  expr\]))

This simple shift in perspective is economical: if the expression to be transformed is already atomic, it need not be bound to a fresh variable.

## Example

The transform ``(T '(g a) (λ (ans) `(halt ,ans)))`` now produces:

 (g a (λ ($rv1) (halt $rv1))) 

This is two steps forward, and one step back: the higher-order transform eliminated the redundant bindings, but introduced an η-expansion around the continuation.

## A hybrid transform

Combining the naive and higher-order transforms provides the best of both worlds.

The transform now has three principal functions:

-   `T-c : expr × aexp => cexp`
-   `T-k : expr × (aexp => cexp) => cexp`
-   `M : expr => aexp`

The transforms can call the function most appropriate in each context:

(define (T-k expr k)
  (match expr
    \[\`(λ . ,\_)      (k (M expr))\]
    \[ (? symbol?)   (k (M expr))\]
    \[\`(,f ,e)    
      ; =>
      (define $rv (gensym '$rv))
      (define cont \`(λ (,$rv) ,(k $rv)))
      (T-k f (λ ($f)
             (T-k e (λ ($e)
                      \`(,$f ,$e ,cont)))))\]))

(define (T-c expr c)
  (match expr
    \[\`(λ . ,\_)     \`(,c ,(M expr))\]
    \[ (? symbol?)  \`(,c ,(M expr))\]
    \[\`(,f ,e)    
      ; =>
      (T-k f (λ ($f)
               (T-k e (λ ($e)
                        \`(,$f ,$e ,c)))))\]))
     
(define (M expr)
  (match expr
    \[\`(λ (,var) ,expr)
      ; =>
      (define $k (gensym '$k))
     \`(λ (,var ,$k) ,(T-c expr $k))\]
    
    \[(? symbol?)  #;=>  expr\]))

## Example

With this hybrid transform, `(T-c '(g a) 'halt)` nails it:

  (g a halt)

## Partitioned CPS

At first glance, it seems that CPS destroys the stack.

All calls become tail calls, so in effect, there is no stack.

(There are some advantages \[and disadvantages\] to stackless compilation.)

Yet, if the transform tags variables, call forms and lambdas as being *user* or *continuation*, the stack is recoverable.

To start, split the grammar:

 <uexp> ::= (λ (<uvar> <kvar>) <call>)
         |  <uvar>
 <kexp> ::= (κ (<uvar>) <call>)
         |  <kvar>

 <call>  ::=  ucall | kcall
 <ucall> ::=  (<uexp> <uexp> <kexp>)
 <kcall> ::=  (<kexp> <uexp>)

A κ form is equivalent to a λ form, but it indicates that this procedure is a continuation introduced by the transform.

To generate a fresh variable bound to a user value, the transform will use `genusym`, and for a fresh variables bound to a continuation, the transform will use `genksym`:

(define (T-k expr k)
  (match expr
    \[\`(λ . ,\_)      (k (M expr))\]
    \[ (? symbol?)   (k (M expr))\]
    \[\`(,f ,e)    
      ; =>
      (define $rv (genusym '$rv))
      (define cont \`(κ (,$rv) ,(k $rv)))
      (T-k f (λ ($f)
             (T-k e (λ ($e)
                    \`(,$f ,$e ,cont)))))\]))

(define (T-c expr c)
  (match expr
    \[\`(λ . ,\_)     \`(,c ,(M expr))\]
    \[ (? symbol?)  \`(,c ,(M expr))\]
    \[\`(,f ,e)    
      ; =>
      (T-k f (λ ($f)
               (T-k e (λ ($e)
                        \`(,$f ,$e ,c)))))\]))
     
(define (M expr)
  (match expr
    \[\`(λ (,var) ,expr)
      ; =>
      (define $k (genksym '$k))
     \`(λ (,var ,$k) ,(T-c expr $k))\]
    
    \[(? symbol?)  #;=>  expr\])) 

### Recovering the stack

Because continuations are used in a last-allocated, first-invoked fashion, we can implement them as a stack.

We can even use the stack pointer register.

When a continuation gets allocated, bump the stack pointer.

When a continuation gets invoked, deallocate its space by resetting the stack pointer to that continuation.

In the absence of `call/cc`, this is provably safe.

And, even with `call/ec` in use, this is provably safe.

### Scaling to real language features

The lambda calculus makes a nice platform for studying the architecture of a program transformation.

Ultimately, however, that transformation must run on real code.

Fortunately, the hybrid CPS transform readily adapts to features like basic values, conditionals, side effects, sequencing and explicit recursion.

Consider an expanded input language:

<aexpr> ::= (λ (<var>\*) <expr>)
         |  <var>
         |  #t | #f
         |  <number>
         |  <string>
         |  (void)
         |  call/ec | call/cc

<expr> ::= <aexpr>
        |  (begin <expr>\*)
        |  (if <expr> <expr> <expr>)
        |  (set! <var> <expr>)
        |  (letrec (\[<var> <aexpr>\]\*) <expr>)
        |  (<prim> <expr>\*)
        |  (<expr> <expr>\*)

<prim> = { + , - , / , \* , = }

And an expanded CPS:

<aexp> ::= (λ (<var>\*) <cexp>)
        |  <var>
        |  #t | #f
        |  <number>
        |  <string>
        |  (void)

<cexp> ::= (if <aexp> <cexp> <cexp>)
        |  (set-then! <var> <aexp> <cexp>)
        |  (letrec (\[<var> <aexp>\]\*) <cexp>)
        |  ((cps <prim>) <aexp>\*)
        |  (<aexp> <aexp>\*)

The transform ends up with four principal functions:

-   `T-c : expr × aexp => cexp`
-   `T-k : expr × (aexp => cexp) => cexp`
-   `T*-k : expr* × (aexp* => cexp) => cexp`
-   `M : expr => aexp`

For instance, `T-c` adds about one case per construct:

(define (T-c expr c)
  (match expr
    \[ (? aexpr?)  #;=>  \`(,c ,(M expr))\]
    
    \[\`(begin ,expr)      (T-c expr c)\]
    
    \[\`(begin ,expr ,exprs ...)
      (T-k expr (λ (\_)
                  (T-c \`(begin ,@exprs) c)))\]
    
    \[\`(if ,exprc ,exprt ,exprf)
      ; We have to bind the cont to avoid
      ; a possible code blow-up:
      (define $k (gensym '$k))
      \`((λ (,$k)
          ,(T-k exprc (λ (aexp)
                        \`(if ,aexp 
                             ,(T-c exprt $k)
                             ,(T-c exprf $k)))))
        ,c)\]
    
    \[\`(set! ,var ,expr)
      (T-k expr (λ (aexp)
                  \`(set-then! ,var ,aexp
                              \`(,c (void)))))\]
   
    ; WARNING: This transformation is not hygienic 
    ; if the continuation c references any of the 
    ; bound variables!  
    ; 
    ; Use this transformation only on alphatized 
    ; programs!
    \[\`(letrec (\[,vs ,as\] ...) ,expr)
     \`(letrec (,@(map list vs (map M as))) 
        ,(T-c expr c))\]
    
    \[\`(,(and p (? prim?)) ,es ...)
      ; =>
     (T\*-k es (λ ($es)
                \`((cps ,p) ,@$es ,c)))\]
    
    \[\`(,f ,es ...)    
      ; =>
      (T-k f (λ ($f)
             (T\*-k es (λ ($es)
                      \`(,$f ,@$es ,c)))))\]))

The new cases for `T-k` look almost the same.

The new helper `T*-k` converts a sequence of expressions simultaneously:

(define (T\*-k exprs k)
  (cond
    \[(null? exprs)   (k '())\]
    \[(pair? exprs)   (T-k (car exprs) (λ (hd)
                       (T\*-k (cdr exprs) (λ (tl)
                         (k (cons hd tl))))))\]))

And, it is straightforward to desugar `call/cc` or `call/ec`; both become:

  (λ (f cc) (f (λ (x \_) (cc x)) cc)) 

#### A warning on hygiene and letrec

The transformation for `letrec` is not hygienic, because the transformation can introduce the `letrec`'d bindings into the scope of the continuation that gets passed to the transformer.

If you're using this in practice, alphatize the program first, or modify letrec to bind the continuation to a variable outside the scope of the letrec.

## Code

-   [lc-convert.rkt][8] : the naive converter.
-   [lc-ho-convert.rkt][9] : the higher-order converter.
-   [lc-hybrid.rkt][10] : the hybrid converter.
-   [lc-partition.rkt][11] : the partition converter.
-   [scheme-cps-convert.rkt][12] : a converter for a richer language.

## More resources

---

[1]: http://matt.might.net/articles/by-example-continuation-passing-style/
[2]: http://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
[3]: http://www.brics.dk/RS/07/Abs/BRICS-RS-07-Abs/BRICS-RS-07-Abs.html#BRICS-RS-07-6
[4]: http://www.amazon.com/gp/product/052103311X/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=052103311X
[5]: http://www.amazon.com/gp/product/0521545668/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0521545668
[6]: http://www.racket-lang.org/
[7]: https://matt.might.net/articles/by-example-continuation-passing-style/
[8]: https://matt.might.net/articles/cps-conversion/code/lc-convert.rkt
[9]: https://matt.might.net/articles/cps-conversion/code/lc-ho-convert.rkt
[10]: https://matt.might.net/articles/cps-conversion/code/lc-hybrid.rkt
[11]: https://matt.might.net/articles/cps-conversion/code/lc-partition.rkt
[12]: https://matt.might.net/articles/cps-conversion/code/scheme-cps-convert.rkt
