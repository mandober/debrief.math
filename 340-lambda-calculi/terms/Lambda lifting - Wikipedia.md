---
downloaded:       2021-11-05
author:           
page-url:         https://en.wikipedia.org/wiki/Lambda_lifting
page-title:       Lambda lifting - Wikipedia
article-title:    Lambda lifting - Wikipedia
article-length:   23689
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Lambda lifting - Wikipedia

Lambda lifting is a meta-process that restructures a computer program so that functions are defined independently of each other in a global scope.  An individual "lift" transforms a local function into a global function.  It is a two step process, consisting of;
__Lambda lifting__ is a [meta-process][1] that restructures a [computer program][2] so that functions are defined independently of each other in a global [scope][3]. An individual "lift" transforms a local [function][4] into a global function. It is a two step process, consisting of;

-   Eliminating [free variables][5] in the function by adding parameters.
-   Moving functions from a restricted scope to broader or global scope.

The term "lambda lifting" was first introduced by Thomas Johnsson around 1982 and was historically considered as a mechanism for implementing [functional programming languages][6]. It is used in conjunction with other techniques in some modern [compilers][7].

Lambda lifting is not the same as closure conversion. It requires all [call sites][8] to be adjusted (adding extra arguments to calls) and does not introduce a [closure][9] for the lifted lambda expression. In contrast, closure conversion does not require call sites to be adjusted but does introduce a closure for the lambda expression mapping free variables to values.

