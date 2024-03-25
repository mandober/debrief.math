# Church-Turing thesis

https://en.wikipedia.org/wiki/Church-Turing_thesis

In computability theory, the Church-Turing thesis is a thesis about the nature of computable functions.

(aka computability thesis, the Turing-Church thesis, the Church-Turing conjecture, Church's thesis, Church's conjecture, and Turing's thesis)

**The Church-Turing thesis** states that a function on the natural numbers can be calculated by an effective method iff it is computable by a Turing machine.

The thesis is named after American mathematician Alonzo Church and the British mathematician Alan Turing.

Before the precise definition of *computable function*, mathematicians often used the informal term *effectively calculable* to describe functions that are computable by paper-and-pencil methods.

In the 1930s, several independent attempts were made to formalize the notion of computability:

- In 1933, Kurt Gödel, with Jacques Herbrand, formalized the definition of the class of *general recursive functions*: the smallest class of functions that is closed under composition, recursion, and minimization, and includes 0, succ, and projections.

- In 1936, Alonzo Church created a method for defining functions called the λ-calculus. Within λ-calculus, he defined an encoding of the natural numbers called the *Church numerals*. A function on the natural numbers is called *λ-computable* if the corresponding function on the Church numerals can be represented by a term of the λ-calculus.

- Also in 1936, before learning of Church's work, Alan Turing created a theoretical model for machines, now called *Turing machines*, that could carry out calculations from inputs by manipulating symbols on a tape. Given a suitable encoding of the natural numbers as sequences of symbols, a function on the natural numbers is called Turing computable if some Turing machine computes the corresponding function on encoded natural numbers.

>Church, Kleene, and Turing proved that these 3 formally defined classes of computable functions coincide: a function is λ-computable iff it is Turing computable, and iff it is general recursive.

This has led mathematicians and computer scientists to believe that the concept of computability is accurately characterized by these 3 equivalent processes. Other formal attempts to characterize computability have subsequently strengthened this belief.

On the other hand, the Church-Turing thesis states that these 3 formally defined classes of computable functions coincide with the informal notion of an *effectively calculable function*.

Although the thesis has near-universal acceptance, *it cannot be formally proven*, as the concept of effective calculability is only informally defined.

Since its inception, variations on the original thesis have arisen, including statements about what can physically be realized by a computer in our universe, physical Church-Turing thesis, and what can be efficiently computed, Church-Turing thesis in complexity theory. These variations arise from later work in complexity theory.
