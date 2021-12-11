---
downloaded:       2021-11-03
author:           
page-url:         https://web.archive.org/web/20011206080336/http://www.jetcafe.org/~jim/lambda.html
page-title:       An Introduction to Lambda Calculus and Scheme
article-title:    An Introduction to Lambda Calculus and Scheme
article-length:   13678
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# An Introduction to Lambda Calculus and Scheme

The Wayback Machine - https://web.archive.org/web/20011206080336/http://www.jetcafe.org:80/~jim/lambda.html
The Wayback Machine - https://web.archive.org/web/20011206080336/http://www.jetcafe.org:80/~jim/lambda.html

<iframe id="donato-if" src="https://archive.org/includes/donate.php?as_page=1&amp;platform=wb&amp;referer=https%3A//web.archive.org/web/20011206080336/http%3A//www.jetcafe.org/~jim/lambda.html" scrolling="no" frameborder="0"></iframe>

$Id: lambda.html,v 1.2 2001/02/01 01:43:43 jim Exp jim $

---

Jim Larson  
1996-07-26

This talk was given at the JPL Section 312 Programming Lunchtime Seminar.

## Functions and Lambda Notation

A function accepts input and produces an output. Suppose we have a "chocolate-covering" function that produces the following outputs for the corresponding inputs:

peanuts->chocolate-covered peanuts
rasins->chocolate-covered rasins
ants->chocolate-covered ants

We can use Lambda-calculus to describe such a function:

Lx.chocolate-covered x

This is called a lambda-expression. (Here the "L" is supposed to be a lowercase Greek "lambda" character).

If we want to apply the function to an argument, we use the following syntax:

(Lx.chocolate-covered x)peanuts -> chocolate-covered peanuts

Functions can also be the result of applying a lambda-expression, as with this "covering function maker":

Ly.Lx.y-covered x

We can use this to create a caramel-covering function:

(Ly.Lx.y-covered x)caramel -> Lx.caramel-covered x

Functions can also be the inputs to other functions, as with this "apply-to-ants" function:

Lf.(f)ants

We can feed the chocolate-covering function to the "apply-to-ants" function:

(Lf.(f)ants)Lx.chocolate-covered x
-> (Lx.chocolate-covered x)ants
-> chocolate-covered ants

## Formal Lambda Calculus

Lambda-expressions have the following syntax:

lambda-expression ::=variable
| constant
| application
| abstraction
application ::= (lambda-expression)lambda-expression
abstraction ::= Lvariable.lambda-expression

The evaluation of lambda-expression is from the application of two reduction rules. The alpha-reduction rule says that we can consistantly rename bindings of variables:

Lx.E -> Lz.{z/x}E for any z which is neither free nor bound in E.

where {z/x}E means the substitution of z for x for any free occurance of x in E. The beta reduction rule says that application of a lambda-expression to an argument is the consistent replacement of the argument for the lambda-expression's bound variable in its body:

(Lx.P)Q -> \[Q/x\]P

where \[Q/x\]P means the substitution of Q for x for any free occurrance of x in P.

The Church-Rosser Theorem states that the final result of a chain of substitutions does not depend on the order in which the substitutions are performed.

## Universality of Lambda-Calculus

The Lambda-calculus is a universal model of computation, that is, any computation that can be expressed in a Turing machine can also be expressed in the lambda calculus.

To show this, here is the translation of a conditional control structure into lambda-calculus:

true = Lx.Ly.x
false = Lx.Ly.y
if-then-else = La.Lb.Lc.((a)b)c

(((if-then-else)false)apple)banana
-> (((La.Lb.Lc.((a)b)c)Lx.Ly.y)apple)banana
-> ((Lb.Lc.((Lx.Ly.y)b)c)apple)banana
-> (Lc.((Lx.Ly.y)apple)c)banana
-> ((Lx.Ly.y)apple)banana
-> (Ly.y)banana
-> banana

Here is the translation of some data structure operations:

cons = if-then-else
head = Lx.(x)true
tail = Lx.(x)false

0 = Lf.Lx.x
1 = Lf.Lx.(f)x
2 = Lf.Lx.(f)(f)x
3 = Lf.Lx.(f)(f)(f)x

succ = Ln.Lf.Lx.(f)((n)f)x
+ = Lm.Ln.Lf.Lx.((m)f)((n)f)x
\* = Lm.Ln.Lf.(m)(n)f
zero? = Ln.((n)(true)false)true
pred = Ln.(((n)Lp.Lz.((z)(succ)(p)true)(p)true)Lz.((z)0)0)false

You wouldn't want to really program like this, though.

Lastly, you can create recursive functions with the "Y combinator":

