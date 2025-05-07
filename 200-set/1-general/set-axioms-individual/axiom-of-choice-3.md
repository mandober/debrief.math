# Axiom of Choice

The **Axiom of Choice** states that given any collection of nonempty sets, it is possible to select exactly one element from each set, even if the collection is infinite.

For many such collections (such collection is a family of sets), the type of elements contained within determines the choice function (makes it describable), e.g. always pick the left shoe, where each element of the collection is a set of left and right shoe.

A set of sets of shoes, `{{L₀, R₀}, {L₁, R₁}, {L₂, R₂}, …, {Lₙ, Rₙ}}` = F

This collection `F` can be described as an indexed family of sets (of shoes): `F = {A₀, A₁, A₂, …, Aₙ}`, indexed by an integer `i ∈ I`, where the indexing set `I = {0,1,2,…,n}`, such that each member of `F`, as indexed by `i`, is a two-element set, `Aᵢ = {Lᵢ, Rᵢ}`, containing the left and right shoe. Then we can make (describe) a selection function that always picks the left shoe (or the right shoe). The choice it makes can be described by a rule (e.g. "always pick the smallest number"). Howevere, members of some collections are sets for which no rule-based choice function is possible - e.g. if instead of shoes, we had sets of socks, there no choice function would exist.

A choice function must be independent and describable. However, what the Axiom of Choice, if admitted, allows us to do - is to always be able to have a choice function. If accepted, the axiom of choice means that we believe there always exists a choice function (e.g. there is always a way to pick a sock from each pair) *without burdening ourselves with describing how to do so*.

>So, the AC allows us to always rely on the existence of a choice function, even if we cannot begin to describe such a function.

This is the main reason that makes the AC controversal. It is non-constructive.
>When an uncountable number of choices must be made, the AC asserts that it is possible to do so without explicitly defining a choice function.

The Banach-Tarski paradox is the consequence of the AC.

Kurt Gödel proved in the mid-1930s that *AC is consistent* with the other axioms of ZF set theory, which means it cannot be disproved by them. In 1963, Paul Cohen proved that the *AC is independent* of the other axioms of ZF set theory, which means it cannot be derived from them either.

## Equivalent formulations of the Axiom of Choice in ZFC

If you admit the AC then you must also admit any one of these equivalent formulations, and vice versa.
- Well-ordering principle
- Zorn's lemma

**Well-ordering principle**, stated by Zermelo in 1908, says that all sets can be well-ordered.

**Zorn's lemma** (Kuratowski 1922, Zorn 1935) states that if `S` is a partially ordered set, such that every increasing chain of its subsets has an upper bound, then `S` has a *maximal element*.

Another equivalent result to the Axiom of Choice is that: any family of nonempty sets is such that their Cartesian product is also not empty, i.e. 
>The AC states that the Cartesian product of nonempty sets is nonempty.

This doesn't sound controversial, and it might not even sound interesting, but admitting the AC has far reaching consequences and using it in proofs renders them "peculiar" (they have a very distinctive quality of non-constructiveness).


>If we admit the axiom of choice then there exists a well-ordering on the set of real numbers.
But what that ordeing is, cannot be stated, described or constructed. If we could construct it, then we wouldn't really need the AC to assert that such an ordering DOES exists (as given - taken for granted; there - a free ordering).





## Union of countable sets is countable

https://youtu.be/5UJWIwKa8vk?list=TLPQMjExMDIwMjPphxasHg7iIA&t=387

The Axiom of Choice is used in the proof that the countable union of countable sets is also countable.

A set is countable if there is a bijection between it and ℕ, `f : A → ℕ`.

1. Let `{Sₙ}{n ∈ ℕ}` be a collection of countable sets, i.e. an indexed family of sets; indexed by the indexing set ℕ, for each natural `n ∈ ℕ`.

2. Let `S = ⋃ {n ∈ ℕ} Sₙ`. So, `S` is the union of all sets `Sₙ`, members of the collection `S`.

C = {S₀, S₁, S₂, …, Sₙ}
Sᵢ ∈ C i.e. S₀ ∈ C, S₁ ∈ C, …, generally, Sᵢ ∈ C, for each n = i, n ∈ ℕ

BUT WARNING! C is the collection of all sets Sᵢ, but S is the union of all those member sets - and being a union means S may collapse some members.
`C = {S₀, S₁, S₂, …, Sₙ}`
and
S = ⋃ {n ∈ ℕ} Sₙ
  = ⋃ (S₀ ∪ S₁ ∪ S₂ ∪ … ∪ Sₙ)
        ↓    ↓    ↓
       i=0  i=1  i=2
each member `Sᵢ` of `C` is a set, S₀ is a set and S₄ is a set…
C = {S₀, S₁, S₂, …, Sₙ}
C = {0:{…}, 1:{…}, 2:{…}, …}
S = ⋃ {Sₙ} = ⋃ { {…}, {…}, {…}, … }
e.g. S = ⋃{Sₙ} = ⋃ { {1,2}, {2,3}, {3,4} } = {1,2,3,4}

3. For each n ∈ ℕ, let `𝓕ₙ` denote a set of all bijections `Sₙ → ℕ`

