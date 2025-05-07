# Pairwise independence

https://en.wikipedia.org/wiki/Pairwise_independence

A pairwise independent collection of random variables is a set of random variables any two of which are independent.

Any collection of mutually independent random variables is pairwise independent, but some pairwise independent collections are not mutually independent.

Pairwise independent random variables with finite variance are uncorrelated.

A pair of random variables X and Y are independent iff the random vector (X, Y) with joint *cumulative distribution function (CDF)* `FX,Y(x,y)` satisfies

    Fx,ʏ(x,y) = Fx(x) Fʏ(y)

or equivalently, their joint density `fx,ʏ(x,y)` satisfies

    fx,ʏ(x,y) = fx(x) fʏ(y)

That is, the *joint distribution* is equal to the product of the *marginal distributions*.

Unless it is not clear in context, in practice the modifier "mutual" is usually dropped so that *independence* means *mutual independence*. A statement such as "X, Y, Z are independent random variables" means that X, Y, Z are mutually independent.

## Example

*Pairwise independence does not imply mutual independence*, as shown by the following example attributed to S. Bernstein.

Suppose X and Y are two independent tosses of a fair coin, where we designate 1 for heads and 0 for tails. Let the third random variable `Z` be equal to 1 if exactly one of those coin tosses resulted in heads, and 0 otherwise, and therefore `Z = X ⊕ Y`. Then, jointly, the triple `(X, Y, Z)` has the following probability distribution:

```
            ⎛ (0, 0, 0) with probability 1/4
(X, Y, Z) = ⎨ (0, 1, 1) with probability 1/4
            ⎢ (1, 0, 1) with probability 1/4
            ⎝ (1, 1, 0) with probability 1/4
```

Here the *marginal probability distributions* are identical:

    fx(0) = fʏ(0) = fᴢ(0) = 1/2
    and
    fx(1) = fʏ(1) = fᴢ(1) = 1/2

The *bivariate distributions* also agree:

    fx,ʏ = fx,ᴢ = fʏ,ᴢ
    where
    fx,ʏ(0,0) = fx,ʏ(0,1) = fx,ʏ(1,0) = fx,ʏ(1,1) = 1/4

Since each of the pairwise joint distributions equals the product of their respective marginal distributions, the variables are pairwise independent:
- X and Y are independent, and
- X and Z are independent, and
- Y and Z are independent

However, X, Y, and Z are not mutually independent, since

    fx,ʏ,ᴢ(x,y,z) ≠ fx(x) fʏ(y) fᴢ(z)

the left side equalling for example 1/4 for (x, y, z) = (0, 0, 0) while the right side equals 1/8 for (x, y, z) = (0, 0, 0). In fact, any of {X,Y,Z} is completely determined by the other two (any of X, Y, Z is the sum (modulo 2) of the others). That is as far from independence as random variables can get.
