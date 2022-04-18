# Inference

https://en.wikipedia.org/wiki/Inference

Inferences are steps in reasoning, moving from premises to logical consequences.

Etymologically, the word infer means to "carry forward". 

Inference is theoretically traditionally divided into deduction and induction, a distinction that in Europe dates at least to Aristotle (300s BCE). *Deduction* is inference deriving logical conclusions from premises known or assumed to be true, with the laws of valid inference being studied in logic. *Induction* is inference from particular premises to a universal conclusion. A third type of inference is sometimes distinguished, notably by Charles Sanders Peirce, contradistinguishing abduction from induction.

Various fields study how inference is done in practice. *Human inference* (i.e. how humans draw conclusions) is traditionally studied within the fields of logic, argumentation studies, and cognitive psychology. *Artificial intelligence* researchers develop automated inference systems to emulate human inference.

## Definition

The process by which a conclusion is inferred from multiple observations is called *inductive reasoning*. The conclusion may be correct or incorrect, or correct to within a certain degree of accuracy, or correct in certain situations. Conclusions inferred from multiple observations may be tested by additional observations.

Two possible definitions of "inference" are:
1. A conclusion reached on the basis of evidence and reasoning.
2. The process of reaching such a conclusion.

Logic is concerned with inference: does the truth of the conclusion follow from that of the premises? The *validity* of an inference depends on the form of the inference. That is, the term "valid" does not refer to the truth of the premises or the conclusion, but rather to the form of the inference. An inference can be valid even if the parts are false, and can be invalid even if some parts are true. But a valid form with true premises will always have a true conclusion.

If the premises are true, then the conclusion is necessarily true, too. When a valid argument is used to derive a false conclusion from a false premise, the inference is valid because it follows the form of a correct inference. A valid argument can also be used to derive a true conclusion from a false premise. 

An incorrect inference is known as a *fallacy*. Philosophers who study informal logic have compiled large lists of them, and cognitive psychologists have documented many biases in human reasoning that favor incorrect reasoning.

## Inference engines

AI systems first provided *automated logical inference* and these were once extremely popular research topics, leading to industrial applications under the form of expert systems and later business rule engines. More recent work on *automated theorem proving* has had a stronger basis in formal logic.

An inference system's job is to extend a knowledge base automatically. The *knowledge base* (KB) is a set of propositions that represent what the system knows about the world. Several techniques can be used by that system to extend KB by means of valid inferences. An additional requirement is that the conclusions the system arrives at are relevant to its task.

*Prolog* is a programming language based on a subset of predicate calculus. Its main job is to check whether a certain proposition can be inferred from a knowledge base using an algorithm called backward chaining.
