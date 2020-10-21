# Mathematical induction


## Principle of Induction

Let $$P(n)$$ be a statement about the positive integer $$n$$ (here, $$P$$ is a predicate).     
In order to show that $$P(n)$$ is true for all positive integers (i.e. for $$n$$), it is sufficient to show:
1. $$P(1)$$
2. $$P(n) \to P(n+1)$$

meaning, show that $$P(1)$$ holds (show that the predicate holds for integer 1); and that, if $$P(n)$$ holds for an integer $$n$$, then show it also holds for the successor of that integer.    

The latter expression, $$\alpha \to \omega$$, is the "if...then" implication: if $$\alpha$$ (holds), then $$\omega$$ (holds).


### Example

Prove that the sum of odd integers yields squares.

Conjecture: $$1+3+5+\dots + (2n−1) = n^2$$

Proof by induction:
1. $$P(1)$$ holds because $$1 = 1^2$$
2. We assume $$P(n)$$ holds, then we need to show $$P(n+1)$$ holds as well

The idea is to start with the formula $$P(n)$$,     
then to add the next odd number, $$2(n+1)−1$$ to both sides,    
then to try to transform the equation into $$P(n+1)$$

