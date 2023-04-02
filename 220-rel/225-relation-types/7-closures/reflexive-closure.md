# Reflexive closure

https://en.wikipedia.org/wiki/Reflexive_closure

The **reflexive closure** of a binary relation `R` on a set `X` is the smallest reflexive relation on `X` that contains `R`.

For example, if `X` is a set of distinct numbers and `xRy` means `x < y`, then the reflexive closure of `R` is the relation `x <= y`.

## Definition

The reflexive closure `S` of a relation `R` on a set `X` is given by

`S = R ⋃ { (x, x) | x ∈ X }`

The reflexive closure `S` of a relation `R` 
is the union of `R` with the *identity relation* on `X`.

## Examples

As an example, given a set `X` and a relation `R` on `X` defined by

```
X = { 1, 2, 3, 4 }
R = { (1,1), (2,2), (3,3), (4,4) }
```

then the relation `R` is already reflexive by itself. That is, `R` is the same as its reflexive closure, `S`, `R = S`.

However, had any of the identity pairs of the form `(x,x)` were absent from `R`, then each missing pair would make an element in the reflexive closure of `R`. For example, if `R` on the same set `X` is `R = { (1,1), (3,3), (4,4) }`, then the reflexive closure is:

```
S = R ⋃ { (x, x) | x ∈ X }
  = {(1,1), (3,3), (4,4)} ⋃ {(1,1), (2,2), (3,3), (4,4)}
  = {(1,1), (2,2), (3,3), (4,4)}
```
