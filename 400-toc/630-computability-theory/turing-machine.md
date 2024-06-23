# Turing machine

- symbols (including blank)
- list of instructions
- list of actions
- set of states


A Turing machine is a specific kind of abstract machine intended for carrying out computations, especially computations on positive integers represented in monadic notation. We suppose that the computation takes place on a (semi-) infinite tape, divided into cells. Each cell is either blank (S₀, B, 0), or has a stroke printed on it (S₁, 1). With at most a finite number of exceptions, all cells are blank, both initially and at each subsequent stage of the computation.

At each stage of the computation, the machine is using the read head ("the eye") to scan one cell somewhere along the tape. The machine is capable of erasing a stroke in the scanned square if there is one there, or printing a stroke if the scanned square is blank. The machine can also move one cell to the left or right.

The machine is designed in such a way that at each stage of the computation it is in one of a finite number of internal states, `q₁, …, qₘ`.

The machine has a list of `m` instructions and is in state `qᵢ` when carrying out instruction number `i`.

Each instruction has conditional form: the action to be done depends on the current symbol (whether it is blank or a stroke). There are 5 actions:
1. Erase: overwrite current symbol with S₀ (blank the cell)
2. Print: overwrite current symbol with S₁ (print the stroke)
3. Move (one cell) right
4. Move (one cell) left
5. Halt

So depending on the current symbol and the instruction being carried out (i.e. what state the machine is in), the machine will perform one of these 5 overt actions. Unless the computation has halted, the machine will perform also a covert act, namely, it will determine what the next instruction (next state) should be. Thus, the current state and the current symbol determine what overt action is to be performed, as well as the next state.

>The current action and the next state depend on the current state and the current symbol.

The overall program of instructions can be specified in various ways, for example, by a machine table, or by a flow chart (also called a flow graph), or by a set of quadruples.

Unless otherwise stated, it is to be understood that a machine starts in its lowest-numbered state.

We can indicate how such a Turing machine operates by writing down its sequence of *configurations*. A configuration may be represented by writing the state number as a subscript on the symbol scanned: `1₂100111` means the machine is scanning the leftmost cell (that has a stroke in it) and it is in state 2. Adding any number of zeros to each end does not change the configuration.


A numerical function of k arguments is Turing computable if there is some Turing machine that computes it in the sense we have just been specifying. Now computation in the Turing-machine sense is certainly one kind of computation in the intuitive sense, so all Turing-computable functions are effectively computable. Turing's thesis is that, conversely, any effectively computable function is Turing computable, so that computation in the precise technical sense we have been developing coincides with effective computability in the intuitive sense.

It is easy to imagine liberalizations of the notion of the Turing machine. One could allow machines using more symbols than just the blank and the stroke. One could allow machines operating on a rectangular grid, able to move up or down a square as well as left or right. Turing's thesis implies that no liberalization of the notion of Turing machine will enlarge the class of functions computable, because all functions that are effectively computable in any way at all are already computable by a Turing machine of the restricted kind we have been considering. Turing's thesis is thus a bold claim.

## Uncomputability

In the preceding chapter we introduced the notion of Turing computability. In the present short chapter we give examples of Turing-uncomputable functions:
- the halting problem (the halting function)
- the productivity function

If Turing's thesis is correct, these are actually examples of effectively uncomputable functions.

### The Halting Problem

There are uncountably many functions on naturals, `ℕ → ℕ` since Nᴺ is uncountable set - already `2ᴺ` is uncountable. On the other hand, the set of Turing machines, and, therefore, Turing-computable functions, is countable since the representation of a Turing machine in the form of quadruples amounts to a representation using a finite string of symbols from a finite alphabet (and a set of such strings is countable). These considerations indicate that there must exist functions that are not Turing computable, but they don't produce examples.

### The productivity function

## Abacus computability
