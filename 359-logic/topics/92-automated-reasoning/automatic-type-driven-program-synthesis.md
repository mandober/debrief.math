automatic type-driven program synthesis

https://www.youtube.com/watch?v=HnOix9TFy1A
https://cse.ucsd.edu/about/type-driven-program-synthesis
https://tjknoth.github.io/raw/resyn.pdf
https://yahnd.com/theater/r/youtube/HnOix9TFy1A/
https://www.cis.upenn.edu/~stevez/papers/OZ15.pdf
https://people.csail.mit.edu/polikarn/publications/pldi16.pdf
https://arxiv.org/abs/1510.08419
https://par.nsf.gov/servlets/purl/10128917
https://en.wikipedia.org/wiki/Program_synthesis


TYPE-DRIVEN PROGRAM SYNTHESIS
Polikarpova200_1.jpg
Nadia Polikarpova, MIT
(CSE Colloquium Lecture Series)

Speaker: Nadia Polikarpova, Computer Science and Artificial Intelligence Lab, MIT

Date:  Monday, March 13, 2017
Time:  11:00am
Location:  Room 1202, CSE Building

Abstract:  Modern programming languages safeguard developers from many typical errors, yet more subtle errors-such as violations of security policies-still plague software. Program synthesis has the potential to eliminate such errors, by generating executable code from concise and intuitive high-level specifications. Traditionally, program synthesis failed to scale to specifications that encode complex behavioral properties of software: these properties are notoriously hard to check even for a given program, and so it's not surprising that finding the right program within a large space of candidates has been considered very challenging. My work tackles this challenge through the design of synthesis-friendly program verification mechanisms, which are able to check a large set of candidate programs against a complex specification at once, whereby efficiently pruning the search space.

Based on this principle, I developed Synquid, a program synthesizer that accepts specifications in the form of expressive types and uses a specialized type checker as its underlying verification mechanism. Synquid is the first synthesizer powerful enough to automatically discover provably correct implementations of complex data structure manipulations, such as insertion into Red-Black Trees and AVL Trees, and normal-form transformations on propositional formulas. Each of these programs is synthesized in under a minute. Going beyond textbook algorithms, I created a language called Lifty, which uses type-driven synthesis to automatically rewrite programs that violate information flow policies. In our case study, Lifty was able to enforce all required policies in a prototype conference management system.

Bio:  Nadia Polikarpova is a postdoctoral researcher at the MIT Computer Science and Artificial Intelligence Lab, interested in helping programmers build secure and reliable software. She completed her PhD at ETH Zurich. For her dissertation she developed tools and techniques for automated formal verification of object-oriented libraries, and created the first fully verified general-purpose container library, receiving the Best Paper Award at the International Symposium on Formal Methods. During her doctoral studies, Nadia was an intern at MSR Redmond, where she worked on verifying real-world implementations of security protocols. At MIT, Nadia has been applying formal verification to automate various critical and error-prone programming tasks.

Related Research Publications
http://people.csail.mit.edu/polikarn/publications/pldi16.pdf
http://people.csail.mit.edu/polikarn/publications/fm15.pdf
