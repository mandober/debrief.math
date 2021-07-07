https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/General_recursive_function

## PRF

- ζ⁰    Z,  0
- σ¹    S,  succ
- ᵏπᵢ   p,  proj
- (∘)ᵏ  (∘), (.)
- ρ²    r,  primrec

## One

one = σ ∘ ζ

## plus4

given: add, four

plus4 = add ∘ [¹π₁, four]

## predecessor

pred(  0 ) = 0
pred(S(n)) = ²π₁(n, pred(n)) = n
pred(3 + 1) = ²π₁(3, pred(3)) = 3

pred 0 = 0
pred n = ²π₁ n (pred (n - 1))

## succ

s 0 = 1
s n = n + 1

P 0 = 0
P 1 = 0
P 2 = 1
P 3 = P (S S S 0)
    = P (3)
    = 2
P n = Sⁿ Z = S ∘ … ∘ S = S (S (… (S Z)))
P 4 = S⁴ Z = S ∘ S ∘ S ∘ S ∘ Z = S (S (S (S Z)))

fld f n x = take n $ iterate f x

P n = (n, S n)

P (S n) = n

φ n = (n, n + 1)
φ 0 = (0, 1)
φ 1 = (1, 2)

base step: h(0, x) = f(x)
induction step: h(y+1, x) = g(y, h(y,x), x)

## Addition

```
h    0  x = f x             | add    0  x = x
h (S y) x = g y (h y x) x   | add (S y) x = S (add y x)
h (S 1) 2 = g 1 (h 1 2) 2
h 1 2 = g (P 1) (h (P 1) 2) 2


⬤ ● •
🗖 🗕 🗗 🗙
⏴ ⏵ ⏶ ⏷
🞀  🞂 🞃 ⯅ ⯆
⬍ ⭳ ─ ✔ ✓ ⎾ ⏌ ◜ ◞
a◜a◞a


h = add = ρ(f, g)

f = id = π¹₁ =  π¹₁(x) = x
g = σ ∘ π³₂     σ (π³₂ (x, y, z)) = σ (π³₂ (a,b,c)) = σ(b)
                                  = σ (π³₂ (y, h(y,x), x))
                                  = σ (        h(y,x)    )

g = σ ∘ π₂     σ (π₂(x, y)) = σ(y)
```

in·ter·punct


- ¹π₁ ³π₂

add = h = ρ(f, g)
add(  0 , x) = x             => `f = ¹π₁`
add(S(y), x) = S(add(y, x))  => `g = σ ∘ ³π₂`

add   y   x
add   0   x = x
add   y   x = 



add 0     n = n
add (S m) n = S (add m n)



add 0 n = n
add m n = succ (add (pred m) n)

add ~ h
f x = x
g m n =
h x y z = 
