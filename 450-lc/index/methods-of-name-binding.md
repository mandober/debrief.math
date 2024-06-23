# Methods of name binding

## Name binding

In lambda calculus, in a wider sense, **name binding** is an umbrella term for the various approaches and technics aimed to handle *substitution* correctly while maintaining readability, and, preferably, ease of implementation as well.

Name binding is tied to the chosen *representation* of lambda terms, on the one hand, and the process of performing *substitution* correctly, on the other.

>It is very hard to come up with an implementation of lambda calculus where the representation of lambda terms (especially names/variables) agrees and makes substitution easy, while also keeps readability high.

## Traditional approach

Traditional approach
- technic: traditional approach
- type: name-binding technique
- representation: variable names as strings
- substitution: direct, straightforward, (naive)
- pros: readability
- cons: high risk of accidental name captures, difficult implementation

The *motivation* for the development of alternative name-binding technics stems from the difficulty to implement substitution easily and correctly in the straightforward case - the case when variable names are represented with strings (which is the most straightforward manner of implementing lambda caluclus in a programming language). This technic - let's call it the *traditional method* - uses *direct substitution*, although, due to the high risk of accidental name captures, it is also called *naive substitution*. With much effort, it is, however, possible to implement the subsection correctly, and the award for this is the most readable presentation that closely follows mathematical presentation of lambda calculus.

>With variable represented with strings, readability is rated high, but the probability that the substitution is correctly implementated is infamously low.

Actually, the name *naive substitution* is usually reserved for blindly replacing lambda terms, without considering potential name captures. It is almost a guarantee that some free variable will get captured, which changes the meaning of an expression.

## Alternative approaches

Finding the optimal compromise between the ease of implementation, readability and correctness is still an active area of research; still far from being a "solved problem" of computer science. The large number of technics that deal with this problem testifies to this. This subsection attempts to index and describe them.

## Index of name binding methods
- traditional approach
- de Bruijn indices
- locally namelesss
- first-order abstract syntax (FOAS)
- higher-order abstract syntax (HOAS)
- parameterized higher-order abstract syntax (PHOAS)
- nominal logic
- director strings
- de Bruijn notation


## De Bruijn indices


## FOAS

First-order abstract syntax (FOAS) is not just about name binding, but bout representation of lambda terms in the chosen language of implementation. 
