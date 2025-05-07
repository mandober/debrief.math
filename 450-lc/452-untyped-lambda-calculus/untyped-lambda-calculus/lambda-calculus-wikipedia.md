---
downloaded:       2021-11-06
page-url:         https://en.wikipedia.org/wiki/Lambda_calculus
page-title:       Lambda calculus
---
# Lambda calculus - Wikipedia

Lambda calculus (λ-calculus) is a formal system in mathematical logic for expressing computation based on function abstraction and application using *variable binding* and *substitution*.

Lambda calculus consists of constructing lambda terms and performing reduction operations on them. In the simplest and pure form of lambda calculi.

There are only 3 lambda terms, `T ::= x | λx.T | T T`

- Variables, `x`, are strings representing function's parameters
- Abstraction, `λx.M`, is a function definition that binds the variable `x`
- Application, `M N`, applying an abstraction `M` to an argument `N`

This grammar produces lambda expressions such as:
- id:       `λx. x`
- K, const: `λx. λy. x`
- compose:  `λf. λg. λx. f (g x)`
- flip:     `λf. λx. λy. f y x`
- pair:     `λa. λb. λs. s a b`
- S:        `λf. λg. λx. f x (g x)`

- (λx. λy. (λz. (λx. z x) (λy. z y)) (x y))

There are a few fixity rules and conventions:
- abstraction binds to the right, `λa.λb.λc. a b c` is `λa. (λb. (λc. a b c))`
- the scope of abstraction streches as far to the right as possible
- application binds to the left, `a b c` is `(a b) c`
- application binds tighter than abstraction, which is relevant if using a notation that elides the dot as a symbol that clrealy delineates a function's head from its body; then, a term like `λa.bc` is actually `λa.(bc)` not `(λa.b)c`, nor `λa.λb.c`.
- parentheses may be skipped if the expression is unambiguous.
- consequtive bindings may be contracted (grouped) under a single binder, e.g. `λa b c. a b c` is `λa. λb. λc. a b c` i.e. `λa. (λb. (λc. (a b) c))`

The reduction operations include:
* **α-conversion**, λ[x].B[x] ----> λ[y].B[y]    
  Renaming the formal parameter `x` in the abstraction (its binding and all applied occurrences) to avoid name collision with the vars in the argument
* **β-reduction**, (λx.A)B -----> [x:=A]B   
  Replacing the bound var `x` with the arg `A` in the abstraction's body `B`

Notes
* α-conversion is not required if *De Bruijn indexing* is used, since it circumvents the problem of name collisions.
* if the repeated application of the reduction steps eventually terminates, then by the *Church-Rosser theorem* it will produce a *β-normal form*.
* variable names are not needed if using a universal lambda function, such as Iota and Jot, which can create any function behavior by calling it on itself in various combinations.
* the Greek letter lambda, `λ`, is used in abstrations to mark the binding context; the space between the lambda binder and the dot symbol separator is called the head (of an abstraction) and it is used for declarations of formal parameters. A declared parameter is in scope exactly in an abstraction's body.

## Explanation and applications

Lambda calculus may be untyped or typed. In all lambda calculi, functions are values, but in typed varaints, distinct functions usually have distinct types, and the application is possible only if the types match (of an abstraction term and an argument term).

Typed lambda calculi are weaker than the untyped lambda calculus in the sense that former can express less than the latter. On the other hand, typed lambda calculi allow more things to be proven; in the simply typed lambda calculus, it is, e.g., a theorem that every evaluation strategy terminates for every simply typed lambda-term, whereas evaluation of untyped lambda-terms need not terminate at all. One reason there are many different typed lambda calculi has been the desire to do more (of what the untyped calculus can do) with the safety of the types.

Lambda calculus has applications in many different areas in mathematics, philosophy, linguistics, and computer science. Lambda calculus has played an important role in the development of the theory of programming languages. Functional programming languages implement lambda calculus. Lambda calculus is also a current research topic in category theory.

## Informal description

### Motivation

*Computable functions* are a fundamental concept within mathematics. The lambda calculus provides a simple semantics for computation, enabling properties of computation to be studied formally. The lambda calculus incorporates two simplifications that make this semantics simple. The first simplification is that the lambda calculus treats functions "anonymously", without giving them explicit names. For example, the function

...

### The lambda calculus

The lambda calculus consists of a language of lambda terms, which are defined by a certain formal syntax, and a set of transformation rules, which allow manipulation of the lambda terms. These transformation rules can be viewed as an *equational theory* or as an *operational definition*.

All functions in the lambda calculus are anonymous functions, having no names. They only accept one input variable, with currying used to implement functions with several variables.

#### Lambda terms

The syntax of the lambda calculus defines some expressions as valid lambda calculus expressions and some as invalid, just as some strings of characters are valid C programs and some are not. A valid lambda calculus expression is called a "lambda term".

The following three rules give an inductive definition that can be applied to build all syntactically valid lambda terms:
* a variable, x, is itself a valid lambda term
* if t is a lambda term, and x is a variable, then λx.t is a lambda term (called an abstraction)
* if t and s are lambda terms, then (ts) is a lambda term (called an application)

Nothing else is a lambda term. Thus a lambda term is valid if and only if it can be obtained by repeated application of these three rules. However, some parentheses can be omitted according to certain rules. For example, the outermost parentheses are usually not written.

An abstraction λx.t is a definition of an anonymous function that is capable of taking a single input x and substituting it into the expression t. It thus defines an anonymous function that takes x and returns t. 

The definition of a function with an abstraction merely defines the function but does not invoke it. *The abstraction binds the variable x in the term t*.

An application ts represents the application of a function t to an input s, that is, it represents the act of calling function t on input s to produce t(s).

There is no concept in lambda calculus of variable declaration. In a definition such as λx.x+y (i.e. f(x)=x+y), the lambda calculus treats y as a variable that is not yet defined. The abstraction λx.x+y is syntactically valid, and represents a function that adds its input to the yet-unknown y ("+" is unknown too).

Bracketing may be used and may be needed to disambiguate terms. For example, λx.((λx.x)x) and (λx.(λx.x))x denote different terms (although they coincidentally reduce to the same value). Here, the first example defines a function whose lambda term is the result of applying x to the child function, while the second example is the application of the outermost function to the input x, which returns the child function. Therefore, both examples evaluate to the identity function λx.x.


#### Functions that operate on functions

In lambda calculus, functions are taken to be first class values, so functions may be used as the inputs, or be returned as outputs from other functions.

There are several notions of "equivalence" and "reduction" that allow lambda terms to be "reduced" to "equivalent" lambda terms.

#### Alpha equivalence

A basic form of equivalence, definable on lambda terms, is alpha equivalence. It captures the intuition that the particular choice of a bound variable, in an abstraction, does not (usually) matter. For instance, \lambda x.x and \lambda y.y are alpha-equivalent lambda terms, and they both represent the same function (the identity function). The terms x and y are not alpha-equivalent, because they are not bound in an abstraction. In many presentations, it is usual to identify alpha-equivalent lambda terms.

(The following definitions are necessary in order to be able to define β-reduction)

#### Free variables

The free variables of a lambda term are those variables not bound by an abstraction. The set of free variables of an expression is defined inductively:

```js
fv x      = {x}
fv (M N)  = fv M ⋃ fv N
fv (λx.M) = fv M \ {x}
```

A *free variable* is one which doesn't fall within the scope of a quantifier. A *bound variable* is just the opposite, that is, one whose mode of being has been declared. For example, in the equation

(∃n ∈ N)(xⁿ + yⁿ = zⁿ)      (1)

the variable `n` appears as a bound variable, because it is existentially quantified, whereas `x`, `y`, and `z` are free variables.

#### Capture-avoiding substitutions

Suppose t, s and r are lambda terms and x and y are variables. The notation [x:=r]t indicates substitution of r for x in t, in a capture-avoiding manner.

This is defined so that:

```js
[x:=A]x      = A                      if x == x         (η-conversion)
[x:=A]y      = y                      if x /= y
[x:=A](λx.B) = λx.B                   if x == x
[x:=A](λy.B) = λy.([x:=A]B)           if x /= y ⋀ if y ∉ fv(A)
[x:=A](M N)  = ([x:=A]M) ([x:=A]N)



[p:=a]b ---> a              if (p == b) then (a) else (b)
                                (λx.x)a ---> a
                                (λx.b)x ---> b

[p:=A](λx.B) ---> λx.B      if   (p == x)
                            then (λx.B)
                            else
                              if   { x ∉ fv(A) }
                              then λx.([x:=A]B)
                              else { x ∈ fv(A) } rename 'x'



[x:=x₁]x = x   (λx. x) x₁ == x₁ id        arg
[x:=x₁]y = y   (λx. y) x₁ == y            body (arg dropped)
[x:=y ]x = y   (λx. x) y  == y  id        arg
[x:=y₁]y = y   (λx. y) y₁ == y  y =?= y₁  body (arg dropped)

[y:=x₁]x = x   (λy. x) x₁ == x  x =?= x₁  body (arg dropped)
[y:=x ]y = y   (λy. y) y₁ == y₁ id        arg
[y:=y₁]x = x   (λy. x) y₁ == x            body (arg dropped)
[y:=y₁]y = y   (λy. y) y₁ == y₁ id        arg

[x:=y]z = z   (λx.z)y  == z               body (arg dropped)
```


For example,

[y:=y](λx.x) === λx.([y:=y]x) === λx.x

[x:=y]((λx.y)x) === ([x:=y](λx.y)) ([x:=y]x) === (λx.y)y



* Interesting case (or not, hmm)

`(λx.y₁)y₂` ~~> `y`

however, `y₁ = y₂` since they are both bound by one outer `λy.` i.e. if they have the binder at all, then it must be a single mutual binder; that is, they are the same variable, `y`, since it's impossible to insert two different binders, `λy₁` and `λy₂`, somewhere in this expression such that each refers to it own `y`, making them distinct variables.

`(λy. (λx. y₁) y₂)`
  |
the nearest space we can stick a binder, anythin further left is no go. But we assume we can't stick the binder inside the term `(λx. y₁)`, i.e. inside parens! If we're allowed then it's easy: `(λy₂. (λy₁. λx. y₁) y₂)`

Anyway, here's the rub: considering the app `(λx.y)y` we can resuce it to `y`, right? But what if the "overall term" turns out to contain the binder for `y`? Somewhere far in the outer scope, `(λy. … (λx.y)y)`? Were we then even allowed to reduce the subexpression?


#### β-reduction


## Formal definition

### Definition

Lambda expressions are composed of:

-   variables *v*1, *v*2, ...;
-   the abstraction symbols λ (lambda) and . (dot);
-   parentheses ().

