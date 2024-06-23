# System f

by Franck Binard
https://www.site.uottawa.ca/~fbinard/Intuitionism/TypeTheory/SystemF/

## System F - an introduction by Franck Binard

While System F may be hard to understand at first, and while I've been told that there are other systems even more powerful out there, this one blows me away.

Maybe I'm being naive, but if you know and love the lambda calculus for being willing to accept  terms such as: (λx.xx), you have to be a bit disappointed when you find out that this ability is lost in the simply-typed version. (λx.xx) can't be typed!!

It is not possible to encode parametric polymorphic functions in the simple type system. All that beautiful potential for abstraction is just gone. If x is of type [Something], any type that goes to the left of x has to have type [Something→Anything] . And that's something else than [Something] right?

Anyhow, remember how it was possible to say in a godlike manner: "λxy.x", that to my world will be true. And false. I'll call that "λxy.y". And because I feel like it , false will also be zero. And I'm so powerful that 2 will be λxy.xxy. And it will all work out. Ha Ha Ha. (godlike laughter)

Of course the simply-typed version does have its good sides. For one, it is isomorphic to first-order logic. So if you have socrates of type human (lets write that s:[H]),  and a function loudMouth, the type of which takes a human and returns a comment (let's write loudMouth:[H→C]), then applying loudMouth to s magically creates a first year philosophy class.

As it turns out, in logic, if you have a proposition H→C and another proposition H, then you can deduce C. It's what you call modus ponens when you want to impress someone with your latin.
System F
System F gets you the best of both worlds. Types and Curry mixed in with a whole lot of extra abstractions. System F, I mean second-order polymorphically typed-calculus is an extension of the simply-typed calculus. It provides a basis for polymorphic programming languages. It was independently invented by Girard and Reynolds over 20 years ago.

Some conventions
In this text, I will use two kind of notation (and indicate which I'm using in the title of the section).When casual, I will write types bold, capitalized and enclosed in square brackets, like so: [Toy]. An object is written in italics. So the expression ball:[Toy] refers to an object ball of type Toy.

When using formal math, I will use the standard notation found in Girard's Proofs and Types book.

Rules for Types (formal notation)
Girard's System F adds the use of type variables  to the simply-typed lambda-calculus. Type variables are then used to define more complex types (Bool, Int, List) by induction. These are the schemes for type formation:

If U and V are types then U→V is a type
If V is a type and X is a type variable then  is a type
Rules for Terms (formal notation)
The rules for term formation are expanded to take into account the addition of type variables: There are 5 schemes for forming terms:

Variables:
xT,yT,zT, are variables of type T
Application:
tu is a term of type V where and t:U→V and u:U
λ-abstraction:
 is a term of type U→V where v:V
Universal abstraction:
 is a term of type  where X is a type variable
Universal application:
 and U is a type then  is a term of type V[U/X]
Reduction(formal notation)
All the usual conversion rules apply from the simply-typed lambda-calculus apply. With the following added:

 