---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/cek-machines/
page-title:       Writing CEK-style interpreters (or semantics) in Haskell
article-title:    Writing CEK-style interpreters (or semantics) in Haskell
article-length:   9187
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Writing CEK-style interpreters (or semantics) in Haskell

The CEK machine is a mechanical model of the lambda-calculus
developed by 
Matthias Felleisen and
Dan Friedman.
The CEK machine is a mechanical model of the lambda-calculus developed by [Matthias Felleisen][1] and [Dan Friedman][2].

As a mechanical model, the CEK machine provides a realistic yet abstract description of how a computer would efficiently execute a program.

![](http://matt.might.net/articles/cek-machines/images/cek-machine.jpg)  
*According to Google image search, this is also a CEK machine.*

CEK machines are a natural design strategy for writing interpreters.

Besides being efficient, CEK-style interpreters have many useful properties:

-   It's easy to add complex language features like continuations.
-   It's easy to freeze interpretation and get a stack trace.
-   It's easy to introduce threads into the language (or fake them!)
-   And, it's easy to step execution in a debugger.

My collaborator [David Van Horn][3] and I have recently [discovered][4] that CEK machines make an excellent starting point for static analysis as well.

Read below for an introduction to the CEK machine with code in Haskell.

\[If you like the tip of this iceberg, I strongly recommend the recent book on [Semantics Engineering][5]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262062755&camp=217145&creative=399369) by Felleisen, Findler and Flatt.\]

## Background: λ-calculus

If you're not yet familiar with the lambda-calculus, or if you don't fully appreciate its universality as a programming language, you might want to first read a couple other blog posts before charging ahead:

-   [Implementing Java as a CESK machine, in Java][6]
-   [Writing an interpreter, CESK-style][7]
-   [Church encodings in JavaScript][8]
-   [Compiling up to the λ-calculus][9]
-   [7 lines of code, 3 minutes: Implement a programming language][10]
-   [Lambda-calculus in C++ templates][11]
-   [Church encodings in Scheme][12]
-   [Memoizing recursive functions in Javascript with the Y combinator][13]

Or, grab Benjamin Pierce's [Types and Programming Languages][14]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262162091&camp=217145&creative=399369), which has a full, detailed treatment of the lambda-calculus:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=0262162091&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][15]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262162091&camp=217145&creative=399369)

For the machine below, we'll import a `Syntax` module containing an abstract syntax tree datatype for the lambda-calculus:

type Var = String

data Lambda = Var :=> Exp

data Exp = Ref Var      
         | Lam Lambda   
         | Exp :@ Exp  

This table shows how to encode expressions from the lambda-calculus:

__λ-calculus__  

__`Exp` encoding__

*v*

`Ref "*v*"`

λ*v* . *e*

`Lam ("*v*" :=> *e*)`

*f*(*e*)

`*f* :@ *e*`

## A word on idiomatic Haskell

Most of the Haskell in this article is not idiomatic.

For examples, data constructors take tuples instead of expanding the components into fields.

I took this route to keep the code as aesthetically close to the underlying formal mathematics as possible.

## The setting: State machines

Before we implement an interpreter as a CEK machine, let's look at state machines in general, and how they can encode an interpreter.

Mathematically, a state machine is a state-space paired with a transition relation that relates each state to its subsequent states.

In code, a state-space is a type. Values of that type are states.

We'll use the typename `Σ` for the state-space.

In the simple case, which holds for the CEK machine, the transition relation is deterministic, so a function from one state to another models it fully.

We'll use the name `step` for the transition relation rendered as a function:

step :: Σ -> Σ

To "execute" a deterministic state-machine, we want to move from state to state until we hit a "final" state.

The function terminal does this:

terminal :: (Σ -> Σ) -> (Σ -> Bool) -> Σ -> Σ
terminal step isFinal ς0 | isFinal ς0 = ς0
                         | otherwise  = terminal step isFinal (step(ς0))

The function `terminal` takes the deterministic transition relation `step`; the predicate `isFinal` that indicates whether a state has no successor; and the initial state `ς0` from which to start.

To model an interpreter as a state machine, we need an `inject` function that maps a program into a state:

inject :: Program -> Σ

In the case of the lambda-calculus, `type Program = Exp`.

Then, to use `terminal`, we need a final-state detector:

isFinal :: Σ -> Bool

Now it's easy to define the evaluation function:

evaluate :: Program -> Σ
evaluate pr = terminal step isFinal (inject(pr)) 

