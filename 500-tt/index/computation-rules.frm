# Type theory :: Index :: Computation rules

```hs
            fst (p, q) -->> p
            snd (p, q) -->> q

          (λ(x:A).p) a -->> p[a⟼x]

     cases (inl q) f g -->> f q
     cases (inr r) f g -->> g r

  vcasesˣʸ (inl a) u v -->> u[a⟼x]
  vcasesˣʸ (inr b) u v -->> v[b⟼y]


            Fst (p, q) -->> p
            Snd (p, q) -->> q

      Casesˣʸ (a, b) c -->> c[a⟼x, b⟼y]

if True  then c else d -->> c
if False then c else d -->> d


      casesₙ 1ₙ c₁ … cₙ -->> c₁
      casesₙ 2ₙ c₁ … cₙ -->> c₂
      …
      casesₙ nₙ c₁ … cₙ -->> cₙ

              case x c -->> c

     prim        0 c f -->> c
     prim (succ n) c f -->> f n (prim n c f)


trec Null          c f -->> c
trec (Bnode n u v) c f -->> f n u v (trec u c f) (trec v c f)


            J(r(a), d) -->> d


     lrec []       s f -->> s
     lrec (a :: l) s f -->> f a l (lrec l s f)

      Rec (node a f) R -->> R a f (λx . Rec (f x) R)

               rec e p -->> e p (rec e)


                 Fix Θ -->> Θ (Fix Θ)

                 fix g -->> g (fix g)

             xifʸᶻ b d -->> b[d⟼y, λw. (xifʸᶻ b w)⟼z]
```

## Continuations

```hs
____________________________________________
k ▷ letcc{τ}(x.e) --> k ▷ [cont(k) / x]e

___________________________________________
k; throw{τ}(v; -) ◁ cont(k') --> k' ◁ v
```