`𝓕ₙ = { fₙ | fₙ : Sₙ → ℕ }`
so,
𝓕₀ = { f₀ | f₀ : S₀ → ℕ }
𝓕₁ = { f₁ | f₁ : S₁ → ℕ }
𝓕₂ = { f₂ | f₂ : S₂ → ℕ }
…
in general,
𝓕ᵢ = { fᵢ | fᵢ : Sᵢ → ℕ }
thus,
𝓕ₙ = { f₀ : S₀ → ℕ, f₁ : S₀ → ℕ, f₂ : S₀ → ℕ, … genrally, `fᵢ : Sᵢ → ℕ` }

4. By AC, we can pick one function `fₙ` from each set `𝓕ₙ`.

f₀ ∈ 𝓕₀
f₁ ∈ 𝓕₁
…

5. Define a function `ϕ : S → ℕ⨯ℕ` by `ϕ(x) = (n, fₙ(x))`
   where `n` is the least index such that `x ∈ Sₙ`

The function `ϕ` is well-defined since the well-ordering theorem ensures that such an `n` always exists.

The function `ϕ` is a bijection since its component functions `fₙ` are bijections.

6. Since `ℕ⨯ℕ` is a countable set, there exists a bijection `α : ℕ⨯ℕ → ℕ`.

That is, a bijection `α` from a pair of naturals, `(n, fₙ(x))`, to a natural number (maybe `n`, i.e. the first component of the pair? or is it `fₙ(x))`?).

7. The composition of bijections gives a bijection, so `α ∘ ϕ : S → ℕ` is a bijection. Thus, `S` is a countable set. 
__QED__


ϕ : S → ℕ⨯ℕ` ≅ `ϕ : S → ℕ → ℕ
ϕ x = (n, fₙ x)
--------------------------------
`α : ℕ⨯ℕ → ℕ`
α(k, m) = k | m (???)
================================
`α ∘ ϕ : S → ℕ`
S here is the union


`ϕ` takes an elem `x ∈ Sₙ`, e.g. `x ∈ S₀` and returns a pair `(0, f₀(x))`

    ϕ(x) = (0, f₀(x)) for n=0 and x ∈ S₀
    ϕ(x) = (1, f₁(x)) for n=1 and x ∈ S₁
    ϕ(x) = (2, f₂(x)) for n=2 and x ∈ S₂

then `α` takes that pair and returns a natural number

  x |> ϕ |> α |> 

  x ∈ S₁ |> ϕ
            ϕ(x) = (1, f₁(x))
                  (1, f₁(x)) |> α
                                α(1, f₁(x)) = w ∈ ℕ
              Is `w` `fst`, i.e. `1` here,
                      or `snd`, i.e. `f₁(x)` here?


## Every surjection has a right-inverse

https://youtu.be/Nnt4hyJYfGA?list=TLPQMjExMDIwMjPphxasHg7iIA&t=116

The proof that every surjective function has a right-inverse.

1. Let `f : X → Y` be a surjection.

2. Since `f` is a surjection then `∀y ∈ Y. f⁻¹({y}) ≠ ∅`

Since `f` is a surjection, taking any element `y` of the codomain `Y`, and then taking the preimage of the set `{y}` will yield a non-empty set.

- f : X → Y is a surjection so: `|dom| >= |cod| = |ran|`
- since f is surj then for all `y ∈ Y`, `f⁻¹({y}) ≠ ∅`    
  the preimage `f⁻¹({y})` will be some subset of domain `X`     
  e.g. if   f = { (x₀ ⟼ y)
                , (x₁ ⟼ y)
                , (x₂ ⟼ y)
                }
  then      f⁻¹({y}) ⟼ {x₀, x₁, x₂}


3. The inverse of a surjection is not a function but a relation. However, we can also interpret that relational mapping as a set of inverse functions and invoke the AC to pick one.


same domain elem appears multiple times as first component ⇒ a relation
             ↓
R = f⁻¹ = { (y ⟼ x₀)
          , (y ⟼ x₁)
          , (y ⟼ x₂)
          }


4. Let `g : Y → X`

So the inverse of `f` is actually a relation but we can cheat and interpret this as if it is set of inverse functions, i.e. the set of these 3 inverse functions:
- g₀ = f₀⁻¹ = {(y ⟼ x₀)}
- g₁ = f₁⁻¹ = {(y ⟼ x₁)}
- g₂ = f₂⁻¹ = {(y ⟼ x₂)}

In general, `gᵢ = {(y ⟼ xᵢ)}` where `i = {0,1,2}` and
all `gᵢ` are functions `g : Y → X`.


5. Using the AC, for each `y ∈ Y`, pick `g(y) ∈ f⁻¹(y)`. __QED__

- In the example, we only have a single `y ∈ Y`, namely `y`. 
- pick `g(y) ∈ f⁻¹(y)`

g(y) ∈ f⁻¹(y)
       f⁻¹(y) = {x₀, x₁, x₂}
g(y) ∈          {x₀, x₁, x₂}
x₀   ∈          {x₀, x₁, x₂}

So, let' pick, say, `g₀`, which is a function 
`g₀ : Y → X` defined as
`g₀(y) = x₀`

then indeed:

g(y) ∈ {x₀, x₁, x₂}
x₀   ∈ {x₀, x₁, x₂}

since g(y) = x₀

6. Test if `g₀` is the right-image of `f`:

(f ∘ g₀)(y) = f(g₀(y)) = f(x₀) = y      ✔




## Refs

https://youtu.be/Nnt4hyJYfGA?list=TLPQMjExMDIwMjPphxasHg7iIA&t=116