The evaluator maps a program to its final state (or never terminates if the program is non-terminating).

## The CEK machine

There are only three components of a state in a CEK machine: a control component, an environment component, and a continuation component.

The control component is the expression currently being evaluated.

The environment component is a map from variables to values. The environment is the local evaluation context of the expression.

The continuation component is a stack of frames. The continuation is the dynamic evaluation context of the expression. Each frame marks a context awaiting the value of an expression.

In Haskell, the state-space (Σ) is a triple:

type Σ    = (Exp,Env,Kont)
data D    = Clo (Lambda, Env)
type Env  = Var -> D
data Kont = Mt
          | Ar (Exp,Env,Kont)
          | Fn (Lambda,Env,Kont)

The type `D` contains values. For the basic lambda-calculus, there is only one kind of value: the closure. A closure is a lambda term paired with an environment that defines the values of its free variables.

If we wanted to add more values to the language, like integers or strings, they would show up as variants in the datatype `D`.

(The choice of the name `D` is rooted in the history of programming languages. It means both the "domain of values" and "denotable values.")

There are three kinds of continuations: the empty continuation (`Mt`), the "I hold an argument to evaluate" continuation (`Ar`) and the "I contain an evaluated function, and now I'm evaluating an argument term" continuation (`Fn`).

To use this machine, we first inject expressions into states:

inject :: Exp -> Σ
inject (e) = (e, ρ0, Mt)
 where ρ0 :: Env
       ρ0 = \\ x -> error $ "no binding for " ++ x

The `step` function moves execution forward by one step:

step :: Σ -> Σ

step (Ref x, ρ, κ)                    
   = (Lam lam,ρ',κ) where Clo (lam, ρ') = ρ(x)

step (f :@ e, ρ, κ)                  
   = (f, ρ,  Ar(e, ρ, κ))

