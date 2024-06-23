# Links

## Wiki
https://en.wikipedia.org/wiki/Category:Type_theory
https://en.wikipedia.org/wiki/Hindley-Milner_type_system
https://en.wikipedia.org/wiki/Haskell
https://en.wikipedia.org/wiki/ML_(programming_language)

https://en.wikipedia.org/wiki/Type_conversion
https://en.wikipedia.org/wiki/Type_system
https://en.wikipedia.org/wiki/Type_checking
https://en.wikipedia.org/wiki/Typing_environment
https://en.wikipedia.org/wiki/Typing_rule
https://en.wikipedia.org/wiki/Judgment_(mathematical_logic)
https://en.wikipedia.org/wiki/Map_(higher-order_function)

## Posts
- Understanding typing judgments
  https://www.hedonisticlearning.com/posts/understanding-typing-judgments.html

- https://hscattorneys.com/2021/03/31/types-of-judgments-2/
- https://mukulrathi.com/create-your-own-programming-language/intro-to-type-checking/
- https://rosstate.org/publications/mixedsite/tutorial.html
- https://nextjournal.com/plfa/Inference/
- https://twelf.org/wiki/judgment/
- https://www.alfredo.motta.name/not-so-random-software-37-good-judgement-and-static-typing/
- https://lesleylai.info/en/judgement-inference-rules/

- https://link.springer.com/chapter/10.1007/978-3-662-46669-8_16
- https://www.researchgate.net/publication/228449106_A_Concurrent_Logical_Relation/figures?lo=1

- https://pure.tudelft.nl/ws/portalfiles/portal/87498698/3437992.3439914.pdf
- https://web.eecs.umich.edu/~weimerw/590/lectures/weimer-gradpl-15.pdf

## QA

- What is a judgment?
https://math.stackexchange.com/questions/2001242/what-is-a-judgment

- What exactly is a judgment?
https://mathoverflow.net/questions/254518/what-exactly-is-a-judgement

- Can a typing judgment admit essentially different derivations?
https://mathoverflow.net/questions/42915/can-a-typing-judgment-admit-essentially-different-derivations

- Understanding the operational reading of typing judgements
https://langdev.stackexchange.com/questions/3717/understanding-the-operational-reading-of-typing-judgements-in-pfpl-by-robert-h



## Courses

- 705s13 Programming Language Semantics - David A. Schmidt
https://people.cis.ksu.edu/~schmidt/705s13/Lectures/chapter.pdf

- Type Systems, Lecture 1, Neel Krishnaswami, University of Cambridge
  Slides (310 pages)
  https://www.cl.cam.ac.uk/teaching/1819/Types/handout.pdf

- Computer Science 320 Compiling Techniques, Prof. Andrew W. Appel. 
  Understand the design and construction of compilers. Concepts include syntactical analysis, semantics, code generation, optimization, and run-time systems. A complete compiler for a small language will be implemented in ML.
  https://www.cs.princeton.edu/courses/archive/spring12/cos320/
  https://www.cs.princeton.edu/courses/archive/spring12/cos320/typing.pdf
  https://www.cs.princeton.edu/courses/archive/spring15/cos320/lectures/06-Types-2x2.pdf

- Modern Compiler Implementation in ML, 1998, by Andrew W. Appel
  https://www.cs.princeton.edu/~appel/modern/ml/

- https://www.cs.cmu.edu/~fp/courses/comp-ded/handouts/hypo.pdf
- https://www.cs.cornell.edu/courses/cs412/2007sp/lectures/lec14.pdf
- https://www.cs.cornell.edu/courses/cs671/1999fa/typed%20logic/node24.html
- https://www.cs.ru.nl/H.Geuvers/onderwijs/sl2-2008/materiaal/STT-fitch.pdf
- https://www.cs.utexas.edu/~pingali/CS375/2008fa/lectures/types.pdf
- https://course.ccs.neu.edu/cs4410sp20/lec_type-checking_notes.html
- https://cs3110.github.io/textbook/chapters/interp/inference.html
- https://courses.cs.washington.edu/courses/cse505/00au/lectures/09-typing-judgments.txt

- 15-816 Modal Logic - Lecture Notes on Judgments and Propositions - Frank Pfenning
https://www.cs.cmu.edu/~fp/courses/15816-s10/lectures/01-judgments.pdf

- 15-317 Constructive Logic - Fall 2015
Recitation 1: An introduction to natural deduction (2/9/2015)
https://lfcps.org/course/constlog15/rec01.pdf


## Videos

