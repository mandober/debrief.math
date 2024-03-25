# Examples of relations

Here is a complete example:


```
let A₁ = { a, b }
let A₂ = { 1, 2, 3 }
A₁ × A₂ = { (a,1), (a,2), (a,3), (b,1), (b,2), (b,3) }

Products have two projections: fst(a,b) = a and snd(a,b) = b
construct the preimage: map fst G ⊆ A
construct the image:    map snd G ⊆ B

R(A₁,A₂) = ⟨A₁, A₂, G⟩ where G ⊆ A₁ × A₂

let G = { (a,1), (a,2), (b,1), (b,3) }

R(A₁,A₂) = ⟨A₁, A₂, G⟩

R(A₁,A₂) =
  ⟨ { a, b }
  , { 1, 2, 3 }
  , { (a,1), (a,2), (b,1), (b,3) }
  ⟩

M = map fst G = map fst {(a,1), (a,2), (b,1), (b,3)} = {a,a,b,b} = {a,b}
N = map snd G = map fst {(a,1), (a,2), (b,1), (b,3)} = {1,2,1,3} = {1,2,3}

  M ⊆ A and N ⊆ B
but in this example, it just so happens that
  M = A and N = B
but this needn't be the case always.

* COMPLEMENT

G' = (A₁ × A₂) \ G
A₁ × A₂ = { (a,1), (a,2), (a,3), (b,1), (b,2), (b,3) }
     G  = { (a,1), (a,2),        (b,1),        (b,3) }
     G' = {               (a,3),               (b,3) }

* TRANSPOSITION (INVERSE)

𝓡G  = ⟨ A₁ , A₂ , G ⟩
𝓡Gᵀ = ⟨ A₂ , A₁ , Gᵀ ⟩
Gᵀ ≝ { (b,a) | ∀(a,b) ∈ G }
G  = { (a,1), (a,2), (b,1), (b,3) }
Gᵀ = { (1,a), (2,a), (2,b), (3,b) }
```

## Examples of relations

R = {
  (1,1), (1,2),        (1,4)
  (2,1),        (2,3),
         (3,2),
  (4,1),               (4,4)
}

R | 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | T |   | T
2 | T |   | T |
3 |   | T |   |
4 | T |   |   | T

Symmetric relation is mirrored around the main diagnal
- axis of symmetry is the main diagonal
- Not all elements on the axis of symmetry need to be included

R = {
  (1,1), (1,2), (1,3), (1,4),
                       (2,4),
                (3,3),
                       (4,4)
}

R | 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | T | T | T
2 |   |   |   | T
3 |   |   | T |  
4 |   |   |   | T

Antisymmetric relation:
- no axis of symmetry
- only symmetry occurs on the main diagonal
- not all elements of the main diagonal need to be included in the relation

R = {
      (1,2), (1,3), (1,4),
             (2,3), (3,4),
                    (4,4)
}

R | 1 | 2 | 3 | 4
--|---|---|---|---
1 |   | T | T | T
2 |   |   | T | T
3 |   |   |   | T
4 |   |   |   |

Asymmetric relation:
- no axis of symmetry
- no symmetry anywhere
- no elements of the main diagonal allowed

## Examples of essential properties

NULL, empty, ∅, relation

∅ | 1 | 2 | 3 | 4
--|---|---|---|---
1 | . | . | . | .
2 | . | . | . | .
3 | . | . | . | .
4 | . | . | . | .

R = {
  (), (), (), (),
  (), (), (), (),
  (), (), (), (),
  (), (), (), (),
} = ∅


EQ, `=`

EQ| 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | . | . | .
2 | . | T | . | .
3 | . | . | T | .
4 | . | . | . | T

NE, `≠`

NE| 1 | 2 | 3 | 4
--|---|---|---|---
1 | . | T | T | T
2 | T | . | T | T
3 | T | T | . | T
4 | T | T | T | .


LE, `⩽`, `<=`

LE| 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | T | T | T
2 | . | T | T | T
3 | . | . | T | T
4 | . | . | . | T

LT, `<`

LT| 1 | 2 | 3 | 4
--|---|---|---|---
1 | . | T | T | T
2 | . | . | T | T
3 | . | . | . | T
4 | . | . | . | .

GE, `⩾`, `>=`

GE| 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | . | . | .
2 | T | T | . | .
3 | T | T | T | .
4 | T | T | T | T

GT, `>`

GT| 1 | 2 | 3 | 4
--|---|---|---|---
1 | . | . | . | .
2 | T | . | . | .
3 | T | T | . | .
4 | T | T | T | .


Divisibility, a|b

DV| 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | T | T | T
2 | . | T | . | T
3 | . | . | T | .
4 | . | . | . | T

R' = transposed divisibility, b|a

DV| 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | . | . | .
2 | T | T | . | .
3 | T | . | T | .
4 | T | T | . | T

What does it stands for, if anything (other that transposed divisibility)?

R =
{
  (1,1),
  (2,1), (2,2)
  (3,1),        (3,3)
  (4,1), (4,2),       (4,4)
}