step (Lam lam, ρ, Ar(e, ρ', κ))      
   = (e, ρ', Fn(lam, ρ, κ))

step (Lam lam, ρ, Fn(x :=> e, ρ', κ)) 
   = (e, ρ' // \[x ==> Clo (lam, ρ)\], κ)

A few auxiliary definitions handle function extension in this code:

(==>) :: a -> b -> (a,b)
(==>) x y = (x,y)


(//) :: Eq a => (a -> b) -> \[(a,b)\] -> (a -> b)
(//) f \[(x,y)\] = \\ x' ->
                 if (x == x') 
                 then y
                 else f(x')

Given a function `f :: a -> b`, the function `f // [x ==> y]` is the identical to the function `f`, except that if given `x` it returns `y`.

We can describe the four cases for `step` informally:

-   Evaluating a reference? Look it up in the environment.
-   Evaluating a function application? First evaluate the function.
-   Evaluated the function? Go evaluate the argument term.
-   Evaluated the argument too? Perform the application.

Recognizing final states is easy--just check for the empty continuation:

isFinal :: Σ -> Bool
isFinal (Lam \_, ρ, Mt) = True
isFinal \_              = False

And, that's it.

Adding more language features consists mostly of adding new kinds of expressions and continuations corresponding to their contexts.

To handle side effects in an interpreter, you can use side effects in the host language, or if the host language is pure (like math or Haskell), you can upgrade to a CESK machine.

I'll treat CESK machines in a future post.

## More resources

[Semantics Engineering with PLT Redex][16]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262062755&camp=217145&creative=399369) is an entire book by Matthias Felleisen, Robby Findler and Matthew Flatt on modeling programming languages (and their complex features) with machines:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=0262062755&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][17]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262062755&camp=217145&creative=399369)

The best part? The formal mathematics are encoded in the Redex module for Racket so you can *execute* the mathematics.

Redex also comes with automated testing tools that can (and will) find bugs in your language implementation.

The classic MIT textbook [Structure and Interpretation of Computer Programs][18]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262510871&camp=217145&creative=399369) is essentially a textbook on interpreters:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&Format=_SL160_&ASIN=0262510871&MarketPlace=US&ID=AsinImage&WS=1&tag=mmamzn06-20&ServiceVersion=20070822)][19]![](http://www.assoc-amazon.com/e/ir?t=&l=as2&o=1&a=0262510871&camp=217145&creative=399369)

## Related posts

-   [Tree transformations: Desugaring Scheme][20]
-   [Lexical analysis in Racket][21]
-   [Grammar: The language of languages (BNF, EBNF, ABNF)][22]
-   [What is static program analysis?][23]
-   [Implementing Java as a CESK machine, in Java][24]
-   [Writing an interpreter, CESK-style][25]
-   [Order theory for computer scientists][26]
-   [HOWTO: Translate math into code][27]
-   [Closure conversion: How to compile lambda][28]
-   [How to compile with continuations][29]
-   [Understand exceptions by implementing them][30]
-   [A-Normalization: Why and How][31]
-   [Compiling up to the λ-calculus][32]
-   [Parsing with derivatives (Yacc is dead: An update)][33]
-   [By example: Continuation-passing style in JavaScript][34]
-   [7 lines of code, 3 minutes: Implement a programming language][35]
-   [Architectures for interpreters][36]
-   [First-class macros from meta-circular evaluators][37]
-   [Programming with continuations by example][38]
-   [Compiling Scheme to C][39]
-   [Compiling to Java][40]
-   [Church encodings in Scheme][41]
-   [Non-termination without loops, iteration or recursion in Javascript][42]
-   [Memoizing recursive functions in Javascript with the Y combinator][43]
-   [Advanced programming languages][44]
-   [Recommended books and papers for grad students][45]

---

[1]: http://www.ccs.neu.edu/home/matthias/
[2]: https://www.cs.indiana.edu/~dfried/
[3]: http://www.ccs.neu.edu/home/dvanhorn/
[4]: http://matt.might.net/papers/vanhorn2010abstract.pdf
[5]: http://www.amazon.com/gp/product/0262062755/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262062755
[6]: http://matt.might.net/articles/oo-cesk/
[7]: http://matt.might.net/articles/cesk-machines/
[8]: http://matt.might.net/articles/js-church/
[9]: http://matt.might.net/articles/compiling-up-to-lambda-calculus/
[10]: http://matt.might.net/articles/implementing-a-programming-language/
[11]: http://matt.might.net/articles/c++-template-meta-programming-with-lambda-calculus/
[12]: http://matt.might.net/articles/church-encodings-demo-in-scheme/
[13]: http://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
[14]: http://www.amazon.com/gp/product/0262162091/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262162091
[15]: http://www.amazon.com/gp/product/0262162091/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262162091
[16]: http://www.amazon.com/gp/product/0262062755/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262062755
[17]: http://www.amazon.com/gp/product/0262062755/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262062755
[18]: http://www.amazon.com/gp/product/0262510871/ref=as_li_ss_tl?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262510871
[19]: http://www.amazon.com/gp/product/0262510871/ref=as_li_ss_il?ie=UTF8&tag=mmamzn06-20&linkCode=as2&camp=217145&creative=399369&creativeASIN=0262510871
[20]: http://matt.might.net/articles/desugaring-scheme/
[21]: http://matt.might.net/articles/lexers-in-racket/
[22]: http://matt.might.net/articles/grammars-bnf-ebnf/
[23]: http://matt.might.net/articles/intro-static-analysis/
[24]: http://matt.might.net/articles/oo-cesk/
[25]: http://matt.might.net/articles/cesk-machines/
[26]: http://matt.might.net/articles/partial-orders/
[27]: http://matt.might.net/articles/discrete-math-and-code/
[28]: http://matt.might.net/articles/closure-conversion/
[29]: http://matt.might.net/articles/cps-conversion/
[30]: http://matt.might.net/articles/implementing-exceptions/
[31]: http://matt.might.net/articles/a-normalization/
[32]: http://matt.might.net/articles/compiling-up-to-lambda-calculus/
[33]: http://matt.might.net/articles/parsing-with-derivatives/
[34]: http://matt.might.net/articles/by-example-continuation-passing-style/
[35]: http://matt.might.net/articles/implementing-a-programming-language/
[36]: http://matt.might.net/articles/writing-an-interpreter-substitution-denotational-big-step-small-step/
[37]: http://matt.might.net/articles/metacircular-evaluation-and-first-class-run-time-macros/
[38]: http://matt.might.net/articles/programming-with-continuations--exceptions-backtracking-search-threads-generators-coroutines/
[39]: http://matt.might.net/articles/compiling-scheme-to-c/
[40]: http://matt.might.net/articles/compiling-to-java/
[41]: http://matt.might.net/articles/church-encodings-demo-in-scheme/
[42]: http://matt.might.net/articles/implementation-of-non-terminating-program-in-javascript-without-loops-iteration-recursion/
[43]: http://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
[44]: http://matt.might.net/articles/best-programming-languages/
[45]: http://matt.might.net/articles/books-papers-materials-for-graduate-students/