The set of lambda expressions, Λ, can be defined inductively:

1.  If *x* is a variable, then *x* ∈ Λ.
2.  If *x* is a variable and *M* ∈ Λ, then (λ*x*.*M*) ∈ Λ.
3.  If *M*, *N* ∈ Λ, then (*M N*) ∈ Λ.

Instances of rule 2 are known as *abstractions* and instances of rule 3 are known as *applications*.


### Notation

To keep the notation of lambda expressions uncluttered, the following conventions are usually applied:

-   Outermost parentheses are dropped: *M* *N* instead of (*M* *N*).
-   Applications are assumed to be left associative: *M* *N* *P* may be written instead of ((*M* *N*) *P*).[\[17\]][97]
-   The body of an abstraction extends [as far right as possible][98]: λ*x*.*M N* means λ*x*.(*M N*) and not (λ*x*.*M*) *N*.
-   A sequence of abstractions is contracted: λ*x*.λ*y*.λ*z*.*N* is abbreviated as λ*xyz*.*N*.[\[18\]][99][\[17\]][100]

### Free and bound variables\[[edit][101]\]

The abstraction operator, λ, is said to bind its variable wherever it occurs in the body of the abstraction. Variables that fall within the scope of an abstraction are said to be *bound*. In an expression λ*x*.*M*, the part λ*x* is often called *binder*, as a hint that the variable *x* is getting bound by appending λ*x* to *M*. All other variables are called *free*. For example, in the expression λ*y*.*x x y*, *y* is a bound variable and *x* is a free variable. Also a variable is bound by its nearest abstraction. In the following example the single occurrence of *x* in the expression is bound by the second lambda: λ*x*.*y* (λ*x*.*z x*).

The set of *free variables* of a lambda expression, *M*, is denoted as FV(*M*) and is defined by recursion on the structure of the terms, as follows:

1.  FV(*x*) = {*x*}, where *x* is a variable.
2.  FV(λ*x*.*M*) = FV(*M*) \\ {*x*}.
3.  FV(*M N*) = FV(*M*) ∪ FV(*N*).[\[19\]][102]

An expression that contains no free variables is said to be *closed*. Closed lambda expressions are also known as *combinators* and are equivalent to terms in [combinatory logic][103].

## Reduction\[[edit][104]\]

The meaning of lambda expressions is defined by how expressions can be reduced.[\[20\]][105]

There are three kinds of reduction:

-   __α-conversion__: changing bound variables;
-   __β-reduction__: applying functions to their arguments;
-   __η-reduction__: which captures a notion of extensionality.

We also speak of the resulting equivalences: two expressions are *α-equivalent*, if they can be α-converted into the same expression. β-equivalence and η-equivalence are defined similarly.

The term *redex*, short for *reducible expression*, refers to subterms that can be reduced by one of the reduction rules. For example, (λ*x*.*M*) *N* is a β-redex in expressing the substitution of *N* for *x* in *M*. The expression to which a redex reduces is called its *reduct*; the reduct of (λ*x*.*M*) *N* is *M*\[*x* := *N*\].

If *x* is not free in *M*, λ*x*.*M x* is also an η-redex, with a reduct of *M*.

### α-conversion\[[edit][106]\]

α-conversion, sometimes known as α-renaming,[\[21\]][107] allows bound variable names to be changed. For example, α-conversion of λ*x*.*x* might yield λ*y*.*y*. Terms that differ only by α-conversion are called *α-equivalent*. Frequently, in uses of lambda calculus, α-equivalent terms are considered to be equivalent.

The precise rules for α-conversion are not completely trivial. First, when α-converting an abstraction, the only variable occurrences that are renamed are those that are bound to the same abstraction. For example, an α-conversion of λ*x*.λ*x*.*x* could result in λ*y*.λ*x*.*x*, but it could *not* result in λ*y*.λ*x*.*y*. The latter has a different meaning from the original. This is analogous to the programming notion of [variable shadowing][108].

Second, α-conversion is not possible if it would result in a variable getting captured by a different abstraction. For example, if we replace *x* with *y* in λ*x*.λ*y*.*x*, we get λ*y*.λ*y*.*y*, which is not at all the same.

In programming languages with static scope, α-conversion can be used to make [name resolution][109] simpler by ensuring that no variable name [masks][110] a name in a containing [scope][111] (see [α-renaming to make name resolution trivial][112]).

In the [De Bruijn index][113] notation, any two α-equivalent terms are syntactically identical.

#### Substitution\[[edit][114]\]

Substitution, written *M*\[*V* := *N*\], is the process of replacing all *free* occurrences of the variable *V* in the expression *M* with expression *N*. Substitution on terms of the lambda calculus is defined by recursion on the structure of terms, as follows (note: x and y are only variables while M and N are any lambda expression):

*x*\[*x* := *N*\] = *N*

*y*\[*x* := *N*\] = *y*, if *x* ≠ *y*

(*M*1 *M*2)\[*x* := *N*\] = (*M*1\[*x* := *N*\]) (*M*2\[*x* := *N*\])

(λ*x*.*M*)\[*x* := *N*\] = λ*x*.*M*

(λ*y*.*M*)\[*x* := *N*\] = λ*y*.(*M*\[*x* := *N*\]), if *x* ≠ *y* and *y* ∉ FV(*N*)

To substitute into an abstraction, it is sometimes necessary to α-convert the expression. For example, it is not correct for (λ*x*.*y*)\[*y* := *x*\] to result in λ*x*.*x*, because the substituted *x* was supposed to be free but ended up being bound. The correct substitution in this case is λ*z*.*x*, up to α-equivalence. Substitution is defined uniquely up to α-equivalence.

### β-reduction\[[edit][115]\]

β-reduction captures the idea of function application. β-reduction is defined in terms of substitution: the β-reduction of (λ*V*.*M*) *N* is *M*\[*V* := *N*\].

For example, assuming some encoding of 2, 7, ×, we have the following β-reduction: (λ*n*.*n* × 2) 7 → 7 × 2.

β-reduction can be seen to be the same as the concept of *local reducibility* in [natural deduction][116], via the [Curry-Howard isomorphism][117].

### η-reduction\[[edit][118]\]

η-reduction expresses the idea of [extensionality][119], which in this context is that two functions are the same [if and only if][120] they give the same result for all arguments. η-reduction converts between λ*x*.*f* *x* and *f* whenever *x* does not appear free in *f*.

η-reduction can be seen to be the same as the concept of *local completeness* in [natural deduction][121], via the [Curry-Howard isomorphism][122].

## Normal forms and confluence\[[edit][123]\]

For the untyped lambda calculus, β-reduction as a [rewriting rule][124] is neither [strongly normalising][125] nor [weakly normalising][126].

However, it can be shown that β-reduction is [confluent][127] when working up to α-conversion (i.e. we consider two normal forms to be equal if it is possible to α-convert one into the other).

Therefore, both strongly normalising terms and weakly normalising terms have a unique normal form. For strongly normalising terms, any reduction strategy is guaranteed to yield the normal form, whereas for weakly normalising terms, some reduction strategies may fail to find it.

## Encoding datatypes\[[edit][128]\]

The basic lambda calculus may be used to model booleans, [arithmetic][129], data structures and recursion, as illustrated in the following sub-sections.

### Arithmetic in lambda calculus\[[edit][130]\]

There are several possible ways to define the [natural numbers][131] in lambda calculus, but by far the most common are the [Church numerals][132], which can be defined as follows:

    0 := λf.λx.x
    1 := λf.λx.f x
    2 := λf.λx.f (f x)
    3 := λf.λx.f (f (f x))

and so on. Or using the alternative syntax presented above in *[Notation][133]*:

    0 := λfx.x
    1 := λfx.f x
    2 := λfx.f (f x)
    3 := λfx.f (f (f x))

