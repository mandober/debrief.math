# Lambda calculus :: Pre-history :: Leibniz, Frege, Entscheidungsproblem

## Leibniz

**Leibniz** had envisioned creating a *universal language* capable of expressing all *logic problems*, and an associated *decision procedure* used to solve problems stated in the language. In Leibniz's vision, when people disagree about something, they could express the problem in question in the universal language of logic, and then perform the required calculations using the decision procedure that would always yield the correct result. Leibniz thought that this decision procedure would be mechanical in nature, so that anyone could calculate the answer. Leibniz used the inerjection "Calculemus!" ("Let us calculate!") as a callout to conflicting parties to stop arguing and instead proceed to resolve their issues this way.

This universal language of logic will later turn out to come in many flavors, of which the languages of propositional and predicate logic are fundamental.

## Frege

The creation of such a universal language has already started at the end of the XIX century by when Frege published his seminal work `Begriffsschrift` in 1879. There, Frege formulated the large part of what would later become the modern first-order logic (FOL). In fact, modern version of FOL has largely changed only the cumbersome 2D notation that Frege used, opting to express logic formulas with a more printer- and user-friendlier formatting. The modern version of FOL has build upon Frege's ideas, developing further the concepts that Frege founded, such as the introduction of quantifiers, as an example of one of the more important ones.

## Entscheidungsproblem

Thus, a universal language that Leibniz envisioned was realized in the form of first-order logic. However, the second part of Leibniz's ideal - finding a decision procedure capable of solving the problems expressed in the universal language - turned out to be a much harder task.

This task turned out to be so difficult that it had even been given a name - since at the time, it was the top problem tackled by the German mathematicians, the name given to it was in German, `Entscheidungsproblem`. It translates to a *decision problem*. Both of these terms address the possibility of existence of the decision procedure that could correctly resolve all logical (computational) problems (expressed in the universal language).

The problem of computability had spawned a whole new field of mathematical inquiry, called the *Theory of Computation* (TOC), one of which branches, *Computability Theory*, studies decision procedures.

Eventualy, the Entscheidungsproblem was resolved in the negative - no such decision procedure could exist.

To prove it, many new mathematical models of computation have been developed, of which the two of utmost importance were *Lambda Calculus* invented by Church, and *Turing Machine* invented by Turing.

Alan Turing had developed a model of computation, now called Turing Machine, he then used to formulate a version of the Entscheidungsproblem, called the Halting problem. The *Halting problem* asks whether a particular algorithm could exist: an algorithm that - given another program as input - could determine whether the program halts (possibly producing a results) or runs forever. Turing then proved the halting problem in the negative, i.e. that no such algorithm (program) could exist, via a proof by contradiction.

## Computability

In 1937, the **Entscheidungsproblem** was solved in the negative, independently by Alonzo Church in the April of 1936, and Alan Turing in the January of 1937.

Both Church and Turing accomplished this by each inventing a new model of computation while attempting to present an intuitive explanation of what "decidable", or equivalently, "computable" means.

It was Church that first came up with a solution to the Entscheidungsproblem in the April of 1936, which he published under the title `"An Unsolvable Problem of Elementary Number Theory"`.

Eigth months later, in the January of 1937, Turing published `"On Computable Numbers, with an Application to the Entscheidungsproblem"`, with his solution to the Entscheidungsproblem.


Church invented *lambda calculus*, a system intended to formalize the notion of mathematical functions, in which he defined the notion of computable functions.

Turing invented an abstract machine, later known as the *Turing machine*, and defined the notion of computable function within it.

In 1937, Turing, who graduated under Church, proved that these two models of computation are equivalent in the sense that they both define the same class of *computable functions*. This has became known as the Church-Turing thesis: every effectively calculable function is a computable function.

>**Church-Turing thesis**: every effectively calculable function is a computable function.

However, it remains a thesis because no proof could be constructed as it relied on the intuitive notion of computability. Namely, at the time, a computer was a person that performed calculations, and the concept of *effective computability* was described as successfully performing a task of calculation, by an average computer (person), in a finite number of steps, that only had to follow the steps of an algorithm, using just a pen and paper (inexhaustible amounts of paper, and pens). The concept of TM is similar to this: there is an infinite amount of tape and a finite set of instructions.
