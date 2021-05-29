# Reduction strategy

https://en.wikipedia.org/wiki/Reduction_strategy_(lambda_calculus)

In LC, a *reduction strategy* prescribes the way a lambda expression is reduced to a simple expression by successive reduction steps. It is similar to but subtly different from the notion of *evaluation strategy* in TPL.

Roughly, a reduction strategy is a function that maps a lambda calculus term with reducible expressions to one particular reducible expression, the one to be reduced next.

Logicians have studied the properties of this system for decades, and the superficial similarity between the description of evaluation strategies and reduction strategies originally misled PL researchers to speculate that the two were identical; these are, however, different concepts.