A Church numeral is a [higher-order function][134]-it takes a single-argument function *f*, and returns another single-argument function. The Church numeral *n* is a function that takes a function *f* as argument and returns the *n*\-th composition of *f*, i.e. the function *f* composed with itself *n* times. This is denoted *f*(*n*) and is in fact the *n*\-th power of *f* (considered as an operator); *f*(0) is defined to be the identity function. Such repeated compositions (of a single function *f*) obey the [laws of exponents][135], which is why these numerals can be used for arithmetic. (In Church's original lambda calculus, the formal parameter of a lambda expression was required to occur at least once in the function body, which made the above definition of 0 impossible.)

One way of thinking about the Church numeral *n*, which is often useful when analysing programs, is as an instruction 'repeat *n* times'. For example, using the PAIR and NIL functions defined below, one can define a function that constructs a (linked) list of *n* elements all equal to *x* by repeating 'prepend another *x* element' *n* times, starting from an empty list. The lambda term is

λ*n*.λ*x*.*n* (PAIR *x*) NIL

By varying what is being repeated, and varying what argument that function being repeated is applied to, a great many different effects can be achieved.

We can define a successor function, which takes a Church numeral *n* and returns *n* + 1 by adding another application of *f*, where '(mf)x' means the function 'f' is applied 'm' times on 'x':

SUCC := λn.λf.λx.f (n f x)

Because the m\-th composition of f composed with the n\-th composition of f gives the m+n\-th composition of f, addition can be defined as follows:

PLUS := λm.λn.λf.λx.m f (n f x)

PLUS can be thought of as a function taking two natural numbers as arguments and returning a natural number; it can be verified that

PLUS 2 3

and

5

are β-equivalent lambda expressions. Since adding *m* to a number *n* can be accomplished by adding 1 *m* times, an alternative definition is:

PLUS := λ*m*.λ*n*.*m* SUCC *n* [\[22\]][136]

Similarly, multiplication can be defined as

MULT := λ*m*.λ*n*.λ*f*.*m* (*n* *f*)[\[18\]][137]

Alternatively

MULT := λ*m*.λ*n*.*m* (PLUS *n*) 0

since multiplying *m* and *n* is the same as repeating the add *n* function *m* times and then applying it to zero. Exponentiation has a rather simple rendering in Church numerals, namely

POW := λ*b*.λ*e*.*e* *b*[\[19\]][138]

The predecessor function defined by PRED *n* = *n* − 1 for a positive integer *n* and PRED 0 = 0 is considerably more difficult. The formula

PRED := λ*n*.λ*f*.λ*x*.*n* (λ*g*.λ*h*.*h* (*g* *f*)) (λ*u*.*x*) (λ*u*.*u*)

can be validated by showing inductively that if *T* denotes (λ*g*.λ*h*.*h* (*g* *f*)), then T(*n*)(λ*u*.*x*) = (λ*h*.*h*(*f*(*n*−1)(*x*))) for *n* > 0. Two other definitions of PRED are given below, one using [conditionals][139] and the other using [pairs][140]. With the predecessor function, subtraction is straightforward. Defining

SUB := λ*m*.λ*n*.*n* PRED *m*,

SUB *m* *n* yields *m* − *n* when *m* > *n* and 0 otherwise.

### Logic and predicates\[[edit][141]\]

By convention, the following two definitions (known as Church booleans) are used for the boolean values TRUE and FALSE:

TRUE := λ*x*.λ*y*.*x*

FALSE := λ*x*.λ*y*.*y*

(Note that FALSE is equivalent to the Church numeral zero defined above)

Then, with these two lambda terms, we can define some logic operators (these are just possible formulations; other expressions are equally correct):

AND := λ*p*.λ*q*.*p* *q* *p*

OR := λ*p*.λ*q*.*p* *p* *q*

NOT := λ*p*.*p* FALSE TRUE

IFTHENELSE := λ*p*.λ*a*.λ*b*.*p* *a* *b*

We are now able to compute some logic functions, for example:

AND TRUE FALSE

≡ (λ*p*.λ*q*.*p* *q* *p*) TRUE FALSE →β TRUE FALSE TRUE

≡ (λ*x*.λ*y*.*x*) FALSE TRUE →β FALSE

and we see that AND TRUE FALSE is equivalent to FALSE.

A *predicate* is a function that returns a boolean value. The most fundamental predicate is ISZERO, which returns TRUE if its argument is the Church numeral 0, and FALSE if its argument is any other Church numeral:

ISZERO := λ*n*.*n* (λ*x*.FALSE) TRUE

The following predicate tests whether the first argument is less-than-or-equal-to the second:

LEQ := λ*m*.λ*n*.ISZERO (SUB *m* *n*),

and since *m* = *n*, if LEQ *m* *n* and LEQ *n* *m*, it is straightforward to build a predicate for numerical equality.

The availability of predicates and the above definition of TRUE and FALSE make it convenient to write "if-then-else" expressions in lambda calculus. For example, the predecessor function can be defined as:

PRED := λ*n*.*n* (λ*g*.λ*k*.ISZERO (*g* 1) *k* (PLUS (*g* *k*) 1)) (λ*v*.0) 0

which can be verified by showing inductively that *n* (λ*g*.λ*k*.ISZERO (*g* 1) *k* (PLUS (*g* *k*) 1)) (λ*v*.0) is the add *n* − 1 function for *n* > 0.

### Pairs\[[edit][142]\]

A pair (2-tuple) can be defined in terms of TRUE and FALSE, by using the [Church encoding for pairs][143]. For example, PAIR encapsulates the pair (*x*,*y*), FIRST returns the first element of the pair, and SECOND returns the second.

PAIR := λ*x*.λ*y*.λ*f*.*f* *x* *y*

FIRST := λ*p*.*p* TRUE

SECOND := λ*p*.*p* FALSE

NIL := λ*x*.TRUE

NULL := λ*p*.*p* (λ*x*.λ*y*.FALSE)

A linked list can be defined as either NIL for the empty list, or the PAIR of an element and a smaller list. The predicate NULL tests for the value NIL. (Alternatively, with NIL := FALSE, the construct *l* (λ*h*.λ*t*.λ*z*.deal\_with\_head\_*h*\_and\_tail\_*t*) (deal\_with\_nil) obviates the need for an explicit NULL test).

As an example of the use of pairs, the shift-and-increment function that maps (*m*, *n*) to (*n*, *n* + 1) can be defined as

Φ := λ*x*.PAIR (SECOND *x*) (SUCC (SECOND *x*))

which allows us to give perhaps the most transparent version of the predecessor function:

PRED := λ*n*.FIRST (*n* Φ (PAIR 0 0)).

## Additional programming techniques\[[edit][144]\]

There is a considerable body of [programming idioms][145] for lambda calculus. Many of these were originally developed in the context of using lambda calculus as a foundation for [programming language semantics][146], effectively using lambda calculus as a [low-level programming language][147]. Because several programming languages include the lambda calculus (or something very similar) as a fragment, these techniques also see use in practical programming, but may then be perceived as obscure or foreign.

### Named constants\[[edit][148]\]

In lambda calculus, a [library][149] would take the form of a collection of previously defined functions, which as lambda-terms are merely particular constants. The pure lambda calculus does not have a concept of named constants since all atomic lambda-terms are variables, but one can emulate having named constants by setting aside a variable as the name of the constant, using abstraction to bind that variable in the main body, and apply that abstraction to the intended definition. Thus to use *f* to mean *M* (some explicit lambda-term) in *N* (another lambda-term, the "main program"), one can say

(λ*f*.*N*) *M*

Authors often introduce [syntactic sugar][150], such as let, to permit writing the above in the more intuitive order

let *f* =*M* in *N*

By chaining such definitions, one can write a lambda calculus "program" as zero or more function definitions, followed by one lambda-term using those functions that constitutes the main body of the program.

A notable restriction of this let is that the name *f* is not defined in *M*, since *M* is outside the scope of the abstraction binding *f*; this means a recursive function definition cannot be used as the *M* with let. The more advanced letrec syntactic sugar construction that allows writing recursive function definitions in that naive style instead additionally employs fixed-point combinators.

### Recursion and fixed points\[[edit][151]\]

[Recursion][152] is the definition of a function using the function itself. Lambda calculus cannot express this as directly as some other notations: all functions are anonymous in lambda calculus, so we can't refer to a value which is yet to be defined, inside the lambda term defining that same value. However, recursion can still be achieved by arranging for a lambda expression to receive itself as its argument value, for example in  (λ*x*.*x* *x*) *E*.

Consider the [factorial][153] function F(*n*) recursively defined by

F(*n*) = 1, if *n* = 0; else *n* × F(*n* − 1).

In the lambda expression which is to represent this function, a *parameter* (typically the first one) will be assumed to receive the lambda expression itself as its value, so that calling it - applying it to an argument - will amount to recursion. Thus to achieve recursion, the intended-as-self-referencing argument (called *r* here) must always be passed to itself within the function body, at a call point:

G := λ*r*. λ*n*.(1, if *n* = 0; else *n* × (*r* *r* (*n*−1)))

with  *r* *r* *x* = F *x* = G *r* *x*  to hold, so  {{{1}}}  and

F := G G = (λ*x*.*x* *x*) G

The self-application achieves replication here, passing the function's lambda expression on to the next invocation as an argument value, making it available to be referenced and called there.

This solves it but requires re-writing each recursive call as self-application. We would like to have a generic solution, without a need for any re-writes:

G := λ*r*. λ*n*.(1, if *n* = 0; else *n* × (*r* (*n*−1)))

with  *r* *x* = F *x* = G *r* *x*  to hold, so  *r* = G *r* =: FIX G  and

F := FIX G  where  FIX *g* := (*r* where *r* = *g* *r*) = *g* (FIX *g*)

so that  FIX G = G (FIX G) = (λ*n*.(1, if *n* = 0; else *n* × ((FIX G) (*n*−1))))

Given a lambda term with first argument representing recursive call (e.g. G here), the *fixed-point* combinator FIX will return a self-replicating lambda expression representing the recursive function (here, F). The function does not need to be explicitly passed to itself at any point, for the self-replication is arranged in advance, when it is created, to be done each time it is called. Thus the original lambda expression (FIX G) is re-created inside itself, at call-point, achieving [self-reference][154].

In fact, there are many possible definitions for this FIX operator, the simplest of them being:

__Y__ := λ*g*.(λ*x*.*g* (*x* *x*)) (λ*x*.*g* (*x* *x*))

In the lambda calculus, __Y__ *g*  is a fixed-point of *g*, as it expands to:

__Y__ *g*

(λ*h*.(λ*x*.*h* (*x* *x*)) (λ*x*.*h* (*x* *x*))) *g*

(λ*x*.*g* (*x* *x*)) (λ*x*.*g* (*x* *x*))

*g* ((λ*x*.*g* (*x* *x*)) (λ*x*.*g* (*x* *x*)))

*g* (__Y__ *g*)

Now, to perform our recursive call to the factorial function, we would simply call (__Y__ G) *n*,  where *n* is the number we are calculating the factorial of. Given *n* = 4, for example, this gives:

(__Y__ G) 4

G (__Y__ G) 4

(λ*r*.λ*n*.(1, if *n* = 0; else *n* × (*r* (*n*−1)))) (__Y__ G) 4

(λ*n*.(1, if *n* = 0; else *n* × ((__Y__ G) (*n*−1)))) 4

1, if 4 = 0; else 4 × ((__Y__ G) (4−1))

4 × (G (__Y__ G) (4−1))

4 × ((λ*n*.(1, if *n* = 0; else *n* × ((__Y__ G) (*n*−1)))) (4−1))

4 × (1, if 3 = 0; else 3 × ((__Y__ G) (3−1)))

4 × (3 × (G (__Y__ G) (3−1)))

4 × (3 × ((λ*n*.(1, if *n* = 0; else *n* × ((__Y__ G) (*n*−1)))) (3−1)))

4 × (3 × (1, if 2 = 0; else 2 × ((__Y__ G) (2−1))))

4 × (3 × (2 × (G (__Y__ G) (2−1))))

4 × (3 × (2 × ((λ*n*.(1, if *n* = 0; else *n* × ((__Y__ G) (*n*−1)))) (2−1))))

4 × (3 × (2 × (1, if 1 = 0; else 1 × ((__Y__ G) (1−1)))))

4 × (3 × (2 × (1 × (G (__Y__ G) (1−1)))))

4 × (3 × (2 × (1 × ((λ*n*.(1, if *n* = 0; else *n* × ((__Y__ G) (*n*−1)))) (1−1)))))

4 × (3 × (2 × (1 × (1, if 0 = 0; else 0 × ((__Y__ G) (0−1))))))

4 × (3 × (2 × (1 × (1))))

24

Every recursively defined function can be seen as a fixed point of some suitably defined function closing over the recursive call with an extra argument, and therefore, using __Y__, every recursively defined function can be expressed as a lambda expression. In particular, we can now cleanly define the subtraction, multiplication and comparison predicate of natural numbers recursively.

### Standard terms\[[edit][155]\]

Certain terms have commonly accepted names:\[*[citation needed][156]*\]

__I__ := λ*x*.*x*

__K__ := λ*x*.λ*y*.*x*

__S__ := λ*x*.λ*y*.λ*z*.*x* *z* (*y* *z*)

__B__ := λ*x*.λ*y*.λ*z*.*x* (*y* *z*)

__C__ := λ*x*.λ*y*.λ*z*.*x* *z* *y*

__W__ := λ*x*.λ*y*.*x* *y* *y*

__U__ := λ*x*.*x* *x*

__ω__ := λ*x*.*x* *x*

__Ω__ := __ω ω__

__Y__ := λ*g*.(λ*x*.*g* (*x* *x*)) (λ*x*.*g* (*x* *x*))

Several of these have direct applications in the *elimination of abstraction* that turns lambda terms into [combinator calculus][157] terms.

### Abstraction elimination\[[edit][158]\]

If *N* is a lambda-term without abstraction, but possibly containing named constants ([combinators][159]), then there exists a lambda-term *T*(*x*,*N*) which is equivalent to λ*x*.*N* but lacks abstraction (except as part of the named constants, if these are considered non-atomic). This can also be viewed as anonymising variables, as *T*(*x*,*N*) removes all occurrences of *x* from *N*, while still allowing argument values to be substituted into the positions where *N* contains an *x*. The conversion function *T* can be defined by:

*T*(*x*, *x*) := __I__

*T*(*x*, *N*) := __K__ *N* if *x* is not free in *N*.

*T*(*x*, *M* *N*) := __S__ *T*(*x*, *M*) *T*(*x*, *N*)

In either case, a term of the form *T*(*x*,*N*) *P* can reduce by having the initial combinator __I__, __K__, or __S__ grab the argument *P*, just like β-reduction of (λ*x*.*N*) *P* would do. __I__ returns that argument. __K__ throws the argument away, just like (λ*x*.*N*) would do if *x* has no free occurrence in *N*. __S__ passes the argument on to both subterms of the application, and then applies the result of the first to the result of the second.

The combinators __B__ and __C__ are similar to __S__, but pass the argument on to only one subterm of an application (__B__ to the "argument" subterm and __C__ to the "function" subterm), thus saving a subsequent __K__ if there is no occurrence of *x* in one subterm. In comparison to __B__ and __C__, the __S__ combinator actually conflates two functionalities: rearranging arguments, and duplicating an argument so that it may be used in two places. The __W__ combinator does only the latter, yielding the [B, C, K, W system][160] as an alternative to [SKI combinator calculus][161].

## Typed lambda calculus\[[edit][162]\]

A __typed lambda calculus__ is a typed [formalism][163] that uses the lambda-symbol (![\lambda ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b43d0ea3c9c025af1be9128e62a18fa74bedda2a)) to denote anonymous function abstraction. In this context, types are usually objects of a syntactic nature that are assigned to lambda terms; the exact nature of a type depends on the calculus considered (see [Kinds of typed lambda calculi][164]). From a certain point of view, typed lambda calculi can be seen as refinements of the [untyped lambda calculus][165] but from another point of view, they can also be considered the more fundamental theory and *untyped lambda calculus* a special case with only one type.[\[23\]][166]

Typed lambda calculi are foundational [programming languages][167] and are the base of typed [functional programming languages][168] such as [ML][169] and [Haskell][170] and, more indirectly, typed [imperative programming][171] languages. Typed lambda calculi play an important role in the design of [type systems][172] for programming languages; here typability usually captures desirable properties of the program, e.g. the program will not cause a memory access violation.

Typed lambda calculi are closely related to [mathematical logic][173] and [proof theory][174] via the [Curry-Howard isomorphism][175] and they can be considered as the [internal language][176] of classes of [categories][177], e.g. the simply typed lambda calculus is the language of [Cartesian closed categories][178] (CCCs).

## Reduction strategies\[[edit][179]\]

Whether a term is normalising or not, and how much work needs to be done in normalising it if it is, depends to a large extent on the reduction strategy used. Common lambda calculus reduction strategies include:[\[24\]][180]

Normal order

The leftmost, outermost redex is always reduced first. That is, whenever possible the arguments are substituted into the body of an abstraction before the arguments are reduced.

Applicative order

The leftmost, innermost redex is always reduced first. Intuitively this means a function's arguments are always reduced before the function itself. Applicative order always attempts to apply functions to normal forms, even when this is not possible.

Full β-reductions

Any redex can be reduced at any time. This means essentially the lack of any particular reduction strategy-with regard to reducibility, "all bets are off".

Weak reduction strategies do not reduce under lambda abstractions:

Call by value

A redex is reduced only when its right hand side has reduced to a value (variable or abstraction). Only the outermost redexes are reduced.

Call by name

As normal order, but no reductions are performed inside abstractions. For example, λ*x*.(λ*x*.*x*)*x* is in normal form according to this strategy, although it contains the redex (λ*x*.*x*)*x*.

Strategies with sharing reduce computations that are "the same" in parallel:

Optimal reduction

As normal order, but computations that have the same label are reduced simultaneously.

Call by need

As call by name (hence weak), but function applications that would duplicate terms instead name the argument, which is then reduced only "when it is needed".

## Computability\[[edit][181]\]

There is no algorithm that takes as input any two lambda expressions and outputs TRUE or FALSE depending on whether one expression reduces to the other.[\[10\]][182] More precisely, no [computable function][183] can [decide][184] the question. This was historically the first problem for which undecidability could be proven. As usual for such a proof, *computable* means computable by any [model of computation][185] that is [Turing complete][186]. In fact computability can itself be defined via the lambda calculus: a function *F*: __N__ → __N__ of natural numbers is a computable function if and only if there exists a lambda expression *f* such that for every pair of *x*, *y* in __N__, *F*(*x*)=*y* if and only if *f* *x* =β *y*,  where *x* and *y* are the Church numerals corresponding to *x* and *y*, respectively and =β meaning equivalence with β-reduction. See the [Church-Turing thesis][187] for other approaches to defining computability and their equivalence.

Church's proof of uncomputability first reduces the problem to determining whether a given lambda expression has a [normal form][188]. Then he assumes that this predicate is computable, and can hence be expressed in lambda calculus. Building on earlier work by Kleene and constructing a [Gödel numbering][189] for lambda expressions, he constructs a lambda expression *e* that closely follows the proof of [Gödel's first incompleteness theorem][190]. If *e* is applied to its own Gödel number, a contradiction results.

