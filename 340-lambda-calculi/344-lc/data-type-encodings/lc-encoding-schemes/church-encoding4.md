# Lambda Calculus: Church encoding


```rb
# Church encoding

TRUE  = T := λab. a
FALSE = F := λab. b

NOT :: Bool -> Bool
bcs :: Bool -> Bool -> Bool

NOT := λ p   t f . p f t

# p and q are Booleans, so they must both be T for AND to be T.
# t arg repr true arg and f false, so we can explicitly pass them in
AND := λ p q t f . p (q t f) f
```

## theme


```lisp
λ p q t f . p (q t f) f

λ a b . a

// Church encoding
λab. a


TRUE = λab. a

FALSE := λab. b

NOT :: Bool -> Bool
bcs :: Bool -> Bool -> Bool

NOT := λ p   t f . p f t

# p and q are Booleans, so they must both be T for AND to be T.
# t arg repr true arg and f false, so we can explicitly pass them in
AND := λ p q t f . p (q t f) f
```
