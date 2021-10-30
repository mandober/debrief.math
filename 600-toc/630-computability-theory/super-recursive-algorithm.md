# Super-recursive algorithm

https://en.wikipedia.org/wiki/Super-recursive_algorithm

In computability theory, super-recursive algorithms are a generalization of ordinary algorithms that are more powerful, that is, compute more than Turing machines.

The term was introduced by Mark Burgin, whose book "Super-recursive algorithms" develops their theory and presents several mathematical models.

Turing machines and other mathematical models of conventional algorithms allow researchers to find properties of recursive algorithms and their computations. In a similar way, mathematical models of super-recursive algorithms, such as *inductive Turing machines*, allow researchers to find properties of super-recursive algorithms and their computations.

Burgin, as well as other researchers (including Selim Akl, Eugene Eberbach, Peter Kugel, Jan van Leeuwen, Hava Siegelmann, Peter Wegner, and Jiří Wiedermann) who studied different kinds of super-recursive algorithms and contributed to the theory of super-recursive algorithms, have argued that super-recursive algorithms can be used to disprove the `Church-Turing thesis`, but this point of view has been criticized within the mathematical community and is not widely accepted.

- Definition
- Examples
- Inductive Turing machines
- Schmidhuber's generalized Turing machines
- Relation to the Church-Turing thesis

## Definition

Burgin uses the term *recursive algorithms* for algorithms that can be implemented on Turing machines, where he uses the term "algorithm" in a more general sense. Then, a *super-recursive class of algorithms* is "a class of algorithms in which it is possible to compute functions not computable by any Turing machine" (Burgin, 2005).

Super-recursive algorithms are closely related to *hypercomputation* in a way similar to the relationship between ordinary computation and ordinary algorithms.

> Computation is a process, while an algorithm is a finite constructive description of such a process.

Thus a super-recursive algorithm defines a "computational process (including processes of input and output) that cannot be realized by recursive algorithms." (Burgin, 2005).

A more restricted definition demands that hypercomputation solves a *supertask* (Copeland 2002; Hagar and Korolev 2007).

Super-recursive algorithms are also related to *algorithmic schemes*, which are more general than super-recursive algorithms. Burgin argues that it is necessary to make a clear distinction between super-recursive algorithms and those algorithmic schemes that are not algorithms. Under this distinction, some types of hypercomputation are obtained by super-recursive algorithms, e.g., inductive Turing machines, while other types of hypercomputation are directed by algorithmic schemas, e.g., *infinite time Turing machines*. This explains how works on super-recursive algorithms are related to hypercomputation and vice versa. According to this argument, super-recursive algorithms are just one way of defining a hypercomputational process.
