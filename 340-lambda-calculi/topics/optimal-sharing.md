# Optimal sharing and optimal beta reduction

`The optimal implementation of functional programming languages`
Andrea Asperti, Stefano Guerrini, 1999
Cambridge University Press, ISBN: 9780521621120 

* This book is about optimal sharing in functional programming languages.
* Blog on this subject: https://queuea9.wordpress.com/

The formal notion of sharing we shall deal with was formalized in the
seventies by Levy in terms of \families" of redexes with a same origin|
more technically, in terms of sets of redexes that are residuals of a unique
(virtual) redex. The goal of his foundational research was to characterize
formally what an optimal ly ecient reduction strategy for the -calculus
would look like (even if the technology for its implementation was at the
time lacking). Levy's dual goals were correctness, so that such a reduction strategy does not diverge when another could produce a normal
form, and optimality, so that redexes are not duplicated by a reduction,
causing a redundancy in later calculation [Lev78, Lev80]. The relevant
functional programming analogies are that call-by-name evaluation is a
correct but not optimal strategy, while call-by-value evaluation is a (very
rough) approximation of an incorrect but \optimal" strategy.
Levy clearly evinced that no sharing based implementation of -calculus
could reduce in a single step two redexes belonging to distinct families.
So, according to his denition, a reduction technique is optimal when (i)
a whole family of redexes is contracted in a single computational step
and (ii) no unneeded work is ever done (i.e., the reduction does never
contract a redex that would be erased by a dierent reduction strategy).
Such optimal and correct implementations were known for recursion
schemas [Vui74], but not for ones where higher-order functions could
be passed as rst-class values. Actually, all the naive algorithms suggested by Levy's theory looked quite articial and required an unfeasible
overhead to decide whether two redexes belong to a same family.
Recent research by Lamping has shown that there indeed exist -
calculus evaluators satisfying Levy's specication [Lam89, Lam90]. The
