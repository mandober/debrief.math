# Eta conversion

**η-conversion** (eta conversion) refers to two related process:

**η-reduction** reduces the lambda expression by applying a lambda abstraction on an argument: (λa.a)x ≡ x

**η-abstraction** is the reverse process where a free variable is enclosed in a binding lambda abstraction: x ≡ (λa.a)x

For example, the following two values are equivalent under η-conversion:   
`(λx.x) a <=> a`

Converting from the first to the second would constitute an eta reduction, and moving from the second to the first would be an eta abstraction. The term "eta conversion" can refer to either process.

Extensive use of η-reduction leads to *point-free* style of programming.

https://wiki.haskell.org/Eta_conversion
