# Properties of Surjections, Injections and Bijections

https://cs.odu.edu/~toida/nerzic/content/function/properties_of_jections.html

Properties of surjections, injections and bijections.

Legend
* ϕ = plain old function
* s = surjection
* i = injection
* b = bijection
* _ = any of the above


- all _ are functions

`B ⊆ I ⊆ S ⊆ F`

`b ⊆ i ⊆ s ⊆ ϕ`
`β ⊆ ι ⊆ σ ⊆ ϕ`




* function   |> 
* surjection |> surjection = surjection
* injection  |> _         = bijection
* bijection  |> bijection = bijection

- `_ ∘ s --> s` whether `_` is ϕ, s, i, b
- `_ ∘ i --> i` whether `_` is ϕ, s, i, b
- `_ ∘ b --> b` whether `_` is ϕ, s, i, b


```
_ ∘ s --> s     s |> _ ---> s

ϕ ∘ s --> s     s |> s ---> s
s ∘ s --> s     s |> s ---> s
i ∘ s --> s     s |> i ---> s
b ∘ s --> s     s |> b ---> s

ϕ ∘ i --> i
i ∘ i --> i     i |> i ---> i
s ∘ i --> i
b ∘ i --> i


✔ ϕ ∘ b --> s            b |> ϕ ---> s (ϕ is treated as a surjection)
✔ s ∘ b --> s            b |> s ---> s
✔ i ∘ b --> b            b |> i ---> b
✔ b ∘ b --> b            b |> b ---> b
```


Below, let `f : A -> B` and `g : B -> C`

## Composition of surjections is a surjection

Property 1:
- if `f` and `g` are surjections then `g ∘ f` is a surjection.
- `s ∘ s --> s`

Proof:
- Let `c` be an arbitrary element in `C`, `c ∈ C`
- since `g` is a surjection, there is an element `b ∈ B` such that `c = g(b)`
- since `f` is a surjection, there is an element `a ∈ A` such that `b = f(a)`
- Hence by the definition of composite function, `c = g(f(a)) = (g ∘ f)(a)`
- Hence, `g ∘ f` is a surjection (_?!_)

## Composition of injections is an injection

Property 2:
- If `f` and `g` are injections, then `g ∘ f` is an injection.
- `i ∘ i --> i`

Proof of Property 2:
- Let `x1` and `x2` be arbitrary elements in `A`
- Suppose that `f(g(x1)) = f(g(x2))`
- Then since f is an injection, `g(x1) = g(x2)`
- Then since g is an injection, `x1 = x2`
- `∀x1∀x2 ∈ A`. if `f(g(x1)) = f(g(x2))` then `x1 = x2`
- Hence `g ∘ f` is an injection.


## Composition of bijections is a bijection

Property 3:
- If f and g are bijections, then `g ∘ f` is a bijection.
- `b ∘ b --> b`

Proof of Property 3:
- Obviously this follows from Properties 1 and 2.

## If g ∘ f is a bijection then f is a surjection

Property 4:
- If `g ∘ f` is a surjection, then f is a surjection.

Proof of Property 4:
- Let z an arbitrary element in C.
- Then since `g ∘ f` is a surjection, there is an element x in A such that z = f(g(x)).
- By the definition of `g ∘ f`, there is an element y in B such that y = g(x) and z = f(y).
- Hence for an arbitrary element z in C, there is an element y in B such that z = f(y).
- Hence f is a surjection.


## If g ∘ f is an injection then g is an injection

Property 5: If `g ∘ f` is an injection, then g is an injection.

Proof of Property 5:
- Proof is left as an exercise.


## If g ∘ f is a bijection then f is a surjection and g injection

Property 6: If `g ∘ f` is a bijection, then f is a surjection and g is an injection.

Proof of Property 6:
- Obviously this follows from Properties 4 and 5.

## If f is a bijection, then f(S ∩ T) = f(S) ∩ f(T)

Below, `f : A -> B`, `S ⊆ A`, and `T ⊆ B`

Property 7:
- If `f` is a bijection, then `f(S ⋂ T) = f(S) ⋂ f(T)`

Proof:
- Since `f(S ⋂ T) ⊆ f(S) ⋂ f(T)` for a function `f`, 
  we need to prove that `f(S) ⋂ f(T) ⊆ f(S ⋂ T)` for a bijection `f`.
- Let y be an arbitrary element of f(S) ⋂ f(T).
- Then there is an element x1 in S and an element x2 in T such that y = f(x1) = f(x2).
- Since f is a bijection, it is an injection.
- Hence if f(x1) = f(x2), then x1 = x2.
- Hence x1 (= x2) ∈ S ⋂ T.
- Hence y (= f(x1) = f(x2)) ∈ f( S ⋂ T ).
- Hence f(S) ⋂ f(T) ⊆ f( S ⋂ T ) if f is a bijection.
