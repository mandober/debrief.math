## Russell's paradox

> **Russell's paradox**: Let $$R$$ be the set of all sets that are not members of themselves. If $$R$$ is not a member of itself, then by definition it must contain itself. But if it does contain itself, then it contradicts its own definition.

The set $$R$$ contains objects that do not contain themselves. Since these objects are bound to be sets (because only sets can contain stuff), we can say that the set $$R$$ contains sets that are not members of itself.

Normally, a set does not contain itselves (that would lead to infinite recursion), so almost all sets are classified as belonging to $$R$$.

Now, we just need to determine where does the $$R$$ itself belongs:
- if $$R$$ is not a member of $$R$$, then his definition dictates that it must contain itself (because it has the required property).
- if $$R$$ is a member of $$R$$, then it contradicts its own definition (because it doesn't have the required property).

This paradox, like many others, emerges in connection with self-reference; "whenever there's a self-reference, a paradox lurks near by". 

This paradox have been a forking point that spawned many set theories with different strategies on how to avoid it. A consistent system must impose restrictions on the set inclusion rules. The restriction of regulations about what can constitute a set, made way for the *axiomatic set theory* i.e. *class theory*


In a more formal presentation,    
Russell's paradox states that    
the predicate $$P$$, "*a set containing itself*",    
holds for a set, $$X$$, if it does contain itself:   
$$P(X) \iff X \in X$$

So, the set $$X$$ contains members that are sets containing themselves:   
$$X = \{\forall x \in X.P(x) \iff x \in x \}$$

The set $$R$$ is a set whose members are the (normal) sets that don't contain themselves (they don't satisfy the predicate):    
$$R = \{\forall s \in R. ¬P(s) \iff s \not\in s\}$$
