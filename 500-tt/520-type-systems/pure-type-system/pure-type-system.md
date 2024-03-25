# Pure type system

https://en.wikipedia.org/wiki/Pure_type_system


Typing rules (6): http://www.rbjones.com/rbjpub/logic/cl/tlc004.htm




## Ref

* System U - an example of an inconsistent PTS
https://en.wikipedia.org/wiki/System_U

* λμ-calculus uses a different approach to control than CPTS
https://en.wikipedia.org/wiki/Lambda-mu_calculus


## Pure type systems - R. B. Jones
http://www.rbjones.com/rbjpub/logic/cl/tlc004.htm

>Distilling an essence of type assignment for the lambda calculus.

Pure type systems (PTS) are a family of typed lambda calculi, 
each member of which is determined by a triple `(S,A,R)` where
- `S` is a set of *sorts* (constants of the system)
- `A` is a set of *axioms* of the form `c : s`, 
  where `c` is a constant and `s` is a sort
- `R` is a set of triples of sorts which determines 
  what *function spaces* can be constructed in the system and 
  what sort each function space inhabits.


Each PTS is a formal system in which judgements of the form 
`Context |- TypeAssignment` may be derived. 

These judgements assign a type to some term of the typed lambda calculus in the given context.
