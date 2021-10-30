# Lambda calculus: Combinators

B  := λgfx.g(fx)
C  := λfab.fba
I  := λa.a
K  := λab.a
KI := λab.b
S  := λgfx.gx(fx)


Bluebird := B := (∘) := compose := λfgx.f(gx)

Cardinal := C := flip := λfab.fba


## Combinators

```
λabc.a(bc)            B Bluebird  S(KS)K  ((S(KS))K)
λabcd.a(bcd)            B1  Blackbird BBB ((S(K((S(KS))K)))((S(KS))K))
λabcde.a(bcde)          B2  Bunting B(BBB)B ((S(K((S(K((S(KS))K)))((S(KS))K))))((S(KS))K))
λabcd.a(b(cd))          B3  Becard  B(BB)B  ((S(K((S(K((S(KS))K)))((S(KS))K))))((S(KS))K))

λabc.acb              C Cardinal  S(BBS)(KK)  ((S((S(K((S(KS))K)))S))(KK))

λabcd.ab(cd)          D Dove  BB  (S(K((S(KS))K)))
λabcde.abc(de)          D1  Dickcissel  B(BB) (S(K(S(K((S(KS))K)))))
λabcde.a(bc)(de)        D2  Dovekies  BB(BB)  ((S(K((S(KS))K)))(S(K((S(KS))K))))

λabcde.ab(cde)        E Eagle B(BBB)  (S(K((S(K((S(KS))K)))((S(KS))K))))
λabcdefg.a(bcd)(efg)    Ê Bald Eagle  B(BBB)(B(BBB))  ((S(K((S(K((S(KS))K)))((S(KS))K))))(S(K((S(K((S(KS))K)))((S(KS))K)))))

λabc.cba              F Finch ETTET ((S(K((S((SK)K))(K((S(K(S((SK)K))))K)))))((S(K((S(K((S(KS))K)))((S(KS))K))))((S(K(S((SK)K))))K)))

λabcd.ad(bc)          G Goldfinch BBC ((S(K((S(KS))K)))((S((S(K((S(KS))K)))S))(KK)))

λabc.abcb             H Hummingbird BW(BC)  ((S(K((S(K(S((S(K((S((SK)K))((SK)K))))((S(K((S(KS))K)))((S(K(S((SK)K))))K))))))K)))(S(K((S((S(K((S(KS))K)))S))(KK)))))

λa.a                  I Identity Bird (aka Idiot) SKK ((SK)K)

λabcd.ab(adc)         J Jay B(BC)(W(BC(B(BBB))))  ((S(K(S(K((S((S(K((S(KS))K)))S))(KK))))))((S((S(K((S((SK)K))((SK)K))))((S(K((S(KS))K)))((S(K(S((SK)K))))K))))(K((S(K((S((S(K((S(KS))K)))S))(KK))))(S(K((S(K((S(KS))K)))((S(KS))K))))))))

λab.a                 K Kestrel (True)  K K

λab.a(bb)             L Lark  CBM ((S((S(KS))K))(K((S((SK)K))((SK)K))))

λa.aa                 M Mockingbird SII ((S((SK)K))((SK)K))
λab.ab(ab)              M2  Double Mockingbird  BM  (S(K((S((SK)K))((SK)K))))

λab.b(ab)             O Owl SI  (S((SK)K))

λabc.b(ac)            Q Queer Bird  CB  ((S(K(S((S(KS))K))))K)
λabc.a(cb)              Q1  Quixotic Bird BCB ((S(K((S((S(K((S(KS))K)))S))(KK))))((S(KS))K))
λabc.b(ca)              Q2  Quizzical Bird  C(BCB)  ((S(K(S((S(K((S((S(K((S(KS))K)))S))(KK))))((S(KS))K)))))K)
λabc.c(ab)              Q3  Quirky Bird BT  (S(K((S(K(S((SK)K))))K)))
λabc.c(ba)              Q4  Quacky Bird F*B ((S(K((S((S(K((S(KS))K)))S))(KK))))((S(K(S((S(K((S((S(K((S(KS))K)))S))(KK))))((S(KS))K)))))K))

λabc.bca              R Robin BBT ((S(K((S(KS))K)))((S(K(S((SK)K))))K))

λabc.ac(bc)           S Starling  S S

λab.ba                T Thrush  CI  ((S(K(S((SK)K))))K)

λab.b(aab)            U Turing  LO  ((S(K(S((SK)K))))((S((SK)K))((SK)K)))

λabc.cab              V Vireo (aka Pairing) BCT ((S(K((S((S(K((S(KS))K)))S))(KK))))((S(K(S((SK)K))))K))

λab.abb               W Warbler C(BMR)  ((S(K(S((S(K((S((SK)K))((SK)K))))((S(K((S(KS))K)))((S(K(S((SK)K))))K))))))K)
λab.baa                 W1  Converse Warbler  CW  ((S(K(S((S(K(S((S(K((S((SK)K))((SK)K))))((S(K((S(KS))K)))((S(K(S((SK)K))))K))))))K))))K)

λa.a(λa)              Y Why Bird (aka Sage Bird)  SLL (((SS)K)((S(K((SS)(S((SS)K)))))K)
```

## By arity

```
[1]
λa.a                  I   Identity Bird
λa.aa                 M   Mockingbird
λa.a(λa)              Y   Why Bird

[2]
λab.a                 K   Kestrel
λab.a(bb)             L   Lark
λab.ab(ab)            M2  Double Mockingbird
λab.b(ab)             O   Owl
λab.ba                T   Thrush
λab.b(aab)            U   Turing
λab.abb               W   Warbler
λab.baa               W1  Converse Warbler

[3]
λabc.a(bc)            B   Bluebird
λabc.acb              C   Cardinal
λabc.cba              F   Finch
λabc.abcb             H   Hummingbird
λabc.b(ac)            Q   Queer Bird
λabc.a(cb)            Q1  Quixotic Bird
λabc.b(ca)            Q2  Quizzical Bird
λabc.c(ab)            Q3  Quirky Bird
λabc.c(ba)            Q4  Quacky Bird
λabc.bca              R   Robin
λabc.ac(bc)           S   Starling
λabc.cab              V   Vireo

[4]
λabcd.a(bcd)          B1  Blackbird
λabcd.a(b(cd))        B3  Becard
λabcd.ab(cd)          D   Dove
λabcd.ad(bc)          G   Goldfinch
λabcd.ab(adc)         J   Jay

[5]
λabcde.a(bcde)        B2  Bunting
λabcde.abc(de)        D1  Dickcissel
λabcde.a(bc)(de)      D2  Dovekies
λabcde.ab(cde)        E   Eagle

[7]
λabcdefg.a(bcd)(efg)  Ê Bald Eagle
```
