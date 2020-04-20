# Axiom of choice

The most controversial axiom of all time, 2008
https://infinityplusonemath.wordpress.com/2018/07/17/the-most-controversial-axiom-of-all-time/


- *Axiom of choice*: The product of any set of non-empty sets is non-empty
- *Axiom of dependent choice*: A weak form of the axiom of choice
- *Axiom of global choice*: There is a global choice function
- *Axiom of finite choice*: Any product of non-empty finite sets is non-empty
- *Axiom of countable choice*: The product of a countable number of non-empty sets is non-empty


## Hard choice

The axiom of choice says that, for any collection of nonempty sets, it is possible to select exactly one object from each set - even if the collection is infinite.

That last part is a source of controversy - can we really make a choice, by selecting one thing from each collection, given an infinite number of collections?

For example, can we really pick a random irrational number [^1] ? In order to pick one, we can just select one digit at random out of the set of decimal digits - for *every* decimal place - and there are infinitely many places.

So then, can we really do it since we can never actually finish this process? It's easy to say we *should* make infinitely many choices, but we can't *actually do it*. If we can't state the number we picked, did we really choose one at all?

The axiom of choice says that, given an infinite collection of nonempty sets, we can choose one thing from each set. It doesn't say how to do it, it just says it can be done, somehow.



## Axiom of choice

**The axiom of choice (AC)** states that for every indexed family $$(S_{i})_{i\in I}$$ of nonempty sets there exists an indexed family $$(x_{i})_{i\in I}$$ of elements such that $$x_{i}\in S_{i}$$ for every $$i\in I$$.

The axiom of choice is an axiom of set theory equivalent to the statement that the Cartesian product of a collection of nonempty sets is nonempty.

The axiom of choice was formulated in 1904 by Ernst Zermelo in order to formalize his proof of the well-ordering theorem.



# Axiom of well-ordering

It was added to turn ZF into ZFC:

**Well-ordering theorem**

_For any set X, there is a binary relation R which well-orders X. This means R is a linear order on X such that every nonempty subset of X has a member which is minimal under R_.

$$\forall X\exists R(R { \mbox{ well-orders } } X)$$

Given axioms 1–8, there are many statements provably equivalent to axiom 9, the best known of which is the axiom of choice.


## Axiom of Choice (AC)

_Let X be a set whose members are all non-empty. Then there exists a function f from X to the union of the members of X, called a "choice function", such that for all Y ∈ X one has f(Y) ∈ Y_.

Since the existence of a choice function when X is a finite set is easily proved from axioms 1–8, AC only matters for certain infinite sets. AC is characterized as nonconstructive because it asserts the existence of a choice set but says nothing about how the choice set is to be "constructed". Much research has sought to characterize the definability (or lack thereof) of certain sets whose existence AC asserts.


[^1]: Excluding those constructed using a named one like π et al. An irrational number has infinitely many digits after the decimal point that neither repeat nor end - they don't follow a distribution model, unlike e.g. $$1/3 = 0.3333.... = 0.\dot{3}$$ or $$1/7 = 0.142857142857... = 0.\overline{142857}$$
