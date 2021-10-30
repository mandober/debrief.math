# Hylomorphism
https://en.wikipedia.org/wiki/Hylomorphism_(computer_science)

A *hylomorphism* is the composition of an anamorphism followed by a catamorphism. In FP, it is used for deforestation.

A hylomorphism is a recursive function, corresponding to the composition of an *anamorphism* (which first builds a set of results; also known as unfolding) followed by a *catamorphism* (which then folds these results into a final return value).

Fusion of these two recursive computations into a single recursive pattern then avoids building the intermediate data structure, which is an example of *deforestation*, a program optimization strategy.

A related type of function is a *metamorphism*, which is a catamorphism followed by an anamorphism.
