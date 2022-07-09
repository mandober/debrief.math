# Pure type system

https://en.wikipedia.org/wiki/Pure_type_system

Distilling an essence of type assignment for the lambda calculus.

Pure type systems (PTS) are a family of typed lambda calculi, 
each member of which is determined by a triple __(S,A,R)__ where
- __S__ is a subset of the constants of the system known as *sorts*
- __A__ is a set of *axioms* of the form `c : s`, 
  where `c` is a constant and `s` is a sort
- __R__ is a set of triples of sorts which determines 
  what *function spaces* can be constructed in the system and 
  what sort each function space inhabits

Each PTS is a formal system in which judgements of the form `Context |- TypeAssignment` may be derived. These judgements assign a type to some term of the typed lambda calculus in the given context.


## Unsolved problem in computer science

- The Barendregt-Geuvers-Klop conjecture, BGK conjecture


## Ref

* System U - an example of an inconsistent PTS
https://en.wikipedia.org/wiki/System_U

* λμ-calculus uses a different approach to control than CPTS
https://en.wikipedia.org/wiki/Lambda-mu_calculus

* Pure type systems
http://www.rbjones.com/rbjpub/logic/cl/tlc004.htm