Y = Ly.(Lx.(y)(x)x)Lx.(y)(x)x

(Y)E -> (E)(Y)E -> ... -> (E)...(E)(Y)E

We need this to create recursive functions, such as the factorial funtion:

fact = Ln.(((if-then-else)(zero?)n)1)((\*)n)(fact)(pred)n

As written, this doesn't work since "fact" is a free variable in its own definition! We need some way to bind "fact" to "this function", which can be done with Y:

fact = (Y)Lf.Ln.(((if-then-else)(zero?)n)1)((\*)n)(f)(pred)n

## From Theory to Programming Language

Although the lambda-calculus is powerful enough to express any program, this doesn't mean that you'd actually __want__ to do so. After all, the Turing Machine offers an equally powerful computational basis.

The strength of the lambda-calculus is that it is easily used as a "glue" on top of a richer world of primitives. Its advantages as a glue are that it has a natural correspondence with the way that people program, and natural compilation techniques yield high-performance code. The latter comes through optimizations know as tail-call and continuation-passing, which might be the subject of future talks.

There are software engineering advantages to a language glued together with lambda-calculus. Lambda expressions can be understood locally - their dependence on their environment is entirely through their free variables. Lambda expressions tend to have fewer free variables and more bound variables than comparable imperative code, since they do not rely as heavily on assignment to express the computation. An imperative program proceeds by altering some globally-accessible store of values. By contrast, a functional program proceeds by function application and the return of values. This eliminates large classes of errors associated with maintinaing a global store of values.

## Scheme

The Scheme programming language is essentially the lambda-calculus outlined above, plus:

-   The ability for a lambda-expression to bind several arguments at once.
-   A rich set of constants, so numbers, arithmetic, data structures, etc., don't have to be built out of thin air.
-   Primitive control constructs, so control operations don't have to be built out of thin air.
-   An assignment operation, should it be necessary.
-   An environment of defined names, to allow for interactive use, redefinition, and recursive definitions without using the Y combinator.
-   A library with I/O operations to connect programs to the outside world.

In Scheme, programs look like data structures - both are built of lists. A list looks like:

(elt1 elt2 ... eltn)

where each element is either an atom (number or symbol), or another list.

Expressions from the lambda-calculus are translated as follows:

Lx.M  ->  (lambda (x) M)
(M)N  ->  (M N)

In addition, Scheme allows lambda expressions and function applications of more than one argument:

(lambda (a b c) (+ a (\* b c)))

The `define` syntax binds names to values within the local environment:

(define pi 3.14159265)
(define fact
  (lambda (n)
    (if (zero? n)
        1
        (\* n (fact (- n 1))))))
(define alpha (sin (/ pi 180)))

Some Scheme constructs are "syntactic sugar", that is, expressions which can be translated into expressions in terms of more primitive operators. The `let` construct allows initialization and binding of local variables:

(let ((x1 E1)=>((lambda (x1 x2 x3) ...body...)
      (x2 E2) E1
      (x3 E3)) E2
  ...body...) E3)

Definition of a function can be done without an explicit lambda-expression:

(define (f x y z)=>(define f
  ...body...)  (lambda (x y z)
    ...body...))

## Standard Programming Idioms in Scheme

Where a conventional block-structured imperative language like C or Pascal would write:

begin
x := 1;
y := 2 \* some\_global\_var;
z := some\_function();

...body using x, y, and z...
end

Scheme would instead use the `let` syntax to bind local variables:

(let ((x 1)
      (y (\* 2 some-global-var))
      (z (some-function)))
  ..body using x, y, and z...)

As we see above, the `let` construct is just the stylized use of `lambda` and a function application to create an environment for the body where the local variables are bound to their values. Note that this style of programming requires the local variables to be initialized before use.

Scheme has no iterative construct (`do`, `for`, or `while`). Instead, recursive function calls are used. A special optimization called tail-recursion produces compiled code that is equivalent to a loop:

(define (new-fact n)
  (define (iter n a)
    (if (zero? n)
        a
        (iter (- n 1) (\* n a))))
  (iter n 1))

Compare this to the equivalent C function:

int
new\_fact(int n)
{
int a = 1;

while (n != 0)
a \*= n--;
return a;
}

Note that the loop in the C version cannot be understood on its own - in order to see what `n` and `a` are, we have to see the entire function, while in the Scheme version, the `iter` function can be lifted out of the `new-fact` function and understood on its own - it has no free variables! This may not seem too important for a toy example like this, but as the size of the function and the complexity of the loop scales up, this kind of modularity can be important.

Although it may seem unnecessary and clumsy to define a new function every time you need a loop, some common uses can be turned into functions themselves. For instance, a common operation in Scheme is the act of taking a list and applying a function to each of the elements, forming a new list of the results.

