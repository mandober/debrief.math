# Interactive proof system

https://en.wikipedia.org/wiki/Interactive_proof_system

(not to be confused with Proof assistant)

In computational complexity theory, 
an interactive proof system 
is an abstract machine 
that models computation 
as the exchange of messages 
between two parties: 
a prover and a verifier. 

The two parties interact by exchanging messages in order to ascertain whether a given string belongs to a language or not. The prover component possesses unlimited computational resources but cannot be trusted, while the verifier component has bounded computation power but can be trusted. Messages are sent between the verifier and prover until the verifier has an answer to the problem and has "convinced itself" that it is correct.

All interactive proof systems have two requirements:
1. *Completeness*. If the statement is true, a verifier can be convinced of it by an untrustworthy prover .
2. *Soundness*. However, if the statement is false, no prover, no matter how conniving, should ever succeed in convincing the verifier the opposite, i.e. that the statement were true (perhaps, within a very small margin of error).

The specific nature of this system, and so the complexity class of languages it can recognize, depends on what sort of bounds are put on the verifier, as well as what abilities it is given.

For example, most interactive proof systems depend critically on the verifier's ability to make random choices. They also depend on the nature of exchanged messages - the amount of messages allowed to be exchanged in a time unit, as well as thena ture of their content.

Interactive proof systems have been found to have some important implications for traditional complexity classes defined using only one machine. The main complexity classes describing interactive proof systems are `AM` and `IP`.

## NP

The complexity class `NP` (nondeterministic polynomial time) may be viewed as a very simple proof system. In this system, the verifier is a deterministic, polynomial-time machine, a `P`-machine (`P` stands for polynomial time complexity class).

The protocol:
- The prover looks at the input and computes the solution using its unlimited power and returns a polynomial-size proof certificate.
- The verifier verifies that the certificate is valid in deterministic polynomial time. If it is valid, it accepts; otherwise, it rejects.

In the case a valid proof certificate exists, the prover is always able to make the verifier accept it, merely by giving it that certificate.

In the case there's no valid proof certificate, the input is not in the language; so, no prover, however malicious, can convince the verifier otherwise, because any invalid proof certificate gets rejected.

## Arthur-Merlin and Merlin-Arthur protocols

https://en.wikipedia.org/wiki/Arthur%E2%80%93Merlin_protocol

## Public coin protocol versus private coin protocol

## IP

https://en.wikipedia.org/wiki/IP_(complexity)

Private coins may not be helpful, but more rounds of interaction are helpful. If we allow the probabilistic verifier machine and the all-powerful prover to interact for a polynomial number of rounds, we get the class of problems called `IP` (Interactive Polynomial time).

In 1992, Adi Shamir revealed, in one of the central results of complexity theory, that `IP` equals `PSPACE`, the class of problems solvable by an ordinary deterministic Turing machine in polynomial space.

## QIP

## Zero knowledge

## MIP

## PCP
