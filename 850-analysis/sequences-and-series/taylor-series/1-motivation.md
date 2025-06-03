# Motivation

The primary motivation of using Taylor polynomials and Taylor series is to express a non-polynomial function that is difficult to work with, difficult to compute with, and difficult to manipulate. Expressing such functions as Taylor polynomials, we can approximate them very accurately within a certain interval.

Consider, for example, functions like `sin`, `cos`, `exp`, etc. Evaluating such functions at any argument is not a straightforward computation. How would we even implement them? How do the hand calculators do it? Usually, a complicated operation can be broken down into simpler operations, the way exponentiation can be expressed as iterated multiplication, and multiplication as addition. But how can we even evaluate something like `sin(π/3)` or `sin(1.047)`?
