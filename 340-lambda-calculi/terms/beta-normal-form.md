# Beta normal form

https://en.wikipedia.org/wiki/Beta_normal_form

A lambda term is in
* *beta normal form*     if no beta reduction is possible
* *beta-eta normal form* if neither β or η reduction is possible
* *head normal form*     if there is no beta-redex in head position


*Head Normal Form* (HNF) describes a lambda expression whose top level is either a variable, a data value, a partially applied built-in function, or a lambda abstraction whose body is not reducible. That is, the top level lambda expr is neither a redex nor a lambda abstraction with a reducible body. An expression in HNF may contain redexes in argument postions whereas a normal form may not.

A lambda expression is in *weak head normal form* (WHNF) if it is a head normal form (HNF) or any lambda abstraction; i.e. the top level is not a redex. The term was coined by Simon Peyton Jones to make explicit the difference between head normal form (HNF) and what graph reduction systems produce in practice. A lambda abstraction with a reducible body, e.g. `\ x -> ((\ y -> y+x) 2)` is in WHNF but not HNF. To reduce this expression to HNF would require reduction of the lambda body: `(\ y -> y+x) 2` ~~> `2+x`

https://en.wikipedia.org/wiki/Church%E2%80%93Rosser_theorem
