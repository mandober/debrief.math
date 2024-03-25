---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/closure-conversion/
page-title:       Closure conversion: How to compile lambda
article-title:    Closure conversion: How to compile lambda
article-length:   12199
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Closure conversion: How to compile lambda

What is lambda?
What is lambda?

Syntactically, *lambda* refers to a form for describing anonymous functions.

But, a lambda does not become a function pointer.

It becomes a closure.

Closures are data structures with both a code *and* a data component.

There are two dominant strategies for compiling lambdas into closures: flat closures and linked (or shared) closures.

It is possible to understand both strategies in terms of a single operation---closure conversion---and the distinction between the two as whether this transformation is applied top-down or bottom-up.

The examples below are provided in both Python and Racket.

The code below is provided in Racket.

For a more in-depth treatment, Appel's [Compiling with Continuations][1]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=052103311X) and Queinnec's [Lisp in Small Pieces][2]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0521545668) are both excellent references.

## The problem with lexical scope

You don't even need lambda to motivate closures.

Nested first-class functions will do.

Think in Python for the moment.

Suppose you define a function that returns a function:

def f(x):
  def g():
    return x
  return g

Now, call this function:

a = f(10)

What should `a()` yield?

According to lexical scope, `a()` yields 10.

Lexical scope is an important principle in program design. It is a prerequisite to WYSIWYG programming (known more formally as equational reasoning).

Now, think about how to implement lexical scope by compiling to C.

C doesn't have nested functions, so `g` must become top-level; perhaps:

typedef int (\*fp\_t)() ; // function pointer

int g () {
  return x ; // Oops: which x is this?
}

fp\_t f(int x) {
  return g ;
} 

But, there's a problem here: by hoisting the definition of `g`, the value of `x` moves from the argument of `f` to being a global `x`, if any such `x` even exists.

Some are tempted to solve the problem by creating a global version of `x` and setting it before returning `g`:

typedef int (\*fp\_t)() ; // function pointer

int \_\_global\_x ;

int g () {
  return \_\_global\_x ; // Oops: which x is this?
}

fp\_t f(int x) {
  \_\_global\_x = x ;
  return g ;
}

The troubling aspect of this solution is that it works *most* of the time. But, all we have to do is create two instances of the return value for `f` to mess things up:

a = f(10)
b = f(20) 

According to lexical scope, `a()` yields 10, while `b()` yields 20.

The naive "global" solution returns 20 for both.

We should return a new function from `f`, every time it is called.

But, C doesn't let you define new functions at run-time.

Clearly, function pointers alone are not sufficient.

What we need are closures.

## Closures

Conceptually, a closure consists of an open lambda term, plus an environment dictating the values of its free variables.

On open lambda term is one like the following:

 (lambda (x) z) ; lambda x: z # if you prefer Python

In this term, the meaning of `z` is not fixed.

If `z` is 10, then the function returns 10. If it's 20, then it returns 20.

So, by itself an open lambda term is not a function.

If we pair an open lambda term with an environment that maps variables to values, it determines a function.

That is:

 (lambda (x) z)  +  \[z => 10\]  =  f

where `f` could have been defined as:

 (define (f x) 10)

A closure is an open lambda term paired with an environment that gives values to all of its free variables.

Under the hood, a closure is a struct with two fields: one for code and one for an environment.

## Implementing closures

Suppose you still want to compile a high-level language with nested first-class functions or lambda terms down to C (or assembly).

We need to hoist all functions to the top level.

But, even with closures, the lambda terms within still have free variables

Closure conversion solves this problem by adding a new environment parameter to a lambda term, and pulling the values of its free variables from that structure.

That is, given a term like this in Python:

 lambda x: x + a + b # (lambda (x) (+ x a b))

it will become something like:

 lambda env, x: x + env\['a'\] + env\['b'\] 
 # (lambda (env x) 
 #   (+ x (env-ref env a) (env-ref env b))) 

In this code, `(env-ref env a)` is roughly equivalent to `env.a` in other languages or `env->a` in C.

Now it's safe to perform a "lambda-lifting" transformation, where a lambda term gets hoisted to a top-level definition.

We can replace the lambda term with a fresh symbol like `f42`, and add the following top-level definition to the program:

def f42 (env, x): return x + env\['a'\] + env\['b'\]

Of course, this doesn't quite work.

