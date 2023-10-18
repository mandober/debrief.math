# Hoare logic

https://en.wikipedia.org/wiki/Hoare_logic

Hoare logic, also known as *Floyd-Hoare logic* or *Hoare rules*, was proposed in 1969 by the British computer scientist and logician Tony Hoare, and subsequently refined by Hoare and other researchers.

**Hoare logic** is a formal system with a set of logical rules for reasoning rigorously about the correctness of computer programs.

The central feature of Hoare logic is the **Hoare triple**. A triple describes how the execution of a piece of code changes the state of the computation.

A Hoare triple is of the form `{P}C{Q}`, where P and Q are assertions and C is a command. P is a **precondition** and Q **postcondition**: when the precondition is met, executing the command establishes the postcondition. Assertions are formulae in predicate logic.

Hoare logic provides axioms and inference rules for all the constructs of a simple imperative programming language. The rules for other language constructs have also been developed, including the rules for concurrency, procedures, pointers, jumps.

Using standard Hoare logic, only *partial correctness* can be proven, while termination needs to be proved separately. Thus the intuitive reading of a Hoare triple is: Whenever P holds of the state before the execution of C, then Q will hold afterwards, or C does not terminate. In the latter case, there is no "after", so Q can be any statement at all. Indeed, one can choose Q to be false to express that C does not terminate.

*Total correctness* can also be proven with an extended version of `the While rule`.

In his 1969 paper, Hoare used a narrower notion of termination which also entailed absence of any run-time errors: "Failure to terminate may be due to an infinite loop; or it may be due to violation of an implementation-defined limit, for example, the range of numeric operands, the size of storage, or an operating system time limit.
