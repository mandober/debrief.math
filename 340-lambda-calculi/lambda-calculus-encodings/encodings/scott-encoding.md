# Scott encoding

https://en.wikipedia.org/wiki/Mogensen-Scott_encoding

In an encoding, the data and operators form a mathematical structure which is embedded in the LC.

Scott encoding is a way to represent recursive data types in the LC. Whereas Church encoding starts with representations of the basic data types, and builds up from it, *Scott encoding* starts from the simplest method to compose algebraic data types (ADT).

Mogensen-Scott encoding extends and slightly modifies Scott encoding by applying the encoding to meta-programming. This encoding allows the representation of LC terms, as data, to be operated on by a meta program.

Scott encoding appears first in a set of unpublished lecture notes by Dana Scott whose first citation occurs in the book "Combinatorial Logic, Volume II".

Michel Parigot gave a logical interpretation of and strongly normalizing recursor for *Scott-encoded numerals*, referring to them as the "Stack type" representation of numbers. Torben Mogensen later extended Scott encoding for the encoding of Lambda terms as data.
