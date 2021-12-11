# Lambda calculus: η-conversion

-- y is free
   (λx.xy)
-- so let's lift the exp to bind it
λy.(λx.xy) ≡ λyx.xy




-- in haskell
f x y = map j [] y  ≡
f x   = map j []

-- η-introduction
-- x,y are formal params
-- A is previously defined final concrete value
-- I is id function
(λx. x) A ≡ A
(λx. A) A ≡ A
(λx. A) y ≡ A


`x` ≡ `(λ_. x) _`
x ≡ (λv. x) v
x ≡ (λv. v) x

λv. (x x) v)



```js
// 1) direct val
'bingo!'
// 2) delayed value x1: thunk 1
(() => 'bingo!')()
// 2) delayed value x2: thunk 1+1
(() => (() => 'bingo!') ()) ()
// 2) delayed value x3: thunk 1+1+1
(() => (() => (() => 'bingo!') ()) ()) ()
// 2) delayed value x4: thunk 1+1+1+1
( () => (
        () => (
            () => (
                    () => 'bingo!'
                  ) ()
              ) ()
          ) ()
) ()


//
(v => (v => 3) (v)) ()

(c => (b => (a => 3) (b)) (c)) ()



//
(c =>
    (b =>
        (a => 'bingo!')
        (b)
    )
    (c)
)
(2)
```
