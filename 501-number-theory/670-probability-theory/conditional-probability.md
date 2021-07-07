# Conditional Probability

- Conditional probability is the probability of some event A, assuming event B
- denoted by $$P(A|B)$$, which is read as "probability of A, given B"


The probability of getting a Jack given a face card (J, Q or K), is an example of event with conditional probability - its probability depends on the probability of picking a face card out of the deck in the first place.

Conditional probability is calculated using Bayes theorem:

$$\displaystyle P(A|B) = \frac{P(B|A)\ P(A)}{P(B)}$$

The probability of A, given B, is 
the ratio of the probabilities of A and B, 
multiplied by the probability of B, given A.

$$\displaystyle P(A|B) = \frac{P(A)}{P(B)}\ P(B|A)$$


### Example 1
The probability of picking a face card (J,Q,K) out of the deck:
- 12 faces in 52 cards: P(f) = 12/52 = 0.23

### Example 2
The probability of getting a Jack, given a face card:
- we need P(J|F), which depends on 
- the probability of picking a face card: P(F) = 12/52
- the probability of picking a Jack: P(J) = 4/52
- the probability of getting a face card, given Jack, P(F|J) = 1
- The probability of getting a Jack, given a face card: 1/3

$$\displaystyle
P(J|F) = \frac{P(J)}{P(F)} P(F|J) = 
\frac{4}{52} \div \frac{12}{52} = 
\frac{4}{52} \times \frac{52}{12} = 
\frac{4}{12} = \frac{1}{3}
$$

### Example 3
There are 5 marbles in a bag: 2 blue, 3 red. 
- Prob of drawing a red one? 3/5
- Prob of drawing a blue one? 2/5
- Without returning the drawn blue marble, the prob of drawing another blue one? 1/4
- Prob of drawing (w/o returning) 2 blue marbles, as first and second draw? `AND` requires multiplication: $$\frac{2}{5} \times \frac{1}{4} = 1/10$$

### Example 4
Prob of drawing:
- blue, blue: 1/10
- blue, red : 3/10
- red, blue : 3/10
- red, red  : 3/10
* total: 1 = 10/10 


### Example 4
Prob that the second drawn marble is red (we ignore the first marble drawn)?
We need to examine paths where the second drawn marble is red, `(_, red)`. This implies aggregating the prob of these paths, i.e. using `OR`, so we add the probabilities:
- (blue, red) = 3/10
- (red, red)  = 3/10
- so, the prob is 3/10 + 3/10 = 6/10 = 3/5
