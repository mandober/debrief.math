---
downloaded:       2021-11-05
author:           
page-url:         https://matt.might.net/articles/cesk-machines/
page-title:       Writing an interpreter, CESK-style
article-title:    Writing an interpreter, CESK-style
article-length:   12924
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Writing an interpreter, CESK-style

Matthias Felleisen's 
CESK machine[1] provides a simple yet powerful architecture for
implementing interpreters (among many other benefits).
[Matthias Felleisen][1]'s CESK machine\[1\] provides a simple yet powerful architecture for implementing interpreters (among many other benefits).

The CESK approach easily models languages with rich features like:

-   mutation;
-   recursion;
-   exceptions;
-   first-class continuations;
-   garbage collection; and
-   multi-threading.

The host language need not support *any* of these features.

The CESK machine is a state-machine in which each state has four components: a (C)ontrol component, an (E)nvironment, a (S)tore and a (K)ontinuation. One might imagine these respectively as the instruction pointer, the local variables, the heap and the stack.

This article discusses how to build a CESK machine for A-Normalized lambda calculus (ANF), a high-level intermediate representation for functional programs.

A working interpreter is provided in Racket.

---

See page 60 of [Matthias Felleisen][2]'s [dissertation][3] for a definition.

## Machine-based interpreters

The CESK machine is a machine-based interpreter.

(Most would actually call it a *semantics*, since it is formally defined.)

At a high-level, a machine-based interpreter has four components:

1.  Prog -- the set of programs.
2.  Σ -- the set of machine states.
3.  inject:Prog→Σ -- a program to initial-state injection function.
4.  step:Σ⇀Σ -- a (partial) state to state transition function.

Given a program p∈Prog, the interpreter first injects it into an initial machine state ς0:

ς0\=inject(p).

The algorithm for running the interpreter is then simple:

 *ς* := *ς*0
 __while__ *ς* is defined for *step*:
    *ς* := *step*(*ς*)

### A note on determinism

The structure of the step function assumes deterministic evaluation. Nondeterministic evaluation requires a function that yields multiple potential successor states: step:Σ→P(Σ).

## C, E, S and K

The CESK machine takes its name from the four components that comprise a state of its execution: the control string, the environment, the store and the continuation.

### C

Depending on the language being interpreted, the control string could be as simple as a program counter, a statement or an expression.

In this article, the control string is an expression.

### E

The environment is a structure, almost always a map, that associates variables with an address in the store.

The environment can be implemented as a purely functional map (hash- or tree-based) or even directly as a first-class function.

### S

The store, which some might liken to a heap or memory, is a map from addresses to values.

Like the environment, the store can be a map (hash- or tree-based) or a first-class function.

### K

The continuation component is a representation of the program stack, often times represented exactly as a list of frames, or as an implicitly linked list.

## A-Normal Form

A-Normal Form is a normalized variant of the lambda-calculus.

[Transforming a language to ANF is straightforward][4], and it simplifies the structure of an interpreter.

Here's a sample BNF grammar for a reasonable variant on ANF:

 *lam* ::= (λ (*var*1 ... *var**N*) *exp*)

 *aexp* ::= *lam*
       |  *var*
       |  #t  |  #f
       |  *integer*
       |  (*prim* *aexp*1 ... *aexp**N*)

 *cexp* ::= (*aexp*0 *aexp*1 ... *aexp**N*)
       |  (if *aexp* *exp* *exp*)
       |  (call/cc *aexp*)
       |  (set! *var* *aexp*)
       |  (letrec ((*var*1 *aexp*1) ... (*var**N* *aexp**N*)) *exp*)

 *exp* ::= *aexp*
      |  *cexp*
      |  (let ((*var* *exp*)) *exp*)

 *prim* ::= +  |  -  |  \*  |  =

There are three kinds of expressions:

-   Atomic expressions (*aexp*) are those for which evaluation must always terminate, never cause an error and never produce a side effect.
-   Complex expressions (*cexp*) may not terminate, may produce an error and may have a side effect. However, a complex expression may defer execution to only one other complex expression. For instance, `letrec` defers directly to its body, and *if* defers to only one of its arms.
-   Expressions (*exp*) can be atomic, complex or let-bound. A let-bound expression will first defer execution to the binding expression, and then resume execution in the body.

This structure forces order of evaluation to be specified *syntactically*.

For instance, the meaning of the expression `((f x) (g y))` is undefined until we know whether `(f x)` or `(g y)` is executed first. In ANF, this expression is illegal, and must be written:

(let ((fx (f x)))
 (let ((gy (g y)))
   (fx gy)))