There are two problems: (1) all function calls need to pass an additional parameter---the environment---but (2) the call sites don't even have access to that environment.

To solve the second problem, we'll turn lambda forms into closure-creation forms, so that they return a pair containing the procedure and the environment.

That is:

 lambda x: x + a + b 

will become:

 (lambda env, x: x + env.a + env.b,
  {'a': a, 'b': b})
 # (make-closure (lambda (env x) 
 #                 (+ x (env-ref env a) (env-ref env b)))
 #               (make-env (a a) (b b)))

In this case, `make-closure` is a constructor for closures, and `make-env` is a special form for building environments.

At every application site, we'll know that the procedure to be applied is no longer a procedure, but a closure. Thus, call sites like:

 f(10)
 # (f 10)

will become (equivalent to) something like:

 tmp = f 
 tmp\[0\](tmp\[1\], 10)
 # (let ((tmp f))
 #   ((closure-proc tmp) (closure-env tmp) 10))

## Two closure conversion algorithms

Let's start with the pure lambda calculus:

 <exp> ::= (lambda (<var> ...) <exp>)
        |  (<exp> <exp> ...)
        |  <var> 

And, extend it with forms for closure conversion:

<exp> ::= (lambda (<var> ...) <exp>)
        |  (<exp> <exp> ...)
        |  <var>

        ;  added for closure conversion:
        |  (lambda\* (<var> <var> ...) <exp>)
        |  (make-closure <exp> <exp>)
        |  (make-env (<var> <exp>) ...)
        |  (env-ref <exp> <var>)
        |  (apply-closure <exp> <exp> ...) 

The `lambda*` form marks a lambda term as already closure-converted.

The `apply-closure` form is used to indicate that a call site is invoking a closure rather than a procedure.

In Racket, it's straightforward to define a procedure that closure converts a single lambda term:

