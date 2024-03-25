# Product

Given two distinct (A ≠ B) sets `A` and `B`      
  `A = { a₀, a₁, …, aₙ }` such that `n = |A|`     
  `B = { b₀, b₁, …, bₘ }` such that `m = |B|`     
  where `A` is called the domain set    
    and `B` is called the codomain set   
  and elements `∀a. a ∈ A`    
               `∀b. b ∈ B`    
we have these definitions:

* the *product* of A and B, denoted `A ⨯ B` 
is a set of ordered pairs `(a,b)` such that:

`A ⨯ B` = `{ (a,b) | ∀a∀b. a ∈ A ⋀ b ∈ B }`

- there will be `n⨯m` elements in the product set `A ⨯ B`
- note that the nested universal quantifiers, `∀a∀b`, act like nested loops

```hs
-- nested for loops
let product = []
for i = [0 .. n]:
  for j = [0 .. m]:
    add (aᵢ, bⱼ) to product
  end
end

-- or a list comprehension
let product xs ys = [ (x,y) | x <- xs, y <- ys ]
```

Take an element from A, call it `a₀`, and take each element bⱼ in B:
S₀ = { (a₀, b₀), (a₀, b₁), …, (a₀, bₘ) }
than take a different element from A, call it `a₁`, take each element bⱼ in B:
S₁ = { (a₁, b₀), (a₁, b₁), …, (a₁, bₘ) }
…
than take the last element from A, call it `aₙ`, take each element bⱼ in B:
Sₙ = { (aₙ, b₀), (aₙ, b₁), …, (aₙ, bₘ) }     
Finally, unite all the intermediate sets: `A ⨯ B = ⋃ {i=0..n} Sᵢ`
A ⨯ B = S₀ ⋃ S₁ ⋃ … ⋃ Sₘ
