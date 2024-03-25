# Terminal object

Initial object
===================================================================

>(Definition) **Initial object**    
>>If 
  for all objects `a` in a category `𝒞`, 
  there exists a unique arrow `0 → a`, 
then 
  object `0` is the initial object in `𝒞`.

>(Def) **Initial object**    
>>If 
  `∀ A ∈ Ob(𝒞). !∃ f : 0 -> A` 
then 
  `0` is the initial object in `𝒞`.

>(Lemma) Initial object is unique up to an isomorphism.
>>(Proof) 
Let `𝒞` be a category 
with initial objects `0` and `0′` 
There are unique morphisms 
`00′ ∶ 0 → 0′` and `0′0 ∶ 0′ → 0`, 
and `00 = id0` and `0′ 0′ = id0′`. 
Hence, `0′0 ∘ 00′ = id0` and `00′ ∘ 0′0 = id0′`. 
That is, `0` is unique up to an isomorphism. 


Terminal object
===================================================================

>(Definition) **Terminal object**    
>>If 
  `∀ A ∈ Ob(𝒞). !∃ f : A -> 1` 
then 
  `1` is the terminal object in `𝒞`.

>(Def) **Terminal object**   
>>If 
  for all objects `a` in a category `𝒞`, 
  there exists a unique arrow `a → 1`, 
then 
  the object `1` is the terminal object in `𝒞`.

>(Lemma) Terminal object is unique up to an isomorphism.
>>(Proof) 
let `𝒞` be a category with terminal objects `1` and `1′`. 
There are unique morphisms 
`11′ ∶ 1′ → 1` and `1′1 ∶ 1 → 1′`, and `11 = id1` and `1′1′ = id1′`. 
Hence, `11′ ∘ 1′1 = id1` and `1′1 ∘ 11′ = id1′`. 
That is, `1` is unique up to isomorphism.

Examples
===================================================================

- In `Hask`
  - `Void` is the initial object
  - `()` is the terminal object
- In `Set`
  - the empty set is the initial object
  - any singleton set is the terminal object
- In a poset
  - the meet is the initial object
  - the join is the terminal object
