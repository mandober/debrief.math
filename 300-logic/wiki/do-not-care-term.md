# Do not care term

https://en.wikipedia.org/wiki/Do_not_care_term

In digital logic, a *don't-care term* (abbreviated *DC* and historically also known as redundancies, irrelevancies, optional entries, invalid combinations, vacuous combinations, forbidden combinations, unused states or logical remainders) for a function is an input-sequence (a series of bits) for which the function output does not matter.

An input that is known to never occur is a *can't-happen term*.

Both of these types of conditions are treated the same way in logic design and may be referred to collectively as *don't-care conditions* for brevity.

The designer of a logic circuit to implement the function need not care about such inputs, but can choose the circuit's output arbitrarily, usually such that the simplest circuit results (minimization).

Don't-care terms are important to consider in minimizing logic circuit design, including graphical methods like *Karnaugh-Veitch maps* and algebraic methods such as the *Quine-McCluskey algorithm*.

In 1958, Seymour Ginsburg proved that minimization of states of a finite-state machine with don't-care conditions does not necessarily yield a minimization of logic elements. Direct minimization of logic elements in such circuits was computationally impractical (for large systems) with the computing power available to Ginsburg in 1958.
