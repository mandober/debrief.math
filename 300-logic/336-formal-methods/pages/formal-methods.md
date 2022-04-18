# Formal methods

https://en.wikipedia.org/wiki/Formal_methods

In software and hardware engineering, formal methods are a particular kind of mathematically rigorous techniques for the *specification*, *development* and *verification* of software and hardware systems.

The use of formal methods for software and hardware design is motivated by the expectation that performing appropriate mathematical analysis can contribute to the reliability and robustness of a design.

Formal methods are best described as the application of a fairly broad variety of theoretical computer science fundamentals, in particular logic calculi, formal languages, automata theory, discrete event dynamic system and program semantics, but also type systems and algebraic data types to problems in software and hardware specification and verification.

*Semi-Formal Methods* are formalisms and languages that are not considered fully "formal". It defers the task of completing the semantics to a later stage, which is then done either by human interpretation or by interpretation through software like code or test case generators.

## Taxonomy

Formal methods can be used at a number of levels:

* Level 0: Formal specification may be undertaken and then a program developed from this informally. This has been dubbed *formal methods lite*. This may be the most cost-effective option in many cases.

* Level 1: Formal development and formal verification may be used to produce a program in a more formal manner. For example, *proofs of properties* or *refinement* from the specification to a program may be undertaken. This may be most appropriate in high-integrity systems involving safety or security.

* Level 2: Theorem provers may be used to undertake *fully formal machine-checked proofs*. Despite improving tools and declining costs, this can be very expensive, so it is only practical if the cost of mistakes is very high (e.g. in critical parts of OS or microprocessor design).

As with programming language semantics, styles of formal methods may be roughly classified as follows:

* *Denotational semantics*, in which the meaning of a system is expressed in the mathematical theory of domains. Proponents of such methods rely on the well-understood nature of domains to give meaning to the system; critics point out that not every system may be intuitively or naturally viewed as a function.

* *Operational semantics*, in which the meaning of a system is expressed as a sequence of actions of a (presumably) simpler computational model. Proponents of such methods point to the simplicity of their models as a means to expressive clarity; critics counter that the problem of semantics has just been delayed (who defines the semantics of the simpler model?).

* *Axiomatic semantics*, in which the meaning of the system is expressed in terms of preconditions and postconditions which are true before and after the system performs a task, respectively. Proponents note the connection to classical logic; critics note that such semantics never really describe what a system does (merely what is true before and afterwards).

## Lightweight formal methods

Some practitioners believe that the formal methods community has overemphasized full formalization of a specification or design. They contend that the expressiveness of the languages involved, as well as the complexity of the systems being modelled, make full formalization a difficult and expensive task.

As an alternative, various lightweight formal methods, which emphasize partial specification and focused application, have been proposed.

Examples of this lightweight approach to formal methods include the *Alloy* object modelling notation, aspects of the *Z notation* with use case driven development, and the *CSK VDM* (Vienna Development Method) tools.


Formal methods may be applied at various points through the development process:
- Formal specification
- Formal development
- Formal verification
  - Sign-off verification
  - Human-directed proof
  - Automated proof
    - Automated theorem proving
    - Model checking
    - Abstract interpretation


## Formal specification

Formal methods may be used to give a description of the system to be developed, at any level of detail. This *formal description* can be used to guide further development activities. Additionally, it can be used to verify that the requirements for the system have been completely and accurately specified; or to formalize a *system requirements* by expressing them in a formal language with a precisely defined syntax and semantics.

The need for formal specification systems has been noted for years. In the ALGOL 58 report, John Backus presented a formal notation for describing programming language syntax, BNF.

## Formal development

Formal development is the use of formal methods as an integrated part of a tool-supported system development process.

Once a formal specification has been produced, the specification may be used as a guide while the concrete system is developed during the design process.

For example:

