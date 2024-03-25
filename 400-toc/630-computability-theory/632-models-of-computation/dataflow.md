

* Dataflow model of computation and dataflow execution, Luca Benini
https://www.di.univr.it/documenti/OccorrenzaIns/matdid/matdid389507.pdf

Philosophy of dataflow:
- drastically different way of looking at computation
- Von Neumann imperative languages: program counter is king
- dataflow languages: movement of data is the priority
- scheduling is the responsibility of the system and not the programmer

In the dataflow nodel of computation processes communicating through FIFO buffers.

Dataflow Semantics
- every process runs simultaneously
- processes can be described with imperative code
- e.g. events: compute … compute … receive … compute … transmit
- processes can only communicate through buffers

Dataflow Communication:
- communication only through buffers
- buffers usually treated as unbounded for flexibility
- sequence of tokens read guaranteed to be the same as the sequence of tokens written
- *destructive reads*: reading a value from a buffer removes the value
- *much more predictable than shared memory*

Applications of Dataflow:
- not a good fit for e.g. a word processor
- good for signal-processing applications
- good for anything that deals with a continuous stream of data
- becomes easy to parallelize
- buffers are typically used by signal-processing apps anyway

Dataflow models:
- Kahn Process Network


Kahn Process Networks:
- Proposed by Kahn in 1974 as a general-purpose scheme for parallel programming
- Laid the theoretical foundation for dataflow
- Unique attribute: *deterministic*
- Difficult to schedule
- Too flexible to make efficient, not flexible enough for a wide class of applications
- Never put to widespread use
- Key idea: *Reading an empty channel blocks until data is available*
- No other mechanism for sampling communication channel's contents
- Can't check to see whether buffer is empty
- Can't wait on multiple channels at once


A *Kahn process* is a C-like function (Kahn originally used Algol) that accepts FIFO channels as args. Kahn's proposed language was augmented with `send` (write to a channel) and `wait` (read from a channel) functions.

From Kahn's original 1974 paper adapted to C from Algol:

```c
process f(in int u, in int v, out int w) {
  int i;
  bool b = true;
  for (;;) {
    i = b ? wait(u) : wait(w);
    printf("%i\n", i);
    send(i, w);
    b = !b;
  }
}

    ┌─────┐
u ─→┤     │
    │  f  ├─→ w
v ─→┤     │
    └─────┘
```

The process function `f` alternates reading between the FIFOs `u` and `v`, writing the data to FIFO `w`, with all 3 FIFOs passed in as integer args. The FIFO to read from is determined by the Boolean flag - initially set to 'true' - so `f` reads from `u` first. The reading is done using the `wait` function which takes an arg (a FIFO to read from), returning the next token or blocking if the FIFO is empty. The `send` writes the data value, `i` to the specified FIFO, `w`. Finally, `f` toggles the Boolean flag.

```c
process g(in int u, out int v, out int w) {
  int i;
  bool b = true;
  for (;;) {
    i = wait(u);
    b ? send(i, v) : send(i, w);
    b = !b;
  }
}

    ┌─────┐
    │     ├─→ u
u ─→┤  g  │
    │     ├─→ w
    └─────┘
```

This process reads from the input FIFO `u` and alternates between writing the data to `v` and `w` output FIFOs.


* A Kahn System setup to print an alternating sequence of 0's and 1's:

```
Emits a 1 then copies input to output
       ┌─────┐
   ┌──→┤  h  ├→─┐
   │   └─────┘  │
   ↑      ⟳    ↓
┌──┴──┐      ┌──┴──┐
│  g  ├←─────┤  f  │
└──┬──┘      └──┬──┘
   ↓      ⟲    ↑
   │   ┌─────┐  │
   └──→┤  h  ├→─┘
       └─────┘
Emits a 0 then copies input to output
```

Proof of Determinism
- Because a process can't check the contents of buffers, only read from it, each process only sees sequence of data values coming in on buffers
- Behavior of process: compute … read … compute … write … read … compute
- Values written only depend on program state
- Computation only depends on program state
- Reads always return sequence of data values and nothing more
- Another way to see it:
  - If I'm a process, I'm only affected by the sequence of tokens on my inputs
  - I can't tell whether they arrive early, late, or in what order
  - I will behave the same in any case
  - Thus, the sequence of tokens I put on my outputs is the same regardless of the timing of the tokens on my inputs



# Dataflow

Dataflow is the movement of data through a system comprised of software, hardware or a combination of both.

Dataflow is often defined using a model or diagram in which the entire process of data movement is mapped as it passes from one component to the next within a program or a system, taking into consideration how it changes form during the process.

Dataflow design is done through specialized software called dataflow diagrams (DFD) which are specially designed to graphically map how data is transmitted throughout a system.

The dataflow diagram is important in the architectural design of a system since it defines what kind of data is needed in order to start or complete a specific process.

Using a dataflow diagram is part of the dataflow modeling process.

A data flow model is diagramatic representation of the flow and exchange of information within a system. Data flow models are used to graphically represent the flow of data in an information system by describing the processes involved in transferring data from input to file storage and reports generation.

A data flow model may also be known as a data flow diagram (DFD).

