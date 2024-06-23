# Session type

https://en.wikipedia.org/wiki/Session_type

In type theory, in type system, **session types** are used to ensure correctness in concurrent programs by guaranteeing that messages transmitted between concurrent programs are received in the expected order and have the expected type.

Session type systems have been adapted for both *channel* and *actor systems*.

Session types help prevent deadlocks and communication errors, increasing the protocol conformance, which is valued in concurrent and distributed systems.

Interaction between two processes can be checked using *binary session types*, while interactions between more than two processes can be checked using *multiparty session types*.

Binary session types can be described using operations like send (!), receive (?), branches (&), choices (⊕), recursion (𝒓𝒆𝒄) and termination (𝒆𝒏𝒅).

For example, `S = !bool . ?int . end` represents a session type `S` which first sends a boolean (`!bool`), then receives an integer (`?int`), then termines (`𝒆𝒏𝒅`).
