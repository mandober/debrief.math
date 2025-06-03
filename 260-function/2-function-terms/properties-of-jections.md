# Properties of Surjections, Injections and Bijections

https://cs.odu.edu/~toida/nerzic/content/function/properties_of_jections.html

1. Here, injections and surjections mean *injective-only* (i) and *surjective-only* (s) functions.
2. Surjections (s), injections (i) and bijections (b) are collectively called *trajections*.
3. Functions (f) are either regular or trajections.


## Compositions of trajections

1. Bijections acts as units when composed with other functions - whether pre or post composed, they do not change the kind of the other function:
- a bijection remains a bijection:   `b ∘ b = b`
- an injection remains an injection: `b ∘ i = i = i ∘ b`
- a surjection remains a surjection: `b ∘ s = s = s ∘ b`
- a function remains a function:     `b ∘ f = f = f ∘ b`



## Composition of the same kinds

```js
sur ∘ sur ~~> sur
inj ∘ inj ~~> inj
bij ∘ bij ~~> bij
```

- A surjection covers the whole codomain and, more importantly, it collapses domain elements. Thus, composing two surjections will give a function that collapses the elements even more.

- Composing two injections produces an injection



## Composition: same with same
composing

```js
surj ∘ inj ~~> function
        ↓
unmapped codomain element(s):
this composition cannot be surjective!
```


b ∘ s = s
i ∘ s = s
s ∘ s = s

b ∘ i = i
i ∘ i = i
s ∘ i = f    (s ∘ i ≠ s not a surj but only a function, in general)

b ∘ b = b
i ∘ b = i
s ∘ b = s



- pre- or post-composing a surjection with any function, gives a surjection
- pre- or post-composing an injection with a bijection, gives an injection

- composition of surjection and any function, gives a surjection
- composition of injection and bijection, gives an injection

- composition of surjections gives more surjective functions (more collapse)
- surjections collapse elements and with that loose information
- the essential properties of surjections:
  - sometimes the emphasis is on the coverage of the entire codomain
  - sometimes it is that more than 1 dom element maps the same cod element



Legend
* f = plain old function
* b = bijection
* i = injection
* s = surjection
* x = any of the above

`b ⊆ i ⊆ s ⊆ f ⊆ R`



## Composition of surjections is a surjection

Let `f : A -> B` and `g : B -> C`

Property 1:
- if `f` and `g` are surjections then `g ∘ f` is a surjection.
- `s ∘ s --> s`

Proof:
- Let `c` be an arbitrary element in `C`
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