or

(let ((gy (g y)))
 (let ((fx (f x)))
   (fx gy)))

so that there is no ambiguity.

## A formal definition

A formal definition of the CESK machine guides the code.

If you're unfamiliar with formal mathematical notation, you may want to review my article on the connection between [discrete mathematics and code][5].

If you're only interested in running code, skip ahead.

The state-space, Σ, of the CESK machine for ANF has four components:

ς∈Σ\=Exp×Env×Store×Kont.

In case it's not clear, Exp is the set of of all expressions defined by the earlier grammar. Also, the notation ς∈Σ is a hint that the symbol ς will be used to denote members of the set Σ.

### Environments

The environment in a machine state is a partial function that maps a variable to its address:

ρ∈Env\=Var⇀Addr

It has to be a partial function, because not all variables are in every scope.

Once again, the hint ρ∈Env indicates that the symbol ρ will be used to denote environments.

### Stores

A store maps addresses to values:

σ∈Store\=Addr⇀Value.

In a CESK machine, variable look-up is a two-stage process: first to an address (through some environment), then to a value (through the store).

### Values

There are five kinds of values in this machine--void, booleans, integers, closures and first-class continuations:

val∈Value::\=void|z|#t|#f|clo(lam,ρ)|cont(κ)

In the set of values, z is an integer, while #t and #f are booleans.

A closure pairs a lambda term with an environment to define the values of its free variables. The environment is necessary because a term like `(λ () x)` is undefined, unless an environment specifies the value of `x`.

Continuations are included in values because the language includes `call/cc`, which enables the creation of first-class continuations.

### Continuations

A continuation is effectively the program stack.

Creating a continuation allows us to divert to a complex sub-computation and return later.

So, a continuation needs enough information to resume execution.

For this machine, diverting to a sub-computation only happens in let-bound expressions.

Given a let-bound expression `(let ([v exp]) body)`, execution will first go to `exp`, which means that when it finishes evaluating `exp`, the result will bind to `v`, and execution will resume with `body`.

In a CESK machine, the assumption is that the current computation is always executing on behalf of some continuation awaiting its result. (The special initial continuation, which awaits the result of the program, is called halt.)

Consequently, continuations nest within continuations.

Finally, every continuation must contain the local environment that knows the addresses of the variables in scope.

Putting this all together lets us formally define the space of continuations:

κ∈Kont::\=letk(v,ρ,e,κ)|halt

### Evaluating atomic expressions

Atomic expressions (aexp in the grammar) are easy to evaluate with an auxilary semantic function, A:AExp×Env×Store⇀Value:

Variables get looked up in the environment:

A(v,ρ,σ)\=σ(ρ(v))

Integers evaluate to themselves:

A(z,ρ,σ)\=z.

Booleans do too:

