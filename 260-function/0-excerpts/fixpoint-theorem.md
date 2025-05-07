# The Fixed point theorem

(Proofs and Algorithms: An Introduction to Logic and Computability, Dowek 2011)

[Def.1] __Limit__

Let
- E be a set, `E = {u₀, u₁, u₂, …}`
- `⩽` be an ordering relation (refl, antisym, trans) over a set `E`
- `u̅ = (u₀, u₁, u₂, …)` be an increasing sequence s.t `u₀ ⩽ u₁ ⩽ u₂ ⩽ …`

Then
- the element `l ∈ E` is called the *the limit* of the sequence `u̅`
- if it is a LEAST UPPER BOUND of the set `E` = `{u₀, u₁, u₂, …, l}`
- `u₀ ⩽ u₁ ⩽ u₂ ⩽ … ⩽ l ⩽ l'`

That is
- if `l` is *an* upper bound, i.e. `uᵢ ⩽ l`
- if `l` is *the smallest* upper bound, i.e. `uᵢ ⩽ l' -> l ⩽ l'`
- if `l` exists, the limit, `limᵢ uᵢ`, of the sequence `(uᵢ)ᵢ` is *unique*



[Def.2] __Weakly complete ordering__

An ordering relation `⩽` is said to be weakly complete if each increasing sequence has a limit.

The standard ordering relation over the real numbers interval `[0,1]` is an example of a weakly complete ordering. In addition, this relation has a least element 0.

However, the standard ordering relation over ℝᐩ is not weakly complete since the increasing sequence (0,1,2,3,…) does not have a limit.

Let `A` be an arbitrary set. The inclusion relation `⊆` over the set `℘(A)` of all the subsets of `A` is another example of a weakly complete ordering. The limit of an increasing sequence `U₀, U₁, U₂, …` is the set `⋃ {i ∈ ℕ} Uᵢ`. In addition, this relation has a least element `∅`.

Definition 1.3 **Increasing function** 
Let `⩽` be an ordering relation over a set `E` and `f : E -> E` a function. The function `f` is increasing `x ⩽ y -> f x ⩽ f y`.

Definition 1.4 **Continuous function** 
Let `⩽` be a weakly complete ordering relation over the set `E`, `f : E -> E` an increasing function. The function `f` is continuous if for any increasing sequence `limᵢ(f uᵢ) = f (limᵢ uᵢ)`.

Proposition 1.1 **First fixed point theorem** 
Let `⩽` be a weakly complete ordering relation over a set `E` that has a least element `m`. Let `f : E -> E` be a function. 
If `f` is continuous 
then `p = limᵢ(fⁱ m)` 
is the least fixed point of `f`.

>Proof

First, since `m` is the smallest element in `E`, `m ⩽ f m`. 
The function `f` is increasing, therefore `fⁱ m ⩽ fⁱᐩ¹ m`. 
Since the sequence `fⁱ m` is increasing, it has a limit. 
The sequence `fⁱᐩ¹ m` also has `p` as limit, 
thus `p = limᵢ(f (fⁱ m)) = f (limᵢ (fⁱ m)) = f p`. 
Moreover, `p` is the least fixed point, 
because if `q` is another fixed point, 
then `m ⩽ q` and `fⁱ m ⩽ fⁱ q = q` 
(since f is increasing). 
Hence `p = limᵢ(fⁱ m) ⩽ q`.

The second fixed point theorem states the existence of a fixed point for increasing functions, even if they are not continuous, provided the ordering satisfies a stronger property.

Definition 1.5 **Strongly complete ordering**    
An ordering relation `⩽` over a set `E` is strongly complete if every subset `A` of `E` has a least upper bound, denoted by `𝚜𝚞𝚙 A`.

The standard ordering relation over the interval `[0,1]` is an example of a strongly complete ordering relation. The standard ordering over ℝᐩ is not strongly complete because the set ℝᐩ itself has no upper bound.

Let `A` be an arbitrary set. The inclusion relation `⊆` over the set `℘(A)` of all the subsets of `A` is another example of strongly complete ordering. The least upper bound of a set `B` is the set `⋃ {C ∈ B} C`.

Proposition 1.2 If the ordering `⩽` over the set `E` is strongly complete, then any subset `A` of `E` has a greatest lower bound, `𝚒𝚗𝚏 A`.

>Proof

Let `A` be a subset of `E`, 
let `B` be the set `{y ∈ E | ∀x ∈ A y ⩽ x}` of lower bounds of `A` 
and `l` the least upper bound of `B`. 
By definition, `l` is an upper bound of the set `B`    
`∀y ∈ B y ⩽ l`   
and it is the least one    
`(∀y ∈ B y ⩽ l') ⇒ l ⩽ l'`.    
It is easy to show that `l` is the greatest lower bound of `A`. 
Indeed, if `x` is an element of `A`, 
it is an upper bound of `B` 
and since `l` is the least upper bound, `l ⩽ x`. 
Thus, `l` is a lower bound of `A`. 
To show that it is the greatest one, it is sufficient to note that if `m` is another lower bound of `A`, it is an element of `B` and therefore `m ⩽ l`.

The greatest lower bound of a set `B` of subsets of `A` is set `⋂ {C ∈ B} C`.

Proposition 1.3 **Second fixed point theorem**    
Let `⩽` be a strongly complete ordering over a set `E`. 
Let `f : E -> E` be a function. 
If `f` is increasing 
then `p = inf {c | f c ⩽ c}` is the least fixed point of `f`.