As information converts data through software, it is modified by a series of transformations. These transformations are then depicted through a graphical representation of processes that are applied as data transforms the input it receives by creating a data flow output.

A data flow diagram takes business processes and activities and uses them to create a clear illustration of how data flows through a system. DFDs represent the flow of data from external entities into a single system by moving and storing data from one process to another.

Through the use of data flow diagrams, a system can be decomposed into subsystems, and subsystems can be further decomposed into lower-level subsystems. Each subsystem represents a process or activity in which data is processed. Once the lowest level is reached, processes can no longer be decomposed.

Dataflow modeling can be used to identify a variety of different things:
- Information that is received from or sent to other individuals, organizations, or other computer systems.
- Areas within a system where information is stored and the flows of information within the system are being modeled.
- The processes of a system that act upon information received and produce the resulting outputs.



---

# Dataflow computation

Data flow models describe computation in terms of locally controlled events; each event is the "firing" of an "actor". There is no notion of a single point or locus of control-nothing corresponding to the program location counter of a conventional sequential computer. Since many actors may be ready to fire, these models can represent many asynchronous concurrent computational events.

Nevertheless, they can guarantee an I/O behavior that is unaffected by the order in which the firing of actors is carried out. This property of data flow models, *determinacy*, ensures that their I/O behavior is functional. Thus the semantics of *data flow graphs* are closely related to the semantics of *applicative programming languages*, and we'll illustrate the correspondence of data flow graphs to textual programs by means of program fragments written in `VAL`, an applicative programming language developed at MIT for scientific apps.

In this lecture we introduce and compare 3 important conceptual models of *data-driven computation*:
- static data flow graphs
- recursive program graphs
- tagged-token model

Each of these models suggests a different realization in the architecture of a computer system, and each raises different problems for the translation of a fully general applicative language into machine representations.

## The Basic Model

In each of the 3 models, a program module (corresponding loosely to a procedure in a conventional imperative language) is represented by a directed graph.

The nodes of the graph are called *actors*, and the arcs are called *links*.

The links represent paths over which data values are conveyed from one actor to another. The links that terminate on an actor make up an ordered set of input links of the actor; the links that originate from an actor make up an ordered set of output links. (In some literature the links are treated as a second kind of node, and tile graphs are bipartite).

The state of a computation in progress is shown by placing tokens on the links of a data flow graph. A computation can be regarded as a succession of snapshots between which tokens are placed and removed by the "firing" of actors according to a set of rules.



---

# Data Flow Computational Models

https://www.cs.colostate.edu/cameron/dataflow.html

## A brief overview and history

A **dataflow program** is a graph, where nodes represent operations and edges represent data paths.

Dataflow is a distributed model of computation: there is no single locus of control. It is asynchronous: execution ("firing") of a node starts when (matching) data is available at a node's input ports.

In the original dataflow models, data tokens are consumed when the node fires. Some models were extended with "sticky" tokens: tokens that stay - much like a constant input - and match with tokens arriving on other inputs. Nodes can have varying granularity, from instructions to functions.

The history of dataflow goes back to the sixties: Petri (1962) invented *Petri nets*, Estrin and Turn (1963) proposed an early dataflow model. Karp and Miller (1966) studied *computation graphs without branches or merges*, Rodriguez (1969) extended and formalized Estrin's model. Chamberlain (1971) proposed a *single assignment language for dataflow*. Kahn (1974) studied a simple *parallel process language with queues as edges*. Dennis (1974) designed a *dataflow architecture*, where edges were one token buffers. Arvind and Gostelow, and separately Gurd and Watson (1977) proposed a *"tagged token" dataflow model, where the edges behave like bags*.

In the Cameron project, data flow graphs are used as an intermediate representation between the algorithmic SA-C programming language and circuit-level FPGA configurations. *Single assignment semantics* allow us to map SA-C variables to edges in a dataflow graph, while primitive operations in SA-C map to nodes. The dataflow graph makes data dependencies explicit, and is a convenient representation for many compiler optimizations. Dataflow graphs are then mapped to VHDL circuits by mapping edges onto wires and nodes onto VHDL components.


# Data flow modeling
https://en.wikipedia.org/wiki/Conceptual_model#Data_flow_modeling

Data flow modeling (DFM) is a basic conceptual modeling technique that graphically represents elements of a system. DFM is a fairly simple technique, however, like many conceptual modeling techniques, it is possible to construct higher and lower level representative diagrams. The data flow diagram usually does not convey complex system details such as parallel development considerations or timing information, but rather works to bring the major system functions into context. Data flow modeling is a central technique used in systems development that utilizes the structured systems analysis and design method (SSADM).

# Dataflow programming
https://en.wikipedia.org/wiki/Dataflow_programming

In computer programming, dataflow programming is a programming paradigm that models a program as a directed graph of the data flowing between operations, thus implementing dataflow principles and architecture. Dataflow programming languages share some features of functional languages, and were generally developed in order to bring some functional concepts to a language more suitable for numeric processing. Some authors use the term datastream instead of dataflow to avoid confusion with dataflow computing or dataflow architecture, based on an indeterministic machine paradigm. Dataflow programming was pioneered by Jack Dennis and his graduate students at MIT in the 1960s.
