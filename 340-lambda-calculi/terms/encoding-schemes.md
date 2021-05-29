# Encoding schemes

- The Church encoding
- The Scott encoding
- The Parigot encoding
- The Bohm-Berarducci
- The Mogensen-Scott encoding
- The Barendregt encoding
- The Stump's Mendler encoding
- The Mendler encoding

An encoding scheme is a set of lambda terms that represent particular data types and data structures.

**The Church encoding** is the most well-known encoding scheme, given by Alonzo Church himself, which manages to represent many data structures including Boolean values (*The Church Booleans*), natural numbers (*The Church numerals*), negative, rational and real numbers, ordered pair (*The Church pair*), list, tree.

**The Scott encoding** is a scheme to represent (recursive) data types, which was given by Dana Scott. Whereas Church encoding starts with representations of the basic data types and builds up from there, Scott encoding starts from the simplest method to compose algebraic data types.

**The Parigot encoding** solves the Church encoding's problem of inefficient predecessor. It can be typed using positive-recursive types, which preserve normalization of the type theory.

**The Mogensen-Scott encoding** extends and slightly modifies the Scott encoding by applying it to meta-programming, which enables representing lambda terms as data, to be operated on by a meta program.

**The Stump's Mendler encoding**: Mendler's technique of abstracting out problematic types with new type variables, and how this can yield a lambda encoding where the programmer is in charge of when to make recursive calls (rather than in the Church encoding, where the data represents a programmer's combining functions with results of all possible recursive calls on immediate subdata). (Aaron Stump?)



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

A Functional Abstraction of Typed Contexts
Olivier Danvy, Andrzej Filinski 1989
https://people.mpi-sws.org/~skilpat/plerg/papers/danvy-filinski-89-2up.pdf

Practical usage of the λ-calculus self-interpreter and the self-reducer?
https://cs.stackexchange.com/questions/83533/practical-usage-of-the-%CE%BB-calculus-self-interpreter-and-the-self-reducer

Lambda Calculus
https://crypto.stanford.edu/~blynn/lambda/

Properties of codings in Lambda Calculus 2018 Nathan van Beusekom
https://www.cs.ru.nl/bachelors-theses/2018/Nathan_van_Beusekom___4571592___Properties_of_codings_in_lambda-calculus.pdf

The lambda calculus is algebraic - Peter Selinger
https://www.mscs.dal.ca/~selinger/papers/combinatory.pdf