A(#t,ρ,σ)\=#t;

A(#f,ρ,σ)\=#f.

Lambda terms become closures:

A(lam,ρ,σ)\=clo(lam,ρ).

Primitive expressions are evaluated recursively:

A((primaexp1…aexpn),ρ,σ)\=O(prim)⟨A(aexp1,ρ,σ),…,A(aexpn,ρ,σ)⟩.

where O:Prim→(Value∗⇀Value) maps a primitive operation (by name) to its corresponding operation.

### Stepping forward

To define the step function, step:Σ⇀Σ, for this machine, we need a case for each expression type.

#### Procedure call

In a procedure call, the step function first evaluates the expression for procedure to be invoked, and then the expressions for the arguments to be supplied.

Then it applies that procedure to those arguments.

step((aexp0aexp1…aexpn),ρ,σ,κ)\=applyproc(proc,⟨value1,…,valuen⟩,σ,κ), whereproc\=A(aexp0,ρ,σ)valuei\=A(aexpi,ρ,σ)

and applyproc:Value×Value∗×Store×Kont⇀Σ is an auxiliary function (defined below) that applies a procedure to a value.

#### Return

When the expression under evaluation is an atomic expression, it indicates that the current sub-computation is finished and we need to return the result to the current continuation, which has been patiently awaiting it:

step(aexp,ρ,σ,κ)\=applykont(κ,A(aexp,ρ,σ),σ),

where the auxilary function applykont:Kont×Value×Store⇀State (defined below) applies a continuation to a value.

#### Conditionals

Conditional evaluation is straightforward: the condition is evaluated, and the right expression is chosen for the next state.

step((ifaexpetrueefalse),ρ,σ,κ)\={(etrue,ρ,σ,κ)(efalse,ρ,σ,κ)A(aexp,ρ,σ)≠#fotherwise.

#### Let

Evaluating `let` will force the creation of a continuation.

Since execution first evaluates the bound expression, the continuation will contain enough information to resume execution in the body of the `let`.

step((let(\[vexp\])body),ρ,σ,κ)\=(exp,ρ,σ,κ′),

where κ′\=letk(v,body,ρ,κ).

#### Mutation

The CESK approach makes mutation straightforward: look up the address to be changed, and then overwrite that address in the store.

step((set!vaexp),ρ,σ,κ)\=applykont(κ,void,σ′),

where σ′\=σ\[ρ(v)↦A(aexp,ρ,σ)\].

__Notation.__ Given a function (or partial function) f:X→Y, the function f\[x↦y\] is identical to f except that x yields y:

(f\[x↦y\])(x)\=y

(f\[x↦y\])(x′)\=f(x′) if x≠x′.

#### Recursion

Handling recursion requires establishing self-reference. In a language like Scheme, the construct `letrec` is often compiled into "lets and sets"; that is:

 (letrec (\[*v*1 *exp*1\] 
          ...
          \[*v*N *exp*N\])
   *body*)

becomes:

 (let (\[*v*1 (void)\] 
       ...
       \[*v*N (void)\])
  (set! *v*1 *exp*1)
  ...
  (set! *v*N *exp*N)
  *body*)

A CESK machine can fake this by extending the environment first, and then evaluating the expressions in the context of the extended environment:

step((letrec(\[v1aexp1\]…\[vnaexpn\])body),ρ,σ,κ)\=(body,ρ′,σ′,κ),

where:

a1,…,an are fresh addresses in σρ′\=ρ\[vi↦ai\]valuei\=A(aexpi,ρ′,σ)σ′\=σ\[ai↦valuei\].

#### First-class continuations

First-class continuations are a powerful construct, since they allow the simulation of so many other control constructs. For instance, [exceptions are merely syntactic sugar on top of continuations][6].

And, continuations can do [many other things][7] too.

The procedure `call/cc` captures the current continuation as a first-class procedure:

step((call/ccaexp),ρ,σ,κ)\=applyproc(proc,⟨valuecc⟩,σ,κ), whereproc\=A(aexp,ρ,σ)valuecc\=cont(κ).

#### Applying procedures

The auxiliar function applyproc:Value×Value∗×Store×Kont⇀Σ applies a procedure to a value.

applyproc(clo((λ(v1…vn)body),ρ)⟨value1,…valuen⟩,σ,κ)\=(body,ρ′,σ′,κ), where 

a1,…,an are fresh addresses in σρ′\=ρ\[vi↦ai\]σ′\=σ\[ai↦valuei\].

#### Applying continuations

The auxilary function applykont:Kont×Value×Store⇀State applies a continuation to a return value:

applykont(letk(v,e,ρ,κ),value,σ)\=(e,ρ\[v↦a\],σ\[a↦value\],κ),

where a∉dom(σ) is a fresh address.

## As running code

I've transliterated the math here directly into [working Racket code for a CESK interpreter][8].

## Further reading

There are a few good books on implementing compilers and interpreters for functional languages.

The classic MIT text, [Structure and Interpretation of Computer Programs][9]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0262510871), is worth the read:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&ASIN=0262510871&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=mmamzn06-20)][10]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0262510871)

