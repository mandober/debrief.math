# Boolean domain

https://en.wikipedia.org/wiki/Boolean_domain

In mathematics and abstract algebra, a Boolean domain is a set consisting of exactly two elements whose interpretations include *false* and *true*.

In logic, mathematics and theoretical CS, a Boolean domain is usually written as `𝔹 = {0, 1}`.

The algebraic structure that naturally builds on a Boolean domain is the Boolean algebra with two elements.

The initial object in the category of bounded lattices is a Boolean domain.

In CS, a Boolean variable is a variable that takes values in some Boolean domain. Some PLs have reserved keywords for the elements of the Boolean domain (false and true). However, many don't have a Boolean datatype in the strict sense; in C, falsity is represented by the number 0 and truth is represented by any other number (although commonly, 1 or −1), but due to the C's poor type system, a variable that ranges over the "Boolean" values can also take any other numerical value.

## Generalizations

The Boolean domain, `{0, 1}`, can be replaced by the unit interval, `[0,1]`, in which case rather than only taking values 0 or 1, any value between and including 0 and 1 can be assumed.

Algebraically, logical operations are replaced with:
- negation is replaced with `1 - x`
- conjunction with multiplication as `xy`
- disjunction is defined via De Morgan's law as `1 - (1 - x)(1 - y)`

Interpreting these values as logical truth values yields a *multi-valued logic*, which forms the basis for *fuzzy logic* and *probabilistic logic*. In these interpretations, a value is interpreted as the "degree" of truth - to what extent a proposition is true, or the probability that the proposition is true.