(define (list-of-squares l)
  (define (iter l)
    (if (null? l)
        (quote ())
        (cons ((lambda (x) (\* x x)) (car l)) (iter (cdr l)))))
  (iter l))

This kind of iteration is idiomatic, so we can capture it in a function:

(define (map f l)
  (define (iter l)
    (if (null? l)
        (quote ())
        (cons (f (car l)) (iter (cdr l)))))
  (iter l))

(define (list-of-squares l)
  (map (lambda (x) (\* x x)) l))

We could produce this program in C as well, using the technique of passing pointers to functions as arguments to other functions. However, there are some features of C that make this difficult. Suppose we want a function to do an affine transformation `A*x + B` on a list of numbers, with `A` and `B` as parameters to the function. In C we have to write:

double A, B;/\* global variables \*/
static double
affine(double x)
{
return A \* x + B;
}

List \*
affinelist(double a, double b, List \*l)
{
A = a;
B = b;
return map(&affine;, l);
}

Since in C, the `map` function accepts only a function pointer, the transformation parameters have to be held in some static location for the `affine` function to find them. This prevents the code from being reentrant - only one call to `affinelist` can be active at a time.

Pascal allows functions to be declared within a block, and to have access to all the variables visible within that block. In a "block-structured" variation of C would could do the following:

List \*
affinelist(double a, double b, List \*l)
{
double
affine(double x)
{
return a \* x + b;
}

return map(&affine;, l);
}

This allows the function to be re-entrant. But Scheme allows us even more freedom in the use of these local functions - they can persist even after the return of the parent function! The variables bound by the parent function are still accessible to the local functions, and only by them, in effect creating an opaque object with the local functions as the methods for accessing its state. This gives us a way to do object-oriented programming with higher-order functions in Scheme.

Suppose we want to create an object with state variables `svN` and methods `methodN`.

(define (make-object sv1 sv2 ... svN)
  (lambda (mesg)
    (cond ((eq? mesg (quote method1)) (lambda args1 body1))
          ((eq? mesg (quote method2)) (lambda args2 body2))
          ...
          ((eq? mesg (quote methodM)) (lambda argsM bodyM))
          (else (error "Unknown method for object")))))

(define (method1 obj args1) ((obj (quote method1)) args1))
...

So an object is a procedure which accepts a message and dynamically returns a procedure which will handle that message. Each procedure has access to the state variables which were used to create the object. Multiple instances are created through multiple invocations of the `make-object` function. Class structure and inheritance can be accomplished through delegation. So use of higher-order functions can implement object-oriented code in a natural way.

Advantages of a lambda-calculus-based programming language:

-   A clean mathematical basis. The formal specification of the language doesn't need to refer to a machine or compiler.
-   Many common programming idioms have a natural representation.
-   Advanced programming through higher-order functions.
-   Direct correspondence with advanced mathematical objects such as functionals.
-   Efficient machine implementation.
-   Programs are more modular - they can be understood and analyzed locally.

There are some disadvantages too:

-   Real-world implementations are not as good as they could be.
-   The model of computation provided by the language is far removed from the realities of the underlying machine. This can be both good and bad.
-   Things that are simple in other languages tend to be hard in Scheme, yet some simple Scheme tricks are hard to do in other languages.
-   Programming with full lambda-calculus requires a garbage collector in the runtime system. This entails:
    -   A more complicated runtime system than Fortran or C.
    -   Difficulty in linking with code compiled from another language.
    -   Complications for real-time or interactive use.

## WWW Resources

[The Scheme Programming Language][1].

## Bibliography

-   Church, A., The Calculi of Lambda Conversion, Princeton University Press, Princeton, N.J., 1941.
-   Revesz, G., Lambda-Calculus, Combinators, and Functional Programming, Cambridge University Press, Cambridge, 1988.
-   Abelson, H., Sussman, G., and Sussman, J., Structure and Interpretation of Computer Programs, MIT Press and McGraw-Hill, 1985.
-   Steele, G. and Sussman, G., Lambda: The Ultimate Imperative, MIT AI Lab Memo [353][2].

---

Back to [home page][3].  
Send comments to [Jim Larson][4].

[1]: https://web.archive.org/web/20011206080336/http://www-swiss.ai.mit.edu/scheme-home.html
[2]: https://web.archive.org/web/20011206080336/ftp://publications.ai.mit.edu/classic-hits/AIM-353.ps
[3]: https://web.archive.org/web/20011206080336/http://www.jetcafe.org/~jim/index.html
[4]: https://web.archive.org/web/20011206080336/mailto:jim@lutefisk.jetcafe.org
