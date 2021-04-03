# Binary combinatory logic

https://en.wikipedia.org/wiki/Binary_combinatory_logic

**Binary combinatory logic (BCL)** is a formulation of combinatory logic using only the symbols 0 and 1.

BCL has applications in the theory of program-size complexity (Kolmogorov complexity).


<term> ::= 00 | 01 | 1 <term> <term>


The denotational semantics of BCL may be specified as follows:
* [ 00 ] == K
* [ 01 ] == S
* [ 1 <term1> <term2> ] == ( [<term1>] [<term2>] )

where "[...]" abbreviates "the meaning of ...". Here K and S are the KS-basis combinators, and ( ) is the application operation, of combinatory logic. (The prefix 1 corresponds to a left parenthesis, right parentheses being unnecessary for disambiguation.)
