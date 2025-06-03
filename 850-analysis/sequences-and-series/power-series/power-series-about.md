# Power series :: About

https://openstax.org/books/calculus-volume-2/pages/6-1-power-series-and-functions


A power series is a convenient way to define or express a function as a *polynomial of infinite degree*. Inside the *interval of convergence* (which is their domain), we can treat such polynomials as regular polynomials and manipulate them in the same manner.

*Taylor polynomial* is a good approximation for a function near a known point. We can define Taylor polynomials in 3 different ways:
- using a limit
- using derivatives
- using explicit formula

## Motivation

What is the domain of the function `g(x) = Σ{n=0..∞} xⁿ/n3ⁿ`?

```js
       ⎲∞    xⁱ
g(x) = ⎳ᵢ₌₀ -----
              i3ⁱ
```

dom(g) = { x ∈ ℝ | series g(x) is convergent }

When x=0 the series converges, but which other values of `x` work too?

## Convergence

>Since the terms in a power series involve a variable `x`, the series may converge for certain values of `x` and diverge for other values of `x`.

For a power series centered at `x=a`, the value of the series at `x=a` is given by the initial term, `c₀`. Therefore, 
>a power series always converges at its center.
Some power series converge only at that value of `x=a`, i.e. `x ∈ [a, a]`, where the point `a` is called *the center of the series*. The IOC in this situation is a single value and ROC is `R=0`.

Most power series, however, converge for more than one value of `x`. In some cases, the power series converges for all `x ∈ ℝ`, so the *interval of convergence* is `(-∞, ∞)` with radius of convergence, `R = ∞`. In some cases, the power series converges for all `x` that belong to some finite interval, called the interval of convergence, like `x ∈ [-1, 1)`, with `R=1`.

Typically, we'll first discover what the interval of convergence is, as an open interval `(-R, R)`, and then we'll refine this interval by figuring out whether each endpoint is included or not (by evaluating the function at each endpoint).

## Convergence of a Power Series

Consider the power series `∑{n=0..∞} cₙ(x−a)ⁿ`. 
The series satisfies exactly one of the following properties:
1. The series converges at `x=a` and diverges for all `x≠a`. 
   It converges at exactly 1 point, `a`, and IOC is `x ∈ [a, a]` or `x ∈ {a}`.
2. The series converges for all real numbers `x`, so IOC is `x ∈ (-∞, ∞)`
3. There is a real `R > 0` such that
   the series converges if `|x−a| < R`, which is equaivalent 
   to `-R < x-a < R` or `a-R < x < a+R`, so IOC is `x ∈ (a-R, a+R)`.
   If `|x−a| > R`, the series diverges.
   At the values `x` where `|x−a| = R`, i.e. at the endpoints, 
   the series may converge or diverge, so each endpoint must be checked.




```js
case 1: convergence at a single point
                     ↓
                     a
←--------------------|--------------------→
     diverges        |       diverges
                     ↑
               the center of
                the series

C = a
I = [a, a] = {a}
R = 0



case 2: convergence over an interval

          a-R        a        a+R
←----------|---------|---------|----------→
                     └────┬────┘
                          R
                       radius
                  of convergence

C = a
I = (a-R, a+R)
R = R



case 3: convergence over the entire set ℝ
                     a
←--------------------|--------------------→

C = a
I = (-∞, ∞)
R = ∞
```


## Checking convergence

To check convergence we use the *ratio test*
- g(x) = Σ{n=0..∞} xⁿ/n3ⁿ
- let `aₙ = xⁿ/n3ⁿ`
- if the limit L < 1 then the series converges
- if the limit L > 1 then the series diverges

```js
L = lim{n→∞} |aₙ﹢₁| / |aₙ|

              |aₙ﹢₁|
L = lim{n→∞} -------
               |aₙ|


                 |x|ⁿᐩ¹
             -------------
             (n + 1) ⋅ 3ⁿᐩ¹
L = lim{n→∞} -------------
                 |x|ⁿ
             -------------
                n ⋅ 3ⁿ


                |x|ⁿᐩ¹ ⋅ n ⋅ 3ⁿ
L = lim{n→∞} --------------------
             |x|ⁿ ⋅ (n + 1) ⋅ 3ⁿᐩ¹


                |x|n
L = lim{n→∞} ----------
              3(n + 1)


              |x|     n
L = lim{n→∞} ----- -------
               3    n + 1

     |x|     ∞
L = ----- -------
      3    ∞ + 1

     |x|   ∞
L = ----- ---
      3    ∞

     |x|
L = ----- 1
      3

L = |x| / 3
```

- if limit `L < 1` then the series g(x) converges
  - L = |x|/3
  - |x|/3 < 1
  - |x| < 3
  - so the series `g(x)` converges if `|x| < 3`
  - which is when `-3 < x < 3`

- if limit `L > 1` then the series g(x) diverges
  - L = |x|/3
  - |x|/3 > 1
  - |x| > 3
  - so the series `g(x)` diverges if `|x| > 3`
  - which is when `-3 > x > 3`, i.e. `-3 > x` and `x > 3`

We still need to see what happens at -3 and 3
- g(x) = Σ{n=0..∞}    xⁿ/n3ⁿ
- g(3) = Σ{n=1..∞}    3ⁿ/n3ⁿ = Σ{n=1..∞}   1/n (divergent p-series)
- g(-3)= Σ{n=1..∞} (-3)ⁿ/n3ⁿ = Σ{n=1..∞} -1ⁿ/n (convergent by alternating test)


```
        cond converges                       diverges
diverges       │            converges            │      diverges
←──────────────┼────────────────┬────────────────┼──────────────→
              -3                0                3
```

- `x < -3`      diverges
- `x = -3`      conditionally converges
- `-3 < x < 3`  absolutelly converges
- `3 <= x`      diverges

So the domain of g(x) is `dom(g) = [-3, 3)`.