[Lisp in Small Pieces][11]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0521545668) is a consistent recommendation in the courses I teach:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&ASIN=0521545668&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=mmamzn06-20)][12]![](http://www.assoc-amazon.com/e/ir?t=mmamzn06-20&l=as2&o=1&a=0521545668)

For advanced techniques, Appel's [Compiling with Continuations][13]![](http://www.assoc-amazon.com/e/ir?t=aboutmmamzn06-20&l=as2&o=1&a=052103311X) remains my favorite reference:

[![](http://ws.assoc-amazon.com/widgets/q?_encoding=UTF8&ASIN=052103311X&Format=_SL160_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=aboutmmamzn06-20)][14]![](http://www.assoc-amazon.com/e/ir?t=aboutmmamzn06-20&l=as2&o=1&a=052103311X)

## Related pages

-   [Tree transformations: Desugaring Scheme][15]
-   [Lexical analysis in Racket][16]
-   [Grammar: The language of languages (BNF, EBNF, ABNF)][17]
-   [What is static program analysis?][18]
-   [Implementing Java as a CESK machine, in Java][19]
-   [Order theory for computer scientists][20]
-   [HOWTO: Translate math into code][21]
-   [Writing CEK-style interpreters in Haskell][22]
-   [Closure conversion: How to compile lambda][23]
-   [How to compile with continuations][24]
-   [Understand exceptions by implementing them][25]
-   [A-Normalization: Why and How][26]
-   [Compiling up to the λ-calculus][27]
-   [Parsing with derivatives (Yacc is dead: An update)][28]
-   [By example: Continuation-passing style in JavaScript][29]
-   [7 lines of code, 3 minutes: Implement a programming language][30]
-   [Architectures for interpreters][31]
-   [First-class macros from meta-circular evaluators][32]
-   [Programming with continuations by example][33]
-   [Compiling Scheme to C][34]
-   [Compiling to Java][35]
-   [Church encodings in Scheme][36]
-   [Non-termination without loops, iteration or recursion in Javascript][37]
-   [Memoizing recursive functions in Javascript with the Y combinator][38]
-   [Advanced programming languages][39]
-   [Recommended books and papers for grad students][40]

---

[1]: http://www.ccs.neu.edu/home/matthias/
[2]: http://www.ccs.neu.edu/home/matthias/
[3]: http://www.ccs.neu.edu/home/matthias/papers.html
[4]: http://matt.might.net/articles/a-normalization/
[5]: http://matt.might.net/articles/discrete-math-and-code/
[6]: http://matt.might.net/articles/implementing-exceptions/
[7]: http://matt.might.net/articles/programming-with-continuations--exceptions-backtracking-search-threads-generators-coroutines/
[8]: https://matt.might.net/articles/cesk-machines/code/anf-cesk.rkt
[9]: http://www.amazon.com/gp/product/0262510871/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=0262510871&linkCode=as2&tag=mmamzn06-20
[10]: http://www.amazon.com/gp/product/0262510871/ref=as_li_ss_il?ie=UTF8&camp=1789&creative=390957&creativeASIN=0262510871&linkCode=as2&tag=mmamzn06-20
[11]: http://www.amazon.com/gp/product/0521545668/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=0521545668&linkCode=as2&tag=mmamzn06-20
[12]: http://www.amazon.com/gp/product/0521545668/ref=as_li_ss_il?ie=UTF8&camp=1789&creative=390957&creativeASIN=0521545668&linkCode=as2&tag=mmamzn06-20
[13]: http://www.amazon.com/gp/product/052103311X/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=052103311X&linkCode=as2&tag=aboutmmamzn06-20
[14]: http://www.amazon.com/gp/product/052103311X/ref=as_li_ss_il?ie=UTF8&camp=1789&creative=390957&creativeASIN=052103311X&linkCode=as2&tag=aboutmmamzn06-20
[15]: http://matt.might.net/articles/desugaring-scheme/
[16]: http://matt.might.net/articles/lexers-in-racket/
[17]: http://matt.might.net/articles/grammars-bnf-ebnf/
[18]: http://matt.might.net/articles/intro-static-analysis/
[19]: http://matt.might.net/articles/oo-cesk/
[20]: http://matt.might.net/articles/partial-orders/
[21]: http://matt.might.net/articles/discrete-math-and-code/
[22]: http://matt.might.net/articles/cek-machines/
[23]: http://matt.might.net/articles/closure-conversion/
[24]: http://matt.might.net/articles/cps-conversion/
[25]: http://matt.might.net/articles/implementing-exceptions/
[26]: http://matt.might.net/articles/a-normalization/
[27]: http://matt.might.net/articles/compiling-up-to-lambda-calculus/
[28]: http://matt.might.net/articles/parsing-with-derivatives/
[29]: http://matt.might.net/articles/by-example-continuation-passing-style/
[30]: http://matt.might.net/articles/implementing-a-programming-language/
[31]: http://matt.might.net/articles/writing-an-interpreter-substitution-denotational-big-step-small-step/
[32]: http://matt.might.net/articles/metacircular-evaluation-and-first-class-run-time-macros/
[33]: http://matt.might.net/articles/programming-with-continuations--exceptions-backtracking-search-threads-generators-coroutines/
[34]: http://matt.might.net/articles/compiling-scheme-to-c/
[35]: http://matt.might.net/articles/compiling-to-java/
[36]: http://matt.might.net/articles/church-encodings-demo-in-scheme/
[37]: http://matt.might.net/articles/implementation-of-non-terminating-program-in-javascript-without-loops-iteration-recursion/
[38]: http://matt.might.net/articles/implementation-of-recursive-fixed-point-y-combinator-in-javascript-for-memoization/
[39]: http://matt.might.net/articles/best-programming-languages/
[40]: http://matt.might.net/articles/books-papers-materials-for-graduate-students/
