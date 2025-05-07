# Probability space

https://en.wikipedia.org/wiki/Probability_space

In probability theory, a probability space, or a probability triple, `(Ω,F,P)` is a mathematical construct that provides a formal model of a random process or "experiment".

For example, one can define a probability space which models the throwing of a die.

A probability space consists of 3 elements:
- sample space, `Ω`, which is the set of all possible outcomes of a random process under consideration.
- event space, `F`, which is a set of events, where an event is a subset of outcomes in the sample space.
- probability function, `P`, which assigns, to each event in the event space, a probability, which is a number between 0 and 1 (inclusive).

In order to provide a model of probability, these elements must satisfy probability axioms.

In the example of a throw of a standard die:
- The *sample space* `Ω` is the set {1,2,3,4,5,6} where each element in the set is a label representing the outcome of the die landing on that label; e.g. "1" represents the outcome that the die lands on 1.
- The *event space* `F` may be the set of all subsets of the sample space, which would then contain simple (single) events such as {5} ("die lands on 5"), as well as complex events such as {2,4,6} ("die lands on even number"). 
- The *probability function* `P` maps each event to the number of outcomes in that event divided by 6, so, e.g. {5} would be mapped to 1/6, and {2,4,6} would be mapped to 3/6 = 1/2.

When an experiment is conducted, it results in exactly one outcome `ω` from the sample space `Ω`. All the events in the event space `F` that contain the selected outcome `ω` are said to "have occurred". The probability function `P` must be so defined that if the experiment were repeated arbitrarily many times, the number of occurrences of each event as a fraction of the total number of experiments, will most likely tend towards the probability assigned to that event.

The Soviet mathematician Andrey Kolmogorov introduced the notion of a probability space and the axioms of probability in the 1930s. In modern probability theory, there are alternative approaches for axiomatization, such as the *algebra of random variables*.
