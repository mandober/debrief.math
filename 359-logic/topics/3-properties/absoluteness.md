# Absoluteness

https://en.wikipedia.org/wiki/Absoluteness

In mathematical logic, a *formula* is said to be **absolute** if it has the same truth value in each model (class of structures).

Theorems about absoluteness typically establish a relation between the absoluteness of formulas and their syntactic form.

## Partial absoluteness

There is also the notion of partial absoluteness which comes in two flavors:

* if the truth of a formula 
       in each substructure `N` 
             of a structure `M`              (i.e. Ns are substructures of M)
  follows from its truth in `M`,             (but truth of Ns follows from M)
  then the formula is **downward absolute**.

* if the truth of a formula 
        in a structure `N` 
  implies its truth 
  in each substructure `M`                   (i.e. Ms are substructures of N)
          that extends `N`,                  (but truth of N follows from Ms)
  then the formula is **upward absolute**.


```
ϕᵐ : M
------------ ϕᵐ -> ϕᵢ ↓↓↓
ϕ₁ : N₁ : M
ϕ₂ : N₂ : M
ϕ₃ : N₃ : M


ϕᵐ : M
------------ ϕᵐ <- ϕᵢ ↑↑↑
ϕ₁ : N₁ : M
ϕ₂ : N₂ : M
ϕ₃ : N₃ : M
```
