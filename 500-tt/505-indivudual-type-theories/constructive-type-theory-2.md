# Constructive logic and type theory

Constructive logic is based on the leading principle that proofs are programs. In constructive type theory, it was later conjoined with the principle that propositions are data types. They are now called *proofs-as-programs* and *propositions-as-types*.

Proofs carried out within constructive logic may be considered as programs in purely functional programming languages, which are based on lambda calculus and intuitionistic logic. The importance of this is the possibility to extract from an existence proof (that, e.g. there are arbitrarily large prime numbers) a program that finds or constructs the purported object, and further obtain a verification that the program terminates (finds some number) and is correct (finds only sufficiently large prime numbers).

The combination of construction and verification of programs has raised considerable interest in computer science. Systems supporting this are known as *integrated program logics*. The combination of a program, and proofs of some of its properties, is called *proof-carrying code* and is of potential importance for improving the trustworthiness of software.