- LambdaConf 2015 - Type Theory and its Meaning
  Advanced and strict explanation of typing judgements.
  https://www.youtube.com/watch?v=xMAqniX2Paw
  At the heart of intuitionistic type theory lies an intuitive semantics called the "meaning explanations". Crucially, when meaning explanations are taken as definitive for type theory, the core notion is no longer "proof" but "verification". We'll explore how type theories of this sort arise naturally as enrichments of logical theories with further judgements, and contrast this with modern proof-theoretic type theories which interpret the judgements and proofs of logics, not their propositions and verifications. Expect the following questions to be answered: What is the difference between a judgement and a proposition? What is a meaning explanation? What is the difference between a proof and a verification? The so-called semantical approach to type theory is, in the speaker's view, more immediately philosophically acceptable than the modern syntactic one, and also provides a basis for a future where partiality and other effects may be treated naturally through refinement and behavioral typing, rather than by means of term-level monads and similar kludges.

- Assignments, contexts, typing judgements, rules in type systems, Adam Jones
  https://www.youtube.com/watch?v=havfsJKMeZI


- Type systems: Lambda calculus to Hindley-Milner, by Adam Jones
  (36 videos, 9,643 views, last updated on Sep 24, 2023)
  https://www.youtube.com/playlist?list=PLoyEIY-nZq_uipRkxG79uzAgfqDuHzot-


- Ill-Typed Programs Don't Evaluate, [POPL'24], Steven Ramsay, Charlie Walpole
  https://www.youtube.com/watch?v=B-CPdJIK-60
  We introduce *two-sided type systems*, which are a particular kind of sequent calculi for typing formulas. Two-sided type systems allow for hypothetical reasoning over the typing of compound program expressions, and the refutation of typing formulas. By incorporating a type of all values, these type systems support symmetrical notions of well-typing and ill-typing, guaranteeing both that well-typed programs don't go wrong and that ill-typed programs do not evaluate - that is, reach a value. This makes two-sided type systems suitable for incorrectness reasoning in higher-order program verification, which we illustrate through an application to precise data-flow typing in a language with constructors and pattern matching. Finally, we investigate the internalisation of the meta-level negation in the system as a complement operator on types. This motivates an alternative semantics for the typing judgement, which guarantees that ill-typed programs don't evaluate, but in which well-typed programs may yet go wrong.

## Articles

- Judgments in formal systems
https://www.everything2.org/index.pl?node=Judgment


## Papers

- `On the Meanings of the Logical Constants and the Justifications of the Logical Laws`, Per Martin Löf, 1983
https://archive-pml.github.io/martin-lof/pdfs/Meanings-of-the-Logical-Constants-1983.pdf

- `A Judgmental Reconstruction of Modal Logic`, 2001, Frank Pfenning, and Rowan Davies.

- `On Judgements and Propositions`, Bernd Mahr
https://people.cs.umu.se/drewes/hjk60/essay_13.pdf

- Arnon Avron, Furio A. Honsell, Ian A. Mason, and Robert Pollack. `Using typed lambda calculus to implement formal systems on a machine`, 1992


## Books

- "Constructive Logic" by Frank Pfenning
  https://www.cs.cmu.edu/~fp/publications.html
- "Proofs and Types" by Jean-Yves Girard
  https://www.paultaylor.eu/stable/Proofs+Types.html
- "Programming in Martin-Löf's Type Theory" by Bengt Nordström et al.
  https://www.cse.chalmers.se/research/group/logic/book/book.pdf
- "Foundations of Constructive Mathematics" by Michael Beeson

## Software

### Twelf
by Frank Pfenning and Carsten Schuermann
- https://github.com/standardml/twelf
- https://twelf.org/wiki/judgment/
Twelf is an implementation of LF logical framework, including type reconstruction, the Elf constraint logic programming language, a meta-theorem prover for LF (very preliminary), a set of expansion modules to deal natively with numbers and strings, and Emacs interface. Written in SML (SML/NJ or MLton).
- https://github.com/standardml/twelf/blob/main/wiki/src/content/docs/bibliography.md
- https://github.com/standardml/twelf/blob/main/wiki/pages/abstract-syntax.elf
- Twelf sandbox
https://twelf.org/twelf-wasm/?#json/eyJ0IjoiZ2V0VXJsIiwidXJsIjoiL2hhdC1jb2RlL2ZjNGEwYjA2M2EuanNvbiJ9


## The Ciao Prolog system
https://ciao-lang.org/

Docs: https://ciao-lang.org/ciao/build/doc/ciao.html/ciaofulltoc.html
Run in Browser: https://ciao-lang.org/playground/index.html

## Websites

* Intuitionistic Type Theory
A site for intuitionistic type theory and software architecture
https://intuitionistic.wordpress.com/works-on-martin-lofs-type-theory/
