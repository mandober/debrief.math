# Combinator birds

https://www.angelfire.com/tx4/cus/combinator/birds.html


Nr | Lambda abstraction   | Symbol|Ari| Bird                        | Combinator in CL     | Renamed        | Notes
--:|----------------------|-------|---|----------------------------:|----------------------|----------------|---------------------------------
 1 | λabc.a(bc)           | B     | 3 | Bluebird                    | S(KS)K               | λgfx.g(fx)     | composition, `∘`, Haskell's `(.)`
 2 | λabcd.a(bcd)         | B₁    | 4 | Blackbird                   | BBB                  | λgfxy.g(fxy)   | compose unary after binary
 3 | λabcde.a(bcde)       | B₂    | 5 | Bunting                     | B(BBB)B              | λgfxyz.g(fxyz) | compose unary after ternary
 4 | λabcd.a(b(cd))       | B₃    | 4 | Becard                      | B(BB)B               | λgfhx.g(f(hx)) | compose 3 unary
 5 | λabc.acb             | C     | 3 | Cardinal                    | S(BBS)(KK)           | λfxy.fyx       | Haskell's `flip`
 6 | λabcd.ab(cd)         | D     | 4 | Dove                        | BB                   | λfxgy.fx(gy)   | version of S
 7 | λabcde.abc(de)       | D₁    | 5 | Dickcissel                  | B(BB)                |                | version of S
 8 | λabcde.a(bc)(de)     | D₂    | 5 | Dovekies                    | BB(BB)               |                | version of S
 9 | λabcde.ab(cde)       | E     | 5 | Eagle                       | B(BBB)               |                | version of S
10 | λabcdefg.a(bcd)(efg) | Ê     | 7 | Bald Eagle                  | B(BBB)(B(BBB))       |                | version of S complicated
11 | λabc.cba             | F     | 3 | Finch                       | ETTET                | λxyf.fyx       | version of flip
12 | λabcd.ad(bc)         | G     | 4 | Goldfinch                   | BBC                  | λfgxy.fy(gx)   |
13 | λabc.abcb            | H     | 3 | Hummingbird                 | BW(BC)               | λfxy.fxyx      |
14 | λa.a                 | I     | 1 | Identity Bird (aka Idiot)   | SKK                  | λx.x           | Haskell's `id`
15 | λabcd.ab(adc)        | J     | 4 | Jay                         | B(BC)(W(BC(B(BBB)))) |                |
16 | λab.a                | K     | 2 | Kestrel                     | K                    | λxy.x          | Haskell's `const`
17 | λab.a(bb)            | L     | 2 | Lark                        | CBM                  |                |
18 | λa.aa                | M     | 1 | Mockingbird                 | SII                  |                |
19 | λab.ab(ab)           | M₂    | 2 | Double Mockingbird          | BM                   |                |
20 | λab.b(ab)            | O     | 2 | Owl                         | SI                   |                |
21 | λabc.b(ac)           | Q     | 3 | Queer Bird                  | CB                   |                |
22 | λabc.a(cb)           | Q₁    | 3 | Quixotic Bird               | BCB                  |                |
23 | λabc.b(ca)           | Q₂    | 3 | Quizzical Bird              | C(BCB)               |                |
24 | λabc.c(ab)           | Q₃    | 3 | Quirky Bird                 | BT                   |                |
25 | λabc.c(ba)           | Q₄    | 3 | Quacky Bird                 | F'B                  |                |
26 | λabc.bca             | R     | 3 | Robin                       | BBT                  | λxgf.gfx       |
27 | λabc.ac(bc)          | S     | 3 | Starling                    | S                    | λgfx.gx(fx)    |
28 | λab.ba               | T     | 2 | Thrush                      | CI                   |                | Haskell's `(&)`
29 | λab.b(aab)           | U     | 2 | Turing                      | LO                   |                |
30 | λabc.cab             | V     | 3 | Vireo                       | BCT                  | λabf.fab       | pairing
31 | λab.abb              | W     | 2 | Warbler                     | C(BMR)               |                |
32 | λab.baa              | W₁    | 2 | Converse Warbler            | CW                   |                |
33 | λa.a(λa)             | Y     | 1 | Why Bird (aka Sage Bird)    | SLL                  |                |
34 | λab.ab               | I'    | 2 |  Identity Bird Once Removed | S(SK)                |                |
35 | λabc.abcc            | W'    | 3 |        Warbler Once Removed | BW                   |                |
36 | λabcd.abdc           | C'    | 4 |       Cardinal Once Removed | BC                   |                |
37 | λabcd.acdb           | R'    | 4 |          Robin Once Removed | C'C'                 |                |
38 | λabcd.adcb           | F'    | 4 |          Finch Once Removed | BC'R'                |                |
39 | λabcd.acbd           | V'    | 4 |          Vireo Once Removed | C'F'                 |                |
40 | λabc.abc             | I'    | 3 | Identity Bird Twice Removed |                      |                |
41 | λabcd.abcdd          | W'    | 4 |       Warbler Twice Removed | B(BW)                |                |
42 | λabcde.abced         | C'    | 5 |      Cardinal Twice Removed | BC'                  |                |
43 | λabcde.abdec         | R'    | 5 |         Robin Twice Removed | BR'                  |                |
44 | λabcde.abedc         | F'    | 5 |         Finch Twice Removed | BF'                  |                |
45 | λabcde.abecd         | V'    | 5 |         Vireo Twice Removed | BV'                  |                |
46 | λab.b                | KI    | 2 | Kite                        | KI, CK               |                | False
47 | λab.bb               | KM    | 2 |         Konstant Mocker     | KM                   |                |
48 | λab.aa               | C(KM) | 2 | Crossed Konstant Mocker     | C(KM)                |                |
49 | λ                    | Ω     | x | Omega                       | MM                   |                |
50 | λ                    | Θ     | x | Theta                       | YO                   |                |
51 | λabcd.a(bc)(bd)      | on    | 4 |                             |                      |                | Haskell's `on`




## Notes on the Combinator Birds
- The combinatory birds were borrowed from To Mock A MockingBird[^1], by Raymond Smullyan.
- Some additional information about combinator birds can be found in To Dissect a Mockingbird[^2] by David C Keenan.
- Some of the SK Combinatory terms were first reduced using the Combinatory Logic Tutorial[^3] by Chris Barker.



[^1]: To Mock A MockingBird, by Raymond Smullyan (book)
  http://www.amazon.com/exec/obidos/tg/detail/-/0394534913/104-1615637-3868724
[^2]: To Dissect a Mockingbird by David C Keenan.
  http://dkeenan.com/Lambda/
[^3]: Combinatory Logic Tutorial by Chris Barker:
  http://homepages.nyu.edu/~cb125/Lambda/ski.html
  https://web.archive.org/web/20121106154359/https://files.nyu.edu/cb125/public/Lambda/ski.html
