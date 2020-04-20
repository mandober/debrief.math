# Russell's paradox

Having no restriction as to what can constitute a set has quickly created problems, the most famous of which was the Russell's paradox. It affects the set theories that allow set membership to any object that satisfies a given predicate.


> **Russell's paradox**: Let $$R$$ be the set of all sets that are not members of themselves. If $$R$$ is not a member of itself, then by definition it must contain itself. But if it does contain itself, then it contradicts its own definition.

The set $$R$$ contains objects that do not contain themselves. Since these objects are bound to be sets (because only sets can contain stuff), we can say that the set $$R$$ contains sets that are not members of itself.

Normally, a set does not contain itselves (that would lead to infinite recursion), so almost all sets are classified as belonging to $$R$$.

Now, we just need to determine where does the $$R$$ itself belongs:
- if $$R$$ is not a member of $$R$$, then his definition dictates that it must contain itself (because it has the required property).
- if $$R$$ is a member of $$R$$, then it contradicts its own definition (because it doesn't have the required property).

This paradox, like many others, emerges in connection with self-reference; "whenever there's a self-reference, a paradox lurks near by".

This paradox have been a forking point that spawned many set theories with different strategies on how to avoid it. A consistent system must impose restrictions on the set inclusion rules. The restriction of regulations about what can constitute a set, made way for the *axiomatic set theory* i.e. *class theory*.


[^1]: "Unter einer *Menge* verstehen wir jede Zusammenfassung `M` von bestimmten wohlunterschiedenen Objekten `m` unserer Anschauung oder unseres Denkens (welche die *Elemente* von `M` genannt werden) zu einem Ganzen."  
"By a set we mean any collection `M` of certain well-differentiated objects `m` of our intuition or our thinking (which are named the elements of `M`) into a whole."