(define (closure-convert exp)
  (match exp
    \[\`(lambda ,params ,body)
      (define $env (gensym 'env))
      (define params\* (cons $env params))
      (define fv (free exp))
      (define env (for/list ((v fv))
                    (list v v)))
      (define sub (for/hash ((v fv))
                    (values v \`(env-ref ,$env ,v))))
      (define body\* (substitute sub body))
     \`(make-closure (lambda\* ,params\* ,body\*)
                    (make-env ,@env))\]))

as long helper functions for constructing substitutions and computing free variables are available:

; free : exp => set\[var\]
(define (free exp)
  
  (match exp
    \[\`(lambda ,params ,body)
     (set-subtract (free body) (apply set params))\]
    
    \[\`(lambda\* ,params ,body)
     (set-subtract (free body) (apply set params))\]
    
    \[(? symbol?)
     (set exp)\]
    
    \[\`(make-closure ,proc, env)
     (set-union (free proc) (free env))\]
    
    \[\`(make-env (,vs ,es) ...)
     (apply set-union (map free es))\]
    
    \[\`(env-ref ,env ,v)
     (free env)\]
    
    \[\`(apply-closure ,f ,args ...)
     (apply set-union (map free \`(,f . ,args)))\]
    
    \[\`(,f ,args ...)
     (apply set-union (map free \`(,f . ,args)))\]))
    


; substitute : hash\[var,exp\] exp => exp
(define (substitute sub exp)
  (match exp
    \[\`(lambda ,params ,body)
      (define params\* (apply set params))
      (define sub\* 
        (for/hash (\[(k v) sub\] #:when (not (set-member? params\* k)))
          (values k v)))
      \`(lambda ,params ,(substitute sub\* body))\]
    
    \[\`(lambda\* ,params ,body)
     ; should not have free variables
      (define params\* (apply set params))
      (define sub\* 
        (for/hash (\[(k v) sub\] #:when (not (set-member? params\* k)))
          (values k v)))
      \`(lambda\* ,params ,(substitute sub\* body))\]
    
    \[(? symbol?)
     (if (hash-has-key? sub exp)
         (hash-ref sub exp)
         exp)\]
    
    \[\`(make-closure ,lam ,env)
     \`(make-closure ,(substitute sub lam) ,(substitute sub env))\]
    
    \[\`(make-env (,vs ,es) ...)
     \`(make-env ,@(map list vs (map (substitute-with sub) es)))\]
    
    \[\`(env-ref ,env ,v)
     \`(env-ref ,(substitute sub env) ,v)\]
    
    \[\`(apply-closure ,f ,args ...)
     \`(apply-closure ,@(map (substitute-with sub) \`(,f . ,args)))\]
    
    \[\`(,f ,args ...)
     (map (substitute-with sub) \`(,f . ,args))\]))

### Flat closures: Bottom-up closure conversion

If we apply closure-conversion in a bottom-up fashion, then variables end up getting copied between environments each time a closure is created.

The advantage to this approach is that it takes only a single field look-up to get the value of a variable. The disadvantage is that environments become larger, since every environment has to contain every free variable:

; transform/bottom-up : applies a bottom-up tree transform
(define (transform/bottom-up f exp)
  
  (define (t e) (transform/bottom-up f e))
  
  (let (\[exp\* (match exp
                \[\`(lambda ,params ,body)
                 \`(lambda ,params ,(t body))\]
                
                \[\`(lambda\* ,params ,body)
                 \`(lambda\* ,params ,(t body))\]
                
                \[(? symbol?) 
                 exp\]
                
                \[\`(make-closure ,lam ,env)
                 \`(make-closure ,(t lam) ,(t env))\]
                
                \[\`(make-env (,vs ,es) ...)
                 \`(make-env ,@(map list vs (map t es)))\]
                
                \[\`(env-ref ,env ,v)
                 \`(env-ref ,(t env) ,v)\]
                
                \[\`(apply-closure ,f ,args ...)
                 \`(apply-closure ,(t f) ,(map t args))\]
                
                \[\`(,f ,args ...)
                 \`(,(t f) ,@(map t args))\])\])
    (f exp\*)))


(define (flat-closure-convert exp)
  (transform/bottom-up closure-convert exp))

### Shared closures: Top-down closure conversion

If space is a concern, we can apply the closure conversion in a top-down fashion to yield shared environments:

With top-down conversion, accesses to variables get chained through outer environments.

Thus, this approach sacrifices speed for space:

; transform/top-down : applies a bottom-up tree transform
(define (transform/top-down f exp)
  
  (define (t e) (transform/top-down f e))
  
  (match (f exp)
    \[\`(lambda ,params ,body)
     \`(lambda ,params ,(t body))\]
    
    \[\`(lambda\* ,params ,body)
     \`(lambda\* ,params ,(t body))\]
                    
    \[(? symbol?) 
     exp\]
    
    \[\`(make-closure ,lam ,env)
     \`(make-closure ,(t lam) ,(t env))\]
    
    \[\`(make-env (,vs ,es) ...)
     \`(make-env ,@(map list vs (map t es)))\]
    
    \[\`(env-ref ,env ,v)
     \`(env-ref ,(t env) ,v)\]
    
    \[\`(apply-closure ,f ,args ...)
     \`(apply-closure ,(t f) ,@(map t args))\]
    
    \[\`(,f ,args ...)
     \`(,(t f) ,@(map t args))\]))


(define (shared-closure-convert exp)
  (transform/top-down closure-convert exp))

There's a minor caveat here. Top-down closure conversion doesn't implement shared environments exactly as expected. Some variables may still get copied if there are multiple direct child lambda terms for some lambda term.

To avoid this duplication, it's necessary to perform single-argument conversion. That is, all procedure should take one argument---a vector containing their parameters---and references to parameters should be converted into lookups in that structure.

## Code

For an implementation of closure conversion, see [closure-convert.rkt][3].

## More resources

Appel's [Compiling with Continuations][4]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=052103311X) and Queinnec's [Lisp in Small Pieces][5]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0521545668) are both excellent references.

For related blog posts on compilation, see:

-   [A-normalization][6].
-   [CPS conversion][7].
-   [Implementing exceptions][8].

---

[1]: http://www.amazon.com/gp/product/052103311X/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=052103311X
[2]: http://www.amazon.com/gp/product/0521545668/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0521545668
[3]: https://matt.might.net/articles/closure-conversion/code/closure-convert.rkt
[4]: http://www.amazon.com/gp/product/052103311X/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=052103311X
[5]: http://www.amazon.com/gp/product/0521545668/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0521545668
[6]: https://matt.might.net/articles/a-normalization/
[7]: https://matt.might.net/articles/cps-conversion/
[8]: https://matt.might.net/articles/implementing-exceptions/
