# Logic :: Types of reasoning :: Non-monotonic reasoning

https://en.wikipedia.org/wiki/Non-monotonic_reasoning
https://en.wikipedia.org/wiki/Non-monotonic_logic

**Non-monotonic logic** is a formal logic whose *conclusion relation* is not monotonic.

Non-monotonic logics are devised to capture and represent *defeasible reasoning*, which is a kind of reasoning in which tentative (uncertain, provisional) conclusions are drawn with the possibility to retract them based on further evidence.

Most formal logics have a *monotonic entailment relation*, meaning that augmenting a theory with a new proposition (formula) never prunes the set of existing conclusions. **Monotonicity of entailment** is a property of many logical systems stating that hypotheses of any derived fact may be freely extended with additional assumptions. Intuitively, learning a new piece of information cannot reduce what is already known. If A entails C, then A and B still entails C, `A ⊢ C ⇒ A,B ⊢ C`. In some situations, MoE is known as *weakening*.

**Monotonic logic** cannot handle various reasoning tasks such as *reasoning by default* (conclusions may be derived only because of lack of evidence to the contrary), *abductive reasoning* (conclusions are only deduced as most likely explanations), some important approaches to reasoning about knowledge (the ignorance of a conclusion must be retracted when the conclusion becomes known), and similarly, belief revision (new knowledge may contradict old beliefs).