The technique may be used on individual functions, in [code refactoring][10], to make a function usable outside the scope in which it was written. Lambda lifts may also be repeated, in order to transform the program. Repeated lifts may be used to convert a program written in [lambda calculus][11] into a set of [recursive functions][12], without lambdas. This demonstrates the equivalence of programs written in lambda calculus and programs written as functions.[\[1\]][13] However it does not demonstrate the soundness of lambda calculus for deduction, as the [eta reduction][14] used in lambda lifting is the step that introduces [cardinality problems][15] into the lambda calculus, because it removes the value from the variable, without first checking that there is only one value that satisfies the conditions on the variable (see [Curry's paradox][16]).

Lambda lifting is expensive on processing time for the compiler. An efficient implementation of lambda lifting is ![O(n^{2})](https://wikimedia.org/api/rest_v1/media/math/render/svg/6cd9594a16cb898b8f2a2dff9227a385ec183392) on processing time for the compiler.[\[2\]][17]

In the [untyped lambda calculus][18], where the basic types are functions, lifting may change the result of [beta reduction][19] of a lambda expression. The resulting functions will have the same meaning, in a mathematical sense, but are not regarded as the same function in the untyped lambda calculus. See also [intensional versus extensional equality][20].

The reverse operation to lambda lifting is [lambda dropping][21].[\[3\]][22]

Lambda dropping may make the compilation of programs quicker for the compiler, and may also increase the efficiency of the resulting program, by reducing the number of parameters, and reducing the size of stack frames. However it makes a function harder to re-use. A dropped function is tied to its context, and can only be used in a different context if it is first lifted.

## Algorithm\[[edit][23]\]

The following algorithm is one way to lambda-lift an arbitrary program in a language which doesn't support closures as [first-class objects][24]:

1.  Rename the functions so that each function has a unique name.
2.  Replace each free variable with an additional argument to the enclosing function, and pass that argument to every use of the function.
3.  Replace every local function definition that has no free variables with an identical global function.
4.  Repeat steps 2 and 3 until all free variables and local functions are eliminated.

If the language has closures as first-class objects that can be passed as arguments or returned from other functions, the closure will need to be represented by a data structure that captures the bindings of the free variables.

## Example\[[edit][25]\]

The following [OCaml][26] program computes the sum of the integers from 1 to 100:

let rec sum n \=
  if n \= 1 then
    1
  else
    let f x \=
      n + x in
    f (sum (n \- 1)) in
sum 100

(The `let rec` declares `sum` as a function that may call itself.) The function f, which adds sum's argument to the sum of the numbers less than the argument, is a local function. Within the definition of f, n is a free variable. Start by converting the free variable to a parameter:

let rec sum n \=
  if n \= 1 then
    1
  else
    let f w x \=
      w + x in
    f n (sum (n \- 1)) in
sum 100

Next, lift f into a global function:

let rec f w x \=
  w + x
and sum n \=
  if n \= 1 then
    1
  else
    f n (sum (n \- 1)) in
sum 100

The following is the same example, this time written in [JavaScript][27]:

// Initial version

function sum(n) {
    function f(x) {
        return n + x;
    }

    if (n \== 1)
        return 1;
    else
        return f(sum(n \- 1));
}

// After converting the free variable n to a formal parameter w

function sum(n) {
    function f(w, x) {
        return w + x;
    }

    if (n \== 1)
        return 1;
    else
        return f(n, sum(n \- 1));
}

// After lifting function f into the global scope

function f(w, x) {
    return w + x;
}

function sum(n) {
    if (n \== 1)
        return 1;
    else
        return f(n, sum(n \- 1));
}

## Lambda lifting versus closures\[[edit][28]\]

Lambda lifting and [closure][29] are both methods for implementing [block structured][30] programs. It implements block structure by eliminating it. All functions are lifted to the global level. Closure conversion provides a "closure" which links the current frame to other frames. Closure conversion takes less compile time.

Recursive functions, and block structured programs, with or without lifting, may be implemented using a [stack][31] based implementation, which is simple and efficient. However a stack frame based implementation must be [strict (eager)][32]. The stack frame based implementation requires that the life of functions be [last-in, first-out][33] (LIFO). That is, the most recent function to start its calculation must be the first to end.

Some functional languages (such as [Haskell][34]) are implemented using [lazy evaluation][35], which delays calculation until the value is needed. The lazy implementation strategy gives flexibility to the programmer. Lazy evaluation requires delaying the call to a function until a request is made to the value calculated by the function. One implementation is to record a reference to a "frame" of data describing the calculation, in place of the value. Later when the value is required, the frame is used to calculate the value, just in time for when it is needed. The calculated value then replaces the reference.

The "frame" is similar to a [stack frame][36], the difference being that it is not stored on the stack. Lazy evaluation requires that all the data required for the calculation be saved in the frame. If the function is "lifted", then the frame needs only record the [function pointer][37], and the parameters to the function. Some modern languages use [garbage collection][38] in place of stack based allocation to manage the life of variables. In a managed, garbage collected environment, a [closure][39] records references to the frames from which values may be obtained. In contrast a lifted function has parameters for each value needed in the calculation.

## Let expressions and lambda calculus\[[edit][40]\]

The [Let expression][41] is useful in describing lifting and dropping, and in describing the relationship between recursive equations and lambda expressions. Most functional languages have let expressions. Also, block structured programming languages like [ALGOL][42] and [Pascal][43] are similar in that they too allow the local definition of a function for use in a restricted [scope][44].

The *let* expression used here is a fully mutually recursive version of *let rec*, as implemented in many functional languages.

Let expressions are related to [Lambda calculus][45]. Lambda calculus has a simple syntax and semantics, and is good for describing Lambda lifting. It is convenient to describe lambda lifting as a translations from *lambda* to a *let* expression, and lambda dropping as the reverse. This is because *let* expressions allow mutual recursion, which is, in a sense, more lifted than is supported in lambda calculus. Lambda calculus does not support mutual recursion and only one function may be defined at the outermost global scope.

[Conversion rules][46] which describe translation without lifting are given in the [Let expression][47] article.

The following rules describe the equivalence of lambda and let expressions,

Meta-functions will be given that describe lambda lifting and dropping. A meta-function is a function that takes a program as a parameter. The program is data for the meta-program. The program and the meta program are at different meta-levels.

The following conventions will be used to distinguish program from the meta program,

For simplicity the first rule given that matches will be applied. The rules also assume that the lambda expressions have been pre-processed so that each lambda abstraction has a unique name.

The substitution operator is used extensively. The expression ![L[G:=S]](https://wikimedia.org/api/rest_v1/media/math/render/svg/7716db852899ef7e3eb2a00dbbea76bc11279afb) means substitute every occurrence of *G* in *L* by *S* and return the expression. The definition used is extended to cover the substitution of expressions, from the definition given on the [Lambda calculus][48] page. The matching of expressions should compare expressions for alpha equivalence (renaming of variables).

## Lambda lifting in lambda calculus\[[edit][49]\]

Each lambda lift takes a lambda abstraction which is a sub expression of a lambda expression and replaces it by a function call (application) to a function that it creates. The free variables in the sub expression are the parameters to the function call.

Lambda lifts may be used on individual functions, in [code refactoring][50], to make a function usable outside the scope in which it was written. Such lifts may also be repeated, until the expression has no lambda abstractions, in order to transform the program.

### Lambda lift\[[edit][51]\]

A lift is given a sub-expression within an expression to lift to the top of that expression. The expression may be part of a larger program. This allows control of where the sub-expression is lifted to. The lambda lift operation used to perform a lift within a program is,

![\operatorname {lambda-lift-op}[S,L,P]=P[L:=\operatorname {lambda-lift}[S,L]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/86a9b305960adb74498604e9c37f66bbfcf05d3e)

The sub expression may be either a lambda abstraction, or a lambda abstraction applied to a parameter.

Two types of lift are possible.

-   [Anonymous lift][52]
-   [Named lift][53]

An anonymous lift has a lift expression which is a lambda abstraction only. It is regarded as defining an anonymous function. A name must be created for the function.

A named lift expression has a lambda abstraction applied to an expression. This lift is regarded as a named definition of a function.

#### Anonymous lift\[[edit][54]\]

An anonymous lift takes a lambda abstraction (called *S*). For *S*;

-   Create a name for the function that will replace *S* (called *V*). Make sure that the name identified by *V* has not been used.
-   Add parameters to *V*, for all the free variables in *S*, to create an expression *G* (see *make-call*).

The lambda lift is the substitution of the lambda abstraction *S* for a function application, along with the addition of a definition for the function.

![\operatorname {lambda-lift}[S,L]\equiv \operatorname {let}V:\operatorname {de-lambda}[G=S]\operatorname {in}L[S:=G]](https://wikimedia.org/api/rest_v1/media/math/render/svg/3635846f62855487eb4767ca61b049b1f4a4f756)

The new lambda expression has *S* substituted for G. Note that *L*\[*S*:=*G*\] means substitution of *S* for *G* in *L*. The function definitions has the function definition *G = S* added.

In the above rule *G* is the function application that is substituted for the expression *S*. It is defined by,

![G=\operatorname {make-call}[V,\operatorname {FV}[S]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/2f7cf6397a95ead3958ae3c2c46546c68090c8c1)

where *V* is the function name. It must be a new variable, i.e. a name not already used in the lambda expression,

![V\not \in \operatorname {vars}[\operatorname {let}F\operatorname {in}L]](https://wikimedia.org/api/rest_v1/media/math/render/svg/264dd7b3cb4c9c193be8086f22d1aaeea28b8d7c)

where ![\operatorname {vars}[E]](https://wikimedia.org/api/rest_v1/media/math/render/svg/831fb83e65f1c55c14cda53cd64d3408a839eb32) is a meta function that returns the set of variables used in *E*.

##### Constructing the call\[[edit][55]\]

The function call *G* is constructed by adding parameters for each variable in the free variable set (represented by *V*), to the function *H*,

#### Named lift\[[edit][56]\]

The named lift is similar to the anonymous lift except that the function name *V* is provided.

![\operatorname {lambda-lift}[(\lambda V.E)\ S,L]\equiv \operatorname {let}V:\operatorname {de-lambda}[G=S]\operatorname {in}L[(\lambda V.E)\ S:=E[V:=G]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/74df9bb76d1099ff595a3f035db5b3c5e2999de5)

As for the anonymous lift, the expression *G* is constructed from *V* by applying the free variables of *S*. It is defined by,

![G=\operatorname {make-call}[V,\operatorname {FV}[S]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/2f7cf6397a95ead3958ae3c2c46546c68090c8c1)

### Lambda-lift transformation\[[edit][57]\]

A lambda lift transformation takes a lambda expression and lifts all lambda abstractions to the top of the expression. The abstractions are then translated into [recursive functions][58], which eliminates the lambda abstractions. The result is a functional program in the form,

-   ![\operatorname {let}M\operatorname {in}N](https://wikimedia.org/api/rest_v1/media/math/render/svg/463a7d1808ec8d76057c5d453af4da80c25f4246)

where *M* is a series of function definitions, and *N* is the expression representing the value returned.

For example,

![{\displaystyle \operatorname {lambda-lift-tran} [\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x))]\equiv \operatorname {let} p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\operatorname {in} q\ p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3180efefe33e798accd80f1b2ec7be7e14e01e8c)

The *de-let* meta function may then be used to convert the result back into lambda calculus.

![\operatorname {de-let}[\operatorname {lambda-lift-tran}[\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x))]]\equiv (\lambda p.(\lambda q.q\ p)\ \lambda p.\lambda f.(p\ f)\ (p\ f))\ \lambda f.\lambda x.f\ (x\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/7df5f5d483268c59fa6fa79c3291877531d23666)

The processing of transforming the lambda expression is a series of lifts. Each lift has,

-   A sub expression chosen for it by the function *lift-choice*. The sub expression should be chosen so that it may be converted into an equation with no lambdas.
-   The lift is performed by a call to the *lambda-lift* meta function, described in the next section,

![{\displaystyle {\begin{cases}\operatorname {lambda-lift-tran} [L]=\operatorname {drop-params-tran} [\operatorname {merge-let} [\operatorname {lambda-apply} [L]]]\\\operatorname {lambda-apply} [L]=\operatorname {lambda-process} [\operatorname {lift-choice} [L],L]\\\operatorname {lambda-process} [\operatorname {none} ,L]=L\\\operatorname {lambda-process} [S,L]=\operatorname {lambda-apply} [\operatorname {lambda-lift} [S,L]]\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/66491254fcaf9e2540a6e8944ba8ad98e6d3c456)

After the lifts are applied the lets are combined together into a single let.

![{\displaystyle {\begin{cases}\operatorname {merge-let} [\operatorname {let} V:E\operatorname {in} \operatorname {let} W:F\operatorname {in} G]=\operatorname {merge-let} [\operatorname {let} V,W:E\land F\operatorname {in} G]\\\operatorname {merge-let} [E]=E\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e505711245b478b575915872a22846d5b8032a90)

Then [Parameter dropping][59] is applied to remove parameters that are not necessary in the "let" expression. The let expression allows the function definitions to refer to each other directly, whereas lambda abstractions are strictly hierarchical, and a function may not directly refer to itself.

#### Choosing the expression for lifting\[[edit][60]\]

There are two different ways that an expression may be selected for lifting. The first treats all lambda abstractions as defining anonymous functions. The second, treats lambda abstractions which are applied to a parameter as defining a function. Lambda abstractions applied to a parameter have a dual interpretation as either a let expression defining a function, or as defining an anonymous function. Both interpretations are valid.

These two predicates are needed for both definitions.

*lambda-free* - An expression containing no lambda abstractions.

![{\displaystyle {\begin{cases}\operatorname {lambda-free} [\lambda F.X]=\operatorname {false} \\\operatorname {lambda-free} [V]=\operatorname {true} \\\operatorname {lambda-free} [M\ N]=\operatorname {lambda-free} [M]\land \operatorname {lambda-free} [N]\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43bce522c7908af771da74a390297711e77d894a)

*lambda-anon* - An anonymous function. An expression like ![\lambda x_{1}.\ ...\ \lambda x_{n}.X](https://wikimedia.org/api/rest_v1/media/math/render/svg/8023fe887ab328e988d338bb4d0a79a301f43f64) where X is lambda free.

![{\displaystyle {\begin{cases}\operatorname {lambda-anon} [\lambda F.X]=\operatorname {lambda-free} [X]\lor \operatorname {lambda-anon} [X]\\\operatorname {lambda-anon} [V]=\operatorname {false} \\\operatorname {lambda-anon} [M\ N]=\operatorname {false} \end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f1b95ecbd473b221f697c239b21255a62ea02297)

##### Choosing anonymous functions only for lifting\[[edit][61]\]

Search for the deepest anonymous abstraction, so that when the lift is applied the function lifted will become a simple equation. This definition does not recognize a lambda abstractions with a parameter as defining a function. All lambda abstractions are regarded as defining anonymous functions.

*lift-choice* - The first anonymous found in traversing the expression or *none* if there is no function.

1.  ![\operatorname {lambda-anon}[X]\to \operatorname {lift-choice}[X]=X](https://wikimedia.org/api/rest_v1/media/math/render/svg/0127c36abd044ce9c24b2ddada7c3b5676cd1f86)
2.  ![\operatorname {lift-choice}[\lambda F.X]=\operatorname {lift-choice}[X]](https://wikimedia.org/api/rest_v1/media/math/render/svg/c1b747013d23868d55fec0c0168a315be52ee66d)
3.  ![\operatorname {lift-choice}[M]\neq \operatorname {none}\to \operatorname {lift-choice}[M\ N]=\operatorname {lift-choice}[M]](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8ebc4ea96a74fb8a0da9f0e439e366216c461f4)
4.  ![\operatorname {lift-choice}[M\ N]=\operatorname {lift-choice}[N]](https://wikimedia.org/api/rest_v1/media/math/render/svg/e1fa298cb12dfcfe8cc2a80e1980d93960b43ce4)
5.  ![\operatorname {lift-choice}[V]=\operatorname {none}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb3ca4e4969c8a2484d9918a4dc7d58aea486cb1)

For example,

##### Choosing named and anonymous functions for lifting\[[edit][62]\]

Search for the deepest named or anonymous function definition, so that when the lift is applied the function lifted will become a simple equation. This definition recognizes a lambda abstraction with an actual parameter as defining a function. Only lambda abstractions without an application are treated as anonymous functions.

*lambda-named*

A named function. An expression like ![(\lambda F.M)\ N](https://wikimedia.org/api/rest_v1/media/math/render/svg/8945cd058ec129be5c43d04b5077b7ab52fe18d8) where M is lambda free and N is lambda free or an anonymous function.

![{\displaystyle {\begin{array}{l}\operatorname {lambda-named} [(\lambda F.M)\ N]=\operatorname {lambda-free} [M]\land \operatorname {lambda-anon} [N]\\\operatorname {lambda-named} [\lambda F.X]=\operatorname {false} \\\operatorname {lambda-named} [V]=\operatorname {false} \end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f6c89ff75776ec9a758cb5dfe023ecaf05b46d32)

*lift-choice*

The first anonymous or named function found in traversing the expression or *none* if there is no function.

1.  ![{\displaystyle \operatorname {lambda-named} [X]\lor \operatorname {lambda-anon} [X]\to \operatorname {lift-choice} [X]=X}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc690650c2d14ce90cb3e2ccb5468377b9e7d4f2)
2.  ![\operatorname {lift-choice}[\lambda F.X]=\operatorname {lift-choice}[X]](https://wikimedia.org/api/rest_v1/media/math/render/svg/c1b747013d23868d55fec0c0168a315be52ee66d)
3.  ![\operatorname {lift-choice}[M]\neq \operatorname {none}\to \operatorname {lift-choice}[M\ N]=\operatorname {lift-choice}[M]](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8ebc4ea96a74fb8a0da9f0e439e366216c461f4)
4.  ![\operatorname {lift-choice}[M\ N]=\operatorname {lift-choice}[N]](https://wikimedia.org/api/rest_v1/media/math/render/svg/e1fa298cb12dfcfe8cc2a80e1980d93960b43ce4)
5.  ![\operatorname {lift-choice}[V]=\operatorname {none}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb3ca4e4969c8a2484d9918a4dc7d58aea486cb1)

For example,

### Examples\[[edit][63]\]

For example, the [Y combinator][64],

![\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x)) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6994f701f878c1c51973f1590f5cfc2f3265b19b)

is lifted as,

![{\displaystyle \operatorname {let} x\ f\ y=f\ (y\ y)\land q\ x\ f=f\ ((x\ f)\ (x\ f))\operatorname {in} q\ x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e35449dbe45b12b140fc050383a0b52c367203cf)

and after [Parameter dropping][65],

![{\displaystyle \operatorname {let} x\ f\ y=f\ (y\ y)\land q\ f=f\ ((x\ f)\ (x\ f))\operatorname {in} q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c9e70e8df18115fc113ba84e287314c8618d7919)

As a lambda expression (see [Conversion from let to lambda expressions][66]),

![(\lambda x.(\lambda q.q)\ \lambda f.f\ (x\ f)\ (x\ f))\ \lambda f.\lambda y.f\ (y\ y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/695f34376d6152464b9a40661e5c4cef5a688c03)

If lifting anonymous functions only, the Y combinator is,

![{\displaystyle \operatorname {let} p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\operatorname {in} q\ p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/898e8a63e543b080474d7d1c8d553a0014380f48)

and after [Parameter dropping][67],

![{\displaystyle \operatorname {let} p\ f\ x=f\ (x\ x)\land q\ f=(p\ f)\ (p\ f)\operatorname {in} q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/16b5dacfadedad3ed1c23bc06832c6831c85ffc4)

As a lambda expression,

![(\lambda p.(\lambda q.q)\ \lambda f.(p\ f)\ (p\ f))\ \lambda f.\lambda x.f\ (x\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/9de0f615388fc4f7dddb8e17fa4c5e73d54cd36f)

The first sub expression to be chosen for lifting is ![\lambda x.f\ (x\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/00e3d2527a49e47c20fd87817d000f8176eb9699). This transforms the lambda expression into ![\lambda f.(p\ f)\ (p\ f)](https://wikimedia.org/api/rest_v1/media/math/render/svg/459b277c81a0ae606a1fa9e9b4af80a66c581cc8) and creates the equation ![p\ f\ x=f(x\ x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/3caadef3eeba88836956b8cd89a00c6d66295fc9).

The second sub expression to be chosen for lifting is ![\lambda f.(p\ f)\ (p\ f)](https://wikimedia.org/api/rest_v1/media/math/render/svg/459b277c81a0ae606a1fa9e9b4af80a66c581cc8). This transforms the lambda expression into ![q\ p](https://wikimedia.org/api/rest_v1/media/math/render/svg/e99bb3a8a480c08e82f612945b104e5950b59ebc) and creates the equation ![q\ p\ f=(p\ f)\ (p\ f)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3edbe06c329804ece6c15226617e5a0d227d45a).

And the result is,

![{\displaystyle \operatorname {let} p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\operatorname {in} q\ p\ }](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ee1269f94384a5fe4875a95f12de199b204b592)

Surprisingly this result is simpler than the one obtained from lifting named functions.

### Execution\[[edit][68]\]

Apply function to K,

![{\displaystyle {\begin{cases}\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x))\ K&\ \operatorname {let} \ p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\ \operatorname {in} \ q\ p\ K\\(\lambda x.K\ (x\ x))\ (\lambda x.K\ (x\ x))&\ \operatorname {let} \ p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\ \operatorname {in} \ p\ K\ (p\ K)\\K\ ((\lambda x.K\ (x\ x))\ (\lambda x.K\ (x\ x)))&\ \operatorname {let} \ p\ f\ x=f\ (x\ x)\land q\ p\ f=p\ f\ (p\ f)\ \operatorname {in} \ K\ (p\ K\ (p\ K))\\\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/67c764e70464e2dae28f8ba975fc551676a03825)

So,

![(\lambda x.K\ (x\ x))\ (\lambda x.K\ (x\ x))=K\ ((\lambda x.K\ (x\ x))\ (\lambda x.K\ (x\ x))))\ ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4ccb47635f303b22205cae16c2d455547f624753)

or

![p\ K\ (p\ K)=K\ (p\ K\ (p\ K))](https://wikimedia.org/api/rest_v1/media/math/render/svg/6ef60f25781f1be29db6ee78bb81e3a14f086a3e)

The Y-Combinator calls its parameter (function) repeatedly on itself. The value is defined if the function has a [fixed point][69]. But the function will never terminate.

## Lambda dropping in lambda calculus\[[edit][70]\]

Lambda dropping[\[4\]][71] is making the scope of functions smaller and using the context from the reduced scope to reduce the number of parameters to functions. Reducing the number of parameters makes functions easier to comprehend.

In the [Lambda lifting][72] section, a meta function for first lifting and then converting the resulting lambda expression into recursive equation was described. The Lambda Drop meta function performs the reverse by first converting recursive equations to lambda abstractions, and then dropping the resulting lambda expression, into the smallest scope which covers all references to the lambda abstraction.

Lambda dropping is performed in two steps,

-   [Sinking][73]
-   [Parameter dropping][74]

### Lambda drop\[[edit][75]\]

A Lambda drop is applied to an expression which is part of a program. Dropping is controlled by a set of expressions from which the drop will be excluded.

![\operatorname {lambda-drop-op}[L,P,X]=P[L:=\operatorname {drop-params-tran}[\operatorname {sink-test}[L,X]]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/27de3976b9b43faf9c172323272b713186d81dc6)

where,

*L* is the lambda abstraction to be dropped.

*P* is the program

*X* is a set of expressions to be excluded from dropping.

### Lambda drop transformation\[[edit][76]\]

The lambda drop transformation sinks all abstractions in an expression. Sinking is excluded from expressions in a set of expressions,

![\operatorname {lambda-drop-tran}[L,X]=\operatorname {drop-params-tran}[\operatorname {sink-tran}[\operatorname {de-let}[L,X]]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/9a9af29cdb89755330111813a37d101b105d0d93)

where,

*L* is the expression to be transformed.

*X* is a set of sub expressions to be excluded from the dropping.

*sink-tran* sinks each abstraction, starting from the innermost,

![{\displaystyle {\begin{cases}\operatorname {sink-tran} [(\lambda N.B)\ Y,X]=\operatorname {sink-test} [(\lambda N.\operatorname {sink-tran} [B])\ \operatorname {sink-tran} [Y],X]\\\operatorname {sink-tran} [\lambda N.B,X]=\lambda N.\operatorname {sink-tran} [B,X]\\\operatorname {sink-tran} [M\ N,X]=\operatorname {sink-tran} [M,X]\ \operatorname {sink-tran} [M,X]\\\operatorname {sink-tran} [V,X]=V\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97513c2fecfb9eacba686eff9b7e945795632429)

### Abstraction sinking\[[edit][77]\]

Sinking is moving a lambda abstraction inwards as far as possible such that it is still outside all references to the variable.

__Application__ - 4 cases.

![{\displaystyle {\begin{cases}E\not \in \operatorname {FV} [G]\land E\not \in \operatorname {FV} [H]\to \operatorname {sink} [(\lambda E.G\ H)\ Y,X]=G\ H\\E\not \in \operatorname {FV} [G]\land E\in \operatorname {FV} [H]\to \operatorname {sink} [(\lambda E.G\ H)\ Y,X]=\operatorname {sink-test} [G\ \operatorname {sink-test} [(\lambda E.H)\ Y,X]]\\E\in \operatorname {FV} [G]\land E\not \in \operatorname {FV} [H]\to \operatorname {sink} [(\lambda E.G\ H)\ Y,X]=(\operatorname {sink-test} [(\lambda E.G)\ Y,X])\ H\\E\in \operatorname {FV} [G]\land E\in \operatorname {FV} [H]\to \operatorname {sink} [(\lambda E.G\ H)\ Y,X]=(\lambda E.G\ H)\ Y\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d2049873e2315208fad245e5e430fcc185d786e5)

__Abstraction__. Use renaming to insure that the variable names are all distinct.

![V\neq W\to \operatorname {sink}[(\lambda V.\lambda W.E)\ Y,X]=\lambda W.\operatorname {sink-test}[(\lambda V.E)\ Y,X]](https://wikimedia.org/api/rest_v1/media/math/render/svg/04db7c9bce9b7cc6f9392aedb8f74ec20322a386)

__Variable__ - 2 cases.

![E\neq V\to \operatorname {sink}[(\lambda E.V)\ Y,X]=V](https://wikimedia.org/api/rest_v1/media/math/render/svg/c514513bf5cefbd8c7f3e57ef82453c3d320caa5)

![E=V\to \operatorname {sink}[(\lambda E.V)\ Y,X]=Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/a393d1e4583899566ee0e11224e5d5c9e9bf92e5)

Sink test excludes expressions from dropping,

![L\in X\to \operatorname {sink-test}[L,X]=L](https://wikimedia.org/api/rest_v1/media/math/render/svg/a2ed0d8d66482f29a5dbf8f2a0e72f99e6ad102b)

![L\not \in X\to \operatorname {sink-test}[L,X]=\operatorname {sink}[L,X]](https://wikimedia.org/api/rest_v1/media/math/render/svg/008bb1f25d290d88c5079ef9abb796bb6307faa0)

#### Example\[[edit][78]\]

### Parameter dropping\[[edit][79]\]

Parameter dropping is optimizing a function for its position in the function. Lambda lifting added parameters that were necessary so that a function can be moved out of its context. In dropping, this process is reversed, and extra parameters that contain variables that are free may be removed.

Dropping a parameter is removing an unnecessary parameter from a function, where the actual parameter being passed in is always the same expression. The free variables of the expression must also be free where the function is defined. In this case the parameter that is dropped is replaced by the expression in the body of the function definition. This makes the parameter unnecessary.

For example, consider,

![\lambda m,p,q.(\lambda g.\lambda n.(n\ (g\ m\ p\ n)\ (g\ q\ p\ n)))\ \lambda x.\lambda o.\lambda y.o\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/e763d2ee978b293042e602337a01c9a7311a7331)

In this example the actual parameter for the formal parameter *o* is always *p*. As *p* is a free variable in the whole expression, the parameter may be dropped. The actual parameter for the formal parameter *y* is always *n*. However *n* is bound in a lambda abstraction. So this parameter may not be dropped.

The result of dropping the parameter is,

![\operatorname {drop-params-tran}[\lambda m,p,q.(\lambda g.\lambda n.n\ (g\ m\ p\ n)\ (g\ q\ p\ n))\ \lambda x.\lambda o.\lambda y.o\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/36a9819bb528dc0b49bc6fd735ba071eae6ba3b9)

![\equiv \lambda m,p,q.(\lambda g.\lambda n.n\ (g\ m\ n)\ (g\ q\ n))\ \lambda x.\lambda y.p\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/f749a9e9313b5896cf0ac2f41554f7011baaffc5)

For the main example,

![\operatorname {drop-params-tran}[\lambda f.(\lambda p.(p\ f)\ (p\ f))\ (\lambda f.\lambda x.f\ (x\ x))]](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa67127ffd3481a55d52b254ead36bdd5bf2d8a2)

![\equiv \lambda f.(\lambda p.p\ p)\ (\lambda x.f\ (x\ x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/130db1b6301e95b1dc8fa803420fb56a36313eeb)

The definition of *drop-params-tran* is,

![\operatorname {drop-params-tran}[L]\equiv (\operatorname {drop-params}[L,D,FV[L],[]])](https://wikimedia.org/api/rest_v1/media/math/render/svg/7159e7b56a1b8f5bd9bb6b77d2d30d7b507467b8)

where,

![\operatorname {build-param-list}[L,D,V,\_]](https://wikimedia.org/api/rest_v1/media/math/render/svg/7705cccf60d29665a881caf7680895ba27b39afa)

#### Build parameter lists\[[edit][80]\]

For each abstraction that defines a function, build the information required to make decisions on dropping names. This information describes each parameter; the parameter name, the expression for the actual value, and an indication that all the expressions have the same value.

For example, in,

![\lambda m,p,q.(\lambda g.\lambda n.(n\ (g\ m\ p\ n)\ (g\ q\ p\ n)))\ \lambda x.\lambda o.\lambda y.o\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/e763d2ee978b293042e602337a01c9a7311a7331)

the parameters to the function *g* are,

Each abstraction is renamed with a unique name, and the parameter list is associated with the name of the abstraction. For example, *g* there is parameter list.

![D[g]=[[x,\operatorname {false},\_],[o,\_,p],[y,\_,n]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0a09568d8c330802df4aa1853b329e3c7f36173)

*build-param-lists* builds all the lists for an expression, by traversing the expression. It has four parameters;

-   The lambda expression being analyzed.
-   The table parameter lists for names.
-   The table of values for parameters.
-   The returned parameter list, which is used internally by the

__Abstraction__ - A lambda expression of the form ![(\lambda N.S)\ L](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b30fd07f88ee6ff1b1d1aa35f08a389a9168dc9) is analyzed to extract the names of parameters for the function.

![{\displaystyle {\begin{cases}\operatorname {build-param-lists} [(\lambda N.S)\ L,D,V,R]\equiv \operatorname {build-param-lists} [S,D,V,R]\land \operatorname {build-list} [L,D,V,D[N]]\\\operatorname {build-param-lists} [\lambda N.S,D,V,R]\equiv \operatorname {build-param-lists} [S,D,V,R]\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe3fca310614795b43de1fcb0113e22885dd7aae)

Locate the name and start building the parameter list for the name, filling in the formal parameter names. Also receive any actual parameter list from the body of the expression, and return it as the actual parameter list from this expression

![{\displaystyle {\begin{cases}\operatorname {build-list} [\lambda P.B,D,V,[X,\_,\_]::L]\equiv \operatorname {build-list} [B,D,V,L]\\\operatorname {build-list} [B,D,V,[]]\equiv \operatorname {build-param-lists} [B,D,V,\_]\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a8d939f9d1309cfafc0ae13a9ecc5fee8aeb4eb)

__Variable__ - A call to a function.

![\operatorname {build-param-lists}[N,D,V,D[N]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/b23041cdcb8a8157801202a20ee90032721144af)

For a function name or parameter start populating actual parameter list by outputting the parameter list for this name.

__Application__ - An application (function call) is processed to extract actual parameter details.

![{\displaystyle \operatorname {build-param-lists} [E\ P,D,V,R]\equiv \operatorname {build-param-lists} [E,D,V,T]\land \operatorname {build-param-lists} [P,D,V,K]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ada884dd8d7c6fef85f5aaa7f34dec35c65b1e1)

![{\displaystyle \land T=[F,S,A]::R\land (S\implies (\operatorname {equate} [A,P]\land V[F]=A))\land D[F]=K}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9db5ac4c7e6d52eda80d5f35ce7c20de390f32ab)

Retrieve the parameter lists for the expression, and the parameter. Retrieve a parameter record from the parameter list from the expression, and check that the current parameter value matches this parameter. Record the value for the parameter name for use later in checking.

![{\displaystyle {\begin{cases}\operatorname {equate} [A,N]\equiv A=N\lor (\operatorname {def} [V[N]]\land A=V[N])&{\text{if }}N{\text{ is a variable.}}\\\operatorname {equate} [A,E]\equiv A=E&{\text{otherwise.}}\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/362ae7798b92be1ea6ce821106ecb06a88806aa5)

The above logic is quite subtle in the way that it works. The same value indicator is never set to true. It is only set to false if all the values cannot be matched. The value is retrieved by using *S* to build a set of the Boolean values allowed for *S*. If true is a member then all the values for this parameter are equal, and the parameter may be dropped.

![\operatorname {ask}[S]\equiv S\in \{X:X=S\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2182d11819218934dde6797fb27fae7e90765a89)

Similarly, *def* uses set theory to query if a variable has been given a value;

![\operatorname {def}[F]\equiv |\{X:X=F\}|](https://wikimedia.org/api/rest_v1/media/math/render/svg/435272b0981b4a5a8349725b4108adf7ba9fd13f)

__Let__ - Let expression.

![{\displaystyle \operatorname {build-param-list} [\operatorname {let} V:E\operatorname {in} L,D,V,\_]\equiv \operatorname {build-param-list} [E,D,V,\_]\land \operatorname {build-param-list} [L,D,V,\_]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0df3ab20a70b95844dd32192ccd7460f9032c79)

__And__ - For use in "let".

![{\displaystyle \operatorname {build-param-lists} [E\land F,D,V,\_]\equiv \operatorname {build-param-lists} [E,D,V,\_]\land \operatorname {build-param-lists} [F,D,V,\_]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/027b8521db6a82f697e9b6c3d90c8fda5a5d5011)

##### Examples\[[edit][81]\]

For example, building the parameter lists for,

![\lambda m,p,q.(\lambda g.\lambda n.(n\ (g\ m\ p\ n)\ (g\ q\ p\ n)))\ \lambda x.\lambda o.\lambda y.o\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/e763d2ee978b293042e602337a01c9a7311a7331)

gives,

![D[g]=[[x,\operatorname {false},\_],[o,\operatorname {true},p],[y,\operatorname {true},n]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/27f5c0b372250a852802c2279113b4617c5b0b34)

and the parameter o is dropped to give,

![\lambda m,p,q.(\lambda g.\lambda n.(n\ (g\ m\ n)\ (g\ q\ n)))\ \lambda x.\lambda y.p\ x\ y](https://wikimedia.org/api/rest_v1/media/math/render/svg/6104a20d8e6640e9d67f0df3e5f4143f86b196bb)

Another example is,

![\lambda f.((\lambda p.f\ (p\ p\ f))\ (\lambda q.\lambda x.x\ (q\ q\ x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/3af48b074edf224a2c97228fb480e92b21c4ca7c)

Here x is equal to f. The parameter list mapping is,

![D[p]=[[q,\_,p],[x,\_,f]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/1da991103c8d1a0ecdda1808fdfe8c50855bb402)

and the parameter x is dropped to give,

![\lambda f.((\lambda q.f\ (q\ q))\ (\lambda q.f\ (q\ q))](https://wikimedia.org/api/rest_v1/media/math/render/svg/e810177a7889b498d9b3bcaa3f7617f052d937f9)

#### Drop parameters\[[edit][82]\]

Use the information obtained by [Build parameter lists][83] to drop actual parameters that are no longer required. *drop-params* has the parameters,

-   The lambda expression in which the parameters are to be dropped.
-   The mapping of variable names to parameter lists (built in Build parameter lists).
-   The set of variables free in the lambda expression.
-   The returned parameter list. A parameter used internally in the algorithm.

__Abstraction__

![\operatorname {drop-params}[(\lambda N.S)\ L,D,V,R]\equiv (\lambda N.\operatorname {drop-params}[S,D,F,R])\ \operatorname {drop-formal}[D[N],L,F]](https://wikimedia.org/api/rest_v1/media/math/render/svg/99aba550f80eeb0680206c6d210784af5086f33a)

where,

![F=FV[(\lambda N.S)\ L]](https://wikimedia.org/api/rest_v1/media/math/render/svg/823a8c75779698f7e8d3bb31433d87ffe41e7f29)

![\operatorname {drop-params}[\lambda N.S,D,V,R]\equiv (\lambda N.\operatorname {drop-params}[S,D,F,R])](https://wikimedia.org/api/rest_v1/media/math/render/svg/e323ea82ded175bec1079f368d89a8c1c5faace9)

where,

![F=FV[\lambda N.S]](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd6fc1c379ca519dac82d228b2174aff1c42f8a6)

__Variable__

![\operatorname {drop-params}[N,D,V,D[N]]\equiv N](https://wikimedia.org/api/rest_v1/media/math/render/svg/69aee36ec7d514017ed0614d3220339f024f5a04)

For a function name or parameter start populating actual parameter list by outputting the parameter list for this name.

__Application__ - An application (function call) is processed to extract

![{\displaystyle (\operatorname {def} [F]\land \operatorname {ask} [S]\land FV[A]\subset V)\to \operatorname {drop-params} [E\ P,D,V,R]\equiv \operatorname {drop-params} [E,D,V,[F,S,A]::R]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6c6dec4e775ccfd57eb9cc96ec7c39261e6c1e9)

![{\displaystyle \neg (\operatorname {def} [F]\land \operatorname {ask} [S]\land FV[A]\subset V)\to \operatorname {drop-params} [E\ P,D,V,R]\equiv \operatorname {drop-params} [E,D,V,[F,S,A]::R]\ \operatorname {drop-params} [P,D,V,\_]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c6820b50410d5cd2dac84a803212b9ab4be839b5)

__Let__ - Let expression.

![\operatorname {drop-params}[\operatorname {let}V:E\operatorname {in}L]\equiv \operatorname {let}V:\operatorname {drop-params}[E,D,FV[E],[]]\operatorname {in}\operatorname {drop-params}[L,D,FV[L],[]]](https://wikimedia.org/api/rest_v1/media/math/render/svg/e317339f316247242bd7581321e7596cb54ce7bf)

__And__ - For use in "let".

![{\displaystyle \operatorname {drop-params} [E\land F,D,V,\_]\equiv \operatorname {drop-params} [E,D,V,\_]\land \operatorname {drop-params} [F,D,V,\_]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e363abba3dd6d7dc20ba91036a9dd6a88145165f)

##### Drop formal parameters\[[edit][84]\]

*drop-formal* removes formal parameters, based on the contents of the drop lists. Its parameters are,

-   The drop list,
-   The function definition (lambda abstraction).
-   The free variables from the function definition.

*drop-formal* is defined as,

1.  ![{\displaystyle (\operatorname {ask} [S]\land FV[A]\subset V)\to \operatorname {drop-formal} [[F,S,A]::Z,\lambda F.Y,V]\equiv \operatorname {drop-formal} [[F,S,A]::Z,Y[F:=A],L]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a6c960f47a989fd6137a31cef8c44d56d69f3b0)
2.  ![{\displaystyle \neg (\operatorname {ask} [S]\land FV[A]\subset V)\to \operatorname {drop-formal} [[F,S,A]::Z,\lambda F.Y,V]\equiv \lambda F.\operatorname {drop-formal} [[F,S,A]::Z,Y,V]}](https://wikimedia.org/api/rest_v1/media/math/render/svg/94cdd9a6017b3540edf73ca993c1adf3a517ce78)
3.  ![\operatorname {drop-formal}[Z,Y,V]\equiv Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/854482d904bbd4418f04a70213ea6dcac7b58174)

Which can be explained as,

1.  If all the actual parameters have the same value, and all the free variables of that value are available for definition of the function then drop the parameter, and replace the old parameter with its value.
2.  else do not drop the parameter.
3.  else return the body of the function.

### Example\[[edit][85]\]

Starting with the function definition of the Y-combinator,

![{\displaystyle \operatorname {let} p\ f\ x=f\ (x\ x)\land q\ p\ f=(p\ f)\ (p\ f)\operatorname {in} q\ p\ }](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ee1269f94384a5fe4875a95f12de199b204b592)

Which gives back the [Y combinator][86],

![\lambda f.(\lambda x.f\ (x\ x))\ (\lambda x.f\ (x\ x)) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6994f701f878c1c51973f1590f5cfc2f3265b19b)

## See also\[[edit][87]\]

-   [Let expression][88]
-   [Fixed-point combinator][89]
-   [Lambda calculus][90]
-   [Deductive lambda calculus][91]
-   [Supercombinator][92]
-   [Curry's paradox][93]

## References\[[edit][94]\]

1.  __[^][95]__ Johnsson, Thomas (1985). "Lambda Lifting: Transforming Programs to Recursive Equations". In Jouannaud, J.P. (ed.). *Functional Programming Languages and Computer Architecture. FPCA 1985*. Lecture Notes in Computer Science. __201__. Springer. [CiteSeerX][96] [10.1.1.48.4346][97]. [doi][98]:[10.1007/3-540-15975-4\_37][99]. [ISBN][100] [3-540-15975-4][101].
2.  __[^][102]__ Morazán, Marco T.; Schultz, Ulrik P. (2008), "Optimal Lambda Lifting in Quadratic Time", *Implementation and Application of Functional Languages — Revised Selected Papers*, pp. 37–56, [doi][103]:[10.1007/978-3-540-85373-2\_3][104], [ISBN][105] [978-3-540-85372-5][106]
3.  __[^][107]__ Danvy, O.; Schultz, U. P. (1997). "Lambda-dropping". *ACM SIGPLAN Notices*. __32__ (12): 90. [doi][108]:[10.1145/258994.259007][109].
4.  __[^][110]__ Danvy, Olivier; Schultz, Ulrik P. (October 2000). ["Lambda-Dropping: Transforming Recursive Equations into Programs with Block Structure"][111] (PDF). *Theoretical Computer Science*. __248__ (1–2): 243–287. [CiteSeerX][112] [10.1.1.16.3943][113]. [doi][114]:[10.1016/S0304-3975(00)00054-2][115]. BRICS-RS-99-27.

## External links\[[edit][116]\]

-   [Explanation on Stack Overflow, with a JavaScript example][117]
-   Slonneger, Ken; Kurtz, Barry. ["5. Some discussion of let expressions"][118] (PDF). *Programming Language Foundations*. University of Iowa.

[1]: https://en.wikipedia.org/wiki/Metaprogramming "Metaprogramming"
[2]: https://en.wikipedia.org/wiki/Computer_program "Computer program"
[3]: https://en.wikipedia.org/wiki/Scope_(computer_science) "Scope (computer science)"
[4]: https://en.wikipedia.org/wiki/Subroutine "Subroutine"
[5]: https://en.wikipedia.org/wiki/Free_variables "Free variables"
[6]: https://en.wikipedia.org/wiki/Functional_programming_language "Functional programming language"
[7]: https://en.wikipedia.org/wiki/Compiler "Compiler"
[8]: https://en.wikipedia.org/wiki/Call_site "Call site"
[9]: https://en.wikipedia.org/wiki/Closure_(computer_science) "Closure (computer science)"
[10]: https://en.wikipedia.org/wiki/Code_refactoring "Code refactoring"
[11]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[12]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[13]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_note-1
[14]: https://en.wikipedia.org/wiki/Lambda_calculus#Reduction "Lambda calculus"
[15]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Logical_inconsistency "Deductive lambda calculus"
[16]: https://en.wikipedia.org/wiki/Curry%27s_paradox#No_resolution_in_Lambda_Calculus "Curry's paradox"
[17]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_note-Optimal_Lambda_Lifting_in_Quadratic_Time-2
[18]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[19]: https://en.wikipedia.org/wiki/Beta-reduction "Beta-reduction"
[20]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus#Intensional_versus_extensional_equality "Deductive lambda calculus"
[21]: https://en.wikipedia.org/wiki/Lambda_lifting#Lambda_dropping_in_lambda_calculus
[22]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_note-3
[23]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=1 "Edit section: Algorithm"
[24]: https://en.wikipedia.org/wiki/First-class_object "First-class object"
[25]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=2 "Edit section: Example"
[26]: https://en.wikipedia.org/wiki/OCaml "OCaml"
[27]: https://en.wikipedia.org/wiki/JavaScript "JavaScript"
[28]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=3 "Edit section: Lambda lifting versus closures"
[29]: https://en.wikipedia.org/wiki/Closure_(computer_programming) "Closure (computer programming)"
[30]: https://en.wikipedia.org/wiki/Block_(programming) "Block (programming)"
[31]: https://en.wikipedia.org/wiki/Call_stack "Call stack"
[32]: https://en.wikipedia.org/wiki/Eager_evaluation "Eager evaluation"
[33]: https://en.wikipedia.org/wiki/LIFO_(computing) "LIFO (computing)"
[34]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[35]: https://en.wikipedia.org/wiki/Lazy_evaluation "Lazy evaluation"
[36]: https://en.wikipedia.org/wiki/Stack_frame "Stack frame"
[37]: https://en.wikipedia.org/wiki/Function_pointer "Function pointer"
[38]: https://en.wikipedia.org/wiki/Garbage_collection_(computer_science) "Garbage collection (computer science)"
[39]: https://en.wikipedia.org/wiki/Closure_(computer_science) "Closure (computer science)"
[40]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=4 "Edit section: Let expressions and lambda calculus"
[41]: https://en.wikipedia.org/wiki/Let_expression "Let expression"
[42]: https://en.wikipedia.org/wiki/ALGOL "ALGOL"
[43]: https://en.wikipedia.org/wiki/Pascal_(programming_language) "Pascal (programming language)"
[44]: https://en.wikipedia.org/wiki/Scope_(computer_science) "Scope (computer science)"
[45]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[46]: https://en.wikipedia.org/wiki/Let_expression#Rules_for_conversion_between_lambda_calculus_and_let_expressions "Let expression"
[47]: https://en.wikipedia.org/wiki/Let_expression "Let expression"
[48]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[49]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=5 "Edit section: Lambda lifting in lambda calculus"
[50]: https://en.wikipedia.org/wiki/Code_refactoring "Code refactoring"
[51]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=6 "Edit section: Lambda lift"
[52]: https://en.wikipedia.org/wiki/Lambda_lifting#Anonymous_lift
[53]: https://en.wikipedia.org/wiki/Lambda_lifting#Named_lift
[54]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=7 "Edit section: Anonymous lift"
[55]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=8 "Edit section: Constructing the call"
[56]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=9 "Edit section: Named lift"
[57]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=10 "Edit section: Lambda-lift transformation"
[58]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[59]: https://en.wikipedia.org/wiki/Lambda_lifting#Parameter_dropping
[60]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=11 "Edit section: Choosing the expression for lifting"
[61]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=12 "Edit section: Choosing anonymous functions only for lifting"
[62]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=13 "Edit section: Choosing named and anonymous functions for lifting"
[63]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=14 "Edit section: Examples"
[64]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[65]: https://en.wikipedia.org/wiki/Lambda_lifting#Parameter_dropping
[66]: https://en.wikipedia.org/wiki/Let_expression#Conversion_from_let_to_lambda_expressions "Let expression"
[67]: https://en.wikipedia.org/wiki/Lambda_lifting#Parameter_dropping
[68]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=15 "Edit section: Execution"
[69]: https://en.wikipedia.org/wiki/Fixed_point_(mathematics) "Fixed point (mathematics)"
[70]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=16 "Edit section: Lambda dropping in lambda calculus"
[71]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_note-4
[72]: https://en.wikipedia.org/wiki/Lambda_lifting#Lambda_lifting
[73]: https://en.wikipedia.org/wiki/Lambda_lifting#Abstraction_sinking
[74]: https://en.wikipedia.org/wiki/Lambda_lifting#Parameter_dropping
[75]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=17 "Edit section: Lambda drop"
[76]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=18 "Edit section: Lambda drop transformation"
[77]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=19 "Edit section: Abstraction sinking"
[78]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=20 "Edit section: Example"
[79]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=21 "Edit section: Parameter dropping"
[80]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=22 "Edit section: Build parameter lists"
[81]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=23 "Edit section: Examples"
[82]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=24 "Edit section: Drop parameters"
[83]: https://en.wikipedia.org/wiki/Lambda_lifting#Build_parameter_lists
[84]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=25 "Edit section: Drop formal parameters"
[85]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=26 "Edit section: Example"
[86]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[87]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=27 "Edit section: See also"
[88]: https://en.wikipedia.org/wiki/Let_expression "Let expression"
[89]: https://en.wikipedia.org/wiki/Fixed-point_combinator "Fixed-point combinator"
[90]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[91]: https://en.wikipedia.org/wiki/Deductive_lambda_calculus "Deductive lambda calculus"
[92]: https://en.wikipedia.org/wiki/Supercombinator "Supercombinator"
[93]: https://en.wikipedia.org/wiki/Curry%27s_paradox "Curry's paradox"
[94]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=28 "Edit section: References"
[95]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_ref-1 "Jump up"
[96]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[97]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.48.4346
[98]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[99]: https://doi.org/10.1007%2F3-540-15975-4_37
[100]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[101]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-15975-4 "Special:BookSources/3-540-15975-4"
[102]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_ref-Optimal_Lambda_Lifting_in_Quadratic_Time_2-0 "Jump up"
[103]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[104]: https://doi.org/10.1007%2F978-3-540-85373-2_3
[105]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[106]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-85372-5 "Special:BookSources/978-3-540-85372-5"
[107]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_ref-3 "Jump up"
[108]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[109]: https://doi.org/10.1145%2F258994.259007
[110]: https://en.wikipedia.org/wiki/Lambda_lifting#cite_ref-4 "Jump up"
[111]: http://www.brics.dk/RS/99/27/BRICS-RS-99-27.pdf
[112]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[113]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.16.3943
[114]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[115]: https://doi.org/10.1016%2FS0304-3975%2800%2900054-2
[116]: https://en.wikipedia.org/w/index.php?title=Lambda_lifting&action=edit&section=29 "Edit section: External links"
[117]: https://stackoverflow.com/questions/592584/what-is-lambda-lifting/592634#592634
[118]: http://homepage.cs.uiowa.edu/~slonnegr/plf/Lecture05.pdf
