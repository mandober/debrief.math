# Type inference

## Untyped lambda calculus


## Mogensen's encoding

`Efficient Self-Interpretation in Lambda Calculus`, Mogensen

```
-- Predefined:
S  := λn f x.f(n f x)
1  := λf x.f x
Y  := λf.(λx.f(x x)) (λx.f(x x))
R  := λ m . RR m (λa b . b)
E  := Y (λe m.m (λx.x) (λm n.(e m)(e n)) (λm v.e (m v)))
P  := Y (λp m. (λx.x (λv.p (λa b c.b m (v (λa b.b))))m))
RR := Y (λr m.m (λx.x)
         (λm n.
          (r m)
           (λa b.a)
            (r n))
             (λm.(λg x.x g
              (λa b c.c
               (λw.g (P
                (λa b c.a w))
                 (λa b.b))))
                  (λv.r (m v))))

-- Examples:
E (quote (S (S (S 1))))        -- (1) Self-interpreter demo
R (quote (S (S (S 1))))        -- (2) Self-reducer demo

-- Result (1)
λv v1.v (v (v (v v1)))

-- Result (2)
λa b c . c
 (λw a b c . c
  (λw1 a b c . b
   (λa b c . a w)
    (λa b c . b
     (λa b c . a w)
      (λa b c . b
       (λa b c . a w)
        (λa b c . b
         (λa b c . a w)
          (λa b c . a w1))))))
```


### Quote

```
Var: λm . λa . λb . λc . a m
App: λm . λn . λa . λb . λc . b m n
Lam: λm .      λa . λb . λc . c m

-- (1) Our `quote` primitive lies outside lambda calculus:
quote ((λy . y) x)

-- (2) Encoding terms in lambda calculus (without typing the raw encoding):
App (Lam (λy . Var y)) (Var x)

-- output
λ a b c . b (λ a b c . c (λ y a b c . a y)) (λ a b c . a x)   -- (1)
λ a b c . b (λ a b c . c (λ y a b c . a y)) (λ a b c . a x)   -- (2)
```

### Shallow encoding

```
Var: λx . λi . x
App: λm . λn . λi . i (m i) (n i)
Lam: λf . λi . λx . f x i

-- self-interpreter:
E: λq . q (λx . x)

qsucc: Lam (λn .
        Lam (λf .
         Lam (λx .
          App (Var f)
            (App
             (App
              (Var n)
               (Var f))
                (Var x)))))

q0: Lam (λf .
     Lam (λx .
      Var x))

-- Compute `succ (succ 0)`
E(App qsucc (App qsucc q0))
```

### Factorial

```
true = \x y -> x
false = \x y -> y

0 = \f x -> x
1 = \f x -> f x

succ = \n f x -> f(n f x)
pred = \n f x -> n(\g h -> h (g f)) (\u -> x) (\u ->u)

mul = \m n f -> m(n f)
is0 = \n -> n (\x -> false) true

Y = \f -> (\x -> x x)(\x -> f(x x))

fact = Y(\f n -> (is0 n) 1 (mul n (f (pred n))))

-- Computes (4!)
fact (succ (succ (succ 1)))
```
