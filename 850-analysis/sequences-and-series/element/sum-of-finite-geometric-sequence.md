# Sum of a finite geometric sequence

sumovaseq, ju sanovabič! hu'zlafinau

```js
     a(1 − rⁿ)
S = ----------  if |r| < 1     // fGPS: finite GP sum
       1 − r

       a
S∞ = -----      if |r| < 1     // iGPS: infinite GP sum
     1 − r
```

## Intro

Given each term of GP as `a₁, a₂, a₃, a₄, …, aₘ, …, aₙ`, expressing all these terms according to the first term `a₁` will give us the terms of the sequence:

```js
a₁ = a₁
a₂ = a₁r
a₃ = a₂r = (a₁r)r = a₁r²
a₄ = a₃r = (a₁r₂)r = a₁r³
…
aₘ = a₁rᵐ⁻¹
…
aₙ = a₁rⁿ⁻¹
```

where
- `a₁` is the first term, `a₂` is the second term, etc.
- `aₘ` any term before the last term
- `aₙ` the last term (or the nth term)

## Derivation: sum of finite GP

Derivation of the formula for the sum of a finite GP

```js
S = a₁, a₂, a₃, a₄, …, aₙ

// a = a₁ (initial term)
S = a + ar + ar² + ar³ + … + arⁿ⁻¹    /* Eq1 */

// multiply both sides of Eq1 by (r)
rS = ar + ar² + ar³ + … + arⁿ         /* Eq2 */

// subtract: Eq1 - Eq2, lining them up on equal powers
 S = a + ar + ar² + ar³ + … + arⁿ⁻¹
rS =     ar + ar² + ar³ + … + arⁿ⁻¹ + … + arⁿ

// most terms cancel each other out,
// leaving only (a) in Eq1 and (arⁿ) in Eq2
S − rS = a − arⁿ
S(1 − r) = a(1 − rⁿ)

/* if r < 1 */
     a(1 − rⁿ)
S = ----------  if |r| < 1   /* SFGP */  (if -1 < r < 1)
       1 − r


/* if r > 1 */
// subtract: Eq2 - Eq1
rS =     ar + ar² + ar³ + … + arⁿ⁻¹ + … + arⁿ
 S = a + ar + ar² + ar³ + … + arⁿ⁻¹

rS − S = arⁿ - a
S(r − 1) = a(rⁿ - 1)

     a(rⁿ - 1)
S = ----------  if r > 1  /* SFGP */
       r − 1
```

## Derivation: sum of infinite GP

The number of terms in an infinite GP approaches infinity, `n→∞`. The sum of an infinite GP can only be defined if `|r| < 1`.

```js
S = a₁, a₂, a₃, a₄, …, aₙ

// a = a₁ (initial term)
S = a + ar + ar² + ar³ + … + arⁿ⁻¹    /* Eq1 */

// multiply both sides of Eq1 by (r)
rS = ar + ar² + ar³ + … + arⁿ         /* Eq2 */

// subtract: Eq1 - Eq2, lining them up on equal powers
 S = a + ar + ar² + ar³ + … + arⁿ⁻¹
rS =     ar + ar² + ar³ + … + arⁿ⁻¹ + … + arⁿ

// most terms cancel each other out,
// leaving only (a) in Eq1 and (arⁿ) in Eq2
S − rS = a − arⁿ
S(1 − r) = a − arⁿ

      a − arⁿ
S∞ = --------
      1 − r

       a      arⁿ
S∞ = ----- - ------
     1 − r   1 − r

// now we eval the limit
        a      arⁿ
lim   ----- - ------
n→∞   1 − r   1 − r

// as n tends to infinity, the term on the right (the one with n)
// tends to 0, so we are left with the term on the left (aka the SIGP)
       a
S∞ = -----   /* SIGP */
     1 − r
```
