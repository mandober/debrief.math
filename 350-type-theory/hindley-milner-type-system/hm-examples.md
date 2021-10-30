# HM inference examples


## let-inference

https://stackoverflow.com/questions/44509154/let-inference-in-hindley-milner?rq=1


`ex = \a -> let b = a in b + 1`
- First, we associate `a` with a fresh type variable, say `a :: t0`.
- Then we type `b = a`. We get `b :: t0` as well.
- However, and this is the key point, we should not generalize the type of `b` to `b :: forall t0. t0`. This is because we can only generalize over a tyvar which does not occur in the environment: here, instead, we do have `t0` in the environment since `a :: t0` is there.
- If you do generalize it, you will get a way too general type for `b`; then `b + 1` becomes `b+1 :: forall t0. Num t0 => t0`, and the whole term gets `forall t0 t1. Num t1 => t0 -> t1` since the types for `a` and `b` are unrelated (`t0`, once generalized, can be alpha-converted to `t1`).

1. a :: a
2. b :: b
3. (b = a) -> `b :: a`
4. (b + 1) :: Num a -> `b :: Num a`
5. ex :: 

ex :: Num a => a -> a
ex = \a -> let b = a in b + 1

ex :: Num a => a -> a
ex a = let b = a in b + 1

ex :: Num a => a -> a
ex a = a + 1
