# λ-calculus :: Index of λ-calculus combinators

```ulc hs
-- SKI Combinators
S  = λ f g x . f x (g x)
K  = λ a b . a
I  = λ a . a

-- Schönfinkel combinators
C  = λ f a b . f b a
B  = λ f g x . f g x
W  = λ x . λ f . f f

-- Combinators
KI = λ a b . b
Y  = λ f . ( λ x . f (x x)) (λ x . f (x x))

-- common
Z = λ s z . z
T = λ a b . a
F = λ a b . b

-- Booleans
Top = λ a b . a -- ⊤
⊤   = λ a b . a

Bot = λ a b . b -- ⊥
⊥   = λ a b . b

Not   = λ b . b F T

And   = λ p q . p q p
Or    = λ p q . p p q

Xor   = ...
Imply = ...

IsFalse? = ...
IsTrue?  = ...

-- Arithemtic
Succ = λ n f x . f (n f x)

Zero = λ s z . z
One  = λ s z . s z

C0 = λ s z . z
C1 = λ s z . s z
C2 = λ s z . s (s z)
C3 = λ s z . s (s (s z))


-- Add = λ m n . λ f x . m f (n f x) -->> fᵐ (fⁿ x)
Add   = λ m n . λ f x . m f (n f x)

-- Mul = λ m n . λ f x . m (n f) x -->> (fⁿ)ᵐ x = fⁿᵐ x
Mul   = λ m n . λ f x . m (n f) x

-- Pow = λ m n . λ f x . n m f x -->> ((n m) f) x = (mⁿ) f x = f^(mⁿ) x
Pow   = λ m n . λ f x . n m f x
-- Pow η-contraction
Pow_η = λ m n . n m



Zero? = λ n . n (K F) T


Pred = ...





-- Pair
Pair = λ α β s . s α β

Fst  = λ π . π (λ a b . a)
Fst2 = λ π . π K

Snd  = λ π . π (λ a b . b)
Snd2 = λ π . π KI

-- FACTORIAL
FAC = λ α . Snd (α (
      λ t . t (λ x y . Pair (Succ x) (Mul x y)
      )) (Pair One One))


-- List

```


```hs
add   = fix (\radd.\x.\y. x y (\ n. Succ (radd n y)));
mul   = fix (\rmul.\x.\y. x Zero (\ n. add y (rmul n y)));
fac   = fix (\rfac.\x. x one (\ n. mul x (rfac n)));
eqnat = fix (\reqnat.\x.\y. x (y True (const False)) (\x1.y False (\y1.reqnat x1 y1)));
sumto = fix (\rsumto.\x. x Zero (\n.add x (rsumto n)));
```
