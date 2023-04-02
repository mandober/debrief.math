# Recursive types in polymorphic lambda calculus

`Recursive types in polymorphic lambda calculus`, 1999, Philip Wadler, message on the Types mailing list inquiring of the origin of the encoding
Q: http://www.seas.upenn.edu/~sweirich/types/archive/1999-2003/msg00138.html
A: https://www.seas.upenn.edu/~sweirich/types/archive/1999-2003/msg00159.html


```lhs
There is a fairly standard encoding of recursive types
into polymorphic lambda calculus, given by

> rec X. F[X]  =  forall X. (F[X] -> X) -> X

where F[X] is a type in which the type variable X appears only covariantly. 
Recall that every covariant type corresponds to a (covariant) functor, 
so for every

> h : X -> Y

we have

> F[h] : F[X] -> F[Y]

If we abbreviate

> T = rec X. F[X]

then the key functions on this type are 
given by the polymorphic lambda terms:

> fold : forall X. (F[X] -> X) -> T -> X
> fold = Lam X. lam k : F[X] -> X. lam t : T. t {X} (k)

> in'   : F[T] -> T
> in'   = lam u : F[T]. Lam X. lam k : F[X] - >X. k( F [fold {X} (k)] (u) )

> out  : T -> F [T]
> out  = fold {F [T]} (F [in'])


Questions: Who first had this insight? Where is a good place to find 
this spelled out in the literature? Please send results to me, and I 
will summarize them for the list. -- Philip Wadler

> -- There is a fairly standard encoding of recursive types
> -- into polymorphic lambda calculus, given by:
> μa. f a = forall f a. Functor f => (f a -> a) -> a
> -- where F[X] is a type in which the type variable X appears only covariantly.
> -- Recall that every covariant type corresponds to a (covariant) functor,
> -- so for every function
> h :: a -> b
> -- we have a function lifted by a functor F
> fmap h :: forall f a b. Functor f => f a -> f b
> -- With the abbreviation
> ττ = μa. forall f a. Functor f => f a
> -- the key functions on this type are 
> -- given by the polymorphic lambda terms:
> fold :: forall a. (f a -> a) -> ττ -> a
> fold = Λa. λk : (f a -> a). λt : ττ. t @{a} k
> 
> in' :: f ττ -> ττ
> in' = λu : f ττ. Λa. λk : f a -> a. k (f (fold @{a} k) u)
> 
> out :: ττ -> f ττ
> out = fold @{f ττ} (f in')
```
