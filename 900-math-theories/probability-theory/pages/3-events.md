# Events

- event
- outcome
- sample
- result
- elementary event
- atomic event
- sample point
- complex event
- sample
- population space
- sample space
- experiment
- random process


An **elementary event** (**atomic event**, **sample point**) is an event which contains only a single **outcome** in a sample space, as opposed to a **complex event** that is some kind of a compound outcome.

An elementary event (atomic event, sample point) is an event which contains only a single outcome in the sample space. For example, getting `2♡` when picking a card is an elementary event, while getting a face card (J, Q or K) is not.

A **sample space** is the set of all possibile outcomes of an **experiment** or **random process**. A sample space, denoted `Ω`, is a set of all possible outcomes of a random process. An **event space**, `F`, is a set of events, where an event is a subset of outcomes of a sample space. A **probability function**, `P`, assigns to each event in the event space a probability as a number between 0 and 1 (inclusive).

For many applications and use cases (like calculating the probability of different outcomes in games), sample space is indeed the set of all possibile outcomes; being finite and relatively small is advantageous in obtaining the precise results.

For example, with a die, the sample space is the set of all possible outcomes, `Ω = {1,2,3,4,5,6}`. An elementary event is rolling a 5, `{5} ⊆ Ω`, while a complex event would be rolling either 2 or 6, `{2,6} ⊆ Ω`.

An **event** is a subset of the sample space - it is a possible outcome to which a probability number can be assigned.

An event is often a single element (elementary event) of a sample space, like `2 ∈ {1..6}` (occurring with 1⁄6 probability), but in general, it is better to consider it a subset of the sample space to account for joint events, like rolling either a 2 or 4 on a die, `{2,4} ⊆ {1..6}` (occurring with 1⁄3 probability).

When a colection is finite and small, it is easily to manage it, but this is not always the case. Some collections are just too large to consider all their elements (e.g. various demographic studies), in which case a sample space is a finite, relatively small set of elements taken from the entire **population space**. Elements of such a sample set are called samples - a **sample** is a part of a population which is actually observed or measured. A sample space is then any subset of the population space, selected arbitrarily, under the assumption that it will be representative enough of the entire population. The procedure of picking samples from the population space is called **sampling**.

- a sample is an element of a sample space
- a sample space `Ω` is a subset of a population space
- a sample space is the set of all outcomes of an experiment or random process
- sample space and population space sometimes coincide for finite smaller sets
- sampling is the act of picking elements from a population space
- an event is a possible outcome with a probability
- an elementary event is an element of a sample space, 2 ∈ {1..6}
- an complex event is a subset of a sample space, {1,6} ⊆ {1..6}


Some applications of probability involve performing experiments to collect measurements; an **experiment** is a procedure which can be infinitely repeated and which has a well-defined set of outcomes.

A **data set** (dataset) is a sample and the associated data points. A **data point** is a typed measurement the type of which may be a Boolean value, real number, vector (data vector), etc.


Applications of probability
- outcomes of (casino) games
- outcomes of stochastic processes (die roll, coin toss)
- outcomes of a random process
- surveys (demographics)
- results of an experiment

## Types of events

- mutually exclusive events cannot occur at the same time
