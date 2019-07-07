# Permutations

__Permutations__ are used when selecting objects with respect to the order.

If we have a set of $$n$$ objects and we want to choose $$r$$ objects from the set in order, we write $$P(n,r)$$ or $$_nP_r$$.

To calculate $$P(n,r)$$, we find the factorial $$n!$$ i.e. the number of ways to line up all $$n$$ objects. Then we divide it by $$(n-r)!$$ to cancel out the $$(n−r)$$ items that we do not wish to line up.

Given $$n$$ distinct objects, the number of ways to select $$r$$ objects from the set in order is:

$$P(n,r) = \frac{n!}{(n-r)!}$$

Example: n=6, r=3

$$
\frac{n!}{(n-r)!} = \frac{6!}{3!} = \frac{6·5·4· \not 3!}{\not 3!} = 6·5·4 = 120
$$


*Results of permutations* are **sequences** (ordered lists).

*Results of combinations* are **sets**.


## Examples

### A horse race with 10 horses

Select 3 winners (in any order):

C(10,3) "10 choose 3":

```
n!/r!(n-r)!
10!/3!(10-3)!
= 10*9*8*7!/3!*7!
= 10*9*8/3!
= 720/6
= 120
```

i.e. there are 120 different 3-horse subsets that can be formed out of the 10-horse set. If you've placed 1 bet, then you've chosen 1 out of 120 distinct possibilities.

Select 3 winners in exact order is P(10,3):

```
n!/(n-r)!
10!/(10 - 7)!
= 10!/7!
= 10*9*8*7!/7!
= 10*9*8
= 720
```


### How many possible 5-card hands

The number of distinct 5-card subsets out of 52-card set.

```
C(52,5)
= 52!/5!*47!
= 52*51*50*49*48*47!     / 5!*47!
= 52*51*50*49*48         / 5!
= 52*51*50*49*(12*4)     / 120
= 52*51*(5*10)*49*(12*4) / 10*12
= 52*51*5*49*4
= 52*51*49*20
= 2,598,960
```


### How many distinct full-house hands

Full house is 3 of a kind + pair (3+2 or 2+3)

1. There's 13 strength levels: 2-10,J,Q,K,A    
- Choose denominaton: C(13,1) = 13
2. For each denomination choose 3 of a kind out of 4 of a kind
- 4-choose-3, C(4,3) = 4
* The number of ways tochoose 3 of a kind: 13*4=52
3. There's 12 strength levels remaining
- C(12,1) = 12
4. Choose a pair
- C(4,2) = 6
- remaining pairs: 12*6=72
* *Total number of distinct full-house hands*: 52*72 = 3744


### What is the probability of being delt a fullhouse
nuts (no need to discard and draw) considering the classic 5-card draw poker?

- number of full-house hands: 52*72 = 3744
- number of hands: 52-choose-5 = 2,598,960
- probability: 3,744/2,598,960 = `0.00144` i.e. `0.144%`
- which also means you get a full house straight up every 695 rounds (average)


**The law of large numbers**   
If an event has even a slim a chance of happening (aslong asit is not none), it will certainly happen given sufficently large time (years, units, etc.).