* if the formal specification is in operational semantics, the observed behavior of the concrete system can be compared with the behavior of the specification (if it's executable). Additionally, the operational commands of the specification may be amenable to direct translation into executable code.

* If the formal specification is in axiomatic semantics, the preconditions and postconditions of the specification may become assertions in the executable code.

## Formal verification

Formal verification is the use of software tools to prove properties of a formal specification, or to prove that a formal model of a system implementation satisfies its specification.

Once a formal specification has been developed, the specification may be used as the basis for proving properties of the specification.

### Sign-off verification

Sign-off verification is the use of a formal verification tool that is highly trusted. Such a tool can replace traditional verification methods.

### Human-directed proof

Sometimes, the motivation for proving the correctness of a system is not the obvious need for reassurance of the correctness of the system, but a desire to understand the system better. Consequently, some *proofs of correctness* are produced in the style of mathematical proof: written using natural language, using a level of informality common to such proofs. A "good" proof is one that is readable and understandable by other human readers.

Critics of such approaches point out that the ambiguity inherent in natural language allows errors to be undetected in such proofs; often, subtle errors can be present in the low-level details typically overlooked by such proofs. Additionally, the work involved in producing such a good proof requires a high level of mathematical sophistication and expertise.

### Automated proof

In contrast, there is increasing interest in producing *proofs of correctness* of such systems by automated means.

*Automated techniques* fall into 3 general categories:

* *Automated theorem proving*, in which a system attempts to produce a formal proof from scratch, given a description of the system, a set of logical axioms, and a set of inference rules. Some automated theorem provers require guidance as to which properties are "interesting" enough to pursue, while others work without human intervention.

* *Model checking*, in which a system verifies certain properties by means of an exhaustive search of all possible states that a system could enter during its execution. Model checkers can quickly get bogged down in checking millions of uninteresting states if not given a sufficiently abstract model.

* *Abstract interpretation*, in which a system verifies an over-approximation of a behavioural property of the program, using a fixpoint computation over a (possibly complete) lattice representing it. The main feature of the abstract interpretation approach is that it provides a sound analysis, i.e. no false negatives are returned. Moreover, it is efficiently scalable, by tuning the abstract domain representing the property to be analyzed, and by applying widening operators to get fast convergence.

Proponents of such systems argue that the results have greater mathematical certainty than human-produced proofs, since all the tedious details have been algorithmically verified. The training required to use such systems is also less than that required to produce good mathematical proofs by hand, making the techniques accessible to a wider variety of practitioners.

Critics note that some of those systems are like oracles: they make a pronouncement of truth, yet give no explanation of that truth. There is also the problem of "verifying the verifier"; if the program which aids in the verification is itself unproven, there may be reason to doubt the soundness of the produced results. Some modern model checking tools produce a "proof log" detailing each step in their proof, making it possible to perform, given suitable tools, independent verification.

# Applications

- IBM used ACL2, a theorem prover, in the AMD x86 processor development process.
- Intel uses such methods to verify its hardware and firmware.
- Dansk Datamatik Center used formal methods in the 1980s to develop a compiler system for the Ada programming language that went on to become a long-lived commercial product.
- There are several other projects of NASA in which formal methods are applied, such as Next Generation Air Transportation System, Unmanned Aircraft System integration in National Airspace System, and Airborne Coordinated Conflict Resolution and Detection (ACCoRD).
- B-Method with Atelier B, is used to develop safety automatisms for the various subways installed throughout the world by Alstom and Siemens, and also for Common Criteria certification and the development of system models by ATMEL and STMicroelectronics.

Formal verification has been frequently used in hardware by most of the well-known hardware vendors, such as IBM, Intel, and AMD.

There are many areas of hardware, where Intel have used FMs to verify the working of the products, such as parameterized verification of cache-coherent protocol, Intel Core i7 processor execution engine validation (using theorem proving, BDDs, and symbolic evaluation), optimization for Intel IA-64 architecture using *HOL light theorem prover*, and verification of high-performance dual-port gigabit Ethernet controller with support for PCI express protocol and Intel advance management technology using *Cadence*.

Similarly, IBM has used formal methods in the verification of power gates, registers, and functional verification of the IBM Power7 microprocessor.

For sequential software, examples of formal methods include the *B-Method*, the specification languages used in automated theorem proving, *RAISE*, and the *Z notation*.

In functional programming, *property-based testing* has allowed the mathematical specification and testing (if not exhaustive testing) of the expected behaviour of individual functions.

The Object Constraint Language (and specializations such as Java Modeling Language) has allowed object-oriented systems to be formally specified, if not necessarily formally verified.

For concurrent software and systems, Petri nets, process algebra, and finite state machines allow executable software specification and can be used to build up and validate application behaviour.

Another approach to formal methods in software development is to write a specification in some form of logic (usually first-order logic) and then to directly execute the logic as though it were a program. The *OWL* language, based on *Description Logic*, is an example.

There is also work on mapping some version of English automatically to and from logic, as well as executing the logic directly. Examples are Attempto Controlled English, and Internet Business Logic, which do not seek to control the vocabulary or syntax.

A feature of systems that support bidirectional English-logic mapping and direct execution of the logic is that they can be made to explain their results, in English, at the business or scientific level.
