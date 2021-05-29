# Prime factorisation

The prime factorisation of the integers is a central point of study in number theory and can be visualised with the variant of Ulam's spiral.

Ulam's spiral plots the primes in a polar coordinate system (p,p) where the second component is in radians (π/2 rad = 90°, π rad = 180°, 3π/2 = 270°, 2π rad = 360°).

We can first consider the set ℕ, plotting all (n,n) pairs, with (0,0) as the origin; the increments in the first component make each sucessive point 1 unit further from the center, and the second component is the angle in radians.

So, we have something like:

```
0°=360°|       | 90°          | 180°         | 270°                 | 360°
k*2π   |       | k*π/2        | k*π          | k*3π/2               | k*2π
(0,0)  | (1,1) | 1.57 | (2,2) | 3.14 | (3,3) | 4.71 | (5,5) | (6,6) | 6.28
  ^      ^              ^              ^              ^       ^
plotted points for pairs (n,n) where n ∈ {0..6}
```
If we overlay x-axis as the kπ axis (for k ∈ ℕ), the pair (6,6) is fairly off (relatively, much worse compared to other candidates) the x-axis (or, it is off from the <_,2π> point), but nevertheless it is the last one before a full circle is completed. Therefore, there are 6 spiraling arms coming out of the origin point. Each of the 6 spiraling arm is one of the six residue classes modulo 6, `6k+n mod 6`.


RCm6 | 0 | 1 | 2 | 3 | 4 | ...| ℙ?
-----|---|---|---|---|---|----|------
6k+0 | 0 |  6| 12| 18| 24| ...| none, 𝔼(n) -> ¬ℙ(n) (for n > 2)
6k+1 | 1 |  7| 13| 19| 25| ...| *most*
6k+2 | 2 |  8| 14| 20| 26| ...| none, 𝔼 -> ¬ℙ
6k+3 | 3 |  9| 15| 21| 27| ...| 3 ∈ ℙ, others are multiples of 3 so ∉ ℙ
6k+4 | 4 | 10| 16| 22| 28| ...| none, 𝔼 -> ¬ℙ
6k+5 | 5 | 11| 17| 23| 29| ...| *most*

Therefore, to plot the primes, we remove the non-prime arms (6k+0, 6k+2, 6k+3, 6k+4), and we are left with (most members) of the 6k+1 and 6k+5 arms; that is, there are just 2 arms, 6k+5 and 6k+7 (since 6k+1 = 6k+7).

Anyway, the points that lay really close to the x-axis are 22 and 44, that is, the pairs (22,22) and (44,44), which will turn out to be significant magic numbers later.






https://en.wikipedia.org/wiki/Prime_number