## Complexity\[[edit][191]\]

The notion of [computational complexity][192] for the lambda calculus is a bit tricky, because the cost of a β-reduction may vary depending on how it is implemented.[\[25\]][193] To be precise, one must somehow find the location of all of the occurrences of the bound variable *V* in the expression *E*, implying a time cost, or one must keep track of the locations of free variables in some way, implying a space cost. A naïve search for the locations of *V* in *E* is [*O*(*n*)][194] in the length *n* of *E*. [Director strings][195] were an early approach that traded this time cost for a quadratic space usage.[\[26\]][196] More generally this has led to the study of systems that use [explicit substitution][197].

In 2014 it was shown that the number of β-reduction steps taken by normal order reduction to reduce a term is a *reasonable* time cost model, that is, the reduction can be simulated on a Turing machine in time polynomially proportional to the number of steps.[\[27\]][198] This was a long-standing open problem, due to *size explosion*, the existence of lambda terms which grow exponentially in size for each β-reduction. The result gets around this by working with a compact shared representation. The result makes clear that the amount of space needed to evaluate a lambda term is not proportional to the size of the term during reduction. It is not currently known what a good measure of space complexity would be.[\[28\]][199]

An unreasonable model does not necessarily mean inefficient. [Optimal reduction][200] reduces all computations with the same label in one step, avoiding duplicated work, but the number of parallel β-reduction steps to reduce a given term to normal form is approximately linear in the size of the term. This is far too small to be a reasonable cost measure, as any Turing machine may be encoded in the lambda calculus in size linearly proportional to the size of the Turing machine. The true cost of reducing lambda terms is not due to β-reduction per se but rather the handling of the duplication of redexes during β-reduction.[\[29\]][201] It is not known if optimal reduction implementations are reasonable when measured with respect to a reasonable cost model such as the number of leftmost-outermost steps to normal form, but it has been shown for fragments of the lambda calculus that the optimal reduction algorithm is efficient and has at most a quadratic overhead compared to leftmost-outermost.[\[28\]][202] In addition the BOHM prototype implementation of optimal reduction outperformed both [Caml Light][203] and [Haskell][204] on pure lambda terms.[\[29\]][205]

## Lambda calculus and programming languages\[[edit][206]\]

As pointed out by [Peter Landin][207]'s 1965 paper "A Correspondence between ALGOL 60 and Church's Lambda-notation",[\[30\]][208] sequential [procedural programming][209] languages can be understood in terms of the lambda calculus, which provides the basic mechanisms for procedural abstraction and procedure (subprogram) application.

### Anonymous functions\[[edit][210]\]

For example, in [Lisp][211] the "square" function can be expressed as a lambda expression as follows:

The above example is an expression that evaluates to a first-class function. The symbol `lambda` creates an anonymous function, given a list of parameter names, `(x)` - just a single argument in this case, and an expression that is evaluated as the body of the function, `(* x x)`. Anonymous functions are sometimes called lambda expressions.

