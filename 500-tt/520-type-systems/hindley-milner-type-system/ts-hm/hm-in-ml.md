# HM in ML

Notes on SML97's Value Restriction, by Geoffrey Smith
http://users.cs.fiu.edu/~smithg/cop4555/valrestr.html

The type system of SML, due originally to Roger Hindley and Robin Milner, is ordinarily very pleasant to deal with. We can write function definitions without any type annotations, and SML does type inference to automatically deduce the most general type possible. This most general type is known as the *principal type*. For example,

```js
fun map f []      = []
|   map f (x::xs) = f x :: map f xs;

val map = fn : ('a -> 'b) -> 'a list -> 'b list
```


However, there are a number of restrictions and limitations of the SML type system that we need to know about.

## Subtyping, Overloading, and Equality Types

As we have already seen, SML type inference doesn't deal with subtyping or overloading. As for overloading, if we define

```js
fun sqr n = n*n;
val sqr = fn : int -> int
```

then SML tries to figure out which version of the overloaded operator `*` is intended. Since it can't tell in this case, it picks the `int` version of `*` by default. A more powerful type system might instead have determined that `sqr` should have both type `int -> int` and also `real -> real`.

Related to this is SML's notion of **equality types**. In SML, the equality operator `=` works on most, but not all, types. It doesn't work on types involving functions (since they can't be tested for equality) or involving reals (because of the round-off errors). As a result, a function defined using `=` may need to be limited in the types that it can accept. For that purpose, SML uses *equality type variables*, written `''a`, that represent types `=` works on.

For example, test whether a key `k` is a member of a list:

```js
fun member (k, [])    = false
= |   member (k, x::xs) = (x = k) orelse member (k, xs);
val member = fn : ''a * ''a list -> bool
```

As a result of this typing, `member (3.0, [1.2, 2.4])` is illegal.


## Polymorphic Function Arguments

> Another restriction in SML is that the argument to a function is not allowed to be used polymorphically within the function.

```js
fun foo f = (f [1,2,3], f [true, false]);
      stdIn:23.13-23.41 Error: operator and operand don't agree [literal]
        operator domain: int  list
        operand:         bool list
        in expression:
          f (true :: false :: nil)
```


Here SML does not allow `f` to be used polymorphically. The call `f [1,2,3]` makes SML decide that `f` has type `int list -> 'a` for some `'a`; it therefore rejects the call `f [true,false]`.

But of course function `foo` would work just fine if it was called with an argument that was polymorphic enough! For example, `foo rev` would be fine:

```js
let val f = rev in (f [1,2,3], f [true,false]) end;
val it = ([3,2,1],[false,true]) : int list * bool list
```

In fact, we could give `foo` a type like

```js
[(forall 'a)('a list -> 'a list)] -> (int list * bool list)
```

but SML does not allow types with nested quantification.


The restrictions on subtyping, overloading, and polymorphic uses of function arguments have been imposed to make it easier to do type inference and compilation.

There has been a great deal of research on extensions to the SML type system that relax these restrictions. It is known that type inference remains possible for some of these extensions, but in other cases (especially involving the polymorphic use of function arguments) type inference becomes undecidable.


## The Value Restriction

SML is actually not a purely functional language; it also includes imperative features. It turns out to be remarkably difficult to extend SML's polymorphic type system to incorporate these imperative features while preserving the soundness of the type system. The SML97 value restriction was imposed as a simple solution to these typing difficulties. Unfortunately, the value restriction sometimes affects us even when we are writing purely functional programs.

We'll begin by explaining what the value restriction is and how one normally deals with it. Then we'll discuss the imperative part of SML and explain why it raises difficulties for the type system.

In SML, we can create identifiers with polymorphic types either at the top level

  - val lst = (fn x => [x]);
  val lst = fn : 'a -> 'a list

or inside let expressions

  - let val lst = (fn x => [x]) in
  =   (lst 12, lst true, lst "cat")
  = end;
  val it = ([12],[true],["cat"]) : int list * bool list * string list

(Of course, we could have used fun syntax as well.) The SML97 value restriction says that when we have a declaration
  val x = e
we can give x a polymorphic type only if e is a syntactic value (also known as a nonexpansive expression). Basically, a syntactic value is an expression that can be evaluated without doing any computation. More precisely, syntactic values include:
literals and identifiers (e.g. 3, n)
function expressions (e.g. (fn n=>n))
constructors applied to syntactic values (e.g. (12, x::nil))
Most notably, syntactic values do not include function calls. For example, in the top-level definition

  - val x = rev [];
SML does not give x a polymorphic type, since rev [] is not a syntactic value. But of course SML can't tell what the type of x should be--it could be a list of anything. So SML gives the following warning:
  - val x = rev [];
  stdIn:65.1-65.7 Warning: type vars not generalized because of
     value restriction are instantiated to dummy types (X1,X2,...)
  val x = [] : ?.X1 list
On the other hand, within a let, SML may later be able to figure out the type of x:
  - let val x = rev [] in
  =   3 :: x
  = end;
  val it = [3] : int list
But x can't be used polymorphically:
  - let val x = rev [] in
  =   (3 :: x, true :: x)
  = end;
  stdIn:29.3-29.18 Error: operator and operand don't agree [literal]
    operator domain: bool * bool list
    operand:         bool * int list
    in expression:
      true :: x
Obviously, we aren't going to write the expression rev [] in a program, so it doesn't particularly matter that it isn't polymorphic. But what if we create a function using a function call? With curried functions, we do this all the time:

  - val revlists = map rev;
Here revlists should be polymorphic, but the value restriction messes us up:
  - val revlists = map rev;
  stdIn:32.1-32.23 Warning: type vars not generalized because of
     value restriction are instantiated to dummy types (X1,X2,...)
  val revlists = fn : ?.X1 list list -> ?.X1 list list
Fortunately, there is a simple trick that we can use to make revlists polymorphic. We can replace the definition of revlists with
  - val revlists = (fn xs => map rev xs);
  val revlists = fn : 'a list list -> 'a list list
and now everything works just fine, since (fn xs => map rev xs) is a syntactic value. (Equivalently, we could have used the more common fun syntax:
  - fun revlists xs = map rev xs;
  val revlists = fn : 'a list list -> 'a list list
with the same result.) In the literature, the trick of replacing a function-valued expression e with (fn x => e x) is known as eta expansion. It has been found empirically that eta expansion usually suffices for dealing with the value restriction.
Note however that

  val f = e
and its eta-expanded version
  val f = fn x => e x
are not quite the same semantically. In the first case, e is evaluated only once; in the second case, e is evaluated at every function call. If e causes side effects, this may produce different results. And even if e is a pure expression, this may make a difference in efficiency.
The Imperative Side of SML
Why do we need the value restriction, anyway? To answer this question, we need to discuss the facilities that SML provides for imperative programming, namely ref, !, and :=.
In SML, we can create an updatable memory cell by using ref. For example, the declaration

  - val r = ref 17;
  val r = ref 17 : int ref
binds r to the address of a new memory cell whose initial contents are 17. We can get the current contents of the cell by using !:
  - !r;
  val it = 17 : int
And we can update the contents of the cell by using :=:
  - r := !r + 1;
  val it = () : unit
  - !r;
  val it = 18 : int
These operations have the following types:
  ref: 'a -> 'a ref
  !  : 'a ref -> 'a
  := : 'a ref * 'a -> unit
As a more substantial example, we can now do something quite like object-oriented programming. Here's how we can create a bank account "object" with "methods" to make deposits and to check the current balance:

  - val account =
  =   let val bal = ref 1000 in
  =     {deposit = fn d => bal := !bal + d,
  =      balance = fn () => !bal}
  =   end;
  val account = {balance=fn,deposit=fn}
    : {balance:unit -> int, deposit:int -> unit}
  - #deposit account 200;
  val it = () : unit
  - #balance account ();
  val it = 1200 : int
Something nice about this code is that the reference bal is encapsulated within the account object; it can only be accessed via the deposit and balance methods.
So far, so good. But now suppose we want to create a stack object with push, pop, and top methods, using a list to hold the current stack contents:

  val stack =
    let val stk = ref [] in
      {push = fn x => stk := x :: !stk,
       pop  = fn () => stk := tl (!stk),
       top  = fn () => hd (!stk)}
    end
What should the type of stack be? Well, it would seem that stk : 'a list ref, and hence
  stack : {push:'a -> unit, pop:unit -> unit, top:unit -> 'a}
where (as usual) the type variable 'a is implicitly universally quantified. But now something is very wrong, because we can use stack to "launder" a value to whatever type we want. Letting 'a be int, we have
  #push stack : int -> unit
And letting 'a be bool, we have
  #top stack : unit -> bool
Hence the following code type-checks, even though it erroneously applies the boolean operator not to 17:
  #push stack 17;
  not (#top stack ());
Understanding what has gone wrong here is not at all easy. But it is clear that the SML97 value restriction suffices in this case--since a let expression is not a syntactic value, stack is not given a polymorphic type and hence the "laundering" shown above is prohibited.

Interestingly, the value restriction does not prevent us from writing a polymorphic function to create all different types of stacks:

  fun mkstack init =
    let val stk = ref init in
      {push = fn x => stk := x :: !stk,
       pop  = fn () => stk := tl (!stk),
       top  = fn () => hd (!stk)}
    end
Here mkstack gets the polymorphic type
  'a list -> {pop:unit -> unit, push:'a -> unit, top:unit -> 'a}
So we can write mkstack [1] to create an int stack or mkstack ["cat","dog"] to create a string stack. But if we call mkstack [], then we get a ?.X1 stack, where ?.X1 is an unquantified type variable.
On the other hand, there are plenty of situations where the value restriction is unnecessarily restrictive, since it restricts even purely functional code that makes no use of SML's imperative features. Indeed, over the past 20 years, there have been many less-restrictive type systems proposed to solve the problem of combining polymorphism with updatable references. But because these systems are complex and difficult to understand, and because the value restriction has been found to work well in practice, the current consensus is that the value restriction is the best way to go.

As a final remark, this discussion should convince you that there is a real need for mathematics in programming language design. How do we know that the SML97 type system is sound? We saw above that the value restriction does what we want in the stack example. But does it always suffice? Answering this sort of question requires a mathematical proof, which in turn requires a formal semantics for SML and a precise definition of what it means to say that a type system is sound. (If you are interested, you can see an example of such a proof in http://www.cis.fiu.edu/~smithg/papers/toplas96.pdf.) A graduate course in the theory of programming languages would pursue such topics more deeply.
