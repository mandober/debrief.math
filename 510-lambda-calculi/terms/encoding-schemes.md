# Encoding schemes

The purpose of lambda calculus with regards to mathematics can be similar to using other theories as the foundations of mathematics - such theory has to show how can it build various mathematical objects.

Taking a set theory under consideration, the author has to show how to, e.g. build the natural numbers. A common way to do it, is to start by declaring that the number zero is represented by the empty set, `0 := ∅`, and then give the definition of the successor in terms of set operations, e.g. `S(n) = n ∪ {n}`.

```
S(n) = n ∪ {n}
0 := ∅
1 = S(0) = 0 ∪ {0} = {0}                   = {∅ }
2 = S(1) = 1 ∪ {1} = {∅} ∪ {{∅}}           = {∅ , {∅} }
3 = S(2) = 2 ∪ {2} = {∅, {∅}} ∪ {{∅, {∅}}} = {∅ , {∅} , {∅,{∅}} }
4 = S(3) = 3 ∪ {3} = {∅ , {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} } = {0,1,2,3}
```

While set theory bases everything on the notion of a set, LC uses the notion of a function instead. However, no function comes predefined in LC since it just formalizes the concepts of function abstraction (how to make new function) and function application (how to apply a function) and leaves everything else unspecified and for users to decide. Thus, there are many ways to represent some mathematical object, with smaller or bigger differences between the approaches of various authors (and many a famous author and scientist has taken a shot at tackling the LC and discovering new approaches to many problems).



---

Related to lambda calculus, an encoding scheme is a set of lambda terms that represent (encode) particular mathematical objects.

**The Church encoding** is the most well-known encoding scheme, given by Alonzo Chruch himself, in which he described representations for many mathematical objects including truth values (*Church Booleans*), natural numbers (*Church numerals*), negative, rational and real numbers, ordered pair (*Church pair*), lists and other data structures, and more.

**The Parigot encoding** solves the Church encoding's problem of inefficient predecessor. It can be typed using positive-recursive types, which preserve normalization of the type theory.

**The Scott encoding** is a scheme to represent (recursive) data types, which was given by Dana Scott. Whereas Church encoding starts with representations of the basic data types and builds up from there, Scott encoding starts from the simplest method to compose algebraic data types.

**The Mogensen-Scott encoding** extends and slightly modifies the Scott encoding by applying it to meta-programming, which enables representing lambda terms as data, to be operated on by a meta program.


- Barendregt encoding
- Stump's Mendler encoding
  The "alternative encoding" looks almost identical to Stump's Mendler encoding; it seems to have the same "included continuator" structure, I suspect the differences mostly have to do with typing.


## Encoding math object

The decision what will a particular lambda represent is on the user/author (after all these years, it is daubtful there are any unseen lambda abstractions waiting to be discovered, so maybe not "author").

You can start from the simpler math objects and work your way from there. For example, it is common to represent the Booleans values with lambda abstractions `λab.a` and `λab.b`. Most schemes use the former to encode 'true', but this is completely arbitrary (if maybe expected from PLs due to the if-then-else). Also, one can possibly choose some completely differently-shaped functions instead of these two.

The point with Booleans constants, that may have precluded the choice of these particular functions, is the recognition that Booleans are used in PL for *branching*. If some expression is true go left, else right. The notion of truth has nothing to do with it; it may have been 'plick' and 'plock'. So thes two lambdaas are adequate for that: the `λab.a` is actually a constant-making function that always returns its first arg, no matter what the second arg is, as long as it is given; and the other, `λab.b`, the first arg is always discarded, after which the function turns into the `id` function (that returns whatever it has been given). They both sometimes stand for Boolean constants (true and false), and sometimes they are "active" functions, acting like `first` and `second`. The former is also known as the `K` (kestrel) combinator, the latter as `KI` (kite) combinator. The choice of Boolean constants then influences the logical connectives (and, or, not, imply, etc.) and predicates.

Sometimes a function's shape forces a decision about the function's meaning, which is the case of the `id` function, `λx.x`, although it may stand for additional things, it will always be the identity function under any interpretation (encoding scheme).




## References

Alternative to the Church, Scott and Parigot encodings of data in LC
https://gist.github.com/zmactep/c5e167c86fb8d80dcd5532792371863f

Frank (Peng) Fu
https://fermat.github.io/

https://cstheory.stackexchange.com/questions/46356/from-church-encoding-to-induction-principle?noredirect=1&lq=1

The Church-Scott representation of inductive and coinductive data
http://www.cs.ru.nl/~herman/PUBS/ChurchScottDataTypes.pdf

https://cstheory.stackexchange.com/questions/46356/from-church-encoding-to-induction-principle
https://stackoverflow.com/questions/31398516/how-do-i-use-the-church-encoding-for-free-monads
https://stackoverflow.com/questions/18399188/encoding-binary-numerals-in-lambda-calculus

How to Design Programs
http://htdp.org/

CMPT 858 Tutorial Functions and Functional Abstraction 2011 Nathaniel Osgood 
https://www.cs.usask.ca/faculty/ndo885/Classes/CMPT858Spring2011/TutorialSlides/Functions%20and%20Functional%20Abstraction.pdf

Do we need functional abstraction - Achille C. Varzi 1993
http://www.columbia.edu/~av72/papers/Kirchberg_1993.pdf

A Functional Abstraction of Typed Contexts - Olivier Danvy, Andrzej Filinski 1989
https://people.mpi-sws.org/~skilpat/plerg/papers/danvy-filinski-89-2up.pdf

Practical usage of the λ-calculus self-interpreter and the self-reducer?
https://cs.stackexchange.com/questions/83533/practical-usage-of-the-%CE%BB-calculus-self-interpreter-and-the-self-reducer

Lambda Calculus
https://crypto.stanford.edu/~blynn/lambda/

Properties of codings in Lambda Calculus 2018 Nathan van Beusekom
https://www.cs.ru.nl/bachelors-theses/2018/Nathan_van_Beusekom___4571592___Properties_of_codings_in_lambda-calculus.pdf

The lambda calculus is algebraic
Peter Selinger
https://www.mscs.dal.ca/~selinger/papers/combinatory.pdf