For example, [Pascal][212] and many other imperative languages have long supported passing [subprograms][213] as [arguments][214] to other subprograms through the mechanism of [function pointers][215]. However, function pointers are not a sufficient condition for functions to be [first class][216] datatypes, because a function is a first class datatype if and only if new instances of the function can be created at run-time. And this run-time creation of functions is supported in [Smalltalk][217], [JavaScript][218] and [Wolfram Language][219], and more recently in [Scala][220], [Eiffel][221] ("agents"), [C#][222] ("delegates") and [C++11][223], among others.

### Parallelism and concurrency\[[edit][224]\]

The [Church-Rosser][225] property of the lambda calculus means that evaluation (β-reduction) can be carried out in *any order*, even in parallel. This means that various [nondeterministic evaluation strategies][226] are relevant. However, the lambda calculus does not offer any explicit constructs for [parallelism][227]. One can add constructs such as [Futures][228] to the lambda calculus. Other [process calculi][229] have been developed for describing communication and concurrency.

## Semantics\[[edit][230]\]

The fact that lambda calculus terms act as functions on other lambda calculus terms, and even on themselves, led to questions about the semantics of the lambda calculus. Could a sensible meaning be assigned to lambda calculus terms? The natural semantics was to find a set *D* isomorphic to the function space *D* → *D*, of functions on itself. However, no nontrivial such *D* can exist, by [cardinality][231] constraints because the set of all functions from *D* to *D* has greater cardinality than *D*, unless *D* is a [singleton set][232].

In the 1970s, [Dana Scott][233] showed that if only [continuous functions][234] were considered, a set or [domain][235] *D* with the required property could be found, thus providing a [model][236] for the lambda calculus.

This work also formed the basis for the [denotational semantics][237] of programming languages.

## Variations and extensions\[[edit][238]\]

These extensions are in the [lambda cube][239]:

-   [Typed lambda calculus][240] - Lambda calculus with typed variables (and functions)
-   [System F][241] - A typed lambda calculus with type-variables
-   [Calculus of constructions][242] - A typed lambda calculus with [types][243] as first-class values

These [formal systems][244] are extensions of lambda calculus that are not in the lambda cube:

-   [Binary lambda calculus][245] - A version of lambda calculus with binary I/O, a binary encoding of terms, and a designated universal machine.
-   [Lambda-mu calculus][246] - An extension of the lambda calculus for treating [classical logic][247]

These formal systems are variations of lambda calculus:

-   [Kappa calculus][248] - A first-order analogue of lambda calculus

These formal systems are related to lambda calculus:

-   [Combinatory logic][249] - A notation for mathematical logic without variables
-   [SKI combinator calculus][250] - A computational system based on the __[S][251]__, __[K][252]__ and __[I][253]__ combinators, equivalent to lambda calculus, but reducible without variable substitutions

## See also\[[edit][254]\]

## Notes\[[edit][255]\]

1.  __[^][256]__ For a full history, see Cardone and Hindley's "History of Lambda-calculus and Combinatory Logic" (2006).

## References\[[edit][257]\]

1.  __[^][258]__ [Turing, Alan M.][259] (December 1937). "Computability and λ-Definability". *The Journal of Symbolic Logic*. __2__ (4): 153-163. [doi][260]:[10.2307/2268280][261]. [JSTOR][262] [2268280][263].
2.  __[^][264]__ [Coquand, Thierry][265]. Zalta, Edward N. (ed.). ["Type Theory"][266]. *The Stanford Encyclopedia of Philosophy* (Summer 2013 ed.). Retrieved November 17, 2020.
3.  __[^][267]__ Moortgat, Michael (1988). [*Categorial Investigations: Logical and Linguistic Aspects of the Lambek Calculus*][268]. Foris Publications. [ISBN][269] [9789067653879][270].
4.  __[^][271]__ Bunt, Harry; Muskens, Reinhard, eds. (2008). [*Computing Meaning*][272]. Springer. [ISBN][273] [978-1-4020-5957-5][274].
5.  __[^][275]__ [Mitchell, John C.][276] (2003). [*Concepts in Programming Languages*][277]. Cambridge University Press. p. 57. [ISBN][278] [978-0-521-78098-8][279]..
6.  __[^][280]__ [Pierce, Benjamin C.][281] *Basic Category Theory for Computer Scientists*. p. 53.
7.  __[^][282]__ [Church, Alonzo][283] (1932). "A set of postulates for the foundation of logic". *Annals of Mathematics*. Series 2. __33__ (2): 346-366. [doi][284]:[10.2307/1968337][285]. [JSTOR][286] [1968337][287].
8.  __[^][288]__ [Kleene, Stephen C.][289]; [Rosser, J. B.][290] (July 1935). "The Inconsistency of Certain Formal Logics". *The Annals of Mathematics*. __36__ (3): 630. [doi][291]:[10.2307/1968646][292]. [JSTOR][293] [1968646][294].
9.  __[^][295]__ [Church, Alonzo][296] (December 1942). "Review of Haskell B. Curry, *The Inconsistency of Certain Formal Logics*". *The Journal of Symbolic Logic*. __7__ (4): 170-171. [doi][297]:[10.2307/2268117][298]. [JSTOR][299] [2268117][300].
10.  ^ [Jump up to: *__a__*][301] [*__b__*][302] [Church, Alonzo][303] (1936). "An unsolvable problem of elementary number theory". *American Journal of Mathematics*. __58__ (2): 345-363. [doi][304]:[10.2307/2371045][305]. [JSTOR][306] [2371045][307].
11.  __[^][308]__ [Church, Alonzo][309] (1940). "A Formulation of the Simple Theory of Types". *Journal of Symbolic Logic*. __5__ (2): 56-68. [doi][310]:[10.2307/2266170][311]. [JSTOR][312] [2266170][313].
12.  __[^][314]__ Partee, B. B. H.; [ter Meulen, A.][315]; Wall, R. E. (1990). [*Mathematical Methods in Linguistics*][316]. Springer. [ISBN][317] [9789027722454][318]. Retrieved 29 Dec 2016.
13.  __[^][319]__ Alma, Jesse. Zalta, Edward N. (ed.). ["The Lambda Calculus"][320]. *The Stanford Encyclopedia of Philosophy* (Summer 2013 ed.). Retrieved November 17, 2020.
14.  __[^][321]__ Dana Scott, "[Looking Backward; Looking Forward][322]", Invited Talk at the Workshop in honour of Dana Scott's 85th birthday and 50 years of domain theory, 7-8 July, FLoC 2018 (talk 7 July 2018). The relevant passage begins at [32:50][323]. (See also this [extract of a May 2016 talk][324] at the University of Birmingham, UK.)
15.  __[^][325]__ [Barendregt, Hendrik Pieter][326] (1984). [*The Lambda Calculus: Its Syntax and Semantics*][327]. Studies in Logic and the Foundations of Mathematics. __103__ (Revised ed.). North Holland. [ISBN][328] [0-444-87508-5][329].
16.  __[^][330]__ [Corrections][331].
17.  ^ [Jump up to: *__a__*][332] [*__b__*][333] ["Example for Rules of Associativity"][334]. Lambda-bound.com. Retrieved 2012-06-18.
18.  ^ [Jump up to: *__a__*][335] [*__b__*][336] Selinger, Peter (2008), [*Lecture Notes on the Lambda Calculus*][337] (PDF), __0804__, Department of Mathematics and Statistics, University of Ottawa, p. 9, [arXiv][338]:[0804.3434][339], [Bibcode][340]:[2008arXiv0804.3434S][341]
19.  ^ [Jump up to: *__a__*][342] [*__b__*][343] [Barendregt, Henk][344]; Barendsen, Erik (March 2000), [*Introduction to Lambda Calculus*][345] (PDF)
20.  __[^][346]__ [de Queiroz, Ruy J. G. B.][347] (1988). "A Proof-Theoretic Account of Programming and the Role of Reduction Rules". *Dialectica*. __42__ (4): 265-282. [doi][348]:[10.1111/j.1746-8361.1988.tb00919.x][349].
21.  __[^][350]__ Turbak, Franklyn; Gifford, David (2008), *Design concepts in programming languages*, MIT press, p. 251, [ISBN][351] [978-0-262-20175-9][352]
22.  __[^][353]__ Felleisen, Matthias; Flatt, Matthew (2006), [*Programming Languages and Lambda Calculi*][354] (PDF), p. 26, archived from [the original][355] (PDF) on 2009-02-05; A note (accessed 2017) at the original location suggests that the authors consider the work originally referenced to have been superseded by a book.
23.  __[^][356]__ Types and Programming Languages, p. 273, Benjamin C. Pierce
24.  __[^][357]__ [Pierce, Benjamin C.][358] (2002). [*Types and Programming Languages*][359]. [MIT Press][360]. p. 56. [ISBN][361] [0-262-16209-1][362].
25.  __[^][363]__ Frandsen, Gudmund Skovbjerg; Sturtivant, Carl (26 August 1991). ["What is an Efficient Implementation of the \\lambda-calculus?"][364]. *Proceedings of the 5th ACM Conference on Functional Programming Languages and Computer Architecture*. Springer-Verlag: 289-312. [CiteSeerX][365] [10.1.1.139.6913][366].
26.  __[^][367]__ Sinot, F.-R. (2005). ["Director Strings Revisited: A Generic Approach to the Efficient Representation of Free Variables in Higher-order Rewriting"][368] (PDF). *Journal of Logic and Computation*. __15__ (2): 201-218. [doi][369]:[10.1093/logcom/exi010][370].
27.  __[^][371]__ Accattoli, Beniamino; Dal Lago, Ugo (14 July 2014). ["Beta reduction is invariant, indeed"][372] (PDF). *Proceedings of the Joint Meeting of the Twenty-Third EACSL Annual Conference on Computer Science Logic (CSL) and the Twenty-Ninth Annual ACM/IEEE Symposium on Logic in Computer Science (LICS)*: 1-10. [doi][373]:[10.1145/2603088.2603105][374].
28.  ^ [Jump up to: *__a__*][375] [*__b__*][376] Accattoli, Beniamino (October 2018). ["(In)Efficiency and Reasonable Cost Models"][377]. *Electronic Notes in Theoretical Computer Science*. __338__: 23-43. [doi][378]:[10.1016/j.entcs.2018.10.003][379].
29.  ^ [Jump up to: *__a__*][380] [*__b__*][381] Asperti, Andrea (16 Jan 2017). ["About the efficient reduction of lambda terms"][382] (PDF). Retrieved 19 August 2021.
30.  __[^][383]__ [Landin, P. J.][384] (1965). "A Correspondence between ALGOL 60 and Church's Lambda-notation". *Communications of the ACM*. __8__ (2): 89-101. [doi][385]:[10.1145/363744.363749][386]. [S2CID][387] [6505810][388].

## Further reading\[[edit][389]\]

-   Abelson, Harold & Gerald Jay Sussman. [Structure and Interpretation of Computer Programs][390]. [The MIT Press][391]. [ISBN][392] [0-262-51087-1][393].
-   [Hendrik Pieter Barendregt][394] [*Introduction to Lambda Calculus*][395].
-   [Henk Barendregt][396], [The Impact of the Lambda Calculus in Logic and Computer Science][397]. The Bulletin of Symbolic Logic, Volume 3, Number 2, June 1997.
-   [Barendregt, Hendrik Pieter][398], *The Type Free Lambda Calculus* pp1091-1132 of *Handbook of Mathematical Logic*, [North-Holland][399] (1977) [ISBN][400] [0-7204-2285-X][401]
-   Cardone and Hindley, 2006. [History of Lambda-calculus and Combinatory Logic][402]. In Gabbay and Woods (eds.), *Handbook of the History of Logic*, vol. 5. Elsevier.
-   Church, Alonzo, *An unsolvable problem of elementary number theory*, [American Journal of Mathematics][403], 58 (1936), pp. 345-363. This paper contains the proof that the equivalence of lambda expressions is in general not decidable.
-   Alonzo Church, *The Calculi of Lambda-Conversion* ([ISBN][404] [978-0-691-08394-0][405]) [\[1\]][406]
-   Frink Jr., Orrin, *Review: The Calculi of Lambda-Conversion* [\[2\]][407]
-   Kleene, Stephen, *A theory of positive integers in formal logic*, [American Journal of Mathematics][408], 57 (1935), pp. 153-173 and 219-244. Contains the lambda calculus definitions of several familiar functions.
-   [Landin, Peter][409], *A Correspondence Between ALGOL 60 and Church's Lambda-Notation*, [Communications of the ACM][410], vol. 8, no. 2 (1965), pages 89-101. Available from the [ACM site][411]. A classic paper highlighting the importance of lambda calculus as a basis for programming languages.
-   Larson, Jim, [*An Introduction to Lambda Calculus and Scheme*][412]. A gentle introduction for programmers.
-   Schalk, A. and Simmons, H. (2005) *[An introduction to λ-calculi and arithmetic with a decent selection of exercises][413]. Notes for a course in the Mathematical Logic MSc at Manchester University.*
-   [de Queiroz, Ruy J.G.B.][414] (2008). "On Reduction Rules, Meaning-as-Use and Proof-Theoretic Semantics". *[Studia Logica][415]*. __90__ (2): 211-247. [doi][416]:[10.1007/s11225-008-9150-5][417]. [S2CID][418] [11321602][419]. A paper giving a formal underpinning to the idea of 'meaning-is-use' which, even if based on proofs, it is different from proof-theoretic semantics as in the Dummett-Prawitz tradition since it takes reduction as the rules giving meaning.
-   Hankin, Chris, *An Introduction to Lambda Calculi for Computer Scientists,* [ISBN][420] [0954300653][421]

Monographs/textbooks for graduate students:

-   Morten Heine Sørensen, Paweł Urzyczyn, *Lectures on the Curry-Howard isomorphism*, Elsevier, 2006, [ISBN][422] [0-444-52077-5][423] is a recent monograph that covers the main topics of lambda calculus from the type-free variety, to most [typed lambda calculi][424], including more recent developments like [pure type systems][425] and the [lambda cube][426]. It does not cover [subtyping][427] extensions.
-   Pierce, Benjamin (2002), *Types and Programming Languages*, MIT Press, [ISBN][428] [0-262-16209-1][429] covers lambda calculi from a practical type system perspective; some topics like dependent types are only mentioned, but subtyping is an important topic.

*Some parts of this article are based on material from [FOLDOC][430], used with [permission][431].*

## External links\[[edit][432]\]

-   Graham Hutton, [Lambda Calculus][433], a short (12 minutes) Computerphile video on the Lambda Calculus
-   Helmut Brandl, *[Step by Step Introduction to Lambda Calculus][434]*
-   ["Lambda-calculus"][435], *[Encyclopedia of Mathematics][436]*, [EMS Press][437], 2001 \[1994\]
-   Achim Jung, *[A Short Introduction to the Lambda Calculus][438]*\-([PDF][439])
-   Dana Scott, *[A timeline of lambda calculus][440]*\-([PDF][441])
-   David C. Keenan, *[To Dissect a Mockingbird: A Graphical Notation for the Lambda Calculus with Animated Reduction][442]*
-   Raúl Rojas, *[A Tutorial Introduction to the Lambda Calculus][443]*\-([PDF][444])
-   Peter Selinger, *[Lecture Notes on the Lambda Calculus][445]*\-([PDF][446])
-   L. Allison, *[Some executable λ-calculus examples][447]*
-   Georg P. Loczewski, [*The Lambda Calculus and A++*][448]
-   Bret Victor, *[Alligator Eggs: A Puzzle Game Based on Lambda Calculus][449]*
-   *[Lambda Calculus][450]* on [Safalra's Website][451]
-   [LCI Lambda Interpreter][452] a simple yet powerful pure calculus interpreter
-   [Lambda Calculus links on Lambda-the-Ultimate][453]
-   Mike Thyer, [Lambda Animator][454], a graphical Java applet demonstrating alternative reduction strategies.
-   [Implementing the Lambda calculus][455] using [C++ Templates][456]
-   Marius Buliga, [*Graphic lambda calculus*][457]
-   [*Lambda Calculus as a Workflow Model*][458] by Peter Kelly, Paul Coddington, and Andrew Wendelborn; mentions [graph reduction][459] as a common means of evaluating lambda expressions and discusses the applicability of lambda calculus for [distributed computing][460] (due to the [Church-Rosser][461] property, which enables [parallel][462] graph reduction for lambda expressions).
-   Shane Steinert-Threlkeld, ["Lambda Calculi"][463], *[Internet Encyclopedia of Philosophy][464]*
-   Anton Salikhmetov, [*Macro Lambda Calculus*][465]

[1]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Computability "Computability"
[4]: https://en.wikipedia.org/wiki/Abstraction_(computer_science) "Abstraction (computer science)"
[5]: https://en.wikipedia.org/wiki/Function_application "Function application"
[6]: https://en.wikipedia.org/wiki/Name_binding "Name binding"
[7]: https://en.wikipedia.org/wiki/Substitution_(algebra) "Substitution (algebra)"
[8]: https://en.wikipedia.org/wiki/Model_of_computation
[9]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[10]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[11]: https://en.wikipedia.org/wiki/Foundations_of_mathematics "Foundations of mathematics"
[12]: https://en.wikipedia.org/wiki/De_Bruijn_index "De Bruijn index"
[13]: https://en.wikipedia.org/wiki/Reduction_strategy_(lambda_calculus)
[14]: https://en.wikipedia.org/wiki/Church%E2%80%93Rosser_theorem "Church-Rosser theorem"
[15]: https://en.wikipedia.org/wiki/Beta_normal_form "Beta normal form"
[16]: https://en.wikipedia.org/wiki/Iota_and_Jot "Iota and Jot"
[17]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=1 "Edit section: Explanation and applications"
[18]: https://en.wikipedia.org/wiki/Turing_completeness "Turing completeness"
[19]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[20]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[21]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-1
[22]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[23]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[24]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[25]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[26]: https://en.wikipedia.org/wiki/Philosophy "Philosophy"
[27]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-2
[28]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[29]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-3
[30]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-4
[31]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[32]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-5
[33]: https://en.wikipedia.org/wiki/Programming_language_theory "Programming language theory"
[34]: https://en.wikipedia.org/wiki/Functional_programming_language "Functional programming language"
[35]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[36]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-6
[37]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=2 "Edit section: History"
[38]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[39]: https://en.wikipedia.org/wiki/Foundations_of_mathematics "Foundations of mathematics"
[40]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-7
[41]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-8
[42]: https://en.wikipedia.org/wiki/Consistency "Consistency"
[43]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[44]: https://en.wikipedia.org/wiki/J._B._Rosser "J. B. Rosser"
[45]: https://en.wikipedia.org/wiki/Kleene%E2%80%93Rosser_paradox "Kleene-Rosser paradox"
[46]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-9
[47]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-10
[48]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Church1936-11
[49]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[50]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-12
[51]: https://en.wikipedia.org/wiki/Richard_Montague "Richard Montague"
[52]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-mm-linguistics-13
[53]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-14
[54]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=3 "Edit section: Origin of the lambda symbol"
[55]: https://en.wikipedia.org/wiki/Lambda "Lambda"
[56]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[57]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[58]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-15
[59]: https://en.wikipedia.org/wiki/Iota_operator "Iota operator"
[60]: https://en.wikipedia.org/wiki/Epsilon_operator "Epsilon operator"
[61]: https://en.wikipedia.org/wiki/Eeny,_meeny,_miny,_moe "Eeny, meeny, miny, moe"
[62]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=4 "Edit section: Informal description"
[63]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=5 "Edit section: Motivation"
[64]: https://en.wikipedia.org/wiki/Computable_function "Computable function"
[65]: https://en.wikipedia.org/wiki/Semantics#Computer_science "Semantics"
[66]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[67]: https://en.wikipedia.org/wiki/Map_(mathematics) "Map (mathematics)"
[68]: https://en.wikipedia.org/wiki/Currying "Currying"
[69]: https://en.wikipedia.org/wiki/Function_application "Function application"
[70]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=6 "Edit section: The lambda calculus"
[71]: https://en.wikipedia.org/wiki/Equational_theory "Equational theory"
[72]: https://en.wikipedia.org/wiki/Operational_definition "Operational definition"
[73]: https://en.wikipedia.org/wiki/Currying "Currying"
[74]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=7 "Edit section: Lambda terms"
[75]: https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"
[76]: https://en.wikipedia.org/wiki/Inductive_definition "Inductive definition"
[77]: https://en.wikipedia.org/wiki/Lambda_calculus#Notation
[78]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[79]: https://en.wikipedia.org/wiki/Identity_function "Identity function"
[80]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=8 "Edit section: Functions that operate on functions"
[81]: https://en.wikipedia.org/wiki/First-class_object "First-class object"
[82]: https://en.wikipedia.org/wiki/Identity_function "Identity function"
[83]: https://en.wikipedia.org/wiki/Operator_associativity "Operator associativity"
[84]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=9 "Edit section: Alpha equivalence"
[85]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=10 "Edit section: Free variables"
[86]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=11 "Edit section: Capture-avoiding substitutions"
[87]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=12 "Edit section: β-reduction"
[88]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[89]: https://en.wikipedia.org/wiki/Standard_ML "Standard ML"
[90]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[91]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=13 "Edit section: Formal definition"
[92]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=14 "Edit section: Definition"
[93]: https://en.wikipedia.org/wiki/Recursive_definition "Recursive definition"
[94]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-16
[95]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-17
[96]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=15 "Edit section: Notation"
[97]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-lambda-bound-18
[98]: https://en.wikipedia.org/wiki/Regular_expression#Lazy_matching "Regular expression"
[99]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Selinger-19
[100]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-lambda-bound-18
[101]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=16 "Edit section: Free and bound variables"
[102]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-BarendregtBarendsen-20
[103]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[104]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=17 "Edit section: Reduction"
[105]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-21
[106]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=18 "Edit section: α-conversion"
[107]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-22
[108]: https://en.wikipedia.org/wiki/Variable_shadowing "Variable shadowing"
[109]: https://en.wikipedia.org/wiki/Name_resolution_(programming_languages) "Name resolution (programming languages)"
[110]: https://en.wikipedia.org/wiki/Variable_shadowing "Variable shadowing"
[111]: https://en.wikipedia.org/wiki/Scope_(programming) "Scope (programming)"
[112]: https://en.wikipedia.org/wiki/Name_resolution_(programming_languages)#Alpha_renaming_to_make_name_resolution_trivial "Name resolution (programming languages)"
[113]: https://en.wikipedia.org/wiki/De_Bruijn_index "De Bruijn index"
[114]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=19 "Edit section: Substitution"
[115]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=20 "Edit section: β-reduction"
[116]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[117]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry-Howard isomorphism"
[118]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=21 "Edit section: η-reduction"
[119]: https://en.wikipedia.org/wiki/Extensionality "Extensionality"
[120]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[121]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[122]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry-Howard isomorphism"
[123]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=22 "Edit section: Normal forms and confluence"
[124]: https://en.wikipedia.org/wiki/Rewrite_system "Rewrite system"
[125]: https://en.wikipedia.org/wiki/Strongly_normalising "Strongly normalising"
[126]: https://en.wikipedia.org/wiki/Weakly_normalising "Weakly normalising"
[127]: https://en.wikipedia.org/wiki/Confluence_(abstract_rewriting) "Confluence (abstract rewriting)"
[128]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=23 "Edit section: Encoding datatypes"
[129]: https://en.wikipedia.org/wiki/Arithmetic "Arithmetic"
[130]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=24 "Edit section: Arithmetic in lambda calculus"
[131]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[132]: https://en.wikipedia.org/wiki/Church_numeral "Church numeral"
[133]: https://en.wikipedia.org/wiki/Lambda_calculus#Notation
[134]: https://en.wikipedia.org/wiki/Higher-order_function "Higher-order function"
[135]: https://en.wikipedia.org/wiki/Laws_of_exponents "Laws of exponents"
[136]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-23
[137]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Selinger-19
[138]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-BarendregtBarendsen-20
[139]: https://en.wikipedia.org/wiki/Lambda_calculus#Logic_and_predicates
[140]: https://en.wikipedia.org/wiki/Lambda_calculus#Pairs
[141]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=25 "Edit section: Logic and predicates"
[142]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=26 "Edit section: Pairs"
[143]: https://en.wikipedia.org/wiki/Church_encoding#Church_pairs "Church encoding"
[144]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=27 "Edit section: Additional programming techniques"
[145]: https://en.wikipedia.org/wiki/Programming_idiom "Programming idiom"
[146]: https://en.wikipedia.org/wiki/Semantics_(computer_science) "Semantics (computer science)"
[147]: https://en.wikipedia.org/wiki/Low-level_programming_language "Low-level programming language"
[148]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=28 "Edit section: Named constants"
[149]: https://en.wikipedia.org/wiki/Library_(computing) "Library (computing)"
[150]: https://en.wikipedia.org/wiki/Syntactic_sugar "Syntactic sugar"
[151]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=29 "Edit section: Recursion and fixed points"
[152]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[153]: https://en.wikipedia.org/wiki/Factorial "Factorial"
[154]: https://en.wikipedia.org/wiki/Self-reference "Self-reference"
[155]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=30 "Edit section: Standard terms"
[156]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[157]: https://en.wikipedia.org/wiki/Combinator_calculus "Combinator calculus"
[158]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=31 "Edit section: Abstraction elimination"
[159]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[160]: https://en.wikipedia.org/wiki/B,_C,_K,_W_system "B, C, K, W system"
[161]: https://en.wikipedia.org/wiki/SKI_combinator_calculus "SKI combinator calculus"
[162]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=32 "Edit section: Typed lambda calculus"
[163]: https://en.wikipedia.org/wiki/Formalism_(mathematics) "Formalism (mathematics)"
[164]: https://en.wikipedia.org/wiki/Typed_lambda_calculus#Kinds_of_typed_lambda_calculi "Typed lambda calculus"
[165]: https://en.wikipedia.org/wiki/Untyped_lambda_calculus "Untyped lambda calculus"
[166]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-24
[167]: https://en.wikipedia.org/wiki/Programming_languages "Programming languages"
[168]: https://en.wikipedia.org/wiki/Functional_programming_languages "Functional programming languages"
[169]: https://en.wikipedia.org/wiki/ML_programming_language "ML programming language"
[170]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[171]: https://en.wikipedia.org/wiki/Imperative_programming "Imperative programming"
[172]: https://en.wikipedia.org/wiki/Type_systems "Type systems"
[173]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[174]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[175]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry-Howard isomorphism"
[176]: https://en.wikipedia.org/wiki/Internal_language "Internal language"
[177]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[178]: https://en.wikipedia.org/wiki/Cartesian_closed_category "Cartesian closed category"
[179]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=33 "Edit section: Reduction strategies"
[180]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-25
[181]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=34 "Edit section: Computability"
[182]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Church1936-11
[183]: https://en.wikipedia.org/wiki/Computable_function "Computable function"
[184]: https://en.wikipedia.org/wiki/Decision_problem "Decision problem"
[185]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[186]: https://en.wikipedia.org/wiki/Turing_complete "Turing complete"
[187]: https://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis "Church-Turing thesis"
[188]: https://en.wikipedia.org/wiki/Beta_normal_form "Beta normal form"
[189]: https://en.wikipedia.org/wiki/G%C3%B6del_numbering "Gödel numbering"
[190]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[191]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=35 "Edit section: Complexity"
[192]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[193]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-26
[194]: https://en.wikipedia.org/wiki/Big_O_notation "Big O notation"
[195]: https://en.wikipedia.org/wiki/Director_string "Director string"
[196]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-27
[197]: https://en.wikipedia.org/wiki/Explicit_substitution "Explicit substitution"
[198]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-28
[199]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Reasonable-29
[200]: https://en.wikipedia.org/wiki/Reduction_strategy#Optimal_reduction "Reduction strategy"
[201]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Asperti-30
[202]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Reasonable-29
[203]: https://en.wikipedia.org/wiki/Caml "Caml"
[204]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[205]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-Asperti-30
[206]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=36 "Edit section: Lambda calculus and programming languages"
[207]: https://en.wikipedia.org/wiki/Peter_Landin "Peter Landin"
[208]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-31
[209]: https://en.wikipedia.org/wiki/Procedural_programming "Procedural programming"
[210]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=37 "Edit section: Anonymous functions"
[211]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[212]: https://en.wikipedia.org/wiki/Pascal_(programming_language) "Pascal (programming language)"
[213]: https://en.wikipedia.org/wiki/Subprograms "Subprograms"
[214]: https://en.wikipedia.org/wiki/Arguments "Arguments"
[215]: https://en.wikipedia.org/wiki/Function_pointers "Function pointers"
[216]: https://en.wikipedia.org/wiki/First-class_function "First-class function"
[217]: https://en.wikipedia.org/wiki/Smalltalk "Smalltalk"
[218]: https://en.wikipedia.org/wiki/JavaScript "JavaScript"
[219]: https://en.wikipedia.org/wiki/Wolfram_Language "Wolfram Language"
[220]: https://en.wikipedia.org/wiki/Scala_(programming_language) "Scala (programming language)"
[221]: https://en.wikipedia.org/wiki/Eiffel_(programming_language) "Eiffel (programming language)"
[222]: https://en.wikipedia.org/wiki/C_Sharp_(programming_language) "C Sharp (programming language)"
[223]: https://en.wikipedia.org/wiki/C%2B%2B11 "C++11"
[224]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=38 "Edit section: Parallelism and concurrency"
[225]: https://en.wikipedia.org/wiki/Church%E2%80%93Rosser_theorem "Church-Rosser theorem"
[226]: https://en.wikipedia.org/wiki/Evaluation_strategy#Nondeterministic_strategies "Evaluation strategy"
[227]: https://en.wikipedia.org/wiki/Parallel_computing "Parallel computing"
[228]: https://en.wikipedia.org/wiki/Futures_and_promises "Futures and promises"
[229]: https://en.wikipedia.org/wiki/Process_calculi "Process calculi"
[230]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=39 "Edit section: Semantics"
[231]: https://en.wikipedia.org/wiki/Cardinality "Cardinality"
[232]: https://en.wikipedia.org/wiki/Singleton_set "Singleton set"
[233]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[234]: https://en.wikipedia.org/wiki/Scott_continuity "Scott continuity"
[235]: https://en.wikipedia.org/wiki/Domain_theory "Domain theory"
[236]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[237]: https://en.wikipedia.org/wiki/Denotational_semantics "Denotational semantics"
[238]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=40 "Edit section: Variations and extensions"
[239]: https://en.wikipedia.org/wiki/Lambda_cube "Lambda cube"
[240]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[241]: https://en.wikipedia.org/wiki/System_F "System F"
[242]: https://en.wikipedia.org/wiki/Calculus_of_constructions "Calculus of constructions"
[243]: https://en.wikipedia.org/wiki/Type_system "Type system"
[244]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[245]: https://en.wikipedia.org/wiki/Binary_lambda_calculus "Binary lambda calculus"
[246]: https://en.wikipedia.org/wiki/Lambda-mu_calculus "Lambda-mu calculus"
[247]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[248]: https://en.wikipedia.org/wiki/Kappa_calculus "Kappa calculus"
[249]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[250]: https://en.wikipedia.org/wiki/SKI_combinator_calculus "SKI combinator calculus"
[251]: https://en.wikipedia.org/wiki/Lambda_calculus#S
[252]: https://en.wikipedia.org/wiki/Lambda_calculus#K
[253]: https://en.wikipedia.org/wiki/Lambda_calculus#I
[254]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=41 "Edit section: See also"
[255]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=42 "Edit section: Notes"
[256]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-8 "Jump up"
[257]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=43 "Edit section: References"
[258]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-1 "Jump up"
[259]: https://en.wikipedia.org/wiki/Alan_Turing "Alan Turing"
[260]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[261]: https://doi.org/10.2307%2F2268280
[262]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[263]: https://www.jstor.org/stable/2268280
[264]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-2 "Jump up"
[265]: https://en.wikipedia.org/wiki/Thierry_Coquand "Thierry Coquand"
[266]: http://plato.stanford.edu/archives/sum2013/entries/type-theory/
[267]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-3 "Jump up"
[268]: https://books.google.com/books?id=9CdFE9X_FCoC
[269]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[270]: https://en.wikipedia.org/wiki/Special:BookSources/9789067653879 "Special:BookSources/9789067653879"
[271]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-4 "Jump up"
[272]: https://books.google.com/books?id=nyFa5ngYThMC
[273]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[274]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4020-5957-5 "Special:BookSources/978-1-4020-5957-5"
[275]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-5 "Jump up"
[276]: https://en.wikipedia.org/wiki/John_C._Mitchell "John C. Mitchell"
[277]: https://books.google.com/books?id=7Uh8XGfJbEIC&pg=PA57
[278]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[279]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-78098-8 "Special:BookSources/978-0-521-78098-8"
[280]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-6 "Jump up"
[281]: https://en.wikipedia.org/wiki/Benjamin_C._Pierce "Benjamin C. Pierce"
[282]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-7 "Jump up"
[283]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[284]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[285]: https://doi.org/10.2307%2F1968337
[286]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[287]: https://www.jstor.org/stable/1968337
[288]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-9 "Jump up"
[289]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[290]: https://en.wikipedia.org/wiki/J._B._Rosser "J. B. Rosser"
[291]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[292]: https://doi.org/10.2307%2F1968646
[293]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[294]: https://www.jstor.org/stable/1968646
[295]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-10 "Jump up"
[296]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[297]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[298]: https://doi.org/10.2307%2F2268117
[299]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[300]: https://www.jstor.org/stable/2268117
[301]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Church1936_11-0
[302]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Church1936_11-1
[303]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[304]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[305]: https://doi.org/10.2307%2F2371045
[306]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[307]: https://www.jstor.org/stable/2371045
[308]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-12 "Jump up"
[309]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[310]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[311]: https://doi.org/10.2307%2F2266170
[312]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[313]: https://www.jstor.org/stable/2266170
[314]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-mm-linguistics_13-0 "Jump up"
[315]: https://en.wikipedia.org/wiki/Alice_ter_Meulen "Alice ter Meulen"
[316]: https://books.google.com/books?id=qV7TUuaYcUIC&pg=PA317
[317]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[318]: https://en.wikipedia.org/wiki/Special:BookSources/9789027722454 "Special:BookSources/9789027722454"
[319]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-14 "Jump up"
[320]: http://plato.stanford.edu/entries/lambda-calculus/
[321]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-15 "Jump up"
[322]: https://www.youtube.com/embed/uS9InrmPIoc
[323]: https://www.youtube.com/embed/uS9InrmPIoc?start=1970
[324]: https://www.youtube.com/watch?time_continue=1&v=juXwu0Nqc3I
[325]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-16 "Jump up"
[326]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[327]: https://www.elsevier.com/books/the-lambda-calculus/barendregt/978-0-444-87508-2
[328]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[329]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-87508-5 "Special:BookSources/0-444-87508-5"
[330]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-17 "Jump up"
[331]: ftp://ftp.cs.ru.nl/pub/CompMath.Found/ErrataLCalculus.pdf
[332]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-lambda-bound_18-0
[333]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-lambda-bound_18-1
[334]: http://www.lambda-bound.com/book/lambdacalc/node27.html
[335]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Selinger_19-0
[336]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Selinger_19-1
[337]: http://www.mathstat.dal.ca/~selinger/papers/lambdanotes.pdf
[338]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[339]: https://arxiv.org/abs/0804.3434
[340]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[341]: https://ui.adsabs.harvard.edu/abs/2008arXiv0804.3434S
[342]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-BarendregtBarendsen_20-0
[343]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-BarendregtBarendsen_20-1
[344]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[345]: ftp://ftp.cs.ru.nl/pub/CompMath.Found/lambda.pdf
[346]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-21 "Jump up"
[347]: https://en.wikipedia.org/wiki/Ruy_de_Queiroz "Ruy de Queiroz"
[348]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[349]: https://doi.org/10.1111%2Fj.1746-8361.1988.tb00919.x
[350]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-22 "Jump up"
[351]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[352]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-20175-9 "Special:BookSources/978-0-262-20175-9"
[353]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-23 "Jump up"
[354]: https://web.archive.org/web/20090205113235/http://www.cs.utah.edu/plt/publications/pllc.pdf
[355]: http://www.cs.utah.edu/plt/publications/pllc.pdf
[356]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-24 "Jump up"
[357]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-25 "Jump up"
[358]: https://en.wikipedia.org/wiki/Benjamin_C._Pierce "Benjamin C. Pierce"
[359]: https://www.google.com/books/edition/Types_and_Programming_Languages/ti6zoAC9Ph8C?hl=en&pg=PA56
[360]: https://en.wikipedia.org/wiki/MIT_Press "MIT Press"
[361]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[362]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-16209-1 "Special:BookSources/0-262-16209-1"
[363]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-26 "Jump up"
[364]: https://dl.acm.org/doi/10.5555/645420.652523
[365]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[366]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.139.6913
[367]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-27 "Jump up"
[368]: http://www.lsv.fr/Publis/PAPERS/PDF/sinot-jlc05.pdf
[369]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[370]: https://doi.org/10.1093%2Flogcom%2Fexi010
[371]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-28 "Jump up"
[372]: https://arxiv.org/pdf/1601.01233.pdf
[373]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[374]: https://doi.org/10.1145%2F2603088.2603105
[375]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Reasonable_29-0
[376]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Reasonable_29-1
[377]: https://www.sciencedirect.com/science/article/pii/S1571066118300690
[378]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[379]: https://doi.org/10.1016%2Fj.entcs.2018.10.003
[380]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Asperti_30-0
[381]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-Asperti_30-1
[382]: https://arxiv.org/pdf/1701.04240v1.pdf
[383]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_ref-31 "Jump up"
[384]: https://en.wikipedia.org/wiki/Peter_Landin "Peter Landin"
[385]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[386]: https://doi.org/10.1145%2F363744.363749
[387]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[388]: https://api.semanticscholar.org/CorpusID:6505810
[389]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=44 "Edit section: Further reading"
[390]: https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs "Structure and Interpretation of Computer Programs"
[391]: https://en.wikipedia.org/wiki/The_MIT_Press "The MIT Press"
[392]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[393]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-51087-1 "Special:BookSources/0-262-51087-1"
[394]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[395]: http://www.cse.chalmers.se/research/group/logic/TypesSS05/Extra/geuvers.pdf
[396]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[397]: https://www.jstor.org/stable/421013
[398]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[399]: https://en.wikipedia.org/wiki/North-Holland_Publishing_Company "North-Holland Publishing Company"
[400]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[401]: https://en.wikipedia.org/wiki/Special:BookSources/0-7204-2285-X "Special:BookSources/0-7204-2285-X"
[402]: http://www.users.waitrose.com/~hindley/SomePapers_PDFs/2006CarHin,HistlamRp.pdf
[403]: https://en.wikipedia.org/wiki/American_Journal_of_Mathematics "American Journal of Mathematics"
[404]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[405]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-691-08394-0 "Special:BookSources/978-0-691-08394-0"
[406]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-32
[407]: https://en.wikipedia.org/wiki/Lambda_calculus#cite_note-33
[408]: https://en.wikipedia.org/wiki/American_Journal_of_Mathematics "American Journal of Mathematics"
[409]: https://en.wikipedia.org/wiki/Peter_Landin "Peter Landin"
[410]: https://en.wikipedia.org/wiki/Communications_of_the_ACM "Communications of the ACM"
[411]: http://portal.acm.org/citation.cfm?id=363749&coll=portal&dl=ACM
[412]: https://web.archive.org/web/20011206080336/http://www.jetcafe.org/~jim/lambda.html
[413]: https://web.archive.org/web/20080307014129/http://www.cs.man.ac.uk/~hsimmons/BOOKS/lcalculus.pdf
[414]: https://en.wikipedia.org/wiki/Ruy_de_Queiroz "Ruy de Queiroz"
[415]: https://en.wikipedia.org/wiki/Studia_Logica "Studia Logica"
[416]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[417]: https://doi.org/10.1007%2Fs11225-008-9150-5
[418]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[419]: https://api.semanticscholar.org/CorpusID:11321602
[420]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[421]: https://en.wikipedia.org/wiki/Special:BookSources/0954300653 "Special:BookSources/0954300653"
[422]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[423]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-52077-5 "Special:BookSources/0-444-52077-5"
[424]: https://en.wikipedia.org/wiki/Typed_lambda_calculi "Typed lambda calculi"
[425]: https://en.wikipedia.org/wiki/Pure_type_system "Pure type system"
[426]: https://en.wikipedia.org/wiki/Lambda_cube "Lambda cube"
[427]: https://en.wikipedia.org/wiki/Subtyping "Subtyping"
[428]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[429]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-16209-1 "Special:BookSources/0-262-16209-1"
[430]: https://en.wikipedia.org/wiki/Free_On-line_Dictionary_of_Computing "Free On-line Dictionary of Computing"
[431]: https://en.wikipedia.org/wiki/Wikipedia:Foldoc_license "Wikipedia:Foldoc license"
[432]: https://en.wikipedia.org/w/index.php?title=Lambda_calculus&action=edit&section=45 "Edit section: External links"
[433]: https://www.youtube.com/watch?v=eis11j_iGMs
[434]: https://hbr.github.io/Lambda-Calculus/
[435]: https://www.encyclopediaofmath.org/index.php?title=Lambda-calculus
[436]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[437]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[438]: http://www.cs.bham.ac.uk/~axj/pub/papers/lambda-calculus.pdf
[439]: https://en.wikipedia.org/wiki/Portable_Document_Format "Portable Document Format"
[440]: http://turing100.acm.org/lambda_calculus_timeline.pdf
[441]: https://en.wikipedia.org/wiki/Portable_Document_Format "Portable Document Format"
[442]: http://dkeenan.com/Lambda/
[443]: http://www.inf.fu-berlin.de/inst/ag-ki/rojas_home/documents/tutorials/lambda.pdf
[444]: https://en.wikipedia.org/wiki/Portable_Document_Format "Portable Document Format"
[445]: http://www.mscs.dal.ca/~selinger/papers/#lambdanotes
[446]: https://en.wikipedia.org/wiki/Portable_Document_Format "Portable Document Format"
[447]: http://www.allisons.org/ll/FP/Lambda/Examples/
[448]: http://www.lambda-bound.com/book/lambdacalc/lcalconl.html
[449]: http://worrydream.com/AlligatorEggs/
[450]: http://www.safalra.com/science/lambda-calculus/
[451]: http://www.safalra.com/
[452]: https://chatziko.github.io/lci/
[453]: http://lambda-the-ultimate.org/classic/lc.html
[454]: https://web.archive.org/web/20070713173324/http://thyer.name/lambda-animator/
[455]: http://matt.might.net/articles/c++-template-meta-programming-with-lambda-calculus/
[456]: https://en.wikipedia.org/wiki/C%2B%2B_Templates "C++ Templates"
[457]: https://web.archive.org/web/20140202195546/http://imar.ro/~mbuliga/graphic_revised.pdf
[458]: https://web.archive.org/web/20160729210437/http://cs.adelaide.edu.au/~pmk/publications/wage2008.pdf
[459]: https://en.wikipedia.org/wiki/Graph_reduction "Graph reduction"
[460]: https://en.wikipedia.org/wiki/Distributed_computing "Distributed computing"
[461]: https://en.wikipedia.org/wiki/Church%E2%80%93Rosser_theorem "Church-Rosser theorem"
[462]: https://en.wikipedia.org/wiki/Parallel_computing "Parallel computing"
[463]: https://web.archive.org/web/20141216225504/http://www.iep.utm.edu/lambda-calculi/
[464]: https://en.wikipedia.org/wiki/Internet_Encyclopedia_of_Philosophy "Internet Encyclopedia of Philosophy"
[465]: https://codedot.github.io/lambda/
