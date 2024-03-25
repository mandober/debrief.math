# Dedekind cut

https://en.wikipedia.org/wiki/Dedekind_cut

In 1872, German mathematician Richard Dedekind has published one of his best known works `"Stetigkeit und Irrationalzahlen"` ("Continuity and Irrational Numbers"), presenting a method of the construction of the real numbers by means of a cut of the rational numbers. Dedekind have developed the idea in 1858, but published it only 14 years later. The same idea was also considered by Joseph Bertrand in 1849.

A **Dedekind cut** is a partition of the rational numbers into two sets `A` and `B`, such that all elements of `A` are less than all elements of `B`, and `A` contains no greatest element.


```
1 / 1       = 1.0
7 / 5       = 1.4
41 / 29     = 1.413_793_103_448_275_862_068_965_517_2414
239 / 169   = 1.414_201_183_431_952_662_721_893_491_1243
1393 / 985  = 1.414_213_197_969_543_147_208_121_827_4112
√2          = 1.414_213_562_373_095_048_801_688_724_2097
3363 / 2378 = 1.414_213_624_894_869_638_351_555_929_3524
577 / 408   = 1.414_215_686_274_509_803_921_568_627_451
99 / 70     = 1.414_285_714_285_714_285_714_285_714_2857
17 / 12     = 1.416_666_666_666_666_666_666_666_666_6667
3 / 2       = 1.5
2 / 1       = 2.0


1.0 ├ 1/1
    │
    │
    │ 7/5
    │ 41/29
    │ 239/169
    │ 1393/985
    │ √2
    │ 3363/2378
    │ 577/408
    │ 99/70
    │ 17/12
1.5 ├ 3/2
    │ 
    │
2.0 ├ 2/1


└ ┴ ┘ ┌ ┬ ┐ ├ ┼ ┤ ─ │ ╌ ┄ ┈ ╎ ┆ ┊ ╴ ╵ ╶  ╷ ⟍ ⟋


                                1.41
                          1.35    |1.45
1.0                     1.3 | 1.4 | 1.5         1.6                     2.0
-|-----------------------|--|--|--|--|-----------|-----------------------|-
                               |


1.4                     1.43                    1.46                    1.5
-|-----------------------|-----------------------|-----------------------|-




          A          √2 3⁄2        B
ℚ -|-----------------|--|-----------------|-
  1⁄1       1393⁄985   |  3363⁄2378        2⁄1
    7⁄5               |              17⁄12
      41⁄29           |        99⁄70
             239⁄169  |     577⁄408
```


The set `B` may or may not have a smallest element among the rationals. If `B` has a smallest element among the rationals, the cut corresponds to that rational. Otherwise, that cut defines a unique irrational number which, loosely speaking, fills the "gap" between `A` and `B`.

In other words, `A` contains every rational number less than the cut, and `B` contains every rational number greater than or equal to the cut. An irrational cut is equated to an irrational number which is in neither set. Every real number, rational or not, is equated to one and only one cut of rationals.

Dedekind cuts can be generalized from the rational numbers to any totally ordered set by defining a Dedekind cut as a partition of a totally ordered set into two non-empty parts `A` and `B`, such that `A` is closed downwards (meaning that for all a in `A`, x ≤ a implies that x is in `A` as well) and `B` is closed upwards, and `A` contains no greatest element. See also completeness (order theory).

It is straightforward to show that a Dedekind cut among the real numbers is uniquely defined by the corresponding cut among the rational numbers. Similarly, every cut of reals is identical to the cut produced by a specific real number (which can be identified as the smallest element of the `B` set). In other words, the number line where every real number is defined as a Dedekind cut of rationals is a complete continuum without any further gaps.
