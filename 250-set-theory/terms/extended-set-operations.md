# Extended set operations

Union and itersection of two sets (where 𝓤 is the universal set):

* Union
  * A₁ ∪ A₂ = { x ∈ 𝓤. x ∈ A₁ `∨` x ∈ A₂ }
* Union via the set index:
  * A₁ `∪` A₂ = { x ∈ 𝓤. `∃`i ∈ {1,2}. x ∈ Aᵢ }

* Itersection
  * A₁ ∩ A₂ = { x ∈ 𝓤. x ∈ A₁ `∧` x ∈ A₂ }
* Itersection via the set index:
  * A₁ `∩` A₂ = { x ∈ 𝓤. `∀`i ∈ {1,2}. x ∈ Aᵢ }

So, the correspondance is:
* ∪ : ∨ : ∃i (there is an index i)
* ∩ : ∧ : ∀i (for every index i)


Union/itersection of more then two sets use the big-ass union/itersection sign.
- (i=1..n) `⋃`Aᵢ = { x ∈ 𝓤. ∃i ∈ {1..n}. x ∈ Aᵢ }
- (i=1..n) `⋂`Aᵢ = { x ∈ 𝓤. ∀i ∈ {1..n}. x ∈ Aᵢ }

where n ∈ ℕ

```
 ₙ
 ⋃ Aᵢ = ⁿ⋃ᵢ₌₁ Aᵢ = ᵢ₌₁⋃ⁿ Aᵢ
ⁱ⁼¹
 ₙ
 ⋂ Aᵢ = ⁿ⋂ᵢ₌₁ Aᵢ = ᵢ₌₁⋂ⁿ Aᵢ
ⁱ⁼¹
```
